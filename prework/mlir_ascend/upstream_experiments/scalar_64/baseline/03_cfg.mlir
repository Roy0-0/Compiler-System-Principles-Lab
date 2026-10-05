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
    br ^bb1(%c0 : index)
  ^bb1(%3: index):  // 2 preds: ^bb0, ^bb2
    %4 = arith.cmpi slt, %3, %c64 : index
    cond_br %4, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %5 = arith.index_cast %3 : index to i32
    %6 = arith.muli %5, %c2_i32 : i32
    memref.store %5, %0[%3] : memref<64xi32>
    memref.store %6, %1[%3] : memref<64xi32>
    %7 = arith.addi %3, %c1 : index
    br ^bb1(%7 : index)
  ^bb3:  // pred: ^bb1
    %c0_1 = arith.constant 0 : index
    %c64_2 = arith.constant 64 : index
    %c1_3 = arith.constant 1 : index
    br ^bb4(%c0_1 : index)
  ^bb4(%8: index):  // 2 preds: ^bb3, ^bb5
    %9 = arith.cmpi slt, %8, %c64_2 : index
    cond_br %9, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %10 = memref.load %0[%8] : memref<64xi32>
    %11 = memref.load %1[%8] : memref<64xi32>
    %12 = arith.addi %10, %11 : i32
    memref.store %12, %2[%8] : memref<64xi32>
    %13 = arith.addi %8, %c1_3 : index
    br ^bb4(%13 : index)
  ^bb6:  // pred: ^bb4
    %c0_4 = arith.constant 0 : index
    %c64_5 = arith.constant 64 : index
    %c1_6 = arith.constant 1 : index
    br ^bb7(%c0_4, %c0_i32 : index, i32)
  ^bb7(%14: index, %15: i32):  // 2 preds: ^bb6, ^bb8
    %16 = arith.cmpi slt, %14, %c64_5 : index
    cond_br %16, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %17 = memref.load %2[%14] : memref<64xi32>
    %18 = arith.addi %15, %17 : i32
    %19 = arith.addi %14, %c1_6 : index
    br ^bb7(%19, %18 : index, i32)
  ^bb9:  // pred: ^bb7
    %20 = arith.cmpi eq, %15, %c6048_i32 : i32
    %21 = select %20, %c0_i32_0, %c1_i32 : i32
    memref.dealloc %0 : memref<64xi32>
    memref.dealloc %1 : memref<64xi32>
    memref.dealloc %2 : memref<64xi32>
    return %21 : i32
  }
}

