# AscendNPU IR lowering notes

This directory separates the updated AscendNPU material from executable
SysY/LLVM tests.

The course slides describe this conceptual pipeline:

```text
framework or language frontend
  -> Arith/Tensor MLIR
  -> HFusion
  -> HIVM
  -> HACC
  -> LLVM IR with NPU intrinsics
  -> kernel.o
```

For a vector addition, the important semantic change is:

```text
high level:  one tensor/vector add operation
HIVM:       GM-to-UB load + vector add + UB-to-GM store
HACC:       device entry and host/device launch semantics
LLVM:       target-specific NPU intrinsic calls
```

HFusion performs high-level legalization, decomposition, reshape propagation,
fusion, and scheduling. HIVM introduces explicit GM/UB address spaces, memory
planning, synchronization, kernel splitting, and multi-buffering. HACC records
heterogeneous launch semantics.

The snippets in `vecadd_levels.md` follow the notation in the slides. They are
illustrative because dialect spelling and registered operations must be
checked by the exact installed BiShengIR release. This WSL environment has no
CANN/BiShengIR installation or Ascend device, so claiming successful vendor
compilation would be incorrect.

Once the toolchain is available, the intended verification commands are:

```bash
bishengir-opt add.mlir \
  --convert-hfusion-to-hivm \
  --hivm-plan-memory \
  --hivm-inject-sync \
  --mlir-print-ir-after-all

bishengir-compile add.mlir -enable-hivm-compile -o kernel.o
bishengir-translate --mlir-to-llvmir add.mlir > add.ll
```
