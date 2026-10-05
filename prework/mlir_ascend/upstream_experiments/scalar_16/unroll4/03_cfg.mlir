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
    br ^bb1(%c0 : index)
  ^bb1(%3: index):  // 2 preds: ^bb0, ^bb2
    %4 = arith.cmpi slt, %3, %c16 : index
    cond_br %4, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %5 = arith.index_cast %3 : index to i32
    %6 = arith.muli %5, %c2_i32 : i32
    memref.store %5, %0[%3] : memref<16xi32>
    memref.store %6, %1[%3] : memref<16xi32>
    %c1 = arith.constant 1 : index
    %7 = arith.addi %3, %c1 : index
    %8 = arith.index_cast %7 : index to i32
    %9 = arith.muli %8, %c2_i32 : i32
    %c1_0 = arith.constant 1 : index
    %10 = arith.addi %3, %c1_0 : index
    memref.store %8, %0[%10] : memref<16xi32>
    %c1_1 = arith.constant 1 : index
    %11 = arith.addi %3, %c1_1 : index
    memref.store %9, %1[%11] : memref<16xi32>
    %c2 = arith.constant 2 : index
    %12 = arith.addi %3, %c2 : index
    %13 = arith.index_cast %12 : index to i32
    %14 = arith.muli %13, %c2_i32 : i32
    %c2_2 = arith.constant 2 : index
    %15 = arith.addi %3, %c2_2 : index
    memref.store %13, %0[%15] : memref<16xi32>
    %c2_3 = arith.constant 2 : index
    %16 = arith.addi %3, %c2_3 : index
    memref.store %14, %1[%16] : memref<16xi32>
    %c3 = arith.constant 3 : index
    %17 = arith.addi %3, %c3 : index
    %18 = arith.index_cast %17 : index to i32
    %19 = arith.muli %18, %c2_i32 : i32
    %c3_4 = arith.constant 3 : index
    %20 = arith.addi %3, %c3_4 : index
    memref.store %18, %0[%20] : memref<16xi32>
    %c3_5 = arith.constant 3 : index
    %21 = arith.addi %3, %c3_5 : index
    memref.store %19, %1[%21] : memref<16xi32>
    %22 = arith.addi %3, %c4 : index
    br ^bb1(%22 : index)
  ^bb3:  // pred: ^bb1
    %c0_6 = arith.constant 0 : index
    %c16_7 = arith.constant 16 : index
    %c4_8 = arith.constant 4 : index
    br ^bb4(%c0_6 : index)
  ^bb4(%23: index):  // 2 preds: ^bb3, ^bb5
    %24 = arith.cmpi slt, %23, %c16_7 : index
    cond_br %24, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %25 = memref.load %0[%23] : memref<16xi32>
    %26 = memref.load %1[%23] : memref<16xi32>
    %27 = arith.addi %25, %26 : i32
    memref.store %27, %2[%23] : memref<16xi32>
    %c1_9 = arith.constant 1 : index
    %28 = arith.addi %23, %c1_9 : index
    %29 = memref.load %0[%28] : memref<16xi32>
    %c1_10 = arith.constant 1 : index
    %30 = arith.addi %23, %c1_10 : index
    %31 = memref.load %1[%30] : memref<16xi32>
    %32 = arith.addi %29, %31 : i32
    %c1_11 = arith.constant 1 : index
    %33 = arith.addi %23, %c1_11 : index
    memref.store %32, %2[%33] : memref<16xi32>
    %c2_12 = arith.constant 2 : index
    %34 = arith.addi %23, %c2_12 : index
    %35 = memref.load %0[%34] : memref<16xi32>
    %c2_13 = arith.constant 2 : index
    %36 = arith.addi %23, %c2_13 : index
    %37 = memref.load %1[%36] : memref<16xi32>
    %38 = arith.addi %35, %37 : i32
    %c2_14 = arith.constant 2 : index
    %39 = arith.addi %23, %c2_14 : index
    memref.store %38, %2[%39] : memref<16xi32>
    %c3_15 = arith.constant 3 : index
    %40 = arith.addi %23, %c3_15 : index
    %41 = memref.load %0[%40] : memref<16xi32>
    %c3_16 = arith.constant 3 : index
    %42 = arith.addi %23, %c3_16 : index
    %43 = memref.load %1[%42] : memref<16xi32>
    %44 = arith.addi %41, %43 : i32
    %c3_17 = arith.constant 3 : index
    %45 = arith.addi %23, %c3_17 : index
    memref.store %44, %2[%45] : memref<16xi32>
    %46 = arith.addi %23, %c4_8 : index
    br ^bb4(%46 : index)
  ^bb6:  // pred: ^bb4
    %c0_18 = arith.constant 0 : index
    %c16_19 = arith.constant 16 : index
    %c4_20 = arith.constant 4 : index
    br ^bb7(%c0_18, %c0_i32 : index, i32)
  ^bb7(%47: index, %48: i32):  // 2 preds: ^bb6, ^bb8
    %49 = arith.cmpi slt, %47, %c16_19 : index
    cond_br %49, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %50 = memref.load %2[%47] : memref<16xi32>
    %51 = arith.addi %48, %50 : i32
    %c1_21 = arith.constant 1 : index
    %52 = arith.addi %47, %c1_21 : index
    %53 = memref.load %2[%52] : memref<16xi32>
    %54 = arith.addi %51, %53 : i32
    %c2_22 = arith.constant 2 : index
    %55 = arith.addi %47, %c2_22 : index
    %56 = memref.load %2[%55] : memref<16xi32>
    %57 = arith.addi %54, %56 : i32
    %c3_23 = arith.constant 3 : index
    %58 = arith.addi %47, %c3_23 : index
    %59 = memref.load %2[%58] : memref<16xi32>
    %60 = arith.addi %57, %59 : i32
    %61 = arith.addi %47, %c4_20 : index
    br ^bb7(%61, %60 : index, i32)
  ^bb9:  // pred: ^bb7
    %62 = arith.cmpi ne, %48, %c360_i32 : i32
    %63 = arith.extui %62 : i1 to i32
    memref.dealloc %0 : memref<16xi32>
    memref.dealloc %1 : memref<16xi32>
    memref.dealloc %2 : memref<16xi32>
    return %63 : i32
  }
}

