#!/usr/bin/env bash
set -euo pipefail

root=$(cd "$(dirname "$0")/.." && pwd)
cd "$root"

{
  cut -c67- evidence/source-baseline.sha256
  printf '%s\n' \
    ../.gitignore \
    ../verify_all.sh \
    ../README.md \
    ../PROJECT_REQUIREMENTS_COVERAGE.md \
    scripts/collect_environment.sh \
    scripts/install_mlir_local.sh \
    scripts/build_program_a.sh \
    scripts/verify_program_a.sh \
    scripts/run_program_b_experiments.sh \
    scripts/run_program_c_experiments.sh \
    scripts/run_mlir_exploration.py \
    scripts/run_mlir_pass_probe.sh \
    scripts/verify_mlir_negative_controls.py \
    scripts/verify_f_drive_tools.sh \
    scripts/summarize_mlir.py \
    scripts/refresh_integration_manifest.sh \
    evidence/project_status.md \
    program_a_factorial/src/newlib_glibc_bridge.c \
    program_c_kernel_probe/tests/test_kernel_probe.sh \
    program_c_kernel_probe/tests/test_experiments.sh \
    README.md \
    program_b_optimization/README.md \
    program_b_optimization/results/analysis.md \
    program_c_kernel_probe/README.md \
    program_c_kernel_probe/results/analysis.md \
    report/report.md
} | sort -u | xargs -d '\n' sha256sum > evidence/integration-source.sha256

sha256sum --quiet -c evidence/integration-source.sha256
printf 'INTEGRATION_MANIFEST_REFRESH_PASS entries=%s\n' \
  "$(wc -l < evidence/integration-source.sha256)"
