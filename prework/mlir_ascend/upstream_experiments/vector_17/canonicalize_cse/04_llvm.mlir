module attributes {llvm.data_layout = ""} {
  llvm.func @free(!llvm.ptr<i8>)
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.constant(408 : i32) : i32
    %2 = llvm.mlir.constant(2 : i32) : i32
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(17 : index) : i64
    %5 = llvm.mlir.constant(1 : index) : i64
    %6 = llvm.mlir.constant(4 : index) : i64
    %7 = llvm.mlir.constant(16 : index) : i64
    %8 = llvm.mlir.constant(17 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.null : !llvm.ptr<i32>
    %11 = llvm.getelementptr %10[%8] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %12 = llvm.ptrtoint %11 : !llvm.ptr<i32> to i64
    %13 = llvm.call @malloc(%12) : (i64) -> !llvm.ptr<i8>
    %14 = llvm.bitcast %13 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %15 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %16 = llvm.insertvalue %14, %15[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.insertvalue %14, %16[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.insertvalue %18, %17[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.insertvalue %8, %19[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.insertvalue %9, %20[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %22 = llvm.mlir.constant(17 : index) : i64
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.mlir.null : !llvm.ptr<i32>
    %25 = llvm.getelementptr %24[%22] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %26 = llvm.ptrtoint %25 : !llvm.ptr<i32> to i64
    %27 = llvm.call @malloc(%26) : (i64) -> !llvm.ptr<i8>
    %28 = llvm.bitcast %27 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %29 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %34 = llvm.insertvalue %22, %33[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %35 = llvm.insertvalue %23, %34[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %36 = llvm.mlir.constant(17 : index) : i64
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.mlir.null : !llvm.ptr<i32>
    %39 = llvm.getelementptr %38[%36] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %40 = llvm.ptrtoint %39 : !llvm.ptr<i32> to i64
    %41 = llvm.call @malloc(%40) : (i64) -> !llvm.ptr<i8>
    %42 = llvm.bitcast %41 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %43 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %44 = llvm.insertvalue %42, %43[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %45 = llvm.insertvalue %42, %44[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %46 = llvm.mlir.constant(0 : index) : i64
    %47 = llvm.insertvalue %46, %45[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %48 = llvm.insertvalue %36, %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.insertvalue %37, %48[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    llvm.br ^bb1(%3 : i64)
  ^bb1(%50: i64):  // 2 preds: ^bb0, ^bb2
    %51 = llvm.icmp "slt" %50, %4 : i64
    llvm.cond_br %51, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %52 = llvm.trunc %50 : i64 to i32
    %53 = llvm.mul %52, %2  : i32
    %54 = llvm.getelementptr %14[%50] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %52, %54 : !llvm.ptr<i32>
    %55 = llvm.getelementptr %28[%50] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %53, %55 : !llvm.ptr<i32>
    %56 = llvm.add %50, %5  : i64
    llvm.br ^bb1(%56 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%3 : i64)
  ^bb4(%57: i64):  // 2 preds: ^bb3, ^bb5
    %58 = llvm.icmp "slt" %57, %7 : i64
    llvm.cond_br %58, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %59 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %60 = llvm.getelementptr %59[%57] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %61 = llvm.bitcast %60 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %62 = llvm.load %61 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %63 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %64 = llvm.getelementptr %63[%57] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %65 = llvm.bitcast %64 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %66 = llvm.load %65 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %67 = llvm.add %62, %66  : vector<4xi32>
    %68 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %69 = llvm.getelementptr %68[%57] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %70 = llvm.bitcast %69 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    llvm.store %67, %70 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %71 = llvm.add %57, %6  : i64
    llvm.br ^bb4(%71 : i64)
  ^bb6:  // pred: ^bb4
    llvm.br ^bb7(%7 : i64)
  ^bb7(%72: i64):  // 2 preds: ^bb6, ^bb8
    %73 = llvm.icmp "slt" %72, %4 : i64
    llvm.cond_br %73, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %74 = llvm.getelementptr %14[%72] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %75 = llvm.load %74 : !llvm.ptr<i32>
    %76 = llvm.getelementptr %28[%72] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %77 = llvm.load %76 : !llvm.ptr<i32>
    %78 = llvm.add %75, %77  : i32
    %79 = llvm.getelementptr %42[%72] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %78, %79 : !llvm.ptr<i32>
    %80 = llvm.add %72, %5  : i64
    llvm.br ^bb7(%80 : i64)
  ^bb9:  // pred: ^bb7
    llvm.br ^bb10(%3, %0 : i64, i32)
  ^bb10(%81: i64, %82: i32):  // 2 preds: ^bb9, ^bb11
    %83 = llvm.icmp "slt" %81, %4 : i64
    llvm.cond_br %83, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %84 = llvm.getelementptr %42[%81] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %85 = llvm.load %84 : !llvm.ptr<i32>
    %86 = llvm.add %82, %85  : i32
    %87 = llvm.add %81, %5  : i64
    llvm.br ^bb10(%87, %86 : i64, i32)
  ^bb12:  // pred: ^bb10
    %88 = llvm.icmp "ne" %82, %1 : i32
    %89 = llvm.zext %88 : i1 to i32
    %90 = llvm.bitcast %14 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%90) : (!llvm.ptr<i8>) -> ()
    %91 = llvm.bitcast %28 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%91) : (!llvm.ptr<i8>) -> ()
    %92 = llvm.bitcast %42 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%92) : (!llvm.ptr<i8>) -> ()
    llvm.return %89 : i32
  }
}

