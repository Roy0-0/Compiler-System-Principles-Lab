# SysY arrays, MLIR tensors, and AscendNPU IR

The updated course material describes several different language and IR layers.
They must not be treated as one source language.

## Standard SysY2022 source

SysY2022 has `int`, `float`, and `void` function returns. Its aggregate data
type is the row-major multidimensional array. For example:

```c
float matrix[2][3];
float dot(float left[][3], float right[][3]);
```

The first dimension of an array parameter is omitted. Remaining dimensions are
compile-time constant expressions. SysY2022 has no `tensor` keyword.

## MLIR tensor and memref types

The AscendNPU slides use types such as `tensor<16xi16>` and
`memref<16xi16>`. These are MLIR types after a frontend has translated source
code or a framework graph. They are not valid SysY declarations.

An illustrative lowering path is:

```text
SysY float[2][3]
  -> frontend MLIR tensor/memref
  -> HFusion operations
  -> HIVM operations with GM/UB address spaces
  -> HACC device-launch semantics
  -> LLVM IR and NPU intrinsics
  -> kernel.o
```

## What this project validates

`advanced_complete.sy` uses only standard SysY arrays and floats. Its LLVM IR
equivalent represents `float[2][3]` as `[2 x [3 x float]]`. Both executables
are linked against the supplied official x86 SysY runtime and their outputs
are compared.

The `npu_ir` directory contains teaching examples derived from the course
slides. They are intentionally marked illustrative because this WSL instance
does not currently contain CANN, BiShengIR, or Ascend NPU hardware, so the
vendor-specific dialect pipeline cannot be executed here.
