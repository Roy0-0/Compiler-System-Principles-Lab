#!/usr/bin/env bash
set -euo pipefail
export LC_ALL=C

root=$(cd "$(dirname "$0")/.." && pwd)
src="$root/program_b_optimization/src/array_transform.c"
art="$root/program_b_optimization/artifacts"
reports="$root/program_b_optimization/reports"
results="$root/program_b_optimization/results"
expected="$root/program_b_optimization/tests/expected.tsv"
matrix="$results/experiment_matrix.csv"
sizes="$results/size_scaling.tsv"

mkdir -p "$art" "$reports" "$results"

median_ms() {
    local exe=$1
    local n=$2
    local samples="$results/.timings.tmp"
    : > "$samples"
    for _ in 1 2 3; do "$exe" "$n" >/dev/null; done
    for _ in 1 2 3 4 5 6 7 8 9 10; do
        local start end
        start=$(date +%s%N)
        "$exe" "$n" >/dev/null
        end=$(date +%s%N)
        awk -v delta="$((end - start))" 'BEGIN { printf "%.6f\n", delta / 1000000.0 }' >> "$samples"
    done
    sort -n "$samples" | awk 'NR == 5 {a=$1} NR == 6 {printf "%.6f", (a+$1)/2.0}'
}

compile_clang() {
    local name=$1
    shift
    clang -std=c11 -Wall -Wextra -Werror "$@" "$src" -o "$art/$name"
    clang -std=c11 "$@" -S -emit-llvm "$src" -o "$art/$name.ll"
    clang -std=c11 "$@" -S "$src" -o "$art/$name.s"
}

compile_clang array_O0 -O0
compile_clang array_O0_g -O0 -g
compile_clang array_O1 -O1
compile_clang array_O2 -O2
compile_clang array_O3 -O3
compile_clang array_scale5 -O2 -DSCALE=5
compile_clang array_noinline -O3 -DDISABLE_INLINE
compile_clang array_restrict -O3 -DUSE_RESTRICT
compile_clang array_dependent -O3 -DUSE_DEPENDENT_LOOP
compile_clang array_no_vector -O3 -fno-vectorize -fno-slp-vectorize
compile_clang array_native -O3 -march=native

clang -std=c11 -O3 -Rpass=loop-vectorize -Rpass-missed=loop-vectorize \
    "$src" -o "$art/array_vector_remark" 2> "$reports/vectorize.txt"
clang -std=c11 -O3 -DUSE_DEPENDENT_LOOP \
    -Rpass=loop-vectorize -Rpass-missed=loop-vectorize \
    "$src" -o "$art/array_dependent_remark" 2> "$reports/vectorize_dependent.txt"
clang -std=c11 -O3 -Rpass=inline -Rpass-missed=inline \
    "$src" -o "$art/array_inline_remark" 2> "$reports/inline.txt"
clang -std=c11 -O3 -DDISABLE_INLINE -Rpass=inline -Rpass-missed=inline \
    "$src" -o "$art/array_noinline_remark" 2> "$reports/inline_noinline.txt"

gcc -std=c11 -Wall -Wextra -Werror -O3 "$src" -o "$art/array_gcc_O3"
gcc -std=c11 -O3 -ftree-parallelize-loops=4 \
    -fopt-info-loop-all="$reports/parallel.txt" \
    "$src" -o "$art/array_parallel"

rm -rf "$art/pgo-data"
mkdir -p "$art/pgo-data"
clang -std=c11 -O3 -fprofile-instr-generate="$art/pgo-data/default.profraw" \
    "$src" -o "$art/array_pgo_generate"
"$art/array_pgo_generate" 1000000 >/dev/null
llvm-profdata merge -output="$art/pgo-data/default.profdata" \
    "$art/pgo-data/default.profraw"
clang -std=c11 -O3 -fprofile-instr-use="$art/pgo-data/default.profdata" \
    "$src" -o "$art/array_pgo_use"
clang -std=c11 -O3 -fprofile-instr-use="$art/pgo-data/default.profdata" \
    -S -emit-llvm "$src" -o "$art/array_pgo_use.ll"
clang -std=c11 -O3 -fprofile-instr-use="$art/pgo-data/default.profdata" \
    -S "$src" -o "$art/array_pgo_use.s"

baseline_10000=$("$art/array_O0" 10000)
dependent_10000=$("$art/array_dependent" 10000)
[[ "$baseline_10000" == 1092486 ]]
[[ "$dependent_10000" == 5451273629 ]]

for name in array_O0_g array_O1 array_O2 array_O3 array_noinline array_restrict \
            array_no_vector array_native array_gcc_O3 array_parallel array_pgo_use; do
    [[ "$("$art/$name" 10000)" == "$baseline_10000" ]]
done

{
    printf 'variant\tn\tchecksum\n'
    printf 'baseline\t10000\t%s\n' "$baseline_10000"
    printf 'dependent\t10000\t%s\n' "$dependent_10000"
    printf 'scale5\t10000\t%s\n' "$("$art/array_scale5" 10000)"
} > "$expected"

readelf -S "$art/array_O0" > "$reports/sections_O0.txt"
readelf -S "$art/array_O0_g" > "$reports/sections_O0_g.txt"
size "$art"/array_O0 "$art"/array_O0_g "$art"/array_O1 "$art"/array_O2 \
     "$art"/array_O3 "$art"/array_native "$art"/array_pgo_use \
     > "$reports/binary_sizes.txt"

printf 'experiment,compiler,flags,n,checksum,binary_bytes,median_ms,ir_lines,asm_lines,remark,conclusion\n' > "$matrix"
append_row() {
    local experiment=$1 compiler=$2 flags=$3 name=$4 conclusion=$5
    local n=5000000 checksum bytes med ir_lines asm_lines
    checksum=$("$art/$name" "$n")
    bytes=$(stat -c %s "$art/$name")
    med=$(median_ms "$art/$name" "$n")
    ir_lines=NA
    asm_lines=NA
    [[ -f "$art/$name.ll" ]] && ir_lines=$(wc -l < "$art/$name.ll")
    [[ -f "$art/$name.s" ]] && asm_lines=$(wc -l < "$art/$name.s")
    printf '"%s","%s","%s",%s,%s,%s,%s,%s,%s,"%s","%s"\n' \
        "$experiment" "$compiler" "$flags" "$n" "$checksum" "$bytes" "$med" \
        "$ir_lines" "$asm_lines" "saved report/artifact" "$conclusion" >> "$matrix"
}

append_row E2 clang '-O0' array_O0 'debug baseline without DWARF'
append_row E2 clang '-O0 -g' array_O0_g 'debug build with DWARF sections'
append_row E1 clang '-O2 -DSCALE=5' array_scale5 'constant propagation control'
append_row E3 clang '-O1' array_O1 'optimization level comparison'
append_row E3 clang '-O2' array_O2 'optimization level comparison'
append_row E3 clang '-O3' array_O3 'optimization level comparison'
append_row E4 clang '-O3 -DDISABLE_INLINE' array_noinline 'noinline control'
append_row E6 clang '-O3 -DUSE_RESTRICT' array_restrict 'alias information control'
append_row E7 clang '-O3 -DUSE_DEPENDENT_LOOP' array_dependent 'loop-carried dependency'
append_row E5 clang '-O3 -fno-vectorize -fno-slp-vectorize' array_no_vector 'vectorization disabled'
append_row E10 clang '-O3 -march=native' array_native 'host ISA specialization'
append_row E11 gcc '-O3' array_gcc_O3 'compiler comparison'
append_row E8 gcc '-O3 -ftree-parallelize-loops=4' array_parallel 'automatic parallelization attempt'
append_row E12 clang '-O3 PGO' array_pgo_use 'profile-guided optimization'

printf 'n\tO0_checksum\tO0_median_ms\tO3_checksum\tO3_median_ms\n' > "$sizes"
for n in 10000 100000 1000000 5000000; do
    o0_checksum=$("$art/array_O0" "$n")
    o3_checksum=$("$art/array_O3" "$n")
    [[ "$o0_checksum" == "$o3_checksum" ]]
    printf '%s\t%s\t%s\t%s\t%s\n' "$n" "$o0_checksum" \
        "$(median_ms "$art/array_O0" "$n")" "$o3_checksum" \
        "$(median_ms "$art/array_O3" "$n")" >> "$sizes"
done

rm -f "$results/.timings.tmp"
printf 'PROGRAM_B_EXPERIMENTS_PASS variants=14 sizes=4 baseline=%s dependent=%s\n' \
    "$baseline_10000" "$dependent_10000"
