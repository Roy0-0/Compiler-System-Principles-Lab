#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

make test
opt -verify comprehensive.bc -disable-output
opt -verify advanced_complete.bc -disable-output

for value in -4 0 1 5 6 9 100; do
    sysy_output=$(printf '%s\n' "$value" | ./sysy_demo)
    ir_output=$(printf '%s\n' "$value" | ./ir_demo)

    if [[ "$sysy_output" != "$ir_output" ]]; then
        printf 'FAIL: input=%s\nSysY: %s\nIR:   %s\n' \
            "$value" "$sysy_output" "$ir_output" >&2
        exit 1
    fi

    printf 'input=%s output=%s\n' "$value" "$sysy_output"
done

for value in -2.5 0.0 3.25; do
    sysy_output=$(printf '%s\n' "$value" | ./advanced_sysy_demo)
    ir_output=$(printf '%s\n' "$value" | ./advanced_ir_demo)

    if [[ "$sysy_output" != "$ir_output" ]]; then
        printf 'FAIL: advanced input=%s\nExtended SysY: %s\nIR:            %s\n' \
            "$value" "$sysy_output" "$ir_output" >&2
        exit 1
    fi

    printf 'advanced-input=%s output=%s\n' "$value" "$sysy_output"
done

printf 'PASS: LLVM verification and all comparison cases succeeded.\n'
