#!/usr/bin/env bash
set -euo pipefail
export LC_ALL=C

root=$(cd "$(dirname "$0")/.." && pwd)
src="$root/program_c_kernel_probe/src/kernel_probe.c"
art="$root/program_c_kernel_probe/artifacts"
reports="$root/program_c_kernel_probe/reports"
results="$root/program_c_kernel_probe/results"
matrix="$results/kernel_matrix.csv"
n=5000000
repeats=20
runs=7

mkdir -p "$art" "$reports" "$results"

clang -std=c11 -Wall -Wextra -Werror -O3 -fno-vectorize -fno-slp-vectorize \
    "$src" -o "$art/scalar_no_vector"
clang -std=c11 -Wall -Wextra -Werror -O3 \
    "$src" -o "$art/auto_vector"
clang -std=c11 -Wall -Wextra -Werror -O3 -DUSE_RESTRICT \
    "$src" -o "$art/restrict"
gcc -std=c11 -Wall -Wextra -Werror -O3 \
    "$src" -o "$art/gcc_O3"
gcc -std=c11 -Wall -Wextra -Werror -O3 -flto \
    "$src" -o "$art/gcc_LTO"
gcc -std=c11 -Wall -Wextra -Werror -O3 -fopenmp \
    "$src" -o "$art/omp"

clang -std=c11 -O3 -S -emit-llvm "$src" -o "$art/auto_vector.ll"
clang -std=c11 -O3 -DUSE_RESTRICT -S -emit-llvm "$src" -o "$art/restrict.ll"
clang -std=c11 -O3 -fno-vectorize -fno-slp-vectorize -S -emit-llvm \
    "$src" -o "$art/scalar_no_vector.ll"
clang -std=c11 -O3 -S "$src" -o "$art/auto_vector.s"
clang -std=c11 -O3 -DUSE_RESTRICT -S "$src" -o "$art/restrict.s"
clang -std=c11 -O3 -fno-vectorize -fno-slp-vectorize -S \
    "$src" -o "$art/scalar_no_vector.s"

clang -std=c11 -O3 -Rpass=loop-vectorize -Rpass-missed=loop-vectorize \
    "$src" -o "$art/vector_remark" 2> "$reports/vectorize.txt"
gcc -std=c11 -O3 -fopt-info-vec-all="$reports/gcc_vectorize.txt" \
    "$src" -o "$art/gcc_vector_remark"

printf 'variant,compiler,flags,threads,n,repeats,checksum,verified,median_ns_per_element,binary_bytes\n' > "$matrix"

collect() {
    local variant=$1 compiler=$2 flags=$3 exe=$4 threads=$5
    local samples="$results/.${variant}.samples"
    local checksum= verified= output=
    : > "$samples"

    for _ in $(seq 1 "$runs"); do
        if [[ "$threads" -gt 0 ]]; then
            output=$(OMP_NUM_THREADS="$threads" "$exe" "$n" "$repeats")
        else
            output=$("$exe" "$n" "$repeats")
        fi
        checksum=$(sed -n 's/.*checksum=\([-0-9][0-9]*\).*/\1/p' <<< "$output")
        verified=$(sed -n 's/.*verified=\([01]\).*/\1/p' <<< "$output")
        sed -n 's/.*ns_per_element=\([0-9.][0-9.]*\).*/\1/p' <<< "$output" >> "$samples"
        [[ "$verified" == 1 ]]
    done

    local median bytes thread_label
    median=$(sort -n "$samples" | awk 'NR == 4 {print $1}')
    bytes=$(stat -c %s "$exe")
    thread_label=$threads
    [[ "$threads" -eq 0 ]] && thread_label=1
    printf '%s,%s,"%s",%s,%s,%s,%s,%s,%s,%s\n' \
        "$variant" "$compiler" "$flags" "$thread_label" "$n" "$repeats" \
        "$checksum" "$verified" "$median" "$bytes" >> "$matrix"
    rm -f "$samples"
}

collect scalar_no_vector clang '-O3 -fno-vectorize -fno-slp-vectorize' "$art/scalar_no_vector" 0
collect auto_vector clang '-O3' "$art/auto_vector" 0
collect restrict clang '-O3 -DUSE_RESTRICT' "$art/restrict" 0
collect gcc_O3 gcc '-O3' "$art/gcc_O3" 0
collect gcc_LTO gcc '-O3 -flto' "$art/gcc_LTO" 0
collect omp_1 gcc '-O3 -fopenmp' "$art/omp" 1
collect omp_2 gcc '-O3 -fopenmp' "$art/omp" 2
collect omp_4 gcc '-O3 -fopenmp' "$art/omp" 4
collect omp_8 gcc '-O3 -fopenmp' "$art/omp" 8

perf_status=UNAVAILABLE
if command -v perf >/dev/null 2>&1; then
    if perf stat -x, -o "$reports/perf_auto_vector.csv" \
        -e cycles,instructions,cache-references,cache-misses,branches,branch-misses \
        "$art/auto_vector" "$n" "$repeats" >/dev/null 2> "$reports/perf_error.txt"; then
        perf_status=PASS
    else
        perf_status=PERMISSION_OR_KERNEL_LIMIT
    fi
fi
printf '%s\n' "$perf_status" > "$reports/perf_status.txt"

printf 'PROGRAM_C_EXPERIMENTS_PASS variants=9 n=%s repeats=%s runs=%s perf=%s\n' \
    "$n" "$repeats" "$runs" "$perf_status"
