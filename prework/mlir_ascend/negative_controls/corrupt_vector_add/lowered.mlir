module attributes {llvm.data_layout = ""} {
  llvm.func @free(!llvm.ptr<i8>)
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.constant(2 : i32) : i32
    %2 = llvm.mlir.constant(408 : i32) : i32
    %3 = llvm.mlir.constant(1 : i32) : i32
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(17 : index) : i64
    %6 = llvm.mlir.constant(1 : index) : i64
    %7 = llvm.mlir.constant(4 : index) : i64
    %8 = llvm.mlir.constant(16 : index) : i64
    %9 = llvm.mlir.constant(17 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.null : !llvm.ptr<i32>
    %12 = llvm.getelementptr %11[%9] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %13 = llvm.ptrtoint %12 : !llvm.ptr<i32> to i64
    %14 = llvm.call @malloc(%13) : (i64) -> !llvm.ptr<i8>
    %15 = llvm.bitcast %14 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.insertvalue %9, %20[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %22 = llvm.insertvalue %10, %21[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %23 = llvm.mlir.constant(17 : index) : i64
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.mlir.null : !llvm.ptr<i32>
    %26 = llvm.getelementptr %25[%23] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %27 = llvm.ptrtoint %26 : !llvm.ptr<i32> to i64
    %28 = llvm.call @malloc(%27) : (i64) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %35 = llvm.insertvalue %23, %34[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %36 = llvm.insertvalue %24, %35[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.mlir.constant(17 : index) : i64
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.mlir.null : !llvm.ptr<i32>
    %40 = llvm.getelementptr %39[%37] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %41 = llvm.ptrtoint %40 : !llvm.ptr<i32> to i64
    %42 = llvm.call @malloc(%41) : (i64) -> !llvm.ptr<i8>
    %43 = llvm.bitcast %42 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %44 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %45 = llvm.insertvalue %43, %44[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %46 = llvm.insertvalue %43, %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.mlir.constant(0 : index) : i64
    %48 = llvm.insertvalue %47, %46[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.insertvalue %37, %48[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %50 = llvm.insertvalue %38, %49[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    llvm.br ^bb1(%4 : i64)
  ^bb1(%51: i64):  // 2 preds: ^bb0, ^bb2
    %52 = llvm.icmp "slt" %51, %5 : i64
    llvm.cond_br %52, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %53 = llvm.trunc %51 : i64 to i32
    %54 = llvm.mul %53, %1  : i32
    %55 = llvm.getelementptr %15[%51] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %53, %55 : !llvm.ptr<i32>
    %56 = llvm.getelementptr %29[%51] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %54, %56 : !llvm.ptr<i32>
    %57 = llvm.add %51, %6  : i64
    llvm.br ^bb1(%57 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%4 : i64)
  ^bb4(%58: i64):  // 2 preds: ^bb3, ^bb5
    %59 = llvm.icmp "slt" %58, %8 : i64
    llvm.cond_br %59, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %60 = llvm.extractvalue %22[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %61 = llvm.getelementptr %60[%58] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %62 = llvm.bitcast %61 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %63 = llvm.load %62 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %64 = llvm.extractvalue %36[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %65 = llvm.getelementptr %64[%58] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %66 = llvm.bitcast %65 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %67 = llvm.load %66 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %68 = llvm.sub %63, %67  : vector<4xi32>
    %69 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %70 = llvm.getelementptr %69[%58] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %71 = llvm.bitcast %70 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    llvm.store %68, %71 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %72 = llvm.add %58, %7  : i64
    llvm.br ^bb4(%72 : i64)
  ^bb6:  // pred: ^bb4
    llvm.br ^bb7(%8 : i64)
  ^bb7(%73: i64):  // 2 preds: ^bb6, ^bb8
    %74 = llvm.icmp "slt" %73, %5 : i64
    llvm.cond_br %74, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %75 = llvm.getelementptr %15[%73] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %76 = llvm.load %75 : !llvm.ptr<i32>
    %77 = llvm.getelementptr %29[%73] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %78 = llvm.load %77 : !llvm.ptr<i32>
    %79 = llvm.add %76, %78  : i32
    %80 = llvm.getelementptr %43[%73] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %79, %80 : !llvm.ptr<i32>
    %81 = llvm.add %73, %6  : i64
    llvm.br ^bb7(%81 : i64)
  ^bb9:  // pred: ^bb7
    llvm.br ^bb10(%4, %0 : i64, i32)
  ^bb10(%82: i64, %83: i32):  // 2 preds: ^bb9, ^bb11
    %84 = llvm.icmp "slt" %82, %5 : i64
    llvm.cond_br %84, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %85 = llvm.getelementptr %43[%82] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %86 = llvm.load %85 : !llvm.ptr<i32>
    %87 = llvm.add %83, %86  : i32
    %88 = llvm.add %82, %6  : i64
    llvm.br ^bb10(%88, %87 : i64, i32)
  ^bb12:  // pred: ^bb10
    %89 = llvm.icmp "eq" %83, %2 : i32
    %90 = llvm.select %89, %0, %3 : i1, i32
    %91 = llvm.bitcast %15 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%91) : (!llvm.ptr<i8>) -> ()
    %92 = llvm.bitcast %29 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%92) : (!llvm.ptr<i8>) -> ()
    %93 = llvm.bitcast %43 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%93) : (!llvm.ptr<i8>) -> ()
    llvm.return %90 : i32
  }
}

