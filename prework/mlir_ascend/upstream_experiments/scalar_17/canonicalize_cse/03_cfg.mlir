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
    %c17_1 = arith.constant 17 : index
    %c1_2 = arith.constant 1 : index
    br ^bb4(%c0_0 : index)
  ^bb4(%8: index):  // 2 preds: ^bb3, ^bb5
    %9 = arith.cmpi slt, %8, %c17_1 : index
    cond_br %9, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %10 = memref.load %0[%8] : memref<17xi32>
    %11 = memref.load %1[%8] : memref<17xi32>
    %12 = arith.addi %10, %11 : i32
    memref.store %12, %2[%8] : memref<17xi32>
    %13 = arith.addi %8, %c1_2 : index
    br ^bb4(%13 : index)
  ^bb6:  // pred: ^bb4
    %c0_3 = arith.constant 0 : index
    %c17_4 = arith.constant 17 : index
    %c1_5 = arith.constant 1 : index
    br ^bb7(%c0_3, %c0_i32 : index, i32)
  ^bb7(%14: index, %15: i32):  // 2 preds: ^bb6, ^bb8
    %16 = arith.cmpi slt, %14, %c17_4 : index
    cond_br %16, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %17 = memref.load %2[%14] : memref<17xi32>
    %18 = arith.addi %15, %17 : i32
    %19 = arith.addi %14, %c1_5 : index
    br ^bb7(%19, %18 : index, i32)
  ^bb9:  // pred: ^bb7
    %20 = arith.cmpi ne, %15, %c408_i32 : i32
    %21 = arith.extui %20 : i1 to i32
    memref.dealloc %0 : memref<17xi32>
    memref.dealloc %1 : memref<17xi32>
    memref.dealloc %2 : memref<17xi32>
    return %21 : i32
  }
}

