# SysY2022 and LLVM IR preparation lab

This project contains two standard SysY2022 programs and hand-written LLVM IR
equivalents. Both source and IR versions link against the official runtime from
the course-provided `lib.tar.gz`, and the verification scripts compare their
observable standard output.

## Programs

- `comprehensive.sy` covers integer expressions, assignment, branches,
  short-circuit logic, loops, `break`, `continue`, functions, scopes, and
  one- and two-dimensional arrays.
- `comprehensive.ll` is its LLVM 14 typed-pointer equivalent.
- `advanced_complete.sy` covers standard SysY `float`, float I/O, float arrays,
  multidimensional arrays, array parameters, float arithmetic, hexadecimal
  float literals, implicit numeric/boolean conversions, and the minimum
  32-bit integer literal.
- `advanced_complete.ll` is its LLVM IR equivalent.

The previous `tensor<float, 2, 3>` syntax was provisional and is no longer
used. The formal SysY2022 language has multidimensional arrays but no tensor
keyword. See `LANGUAGE_LAYERS.md` for the distinction between SysY arrays,
MLIR tensor types, and AscendNPU IR.

## Runtime

`runtime/` contains the files supplied in `lib.tar.gz`:

- `libsysy_x86.a` for this x86-64 WSL environment;
- `libsysy_riscv.a` and `libsysy_aarch.a` for corresponding targets;
- `sylib.so`, `sylib.c`, and `sylib.h`;
- `sysy_decl.h`, a declaration-only header used solely when Clang treats a
  `.sy` file as C for local executable testing.

The official `putfloat` prints hexadecimal floating-point notation with `%a`.
For example, decimal `2.5` is printed as `0x1.4p+1`. Timing summaries emitted
by the runtime go to standard error and are stored separately during tests.

## Build and verification

```bash
cd ~/compiler-lab
make clean
make verify
```

`make verify` performs all of the following:

1. Builds both SysY-as-C test executables and both LLVM IR executables.
2. Links every executable against the official x86 SysY runtime.
3. Compares fixed expected output for the integer and float examples.
4. Runs LLVM's verifier over both bitcode files.
5. Compares source and LLVM IR behavior across integer boundary cases and
   decimal/hexadecimal floating-point inputs.

Clang is only a convenient local execution oracle here; it is not a complete
SysY parser. Course-specific grammar rules such as `++a` meaning `+(+a)` must
be implemented and tested in an actual SysY frontend rather than inferred from
C behavior.

`sysy_grammar_cases.sy` records rules that cannot be validated by compiling as
C, especially `++a`. Under the course supplement it is two unary plus tokens,
not an increment operation.

## AscendNPU material

`npu_ir/` records the lowering levels shown by the updated course slides. These
files are explanatory artifacts, not falsely claimed executable output. Actual
validation requires CANN, BiShengIR (`bishengir-opt`, `bishengir-compile`, and
`bishengir-translate`), and Ascend hardware; none is currently installed in
this WSL instance.

The pre-update files are preserved in `backup-before-sysy2022-update/`.
