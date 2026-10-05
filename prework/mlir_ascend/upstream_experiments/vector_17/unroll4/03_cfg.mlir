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
    br ^bb1(%c0_0 : index)
  ^bb1(%3: index):  // 2 preds: ^bb0, ^bb2
    %4 = arith.cmpi slt, %3, %c16 : index
    cond_br %4, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %5 = arith.index_cast %3 : index to i32
    %6 = arith.muli %5, %c2_i32 : i32
    memref.store %5, %0[%3] : memref<17xi32>
    memref.store %6, %1[%3] : memref<17xi32>
    %c1 = arith.constant 1 : index
    %7 = arith.addi %3, %c1 : index
    %8 = arith.index_cast %7 : index to i32
    %9 = arith.muli %8, %c2_i32 : i32
    %c1_2 = arith.constant 1 : index
    %10 = arith.addi %3, %c1_2 : index
    memref.store %8, %0[%10] : memref<17xi32>
    %c1_3 = arith.constant 1 : index
    %11 = arith.addi %3, %c1_3 : index
    memref.store %9, %1[%11] : memref<17xi32>
    %c2 = arith.constant 2 : index
    %12 = arith.addi %3, %c2 : index
    %13 = arith.index_cast %12 : index to i32
    %14 = arith.muli %13, %c2_i32 : i32
    %c2_4 = arith.constant 2 : index
    %15 = arith.addi %3, %c2_4 : index
    memref.store %13, %0[%15] : memref<17xi32>
    %c2_5 = arith.constant 2 : index
    %16 = arith.addi %3, %c2_5 : index
    memref.store %14, %1[%16] : memref<17xi32>
    %c3 = arith.constant 3 : index
    %17 = arith.addi %3, %c3 : index
    %18 = arith.index_cast %17 : index to i32
    %19 = arith.muli %18, %c2_i32 : i32
    %c3_6 = arith.constant 3 : index
    %20 = arith.addi %3, %c3_6 : index
    memref.store %18, %0[%20] : memref<17xi32>
    %c3_7 = arith.constant 3 : index
    %21 = arith.addi %3, %c3_7 : index
    memref.store %19, %1[%21] : memref<17xi32>
    %22 = arith.addi %3, %c4_1 : index
    br ^bb1(%22 : index)
  ^bb3:  // pred: ^bb1
    %c16_8 = arith.constant 16 : index
    memref.store %c16_i32, %0[%c16_8] : memref<17xi32>
    %c16_9 = arith.constant 16 : index
    memref.store %c32_i32, %1[%c16_9] : memref<17xi32>
    %23 = vector.load %0[%c0] : memref<17xi32>, vector<4xi32>
    %24 = vector.load %1[%c0] : memref<17xi32>, vector<4xi32>
    %25 = arith.addi %23, %24 : vector<4xi32>
    vector.store %25, %2[%c0] : memref<17xi32>, vector<4xi32>
    %26 = vector.load %0[%c4] : memref<17xi32>, vector<4xi32>
    %27 = vector.load %1[%c4] : memref<17xi32>, vector<4xi32>
    %28 = arith.addi %26, %27 : vector<4xi32>
    vector.store %28, %2[%c4] : memref<17xi32>, vector<4xi32>
    %29 = vector.load %0[%c8] : memref<17xi32>, vector<4xi32>
    %30 = vector.load %1[%c8] : memref<17xi32>, vector<4xi32>
    %31 = arith.addi %29, %30 : vector<4xi32>
    vector.store %31, %2[%c8] : memref<17xi32>, vector<4xi32>
    %32 = vector.load %0[%c12] : memref<17xi32>, vector<4xi32>
    %33 = vector.load %1[%c12] : memref<17xi32>, vector<4xi32>
    %34 = arith.addi %32, %33 : vector<4xi32>
    vector.store %34, %2[%c12] : memref<17xi32>, vector<4xi32>
    %c16_10 = arith.constant 16 : index
    %c17 = arith.constant 17 : index
    %c1_11 = arith.constant 1 : index
    br ^bb4(%c16_10 : index)
  ^bb4(%35: index):  // 2 preds: ^bb3, ^bb5
    %36 = arith.cmpi slt, %35, %c17 : index
    cond_br %36, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %37 = memref.load %0[%35] : memref<17xi32>
    %38 = memref.load %1[%35] : memref<17xi32>
    %39 = arith.addi %37, %38 : i32
    memref.store %39, %2[%35] : memref<17xi32>
    %40 = arith.addi %35, %c1_11 : index
    br ^bb4(%40 : index)
  ^bb6:  // pred: ^bb4
    %c0_12 = arith.constant 0 : index
    %c16_13 = arith.constant 16 : index
    %c4_14 = arith.constant 4 : index
    br ^bb7(%c0_12, %c0_i32 : index, i32)
  ^bb7(%41: index, %42: i32):  // 2 preds: ^bb6, ^bb8
    %43 = arith.cmpi slt, %41, %c16_13 : index
    cond_br %43, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %44 = memref.load %2[%41] : memref<17xi32>
    %45 = arith.addi %42, %44 : i32
    %c1_15 = arith.constant 1 : index
    %46 = arith.addi %41, %c1_15 : index
    %47 = memref.load %2[%46] : memref<17xi32>
    %48 = arith.addi %45, %47 : i32
    %c2_16 = arith.constant 2 : index
    %49 = arith.addi %41, %c2_16 : index
    %50 = memref.load %2[%49] : memref<17xi32>
    %51 = arith.addi %48, %50 : i32
    %c3_17 = arith.constant 3 : index
    %52 = arith.addi %41, %c3_17 : index
    %53 = memref.load %2[%52] : memref<17xi32>
    %54 = arith.addi %51, %53 : i32
    %55 = arith.addi %41, %c4_14 : index
    br ^bb7(%55, %54 : index, i32)
  ^bb9:  // pred: ^bb7
    %c16_18 = arith.constant 16 : index
    %56 = memref.load %2[%c16_18] : memref<17xi32>
    %57 = arith.addi %42, %56 : i32
    %58 = arith.cmpi ne, %57, %c408_i32 : i32
    %59 = arith.extui %58 : i1 to i32
    memref.dealloc %0 : memref<17xi32>
    memref.dealloc %1 : memref<17xi32>
    memref.dealloc %2 : memref<17xi32>
    return %59 : i32
  }
}

