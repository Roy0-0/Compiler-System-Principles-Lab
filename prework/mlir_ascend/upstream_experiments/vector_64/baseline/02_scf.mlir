module {
  func @main() -> i32 {
    %0 = memref.alloc() : memref<64xi32>
    %1 = memref.alloc() : memref<64xi32>
    %2 = memref.alloc() : memref<64xi32>
    %c0_i32 = arith.constant 0 : i32
    %c2_i32 = arith.constant 2 : i32
    %c6048_i32 = arith.constant 6048 : i32
    %c0_i32_0 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c1 = arith.constant 1 : index
    scf.for %arg0 = %c0 to %c64 step %c1 {
      %6 = arith.index_cast %arg0 : index to i32
      %7 = arith.muli %6, %c2_i32 : i32
      memref.store %6, %0[%arg0] : memref<64xi32>
      memref.store %7, %1[%arg0] : memref<64xi32>
    }
    %c0_1 = arith.constant 0 : index
    %c64_2 = arith.constant 64 : index
    %c4 = arith.constant 4 : index
    scf.for %arg0 = %c0_1 to %c64_2 step %c4 {
      %6 = vector.load %0[%arg0] : memref<64xi32>, vector<4xi32>
      %7 = vector.load %1[%arg0] : memref<64xi32>, vector<4xi32>
      %8 = arith.addi %6, %7 : vector<4xi32>
      vector.store %8, %2[%arg0] : memref<64xi32>, vector<4xi32>
    }
    %c64_3 = arith.constant 64 : index
    %c64_4 = arith.constant 64 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg0 = %c64_3 to %c64_4 step %c1_5 {
      %6 = memref.load %0[%arg0] : memref<64xi32>
      %7 = memref.load %1[%arg0] : memref<64xi32>
      %8 = arith.addi %6, %7 : i32
      memref.store %8, %2[%arg0] : memref<64xi32>
    }
    %c0_6 = arith.constant 0 : index
    %c64_7 = arith.constant 64 : index
    %c1_8 = arith.constant 1 : index
    %3 = scf.for %arg0 = %c0_6 to %c64_7 step %c1_8 iter_args(%arg1 = %c0_i32) -> (i32) {
      %6 = memref.load %2[%arg0] : memref<64xi32>
      %7 = arith.addi %arg1, %6 : i32
      scf.yield %7 : i32
    }
    %4 = arith.cmpi eq, %3, %c6048_i32 : i32
    %5 = select %4, %c0_i32_0, %c1_i32 : i32
    memref.dealloc %0 : memref<64xi32>
    memref.dealloc %1 : memref<64xi32>
    memref.dealloc %2 : memref<64xi32>
    return %5 : i32
  }
}

