module {
  func @main() -> i32 {
    %0 = memref.alloc() : memref<17xi32>
    %1 = memref.alloc() : memref<17xi32>
    %2 = memref.alloc() : memref<17xi32>
    %c0_i32 = arith.constant 0 : i32
    %c2_i32 = arith.constant 2 : i32
    %c408_i32 = arith.constant 408 : i32
    %c1_i32 = arith.constant 1 : i32
    %c0 = arith.constant 0 : index
    %c17 = arith.constant 17 : index
    %c1 = arith.constant 1 : index
    br ^bb1(%c0 : index)
  ^bb1(%3: index):  // 2 preds: ^bb0, ^bb2
    %4 = arith.cmpi slt, %3, %c17 : index
    cond_br %4, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %5 = arith.index_cast %3 : index to i32
    %6 = arith.muli %5, %c2_i32 : i32
    memref.store %5, %0[%3] : memref<17xi32>
    memref.store %6, %1[%3] : memref<17xi32>
    %7 = arith.addi %3, %c1 : index
    br ^bb1(%7 : index)
  ^bb3:  // pred: ^bb1
    %c0_0 = arith.constant 0 : index
    %c16 = arith.constant 16 : index
    %c4 = arith.constant 4 : index
    br ^bb4(%c0_0 : index)
  ^bb4(%8: index):  // 2 preds: ^bb3, ^bb5
    %9 = arith.cmpi slt, %8, %c16 : index
    cond_br %9, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %10 = vector.load %0[%8] : memref<17xi32>, vector<4xi32>
    %11 = vector.load %1[%8] : memref<17xi32>, vector<4xi32>
    %12 = arith.addi %10, %11 : vector<4xi32>
    vector.store %12, %2[%8] : memref<17xi32>, vector<4xi32>
    %13 = arith.addi %8, %c4 : index
    br ^bb4(%13 : index)
  ^bb6:  // pred: ^bb4
    %c16_1 = arith.constant 16 : index
    %c17_2 = arith.constant 17 : index
    %c1_3 = arith.constant 1 : index
    br ^bb7(%c16_1 : index)
  ^bb7(%14: index):  // 2 preds: ^bb6, ^bb8
    %15 = arith.cmpi slt, %14, %c17_2 : index
    cond_br %15, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %16 = memref.load %0[%14] : memref<17xi32>
    %17 = memref.load %1[%14] : memref<17xi32>
    %18 = arith.addi %16, %17 : i32
    memref.store %18, %2[%14] : memref<17xi32>
    %19 = arith.addi %14, %c1_3 : index
    br ^bb7(%19 : index)
  ^bb9:  // pred: ^bb7
    %c0_4 = arith.constant 0 : index
    %c17_5 = arith.constant 17 : index
    %c1_6 = arith.constant 1 : index
    br ^bb10(%c0_4, %c0_i32 : index, i32)
  ^bb10(%20: index, %21: i32):  // 2 preds: ^bb9, ^bb11
    %22 = arith.cmpi slt, %20, %c17_5 : index
    cond_br %22, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %23 = memref.load %2[%20] : memref<17xi32>
    %24 = arith.addi %21, %23 : i32
    %25 = arith.addi %20, %c1_6 : index
    br ^bb10(%25, %24 : index, i32)
  ^bb12:  // pred: ^bb10
    %26 = arith.cmpi eq, %21, %c408_i32 : i32
    %27 = select %26, %c0_i32, %c1_i32 : i32
    memref.dealloc %0 : memref<17xi32>
    memref.dealloc %1 : memref<17xi32>
    memref.dealloc %2 : memref<17xi32>
    return %27 : i32
  }
}

