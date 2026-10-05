module {
  func @main() -> i32 {
    %c0_i32 = arith.constant 0 : i32
    %c408_i32 = arith.constant 408 : i32
    %c2_i32 = arith.constant 2 : i32
    %0 = memref.alloc() : memref<17xi32>
    %1 = memref.alloc() : memref<17xi32>
    %2 = memref.alloc() : memref<17xi32>
    %c0 = arith.constant 0 : index
    %c17 = arith.constant 17 : index
    %c1 = arith.constant 1 : index
    scf.for %arg0 = %c0 to %c17 step %c1 {
      %6 = arith.index_cast %arg0 : index to i32
      %7 = arith.muli %6, %c2_i32 : i32
      memref.store %6, %0[%arg0] : memref<17xi32>
      memref.store %7, %1[%arg0] : memref<17xi32>
    }
    %c0_0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c4 = arith.constant 4 : index
    scf.for %arg0 = %c0_0 to %c16 step %c4 {
      %6 = vector.load %0[%arg0] : memref<17xi32>, vector<4xi32>
      %7 = vector.load %1[%arg0] : memref<17xi32>, vector<4xi32>
      %8 = arith.addi %6, %7 : vector<4xi32>
      vector.store %8, %2[%arg0] : memref<17xi32>, vector<4xi32>
    }
    %c16_1 = arith.constant 16 : index
    %c17_2 = arith.constant 17 : index
    %c1_3 = arith.constant 1 : index
    scf.for %arg0 = %c16_1 to %c17_2 step %c1_3 {
      %6 = memref.load %0[%arg0] : memref<17xi32>
      %7 = memref.load %1[%arg0] : memref<17xi32>
      %8 = arith.addi %6, %7 : i32
      memref.store %8, %2[%arg0] : memref<17xi32>
    }
    %c0_4 = arith.constant 0 : index
    %c17_5 = arith.constant 17 : index
    %c1_6 = arith.constant 1 : index
    %3 = scf.for %arg0 = %c0_4 to %c17_5 step %c1_6 iter_args(%arg1 = %c0_i32) -> (i32) {
      %6 = memref.load %2[%arg0] : memref<17xi32>
      %7 = arith.addi %arg1, %6 : i32
      scf.yield %7 : i32
    }
    %4 = arith.cmpi ne, %3, %c408_i32 : i32
    %5 = arith.extui %4 : i1 to i32
    memref.dealloc %0 : memref<17xi32>
    memref.dealloc %1 : memref<17xi32>
    memref.dealloc %2 : memref<17xi32>
    return %5 : i32
  }
}

