# SysY comprehensive example

This directory contains a SysY example and a hand-written equivalent LLVM IR
program for the compiler preparation assignment.

## Files

- `comprehensive.sy`: the SysY source program.
- `comprehensive.ll`: equivalent hand-written LLVM IR using LLVM 14 typed pointers.
- `advanced_complete.esy`: extended SysY covering float and tensor types.
- `advanced_complete.ll`: hand-written equivalent IR for all optional features.
- `TENSOR_EXTENSION.md`: provisional tensor grammar, semantics, and lowering.
- `lower_tensor.py`: lowers the documented tensor syntax for executable tests.
- `sysy_runtime.c`: a minimal local implementation of `getint`, `putint`, and `putch`.
- `sysy_runtime_extended.c`: local `getfloat`/`putfloat` runtime adapter.
- `Makefile`: builds and verifies both implementations.
- `verify.sh`: runs LLVM verification and several branch/boundary cases.
- `test-input.txt`: the standard test input.
- `expected-output.txt`: the expected output for that input.

## Requirement coverage

| Requirement | Example location |
| --- | --- |
| Global/local variables and constants | `LIMIT`, `global_bias`, and local variables |
| Initialization and assignment | global arrays and assignments in `main` |
| Arithmetic `+ - * / %` | `arithmetic_demo` |
| Unary `+ - !` | `abs_val`, `arithmetic_demo`, and `classify` |
| Relations `== != < > <= >=` | branches and loop conditions |
| Short-circuit `&&` and `||` | `classify` |
| `if`/`else` and nested blocks | `main`, `classify`, and `emit` |
| `while`, `break`, and `continue` | `sum_selected` |
| Functions and calls | all helper functions |
| Expression statement | discarded `classify(n)` call |
| One-dimensional arrays | `weights` and `array_sum` |
| Two-dimensional arrays | `table` and `matrix_sum` |
| Float constants, variables, storage, and arithmetic | `advanced_complete.esy` |
| Tensor declaration, initialization, access, passing, and reduction | `advanced_complete.esy` |
| Nested scope and shadowing | local `global_bias` block in `main` |
| SysY runtime I/O | `getint`, `putint`, and `putch` |
| Comments | file and function comments |

The basic example stays within standard integer SysY. The advanced example adds
all optional language features named in the assignment. Arrays and floats use
the usual extended SysY forms. The supplied course files do not define tensor
syntax, so `TENSOR_EXTENSION.md` records the provisional syntax and semantics
instead of presenting an invented form as an official course standard.

## Build and test

```bash
cd ~/compiler-lab
./verify.sh
```

Expected result:

```text
PASS: SysY/C and LLVM IR outputs are identical.
```

With input `5`, both programs print:

```text
30 9 15 21 1 5 4 83
```

The fields are, in order: arithmetic result, selected odd-number sum, prefix
sum of `weights`, matrix sum, classification result, absolute input, updated
global bias, and combined final result.

With advanced input `-2.5`, the extended SysY and advanced IR programs print:

```text
2.500000 7.625000 8.750000 18.875000
```

## Useful LLVM commands

```bash
llvm-as comprehensive.ll -o comprehensive.bc
lli comprehensive.bc < test-input.txt
clang comprehensive.ll sysy_runtime.c -o ir_demo
```

`lli` alone cannot resolve the external SysY runtime functions in this example.
Use the linked `ir_demo`, or load a course-provided runtime library when using
`lli`.
