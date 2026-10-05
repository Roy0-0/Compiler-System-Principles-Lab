module {
  func @main() -> i32 {
    %c0_i32 = arith.constant 0 : i32
    %c360_i32 = arith.constant 360 : i32
    %c2_i32 = arith.constant 2 : i32
    %0 = memref.alloc() : memref<16xi32>
    %1 = memref.alloc() : memref<16xi32>
    %2 = memref.alloc() : memref<16xi32>
    %c0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg0 = %c0 to %c16 step %c1 {
      %6 = arith.index_cast %arg0 : index to i32
      %7 = arith.muli %6, %c2_i32 : i32
      memref.store %6, %0[%arg0] : memref<16xi32>
      memref.store %7, %1[%arg0] : memref<16xi32>
    }
    %c0_0 = arith.constant 0 : index
    %c16_1 = arith.constant 16 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg0 = %c0_0 to %c16_1 step %c1_2 {
      %6 = memref.load %0[%arg0] : memref<16xi32>
      %7 = memref.load %1[%arg0] : memref<16xi32>
      %8 = arith.addi %6, %7 : i32
      memref.store %8, %2[%arg0] : memref<16xi32>
    }
    %c0_3 = arith.constant 0 : index
    %c16_4 = arith.constant 16 : index
    %c1_5 = arith.constant 1 : index
    %3 = scf.for %arg0 = %c0_3 to %c16_4 step %c1_5 iter_args(%arg1 = %c0_i32) -> (i32) {
      %6 = memref.load %2[%arg0] : memref<16xi32>
      %7 = arith.addi %arg1, %6 : i32
      scf.yield %7 : i32
    }
    %4 = arith.cmpi ne, %3, %c360_i32 : i32
    %5 = arith.extui %4 : i1 to i32
    memref.dealloc %0 : memref<16xi32>
    memref.dealloc %1 : memref<16xi32>
    memref.dealloc %2 : memref<16xi32>
    return %5 : i32
  }
}

