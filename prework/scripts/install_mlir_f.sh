#!/usr/bin/env bash
set -euo pipefail
base=/mnt/f/compiler_tools/mlir14
mkdir -p "$base/downloads" "$base/install" "$base/logs"
cd "$base/downloads"
apt-get download mlir-14-tools 2>&1 | tee "$base/logs/download.log"
for package in mlir-14-tools_*.deb; do
    dpkg-deb -x "$package" "$base/install"
    sha256sum "$package"
done > "$base/logs/packages.sha256"
"$base/install/usr/bin/mlir-opt-14" --version | tee "$base/logs/version.txt"
ldd "$base/install/usr/bin/mlir-opt-14" > "$base/logs/dependencies.txt"
