#!/usr/bin/env bash
set -euo pipefail

root=$(cd "$(dirname "$0")" && pwd)
run_performance=false
run_mlir=false

for option in "$@"; do
  case "$option" in
    --performance) run_performance=true ;;
    --mlir) run_mlir=true ;;
    *) printf 'unknown option: %s\n' "$option" >&2; exit 2 ;;
  esac
done

printf '%s\n' '== Integrated source snapshot =='
(
  cd "$root/prework"
  sha256sum --quiet -c evidence/integration-source.sha256
)
printf '%s\n' 'INTEGRATION_SOURCE_MANIFEST_PASS'

printf '%s\n' '== SysY/LLVM comprehensive verification =='
make -C "$root" verify

printf '%s\n' '== Program A build and equivalence verification =='
bash "$root/prework/scripts/build_program_a.sh"
bash "$root/prework/scripts/verify_program_a.sh"

printf '%s\n' '== Program C unit verification =='
bash "$root/prework/program_c_kernel_probe/tests/test_kernel_probe.sh"

if $run_performance; then
  printf '%s\n' '== Program B performance experiments =='
  bash "$root/prework/scripts/run_program_b_experiments.sh"
  printf '%s\n' '== Program C performance experiments =='
  bash "$root/prework/program_c_kernel_probe/tests/test_experiments.sh"
else
  printf '%s\n' 'SKIP performance experiments (use --performance)'
fi

if $run_mlir; then
  printf '%s\n' '== MLIR exploration =='
  python3 "$root/prework/scripts/run_mlir_exploration.py"
  bash "$root/prework/scripts/run_mlir_pass_probe.sh"
  python3 "$root/prework/scripts/verify_mlir_negative_controls.py"
  python3 "$root/prework/scripts/summarize_mlir.py"
else
  printf '%s\n' 'SKIP MLIR rerun (use --mlir to run the project-local tools)'
fi

printf '%s\n' 'COMPILER_LAB_VERIFY_PASS'
