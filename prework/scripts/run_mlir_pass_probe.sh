#!/usr/bin/env bash
set -euo pipefail
root=$(cd "$(dirname "$0")/.." && pwd)

find_mlir_opt() {
  if [[ -n "${MLIR_TOOLS_DIR:-}" && -x "$MLIR_TOOLS_DIR/mlir-opt-14" ]]; then
    printf '%s\n' "$MLIR_TOOLS_DIR/mlir-opt-14"
    return
  fi
  if command -v mlir-opt-14 >/dev/null 2>&1; then
    command -v mlir-opt-14
    return
  fi
  for candidate in \
    "$root/../tools/mlir14/usr/bin/mlir-opt-14" \
    /usr/lib/llvm-14/bin/mlir-opt \
    /mnt/f/compiler_tools/mlir14/install/usr/bin/mlir-opt-14 \
    /mnt/f/compiler_tools/mlir14/install/usr/lib/llvm-14/bin/mlir-opt; do
    if [[ -x "$candidate" ]]; then
      printf '%s\n' "$candidate"
      return
    fi
  done
  printf 'mlir-opt-14 not found; install mlir-14-tools or set MLIR_TOOLS_DIR\n' >&2
  return 1
}

tool=$(find_mlir_opt)
src="$root/mlir_ascend/pass_probe.mlir"
out="$root/mlir_ascend/pass_probe_results"
mkdir -p "$out"
"$tool" "$src" -o "$out/baseline.mlir"
"$tool" "$src" --canonicalize -o "$out/canonicalize.mlir"
"$tool" "$src" --cse -o "$out/cse.mlir"
"$tool" "$src" --canonicalize --cse -o "$out/canonicalize_cse.mlir"
"$tool" "$src" --cse --canonicalize -o "$out/cse_canonicalize.mlir"
printf 'stage,addi_count,constant_count\n' > "$out/statistics.csv"
for stage in baseline canonicalize cse canonicalize_cse cse_canonicalize; do
  adds=$(grep -c arith.addi "$out/$stage.mlir" || true)
  constants=$(grep -c arith.constant "$out/$stage.mlir" || true)
  printf '%s,%s,%s\n' "$stage" "$adds" "$constants" >> "$out/statistics.csv"
done
cat "$out/statistics.csv"
