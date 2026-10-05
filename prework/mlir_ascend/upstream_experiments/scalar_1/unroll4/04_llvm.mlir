module attributes {llvm.data_layout = ""} {
  llvm.func @free(!llvm.ptr<i8>)
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.constant(2 : i32) : i32
    %2 = llvm.mlir.constant(0 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(1 : index) : i64
    %5 = llvm.mlir.constant(1 : index) : i64
    %6 = llvm.mlir.null : !llvm.ptr<i32>
    %7 = llvm.getelementptr %6[%4] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %8 = llvm.ptrtoint %7 : !llvm.ptr<i32> to i64
    %9 = llvm.call @malloc(%8) : (i64) -> !llvm.ptr<i8>
    %10 = llvm.bitcast %9 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %11 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %12 = llvm.insertvalue %10, %11[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.insertvalue %10, %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.insertvalue %14, %13[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %16 = llvm.insertvalue %4, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.insertvalue %5, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.null : !llvm.ptr<i32>
    %21 = llvm.getelementptr %20[%18] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %22 = llvm.ptrtoint %21 : !llvm.ptr<i32> to i64
    %23 = llvm.call @malloc(%22) : (i64) -> !llvm.ptr<i8>
    %24 = llvm.bitcast %23 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %25 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %26 = llvm.insertvalue %24, %25[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %27 = llvm.insertvalue %24, %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.insertvalue %28, %27[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %30 = llvm.insertvalue %18, %29[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %31 = llvm.insertvalue %19, %30[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.null : !llvm.ptr<i32>
    %35 = llvm.getelementptr %34[%32] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %36 = llvm.ptrtoint %35 : !llvm.ptr<i32> to i64
    %37 = llvm.call @malloc(%36) : (i64) -> !llvm.ptr<i8>
    %38 = llvm.bitcast %37 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %39 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %40 = llvm.insertvalue %38, %39[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %41 = llvm.insertvalue %38, %40[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %42 = llvm.mlir.constant(0 : index) : i64
    %43 = llvm.insertvalue %42, %41[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %44 = llvm.insertvalue %32, %43[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %45 = llvm.insertvalue %33, %44[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    llvm.br ^bb1(%2 : i64)
  ^bb1(%46: i64):  // 2 preds: ^bb0, ^bb2
    %47 = llvm.icmp "slt" %46, %3 : i64
    llvm.cond_br %47, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %48 = llvm.trunc %46 : i64 to i32
    %49 = llvm.mul %48, %1  : i32
    %50 = llvm.getelementptr %10[%46] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %48, %50 : !llvm.ptr<i32>
    %51 = llvm.getelementptr %24[%46] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %49, %51 : !llvm.ptr<i32>
    %52 = llvm.add %46, %3  : i64
    llvm.br ^bb1(%52 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%2 : i64)
  ^bb4(%53: i64):  // 2 preds: ^bb3, ^bb5
    %54 = llvm.icmp "slt" %53, %3 : i64
    llvm.cond_br %54, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %55 = llvm.getelementptr %10[%53] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %56 = llvm.load %55 : !llvm.ptr<i32>
    %57 = llvm.getelementptr %24[%53] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %58 = llvm.load %57 : !llvm.ptr<i32>
    %59 = llvm.add %56, %58  : i32
    %60 = llvm.getelementptr %38[%53] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %59, %60 : !llvm.ptr<i32>
    %61 = llvm.add %53, %3  : i64
    llvm.br ^bb4(%61 : i64)
  ^bb6:  // pred: ^bb4
    llvm.br ^bb7(%2, %0 : i64, i32)
  ^bb7(%62: i64, %63: i32):  // 2 preds: ^bb6, ^bb8
    %64 = llvm.icmp "slt" %62, %3 : i64
    llvm.cond_br %64, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %65 = llvm.getelementptr %38[%62] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %66 = llvm.load %65 : !llvm.ptr<i32>
    %67 = llvm.add %63, %66  : i32
    %68 = llvm.add %62, %3  : i64
    llvm.br ^bb7(%68, %67 : i64, i32)
  ^bb9:  // pred: ^bb7
    %69 = llvm.icmp "ne" %63, %0 : i32
    %70 = llvm.zext %69 : i1 to i32
    %71 = llvm.bitcast %10 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%71) : (!llvm.ptr<i8>) -> ()
    %72 = llvm.bitcast %24 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%72) : (!llvm.ptr<i8>) -> ()
    %73 = llvm.bitcast %38 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%73) : (!llvm.ptr<i8>) -> ()
    llvm.return %70 : i32
  }
}

