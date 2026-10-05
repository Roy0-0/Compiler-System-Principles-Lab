#!/usr/bin/env bash
set -euo pipefail

root=$(cd "$(dirname "$0")/.." && pwd)
src="$root/program_a_factorial/src/factorial.c"
sysy="$root/program_a_factorial/src/factorial.sy"
shim="$root/program_a_factorial/src/runtime_shim.c"
runtime_dir="$root/appendix/sysy_extended/runtime"
stages="$root/program_a_factorial/stages"
ir="$root/program_a_factorial/ir"
asm="$root/program_a_factorial/asm"
results="$root/program_a_factorial/results"

mkdir -p "$stages" "$results"

clang -std=c11 -Wall -Wextra -Werror -E "$src" -o "$stages/factorial.i"
clang -std=c11 -Xclang -ast-dump -fsyntax-only "$src" > "$stages/factorial.ast.txt"
clang -std=c11 -S -emit-llvm -O0 -fno-discard-value-names "$src" -o "$stages/factorial_O0.ll"
clang -std=c11 -S -emit-llvm -O2 "$src" -o "$stages/factorial_O2.ll"
clang -std=c11 -S -emit-llvm -O0 -Xclang -disable-O0-optnone \
    -fno-discard-value-names "$src" -o "$stages/factorial_raw.ll"
opt -S -mem2reg "$stages/factorial_raw.ll" -o "$stages/factorial_after_mem2reg.ll"
opt -S -mem2reg -instcombine "$stages/factorial_raw.ll" \
    -o "$stages/factorial_after_instcombine.ll"
opt -S -mem2reg -instcombine -simplifycfg "$stages/factorial_raw.ll" \
    -o "$stages/factorial_after_simplifycfg.ll"
opt -S -O2 "$stages/factorial_raw.ll" -o "$stages/factorial_after_opt_O2.ll"
clang -std=c11 -S -O0 "$src" -o "$stages/factorial_x86_O0.s"
clang -std=c11 -c -O0 "$src" -o "$stages/factorial.o"
readelf -h -S -s -r "$stages/factorial.o" > "$stages/factorial_object.txt"
objdump -dr "$stages/factorial.o" > "$stages/factorial_objdump.txt"

clang "$stages/factorial.o" "$shim" \
    -Wl,-Map,"$stages/factorial_link.map" \
    -o "$results/factorial_c"

clang -O0 -g -Wall -Wextra -Werror -include "$runtime_dir/sysy_decl.h" \
    -x c -c "$sysy" -o "$stages/factorial_sysy.o"
clang "$stages/factorial_sysy.o" "$runtime_dir/libsysy_x86.a" \
    -o "$results/factorial_sysy_official"

llvm-as "$ir/factorial_manual.ll" -o "$results/factorial_manual.bc"
opt -verify "$results/factorial_manual.bc" -disable-output
clang "$results/factorial_manual.bc" "$shim" -o "$results/factorial_manual_ir"
clang "$results/factorial_manual.bc" "$runtime_dir/libsysy_x86.a" \
    -o "$results/factorial_manual_ir_official"

clang --target=riscv64-linux-gnu -S -O0 "$src" -o "$asm/factorial_generated_rv64.s"
clang --target=riscv64-linux-gnu -c "$asm/factorial_manual_rv64.s" \
    -o "$results/factorial_manual_rv64.o"
llvm-readelf -h -s "$results/factorial_manual_rv64.o" \
    > "$results/factorial_manual_rv64_object.txt"

file "$stages"/* "$results/factorial_c" "$results/factorial_manual_ir" \
    "$results/factorial_manual_rv64.o" > "$stages/file_types.txt"

printf 'PROGRAM_A_BUILD_PASS stages=%s\n' "$(find "$stages" -maxdepth 1 -type f | wc -l)"
