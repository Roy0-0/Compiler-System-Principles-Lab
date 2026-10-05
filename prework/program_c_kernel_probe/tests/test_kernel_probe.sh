#!/usr/bin/env bash
set -euo pipefail

root=$(cd "$(dirname "$0")/../.." && pwd)
src="$root/program_c_kernel_probe/src/kernel_probe.c"
bin="$root/program_c_kernel_probe/artifacts/kernel_probe_test"

clang -std=c11 -Wall -Wextra -Werror -O2 "$src" -o "$bin"

output=$("$bin" 10000 3)
grep -q 'mode=independent' <<< "$output"
grep -q 'n=10000' <<< "$output"
grep -q 'repeats=3' <<< "$output"
grep -q 'checksum=1092486' <<< "$output"
grep -q 'verified=1' <<< "$output"

elapsed=$(sed -n 's/.*elapsed_ns=\([0-9][0-9]*\).*/\1/p' <<< "$output")
[[ -n "$elapsed" && "$elapsed" -gt 0 ]]

set +e
"$bin" 0 3 >/dev/null 2>&1
bad_n=$?
"$bin" 10000 0 >/dev/null 2>&1
bad_repeats=$?
set -e
[[ "$bad_n" -eq 2 ]]
[[ "$bad_repeats" -eq 2 ]]

printf 'PROGRAM_C_UNIT_PASS checksum=1092486 invalid_args=2\n'
