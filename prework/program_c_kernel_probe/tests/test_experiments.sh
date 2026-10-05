#!/usr/bin/env bash
set -euo pipefail

root=$(cd "$(dirname "$0")/../.." && pwd)
bash "$root/scripts/run_program_c_experiments.sh"

matrix="$root/program_c_kernel_probe/results/kernel_matrix.csv"
[[ -s "$matrix" ]]

for variant in scalar_no_vector auto_vector restrict gcc_O3 gcc_LTO omp_1 omp_2 omp_4 omp_8; do
    grep -q "^$variant," "$matrix"
done

if awk -F, 'NR > 1 && $8 != 1 {exit 1}' "$matrix"; then
    :
else
    printf 'verification column contains a failure\n' >&2
    exit 1
fi

printf 'PROGRAM_C_EXPERIMENT_TEST_PASS variants=9\n'
