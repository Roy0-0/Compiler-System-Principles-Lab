module {
  func @main() -> i32 {
    %c12 = arith.constant 12 : index
    %c8 = arith.constant 8 : index
    %c4 = arith.constant 4 : index
    %c0_i32 = arith.constant 0 : i32
    %c360_i32 = arith.constant 360 : i32
    %c2_i32 = arith.constant 2 : i32
    %c0 = arith.constant 0 : index
    %0 = memref.alloc() : memref<16xi32>
    %1 = memref.alloc() : memref<16xi32>
    %2 = memref.alloc() : memref<16xi32>
    %c0_0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c4_1 = arith.constant 4 : index
    scf.for %arg0 = %c0_0 to %c16 step %c4_1 {
      %18 = arith.index_cast %arg0 : index to i32
      %19 = arith.muli %18, %c2_i32 : i32
      memref.store %18, %0[%arg0] : memref<16xi32>
      memref.store %19, %1[%arg0] : memref<16xi32>
      %c1_7 = arith.constant 1 : index
      %20 = arith.addi %arg0, %c1_7 : index
      %21 = arith.index_cast %20 : index to i32
      %22 = arith.muli %21, %c2_i32 : i32
      %c1_8 = arith.constant 1 : index
      %23 = arith.addi %arg0, %c1_8 : index
      memref.store %21, %0[%23] : memref<16xi32>
      %c1_9 = arith.constant 1 : index
      %24 = arith.addi %arg0, %c1_9 : index
      memref.store %22, %1[%24] : memref<16xi32>
      %c2 = arith.constant 2 : index
      %25 = arith.addi %arg0, %c2 : index
      %26 = arith.index_cast %25 : index to i32
      %27 = arith.muli %26, %c2_i32 : i32
      %c2_10 = arith.constant 2 : index
      %28 = arith.addi %arg0, %c2_10 : index
      memref.store %26, %0[%28] : memref<16xi32>
      %c2_11 = arith.constant 2 : index
      %29 = arith.addi %arg0, %c2_11 : index
      memref.store %27, %1[%29] : memref<16xi32>
      %c3 = arith.constant 3 : index
      %30 = arith.addi %arg0, %c3 : index
      %31 = arith.index_cast %30 : index to i32
      %32 = arith.muli %31, %c2_i32 : i32
      %c3_12 = arith.constant 3 : index
      %33 = arith.addi %arg0, %c3_12 : index
      memref.store %31, %0[%33] : memref<16xi32>
      %c3_13 = arith.constant 3 : index
      %34 = arith.addi %arg0, %c3_13 : index
      memref.store %32, %1[%34] : memref<16xi32>
    }
    %3 = vector.load %0[%c0] : memref<16xi32>, vector<4xi32>
    %4 = vector.load %1[%c0] : memref<16xi32>, vector<4xi32>
    %5 = arith.addi %3, %4 : vector<4xi32>
    vector.store %5, %2[%c0] : memref<16xi32>, vector<4xi32>
    %6 = vector.load %0[%c4] : memref<16xi32>, vector<4xi32>
    %7 = vector.load %1[%c4] : memref<16xi32>, vector<4xi32>
    %8 = arith.addi %6, %7 : vector<4xi32>
    vector.store %8, %2[%c4] : memref<16xi32>, vector<4xi32>
    %9 = vector.load %0[%c8] : memref<16xi32>, vector<4xi32>
    %10 = vector.load %1[%c8] : memref<16xi32>, vector<4xi32>
    %11 = arith.addi %9, %10 : vector<4xi32>
    vector.store %11, %2[%c8] : memref<16xi32>, vector<4xi32>
    %12 = vector.load %0[%c12] : memref<16xi32>, vector<4xi32>
    %13 = vector.load %1[%c12] : memref<16xi32>, vector<4xi32>
    %14 = arith.addi %12, %13 : vector<4xi32>
    vector.store %14, %2[%c12] : memref<16xi32>, vector<4xi32>
    %c16_2 = arith.constant 16 : index
    %c16_3 = arith.constant 16 : index
    %c1 = arith.constant 1 : index
    scf.for %arg0 = %c16_2 to %c16_3 step %c1 {
      %18 = memref.load %0[%arg0] : memref<16xi32>
      %19 = memref.load %1[%arg0] : memref<16xi32>
      %20 = arith.addi %18, %19 : i32
      memref.store %20, %2[%arg0] : memref<16xi32>
    }
    %c0_4 = arith.constant 0 : index
    %c16_5 = arith.constant 16 : index
    %c4_6 = arith.constant 4 : index
    %15 = scf.for %arg0 = %c0_4 to %c16_5 step %c4_6 iter_args(%arg1 = %c0_i32) -> (i32) {
      %18 = memref.load %2[%arg0] : memref<16xi32>
      %19 = arith.addi %arg1, %18 : i32
      %c1_7 = arith.constant 1 : index
      %20 = arith.addi %arg0, %c1_7 : index
      %21 = memref.load %2[%20] : memref<16xi32>
      %22 = arith.addi %19, %21 : i32
      %c2 = arith.constant 2 : index
      %23 = arith.addi %arg0, %c2 : index
      %24 = memref.load %2[%23] : memref<16xi32>
      %25 = arith.addi %22, %24 : i32
      %c3 = arith.constant 3 : index
      %26 = arith.addi %arg0, %c3 : index
      %27 = memref.load %2[%26] : memref<16xi32>
      %28 = arith.addi %25, %27 : i32
      scf.yield %28 : i32
    }
    %16 = arith.cmpi ne, %15, %c360_i32 : i32
    %17 = arith.extui %16 : i1 to i32
    memref.dealloc %0 : memref<16xi32>
    memref.dealloc %1 : memref<16xi32>
    memref.dealloc %2 : memref<16xi32>
    return %17 : i32
  }
}

