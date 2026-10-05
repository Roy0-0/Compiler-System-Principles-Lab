#!/usr/bin/env bash
set -euo pipefail

lab_root=$(cd "$(dirname "$0")/../.." && pwd)
cache_dir="$lab_root/tools/cache"
install_dir="$lab_root/tools/mlir14"
mlir_opt="$install_dir/usr/bin/mlir-opt-14"
mlir_translate="$install_dir/usr/bin/mlir-translate-14"

if [[ -x "$mlir_opt" && -x "$mlir_translate" ]]; then
    "$mlir_opt" --version
    "$mlir_translate" --version
    printf 'MLIR_LOCAL_INSTALL_PRESENT dir=%s\n' "$install_dir"
    exit 0
fi

command -v apt-get >/dev/null 2>&1 || {
    printf 'apt-get is required to download Ubuntu mlir-14-tools\n' >&2
    exit 1
}
command -v dpkg-deb >/dev/null 2>&1 || {
    printf 'dpkg-deb is required to extract mlir-14-tools\n' >&2
    exit 1
}

mkdir -p "$cache_dir" "$install_dir"
(
    cd "$cache_dir"
    apt-get download mlir-14-tools
    package=$(find . -maxdepth 1 -type f -name 'mlir-14-tools_*.deb' -printf '%T@ %p\n' \
        | sort -nr | head -n 1 | cut -d' ' -f2-)
    [[ -n "$package" ]] || {
        printf 'mlir-14-tools package download was not found\n' >&2
        exit 1
    }
    dpkg-deb -x "$package" "$install_dir"
    sha256sum "$package" > mlir-14-tools.sha256
)

"$mlir_opt" --version
"$mlir_translate" --version
printf 'MLIR_LOCAL_INSTALL_PASS dir=%s\n' "$install_dir"

