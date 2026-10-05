#!/usr/bin/env bash
set -euo pipefail

root=$(cd "$(dirname "$0")/.." && pwd)
cases="$root/program_a_factorial/tests/cases.tsv"
results="$root/program_a_factorial/results"
table="$results/equivalence.tsv"

if [[ ! -x "$results/factorial_sysy_official" || ! -x "$results/factorial_manual_ir_official" ]]; then
    bash "$root/scripts/build_program_a.sh"
fi

riscv_status=OBJECT_ONLY
implementations=2
if command -v riscv64-linux-gnu-gcc >/dev/null 2>&1 && command -v qemu-riscv64 >/dev/null 2>&1; then
    riscv64-linux-gnu-gcc -static \
        "$root/program_a_factorial/asm/factorial_manual_rv64.s" \
        "$root/program_a_factorial/src/newlib_glibc_bridge.c" \
        "$root/appendix/sysy_extended/runtime/libsysy_riscv.a" \
        -o "$results/factorial_manual_rv64_official_bridge"
    riscv_status=EXECUTED_OFFICIAL_RUNTIME_BRIDGE_PASS
    implementations=3
fi

printf 'input\texpected\tsysy_official_runtime\tmanual_llvm_official_runtime\tmanual_riscv_official_runtime_bridge\tstatus\n' > "$table"
count=0
while IFS=$'\t' read -r input expected; do
    [[ -n "$input" ]] || continue
    c_output=$(printf '%s\n' "$input" | "$results/factorial_sysy_official" 2>/dev/null)
    ir_output=$(printf '%s\n' "$input" | "$results/factorial_manual_ir_official" 2>/dev/null)
    riscv_output=NOT_RUN
    if [[ "$riscv_status" == EXECUTED_OFFICIAL_RUNTIME_BRIDGE_PASS ]]; then
        riscv_output=$(printf '%s\n' "$input" | qemu-riscv64 "$results/factorial_manual_rv64_official_bridge" 2>/dev/null)
    fi
    status=PASS
    if [[ "$c_output" != "$expected" || "$ir_output" != "$expected" ]]; then
        status=FAIL
    fi
    if [[ "$riscv_status" == EXECUTED_OFFICIAL_RUNTIME_BRIDGE_PASS && "$riscv_output" != "$expected" ]]; then
        status=FAIL
    fi
    printf '%s\t%s\t%s\t%s\t%s\t%s\n' \
        "$input" "$expected" "$c_output" "$ir_output" "$riscv_output" "$status" >> "$table"
    [[ "$status" == PASS ]]
    count=$((count + 1))
done < "$cases"

printf 'PROGRAM_A_VERIFY_PASS cases=%d implementations=%d riscv=%s\n' \
    "$count" "$implementations" "$riscv_status"
