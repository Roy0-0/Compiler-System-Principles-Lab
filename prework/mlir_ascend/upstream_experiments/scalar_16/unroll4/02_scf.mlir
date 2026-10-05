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
    %c4 = arith.constant 4 : index
    scf.for %arg0 = %c0 to %c16 step %c4 {
      %6 = arith.index_cast %arg0 : index to i32
      %7 = arith.muli %6, %c2_i32 : i32
      memref.store %6, %0[%arg0] : memref<16xi32>
      memref.store %7, %1[%arg0] : memref<16xi32>
      %c1 = arith.constant 1 : index
      %8 = arith.addi %arg0, %c1 : index
      %9 = arith.index_cast %8 : index to i32
      %10 = arith.muli %9, %c2_i32 : i32
      %c1_6 = arith.constant 1 : index
      %11 = arith.addi %arg0, %c1_6 : index
      memref.store %9, %0[%11] : memref<16xi32>
      %c1_7 = arith.constant 1 : index
      %12 = arith.addi %arg0, %c1_7 : index
      memref.store %10, %1[%12] : memref<16xi32>
      %c2 = arith.constant 2 : index
      %13 = arith.addi %arg0, %c2 : index
      %14 = arith.index_cast %13 : index to i32
      %15 = arith.muli %14, %c2_i32 : i32
      %c2_8 = arith.constant 2 : index
      %16 = arith.addi %arg0, %c2_8 : index
      memref.store %14, %0[%16] : memref<16xi32>
      %c2_9 = arith.constant 2 : index
      %17 = arith.addi %arg0, %c2_9 : index
      memref.store %15, %1[%17] : memref<16xi32>
      %c3 = arith.constant 3 : index
      %18 = arith.addi %arg0, %c3 : index
      %19 = arith.index_cast %18 : index to i32
      %20 = arith.muli %19, %c2_i32 : i32
      %c3_10 = arith.constant 3 : index
      %21 = arith.addi %arg0, %c3_10 : index
      memref.store %19, %0[%21] : memref<16xi32>
      %c3_11 = arith.constant 3 : index
      %22 = arith.addi %arg0, %c3_11 : index
      memref.store %20, %1[%22] : memref<16xi32>
    }
    %c0_0 = arith.constant 0 : index
    %c16_1 = arith.constant 16 : index
    %c4_2 = arith.constant 4 : index
    scf.for %arg0 = %c0_0 to %c16_1 step %c4_2 {
      %6 = memref.load %0[%arg0] : memref<16xi32>
      %7 = memref.load %1[%arg0] : memref<16xi32>
      %8 = arith.addi %6, %7 : i32
      memref.store %8, %2[%arg0] : memref<16xi32>
      %c1 = arith.constant 1 : index
      %9 = arith.addi %arg0, %c1 : index
      %10 = memref.load %0[%9] : memref<16xi32>
      %c1_6 = arith.constant 1 : index
      %11 = arith.addi %arg0, %c1_6 : index
      %12 = memref.load %1[%11] : memref<16xi32>
      %13 = arith.addi %10, %12 : i32
      %c1_7 = arith.constant 1 : index
      %14 = arith.addi %arg0, %c1_7 : index
      memref.store %13, %2[%14] : memref<16xi32>
      %c2 = arith.constant 2 : index
      %15 = arith.addi %arg0, %c2 : index
      %16 = memref.load %0[%15] : memref<16xi32>
      %c2_8 = arith.constant 2 : index
      %17 = arith.addi %arg0, %c2_8 : index
      %18 = memref.load %1[%17] : memref<16xi32>
      %19 = arith.addi %16, %18 : i32
      %c2_9 = arith.constant 2 : index
      %20 = arith.addi %arg0, %c2_9 : index
      memref.store %19, %2[%20] : memref<16xi32>
      %c3 = arith.constant 3 : index
      %21 = arith.addi %arg0, %c3 : index
      %22 = memref.load %0[%21] : memref<16xi32>
      %c3_10 = arith.constant 3 : index
      %23 = arith.addi %arg0, %c3_10 : index
      %24 = memref.load %1[%23] : memref<16xi32>
      %25 = arith.addi %22, %24 : i32
      %c3_11 = arith.constant 3 : index
      %26 = arith.addi %arg0, %c3_11 : index
      memref.store %25, %2[%26] : memref<16xi32>
    }
    %c0_3 = arith.constant 0 : index
    %c16_4 = arith.constant 16 : index
    %c4_5 = arith.constant 4 : index
    %3 = scf.for %arg0 = %c0_3 to %c16_4 step %c4_5 iter_args(%arg1 = %c0_i32) -> (i32) {
      %6 = memref.load %2[%arg0] : memref<16xi32>
      %7 = arith.addi %arg1, %6 : i32
      %c1 = arith.constant 1 : index
      %8 = arith.addi %arg0, %c1 : index
      %9 = memref.load %2[%8] : memref<16xi32>
      %10 = arith.addi %7, %9 : i32
      %c2 = arith.constant 2 : index
      %11 = arith.addi %arg0, %c2 : index
      %12 = memref.load %2[%11] : memref<16xi32>
      %13 = arith.addi %10, %12 : i32
      %c3 = arith.constant 3 : index
      %14 = arith.addi %arg0, %c3 : index
      %15 = memref.load %2[%14] : memref<16xi32>
      %16 = arith.addi %13, %15 : i32
      scf.yield %16 : i32
    }
    %4 = arith.cmpi ne, %3, %c360_i32 : i32
    %5 = arith.extui %4 : i1 to i32
    memref.dealloc %0 : memref<16xi32>
    memref.dealloc %1 : memref<16xi32>
    memref.dealloc %2 : memref<16xi32>
    return %5 : i32
  }
}

