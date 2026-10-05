#!/usr/bin/env bash
set -euo pipefail

root=$(cd "$(dirname "$0")/.." && pwd)
out="$root/evidence/environment.txt"

{
    printf 'captured_at_utc=%s\n' "$(date -u +%Y-%m-%dT%H:%M:%SZ)"
    printf '\n[uname]\n'
    uname -a
    printf '\n[clang]\n'
    clang --version
    printf '\n[gcc]\n'
    gcc --version | head -n 1
    printf '\n[llvm-as]\n'
    llvm-as --version | head -n 1
    printf '\n[opt]\n'
    opt --version | head -n 1
    printf '\n[binutils]\n'
    ld --version | head -n 1
    objdump --version | head -n 1
    printf '\n[riscv-runtime]\n'
    command -v riscv64-linux-gnu-gcc || true
    command -v qemu-riscv64 || true
} > "$out"

printf 'ENVIRONMENT_CAPTURED %s\n' "$out"
