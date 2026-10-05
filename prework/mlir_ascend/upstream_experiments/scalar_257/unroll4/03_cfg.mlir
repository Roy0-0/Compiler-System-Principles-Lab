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
    br ^bb1(%c0 : index)
  ^bb1(%3: index):  // 2 preds: ^bb0, ^bb2
    %4 = arith.cmpi slt, %3, %c256 : index
    cond_br %4, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %5 = arith.index_cast %3 : index to i32
    %6 = arith.muli %5, %c2_i32 : i32
    memref.store %5, %0[%3] : memref<257xi32>
    memref.store %6, %1[%3] : memref<257xi32>
    %c1 = arith.constant 1 : index
    %7 = arith.addi %3, %c1 : index
    %8 = arith.index_cast %7 : index to i32
    %9 = arith.muli %8, %c2_i32 : i32
    %c1_0 = arith.constant 1 : index
    %10 = arith.addi %3, %c1_0 : index
    memref.store %8, %0[%10] : memref<257xi32>
    %c1_1 = arith.constant 1 : index
    %11 = arith.addi %3, %c1_1 : index
    memref.store %9, %1[%11] : memref<257xi32>
    %c2 = arith.constant 2 : index
    %12 = arith.addi %3, %c2 : index
    %13 = arith.index_cast %12 : index to i32
    %14 = arith.muli %13, %c2_i32 : i32
    %c2_2 = arith.constant 2 : index
    %15 = arith.addi %3, %c2_2 : index
    memref.store %13, %0[%15] : memref<257xi32>
    %c2_3 = arith.constant 2 : index
    %16 = arith.addi %3, %c2_3 : index
    memref.store %14, %1[%16] : memref<257xi32>
    %c3 = arith.constant 3 : index
    %17 = arith.addi %3, %c3 : index
    %18 = arith.index_cast %17 : index to i32
    %19 = arith.muli %18, %c2_i32 : i32
    %c3_4 = arith.constant 3 : index
    %20 = arith.addi %3, %c3_4 : index
    memref.store %18, %0[%20] : memref<257xi32>
    %c3_5 = arith.constant 3 : index
    %21 = arith.addi %3, %c3_5 : index
    memref.store %19, %1[%21] : memref<257xi32>
    %22 = arith.addi %3, %c4 : index
    br ^bb1(%22 : index)
  ^bb3:  // pred: ^bb1
    %c256_6 = arith.constant 256 : index
    memref.store %c256_i32, %0[%c256_6] : memref<257xi32>
    %c256_7 = arith.constant 256 : index
    memref.store %c512_i32, %1[%c256_7] : memref<257xi32>
    %c0_8 = arith.constant 0 : index
    %c256_9 = arith.constant 256 : index
    %c4_10 = arith.constant 4 : index
    br ^bb4(%c0_8 : index)
  ^bb4(%23: index):  // 2 preds: ^bb3, ^bb5
    %24 = arith.cmpi slt, %23, %c256_9 : index
    cond_br %24, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %25 = memref.load %0[%23] : memref<257xi32>
    %26 = memref.load %1[%23] : memref<257xi32>
    %27 = arith.addi %25, %26 : i32
    memref.store %27, %2[%23] : memref<257xi32>
    %c1_11 = arith.constant 1 : index
    %28 = arith.addi %23, %c1_11 : index
    %29 = memref.load %0[%28] : memref<257xi32>
    %c1_12 = arith.constant 1 : index
    %30 = arith.addi %23, %c1_12 : index
    %31 = memref.load %1[%30] : memref<257xi32>
    %32 = arith.addi %29, %31 : i32
    %c1_13 = arith.constant 1 : index
    %33 = arith.addi %23, %c1_13 : index
    memref.store %32, %2[%33] : memref<257xi32>
    %c2_14 = arith.constant 2 : index
    %34 = arith.addi %23, %c2_14 : index
    %35 = memref.load %0[%34] : memref<257xi32>
    %c2_15 = arith.constant 2 : index
    %36 = arith.addi %23, %c2_15 : index
    %37 = memref.load %1[%36] : memref<257xi32>
    %38 = arith.addi %35, %37 : i32
    %c2_16 = arith.constant 2 : index
    %39 = arith.addi %23, %c2_16 : index
    memref.store %38, %2[%39] : memref<257xi32>
    %c3_17 = arith.constant 3 : index
    %40 = arith.addi %23, %c3_17 : index
    %41 = memref.load %0[%40] : memref<257xi32>
    %c3_18 = arith.constant 3 : index
    %42 = arith.addi %23, %c3_18 : index
    %43 = memref.load %1[%42] : memref<257xi32>
    %44 = arith.addi %41, %43 : i32
    %c3_19 = arith.constant 3 : index
    %45 = arith.addi %23, %c3_19 : index
    memref.store %44, %2[%45] : memref<257xi32>
    %46 = arith.addi %23, %c4_10 : index
    br ^bb4(%46 : index)
  ^bb6:  // pred: ^bb4
    %c256_20 = arith.constant 256 : index
    %47 = memref.load %0[%c256_20] : memref<257xi32>
    %c256_21 = arith.constant 256 : index
    %48 = memref.load %1[%c256_21] : memref<257xi32>
    %49 = arith.addi %47, %48 : i32
    %c256_22 = arith.constant 256 : index
    memref.store %49, %2[%c256_22] : memref<257xi32>
    %c0_23 = arith.constant 0 : index
    %c256_24 = arith.constant 256 : index
    %c4_25 = arith.constant 4 : index
    br ^bb7(%c0_23, %c0_i32 : index, i32)
  ^bb7(%50: index, %51: i32):  // 2 preds: ^bb6, ^bb8
    %52 = arith.cmpi slt, %50, %c256_24 : index
    cond_br %52, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %53 = memref.load %2[%50] : memref<257xi32>
    %54 = arith.addi %51, %53 : i32
    %c1_26 = arith.constant 1 : index
    %55 = arith.addi %50, %c1_26 : index
    %56 = memref.load %2[%55] : memref<257xi32>
    %57 = arith.addi %54, %56 : i32
    %c2_27 = arith.constant 2 : index
    %58 = arith.addi %50, %c2_27 : index
    %59 = memref.load %2[%58] : memref<257xi32>
    %60 = arith.addi %57, %59 : i32
    %c3_28 = arith.constant 3 : index
    %61 = arith.addi %50, %c3_28 : index
    %62 = memref.load %2[%61] : memref<257xi32>
    %63 = arith.addi %60, %62 : i32
    %64 = arith.addi %50, %c4_25 : index
    br ^bb7(%64, %63 : index, i32)
  ^bb9:  // pred: ^bb7
    %c256_29 = arith.constant 256 : index
    %65 = memref.load %2[%c256_29] : memref<257xi32>
    %66 = arith.addi %51, %65 : i32
    %67 = arith.cmpi ne, %66, %c98688_i32 : i32
    %68 = arith.extui %67 : i1 to i32
    memref.dealloc %0 : memref<257xi32>
    memref.dealloc %1 : memref<257xi32>
    memref.dealloc %2 : memref<257xi32>
    return %68 : i32
  }
}

