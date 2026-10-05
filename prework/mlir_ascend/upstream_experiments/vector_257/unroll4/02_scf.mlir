module {
  func @main() -> i32 {
    %c512_i32 = arith.constant 512 : i32
    %c256_i32 = arith.constant 256 : i32
    %c0_i32 = arith.constant 0 : i32
    %c98688_i32 = arith.constant 98688 : i32
    %c2_i32 = arith.constant 2 : i32
    %0 = memref.alloc() : memref<257xi32>
    %1 = memref.alloc() : memref<257xi32>
    %2 = memref.alloc() : memref<257xi32>
    %c0 = arith.constant 0 : index
    %c256 = arith.constant 256 : index
    %c4 = arith.constant 4 : index
    scf.for %arg0 = %c0 to %c256 step %c4 {
      %8 = arith.index_cast %arg0 : index to i32
      %9 = arith.muli %8, %c2_i32 : i32
      memref.store %8, %0[%arg0] : memref<257xi32>
      memref.store %9, %1[%arg0] : memref<257xi32>
      %c1_9 = arith.constant 1 : index
      %10 = arith.addi %arg0, %c1_9 : index
      %11 = arith.index_cast %10 : index to i32
      %12 = arith.muli %11, %c2_i32 : i32
      %c1_10 = arith.constant 1 : index
      %13 = arith.addi %arg0, %c1_10 : index
      memref.store %11, %0[%13] : memref<257xi32>
      %c1_11 = arith.constant 1 : index
      %14 = arith.addi %arg0, %c1_11 : index
      memref.store %12, %1[%14] : memref<257xi32>
      %c2 = arith.constant 2 : index
      %15 = arith.addi %arg0, %c2 : index
      %16 = arith.index_cast %15 : index to i32
      %17 = arith.muli %16, %c2_i32 : i32
      %c2_12 = arith.constant 2 : index
      %18 = arith.addi %arg0, %c2_12 : index
      memref.store %16, %0[%18] : memref<257xi32>
      %c2_13 = arith.constant 2 : index
      %19 = arith.addi %arg0, %c2_13 : index
      memref.store %17, %1[%19] : memref<257xi32>
      %c3 = arith.constant 3 : index
      %20 = arith.addi %arg0, %c3 : index
      %21 = arith.index_cast %20 : index to i32
      %22 = arith.muli %21, %c2_i32 : i32
      %c3_14 = arith.constant 3 : index
      %23 = arith.addi %arg0, %c3_14 : index
      memref.store %21, %0[%23] : memref<257xi32>
      %c3_15 = arith.constant 3 : index
      %24 = arith.addi %arg0, %c3_15 : index
      memref.store %22, %1[%24] : memref<257xi32>
    }
    %c256_0 = arith.constant 256 : index
    memref.store %c256_i32, %0[%c256_0] : memref<257xi32>
    %c256_1 = arith.constant 256 : index
    memref.store %c512_i32, %1[%c256_1] : memref<257xi32>
    %c0_2 = arith.constant 0 : index
    %c256_3 = arith.constant 256 : index
    %c16 = arith.constant 16 : index
    scf.for %arg0 = %c0_2 to %c256_3 step %c16 {
      %8 = vector.load %0[%arg0] : memref<257xi32>, vector<4xi32>
      %9 = vector.load %1[%arg0] : memref<257xi32>, vector<4xi32>
      %10 = arith.addi %8, %9 : vector<4xi32>
      vector.store %10, %2[%arg0] : memref<257xi32>, vector<4xi32>
      %c4_9 = arith.constant 4 : index
      %11 = arith.addi %arg0, %c4_9 : index
      %12 = vector.load %0[%11] : memref<257xi32>, vector<4xi32>
      %13 = vector.load %1[%11] : memref<257xi32>, vector<4xi32>
      %14 = arith.addi %12, %13 : vector<4xi32>
      vector.store %14, %2[%11] : memref<257xi32>, vector<4xi32>
      %c8 = arith.constant 8 : index
      %15 = arith.addi %arg0, %c8 : index
      %16 = vector.load %0[%15] : memref<257xi32>, vector<4xi32>
      %17 = vector.load %1[%15] : memref<257xi32>, vector<4xi32>
      %18 = arith.addi %16, %17 : vector<4xi32>
      vector.store %18, %2[%15] : memref<257xi32>, vector<4xi32>
      %c12 = arith.constant 12 : index
      %19 = arith.addi %arg0, %c12 : index
      %20 = vector.load %0[%19] : memref<257xi32>, vector<4xi32>
      %21 = vector.load %1[%19] : memref<257xi32>, vector<4xi32>
      %22 = arith.addi %20, %21 : vector<4xi32>
      vector.store %22, %2[%19] : memref<257xi32>, vector<4xi32>
    }
    %c256_4 = arith.constant 256 : index
    %c257 = arith.constant 257 : index
    %c1 = arith.constant 1 : index
    scf.for %arg0 = %c256_4 to %c257 step %c1 {
      %8 = memref.load %0[%arg0] : memref<257xi32>
      %9 = memref.load %1[%arg0] : memref<257xi32>
      %10 = arith.addi %8, %9 : i32
      memref.store %10, %2[%arg0] : memref<257xi32>
    }
    %c0_5 = arith.constant 0 : index
    %c256_6 = arith.constant 256 : index
    %c4_7 = arith.constant 4 : index
    %3 = scf.for %arg0 = %c0_5 to %c256_6 step %c4_7 iter_args(%arg1 = %c0_i32) -> (i32) {
      %8 = memref.load %2[%arg0] : memref<257xi32>
      %9 = arith.addi %arg1, %8 : i32
      %c1_9 = arith.constant 1 : index
      %10 = arith.addi %arg0, %c1_9 : index
      %11 = memref.load %2[%10] : memref<257xi32>
      %12 = arith.addi %9, %11 : i32
      %c2 = arith.constant 2 : index
      %13 = arith.addi %arg0, %c2 : index
      %14 = memref.load %2[%13] : memref<257xi32>
      %15 = arith.addi %12, %14 : i32
      %c3 = arith.constant 3 : index
      %16 = arith.addi %arg0, %c3 : index
      %17 = memref.load %2[%16] : memref<257xi32>
      %18 = arith.addi %15, %17 : i32
      scf.yield %18 : i32
    }
    %c256_8 = arith.constant 256 : index
    %4 = memref.load %2[%c256_8] : memref<257xi32>
    %5 = arith.addi %3, %4 : i32
    %6 = arith.cmpi ne, %5, %c98688_i32 : i32
    %7 = arith.extui %6 : i1 to i32
    memref.dealloc %0 : memref<257xi32>
    memref.dealloc %1 : memref<257xi32>
    memref.dealloc %2 : memref<257xi32>
    return %7 : i32
  }
}

