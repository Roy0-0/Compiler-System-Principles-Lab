#!/usr/bin/env bash
set -euo pipefail

root=$(cd "$(dirname "$0")/.." && pwd)
base=${MLIR_F_DRIVE_ROOT:-/mnt/f/compiler_tools/mlir14/install/usr}
opt="$base/bin/mlir-opt-14"
translate="$base/bin/mlir-translate-14"

if [[ ! -x "$opt" && -x "$base/lib/llvm-14/bin/mlir-opt" ]]; then
  opt="$base/lib/llvm-14/bin/mlir-opt"
fi
if [[ ! -x "$translate" && -x "$base/lib/llvm-14/bin/mlir-translate" ]]; then
  translate="$base/lib/llvm-14/bin/mlir-translate"
fi

findmnt -T "$base"
[[ -x "$opt" && -x "$translate" ]]
"$opt" --version
"$translate" --version

out="$root/mlir_ascend/pass_probe_results/f_drive_probe.mlir"
"$opt" "$root/mlir_ascend/pass_probe.mlir" --canonicalize --cse -o "$out"
grep -c arith.addi "$out"
printf 'F_DRIVE_MLIR_VERIFY_PASS output=%s\n' "$out"
