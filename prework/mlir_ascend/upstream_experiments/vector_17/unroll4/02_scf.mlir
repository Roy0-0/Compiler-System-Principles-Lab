module {
  func @main() -> i32 {
    %c12 = arith.constant 12 : index
    %c8 = arith.constant 8 : index
    %c4 = arith.constant 4 : index
    %c32_i32 = arith.constant 32 : i32
    %c16_i32 = arith.constant 16 : i32
    %c0_i32 = arith.constant 0 : i32
    %c408_i32 = arith.constant 408 : i32
    %c2_i32 = arith.constant 2 : i32
    %c0 = arith.constant 0 : index
    %0 = memref.alloc() : memref<17xi32>
    %1 = memref.alloc() : memref<17xi32>
    %2 = memref.alloc() : memref<17xi32>
    %c0_0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c4_1 = arith.constant 4 : index
    scf.for %arg0 = %c0_0 to %c16 step %c4_1 {
      %20 = arith.index_cast %arg0 : index to i32
      %21 = arith.muli %20, %c2_i32 : i32
      memref.store %20, %0[%arg0] : memref<17xi32>
      memref.store %21, %1[%arg0] : memref<17xi32>
      %c1_9 = arith.constant 1 : index
      %22 = arith.addi %arg0, %c1_9 : index
      %23 = arith.index_cast %22 : index to i32
      %24 = arith.muli %23, %c2_i32 : i32
      %c1_10 = arith.constant 1 : index
      %25 = arith.addi %arg0, %c1_10 : index
      memref.store %23, %0[%25] : memref<17xi32>
      %c1_11 = arith.constant 1 : index
      %26 = arith.addi %arg0, %c1_11 : index
      memref.store %24, %1[%26] : memref<17xi32>
      %c2 = arith.constant 2 : index
      %27 = arith.addi %arg0, %c2 : index
      %28 = arith.index_cast %27 : index to i32
      %29 = arith.muli %28, %c2_i32 : i32
      %c2_12 = arith.constant 2 : index
      %30 = arith.addi %arg0, %c2_12 : index
      memref.store %28, %0[%30] : memref<17xi32>
      %c2_13 = arith.constant 2 : index
      %31 = arith.addi %arg0, %c2_13 : index
      memref.store %29, %1[%31] : memref<17xi32>
      %c3 = arith.constant 3 : index
      %32 = arith.addi %arg0, %c3 : index
      %33 = arith.index_cast %32 : index to i32
      %34 = arith.muli %33, %c2_i32 : i32
      %c3_14 = arith.constant 3 : index
      %35 = arith.addi %arg0, %c3_14 : index
      memref.store %33, %0[%35] : memref<17xi32>
      %c3_15 = arith.constant 3 : index
      %36 = arith.addi %arg0, %c3_15 : index
      memref.store %34, %1[%36] : memref<17xi32>
    }
    %c16_2 = arith.constant 16 : index
    memref.store %c16_i32, %0[%c16_2] : memref<17xi32>
    %c16_3 = arith.constant 16 : index
    memref.store %c32_i32, %1[%c16_3] : memref<17xi32>
    %3 = vector.load %0[%c0] : memref<17xi32>, vector<4xi32>
    %4 = vector.load %1[%c0] : memref<17xi32>, vector<4xi32>
    %5 = arith.addi %3, %4 : vector<4xi32>
    vector.store %5, %2[%c0] : memref<17xi32>, vector<4xi32>
    %6 = vector.load %0[%c4] : memref<17xi32>, vector<4xi32>
    %7 = vector.load %1[%c4] : memref<17xi32>, vector<4xi32>
    %8 = arith.addi %6, %7 : vector<4xi32>
    vector.store %8, %2[%c4] : memref<17xi32>, vector<4xi32>
    %9 = vector.load %0[%c8] : memref<17xi32>, vector<4xi32>
    %10 = vector.load %1[%c8] : memref<17xi32>, vector<4xi32>
    %11 = arith.addi %9, %10 : vector<4xi32>
    vector.store %11, %2[%c8] : memref<17xi32>, vector<4xi32>
    %12 = vector.load %0[%c12] : memref<17xi32>, vector<4xi32>
    %13 = vector.load %1[%c12] : memref<17xi32>, vector<4xi32>
    %14 = arith.addi %12, %13 : vector<4xi32>
    vector.store %14, %2[%c12] : memref<17xi32>, vector<4xi32>
    %c16_4 = arith.constant 16 : index
    %c17 = arith.constant 17 : index
    %c1 = arith.constant 1 : index
    scf.for %arg0 = %c16_4 to %c17 step %c1 {
      %20 = memref.load %0[%arg0] : memref<17xi32>
      %21 = memref.load %1[%arg0] : memref<17xi32>
      %22 = arith.addi %20, %21 : i32
      memref.store %22, %2[%arg0] : memref<17xi32>
    }
    %c0_5 = arith.constant 0 : index
    %c16_6 = arith.constant 16 : index
    %c4_7 = arith.constant 4 : index
    %15 = scf.for %arg0 = %c0_5 to %c16_6 step %c4_7 iter_args(%arg1 = %c0_i32) -> (i32) {
      %20 = memref.load %2[%arg0] : memref<17xi32>
      %21 = arith.addi %arg1, %20 : i32
      %c1_9 = arith.constant 1 : index
      %22 = arith.addi %arg0, %c1_9 : index
      %23 = memref.load %2[%22] : memref<17xi32>
      %24 = arith.addi %21, %23 : i32
      %c2 = arith.constant 2 : index
      %25 = arith.addi %arg0, %c2 : index
      %26 = memref.load %2[%25] : memref<17xi32>
      %27 = arith.addi %24, %26 : i32
      %c3 = arith.constant 3 : index
      %28 = arith.addi %arg0, %c3 : index
      %29 = memref.load %2[%28] : memref<17xi32>
      %30 = arith.addi %27, %29 : i32
      scf.yield %30 : i32
    }
    %c16_8 = arith.constant 16 : index
    %16 = memref.load %2[%c16_8] : memref<17xi32>
    %17 = arith.addi %15, %16 : i32
    %18 = arith.cmpi ne, %17, %c408_i32 : i32
    %19 = arith.extui %18 : i1 to i32
    memref.dealloc %0 : memref<17xi32>
    memref.dealloc %1 : memref<17xi32>
    memref.dealloc %2 : memref<17xi32>
    return %19 : i32
  }
}

