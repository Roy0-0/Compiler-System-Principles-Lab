# VecAdd at the documented IR levels

The following fragments explain the lowering. They are not accepted as
validated BiShengIR input until run against the course's exact tool version.

## Level 0: frontend tensor/arith MLIR

```mlir
func.func @vecadd(%a: tensor<16xi16>, %b: tensor<16xi16>)
    -> tensor<16xi16> {
  %c = arith.addi %a, %b : tensor<16xi16>
  return %c : tensor<16xi16>
}
```

This is device independent. It contains neither explicit memory nor NPU
address spaces.

## Level 1: HFusion

```mlir
%c = hfusion.vadd
  ins(%a, %b : memref<16xi16>, memref<16xi16>)
  outs(%out : memref<16xi16>)
```

The operation now belongs to the NPU-oriented high-level fusion dialect, but
the calculation is still expressed as one vector operation.

## Level 2: HIVM

```mlir
%ub_a = memref.alloc() : memref<16xi16, #hivm.address_space<ub>>
%ub_b = memref.alloc() : memref<16xi16, #hivm.address_space<ub>>
%ub_c = memref.alloc() : memref<16xi16, #hivm.address_space<ub>>
hivm.hir.load  ins(%a_gm) outs(%ub_a)
hivm.hir.load  ins(%b_gm) outs(%ub_b)
hivm.hir.vadd  ins(%ub_a, %ub_b) outs(%ub_c)
hivm.hir.store ins(%ub_c) outs(%c_gm)
```

The compiler now manages Global Memory and Unified Buffer explicitly. Memory
planning assigns UB offsets and synchronization passes protect the load,
compute, and store pipeline.

## Level 3: HACC

```mlir
func.func @add(...) attributes {
  hacc.entry,
  hacc.function_kind = #hacc.function_kind<DEVICE>
} {
  // HIVM operations
  return
}
```

The attributes state that the function is a device kernel entry.

## Level 4: illustrative LLVM IR shape

```llvm
define void @add(i16* %a, i16* %b, i16* %c) {
  call void @llvm.npu.load_gm_to_ub(i16* %a, i16* %ub_a)
  call void @llvm.npu.load_gm_to_ub(i16* %b, i16* %ub_b)
  call void @llvm.npu.vadd_i16(i16* %ub_a, i16* %ub_b, i16* %ub_c)
  call void @llvm.npu.store_ub_to_gm(i16* %ub_c, i16* %c)
  ret void
}
```

The exact intrinsic declarations and address-space types are target and
toolchain-version specific.
