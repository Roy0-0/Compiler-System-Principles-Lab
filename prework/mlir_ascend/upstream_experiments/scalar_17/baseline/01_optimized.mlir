module {
  func @main() -> i32 {
    %0 = memref.alloc() : memref<17xi32>
    %1 = memref.alloc() : memref<17xi32>
    %2 = memref.alloc() : memref<17xi32>
    %c0_i32 = arith.constant 0 : i32
    %c2_i32 = arith.constant 2 : i32
    %c408_i32 = arith.constant 408 : i32
    %c0_i32_0 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    affine.for %arg0 = 0 to 17 {
      %6 = arith.index_cast %arg0 : index to i32
      %7 = arith.muli %6, %c2_i32 : i32
      affine.store %6, %0[%arg0] : memref<17xi32>
      affine.store %7, %1[%arg0] : memref<17xi32>
    }
    affine.for %arg0 = 0 to 17 {
      %6 = affine.load %0[%arg0] : memref<17xi32>
      %7 = affine.load %1[%arg0] : memref<17xi32>
      %8 = arith.addi %6, %7 : i32
      affine.store %8, %2[%arg0] : memref<17xi32>
    }
    %3 = affine.for %arg0 = 0 to 17 iter_args(%arg1 = %c0_i32) -> (i32) {
      %6 = affine.load %2[%arg0] : memref<17xi32>
      %7 = arith.addi %arg1, %6 : i32
      affine.yield %7 : i32
    }
    %4 = arith.cmpi eq, %3, %c408_i32 : i32
    %5 = select %4, %c0_i32_0, %c1_i32 : i32
    memref.dealloc %0 : memref<17xi32>
    memref.dealloc %1 : memref<17xi32>
    memref.dealloc %2 : memref<17xi32>
    return %5 : i32
  }
}

