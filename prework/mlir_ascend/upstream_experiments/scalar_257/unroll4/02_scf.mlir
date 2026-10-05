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
      %11 = arith.index_cast %arg0 : index to i32
      %12 = arith.muli %11, %c2_i32 : i32
      memref.store %11, %0[%arg0] : memref<257xi32>
      memref.store %12, %1[%arg0] : memref<257xi32>
      %c1 = arith.constant 1 : index
      %13 = arith.addi %arg0, %c1 : index
      %14 = arith.index_cast %13 : index to i32
      %15 = arith.muli %14, %c2_i32 : i32
      %c1_12 = arith.constant 1 : index
      %16 = arith.addi %arg0, %c1_12 : index
      memref.store %14, %0[%16] : memref<257xi32>
      %c1_13 = arith.constant 1 : index
      %17 = arith.addi %arg0, %c1_13 : index
      memref.store %15, %1[%17] : memref<257xi32>
      %c2 = arith.constant 2 : index
      %18 = arith.addi %arg0, %c2 : index
      %19 = arith.index_cast %18 : index to i32
      %20 = arith.muli %19, %c2_i32 : i32
      %c2_14 = arith.constant 2 : index
      %21 = arith.addi %arg0, %c2_14 : index
      memref.store %19, %0[%21] : memref<257xi32>
      %c2_15 = arith.constant 2 : index
      %22 = arith.addi %arg0, %c2_15 : index
      memref.store %20, %1[%22] : memref<257xi32>
      %c3 = arith.constant 3 : index
      %23 = arith.addi %arg0, %c3 : index
      %24 = arith.index_cast %23 : index to i32
      %25 = arith.muli %24, %c2_i32 : i32
      %c3_16 = arith.constant 3 : index
      %26 = arith.addi %arg0, %c3_16 : index
      memref.store %24, %0[%26] : memref<257xi32>
      %c3_17 = arith.constant 3 : index
      %27 = arith.addi %arg0, %c3_17 : index
      memref.store %25, %1[%27] : memref<257xi32>
    }
    %c256_0 = arith.constant 256 : index
    memref.store %c256_i32, %0[%c256_0] : memref<257xi32>
    %c256_1 = arith.constant 256 : index
    memref.store %c512_i32, %1[%c256_1] : memref<257xi32>
    %c0_2 = arith.constant 0 : index
    %c256_3 = arith.constant 256 : index
    %c4_4 = arith.constant 4 : index
    scf.for %arg0 = %c0_2 to %c256_3 step %c4_4 {
      %11 = memref.load %0[%arg0] : memref<257xi32>
      %12 = memref.load %1[%arg0] : memref<257xi32>
      %13 = arith.addi %11, %12 : i32
      memref.store %13, %2[%arg0] : memref<257xi32>
      %c1 = arith.constant 1 : index
      %14 = arith.addi %arg0, %c1 : index
      %15 = memref.load %0[%14] : memref<257xi32>
      %c1_12 = arith.constant 1 : index
      %16 = arith.addi %arg0, %c1_12 : index
      %17 = memref.load %1[%16] : memref<257xi32>
      %18 = arith.addi %15, %17 : i32
      %c1_13 = arith.constant 1 : index
      %19 = arith.addi %arg0, %c1_13 : index
      memref.store %18, %2[%19] : memref<257xi32>
      %c2 = arith.constant 2 : index
      %20 = arith.addi %arg0, %c2 : index
      %21 = memref.load %0[%20] : memref<257xi32>
      %c2_14 = arith.constant 2 : index
      %22 = arith.addi %arg0, %c2_14 : index
      %23 = memref.load %1[%22] : memref<257xi32>
      %24 = arith.addi %21, %23 : i32
      %c2_15 = arith.constant 2 : index
      %25 = arith.addi %arg0, %c2_15 : index
      memref.store %24, %2[%25] : memref<257xi32>
      %c3 = arith.constant 3 : index
      %26 = arith.addi %arg0, %c3 : index
      %27 = memref.load %0[%26] : memref<257xi32>
      %c3_16 = arith.constant 3 : index
      %28 = arith.addi %arg0, %c3_16 : index
      %29 = memref.load %1[%28] : memref<257xi32>
      %30 = arith.addi %27, %29 : i32
      %c3_17 = arith.constant 3 : index
      %31 = arith.addi %arg0, %c3_17 : index
      memref.store %30, %2[%31] : memref<257xi32>
    }
    %c256_5 = arith.constant 256 : index
    %3 = memref.load %0[%c256_5] : memref<257xi32>
    %c256_6 = arith.constant 256 : index
    %4 = memref.load %1[%c256_6] : memref<257xi32>
    %5 = arith.addi %3, %4 : i32
    %c256_7 = arith.constant 256 : index
    memref.store %5, %2[%c256_7] : memref<257xi32>
    %c0_8 = arith.constant 0 : index
    %c256_9 = arith.constant 256 : index
    %c4_10 = arith.constant 4 : index
    %6 = scf.for %arg0 = %c0_8 to %c256_9 step %c4_10 iter_args(%arg1 = %c0_i32) -> (i32) {
      %11 = memref.load %2[%arg0] : memref<257xi32>
      %12 = arith.addi %arg1, %11 : i32
      %c1 = arith.constant 1 : index
      %13 = arith.addi %arg0, %c1 : index
      %14 = memref.load %2[%13] : memref<257xi32>
      %15 = arith.addi %12, %14 : i32
      %c2 = arith.constant 2 : index
      %16 = arith.addi %arg0, %c2 : index
      %17 = memref.load %2[%16] : memref<257xi32>
      %18 = arith.addi %15, %17 : i32
      %c3 = arith.constant 3 : index
      %19 = arith.addi %arg0, %c3 : index
      %20 = memref.load %2[%19] : memref<257xi32>
      %21 = arith.addi %18, %20 : i32
      scf.yield %21 : i32
    }
    %c256_11 = arith.constant 256 : index
    %7 = memref.load %2[%c256_11] : memref<257xi32>
    %8 = arith.addi %6, %7 : i32
    %9 = arith.cmpi ne, %8, %c98688_i32 : i32
    %10 = arith.extui %9 : i1 to i32
    memref.dealloc %0 : memref<257xi32>
    memref.dealloc %1 : memref<257xi32>
    memref.dealloc %2 : memref<257xi32>
    return %10 : i32
  }
}

