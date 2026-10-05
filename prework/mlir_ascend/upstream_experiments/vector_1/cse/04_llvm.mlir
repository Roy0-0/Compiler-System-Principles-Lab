module attributes {llvm.data_layout = ""} {
  llvm.func @free(!llvm.ptr<i8>)
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.constant(2 : i32) : i32
    %2 = llvm.mlir.constant(1 : i32) : i32
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(1 : index) : i64
    %5 = llvm.mlir.constant(4 : index) : i64
    %6 = llvm.mlir.constant(1 : index) : i64
    %7 = llvm.mlir.constant(1 : index) : i64
    %8 = llvm.mlir.null : !llvm.ptr<i32>
    %9 = llvm.getelementptr %8[%6] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %10 = llvm.ptrtoint %9 : !llvm.ptr<i32> to i64
    %11 = llvm.call @malloc(%10) : (i64) -> !llvm.ptr<i8>
    %12 = llvm.bitcast %11 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %13 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %14 = llvm.insertvalue %12, %13[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.insertvalue %12, %14[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.insertvalue %16, %15[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.insertvalue %6, %17[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %7, %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.mlir.null : !llvm.ptr<i32>
    %23 = llvm.getelementptr %22[%20] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %24 = llvm.ptrtoint %23 : !llvm.ptr<i32> to i64
    %25 = llvm.call @malloc(%24) : (i64) -> !llvm.ptr<i8>
    %26 = llvm.bitcast %25 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %32 = llvm.insertvalue %20, %31[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %33 = llvm.insertvalue %21, %32[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.mlir.null : !llvm.ptr<i32>
    %37 = llvm.getelementptr %36[%34] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %38 = llvm.ptrtoint %37 : !llvm.ptr<i32> to i64
    %39 = llvm.call @malloc(%38) : (i64) -> !llvm.ptr<i8>
    %40 = llvm.bitcast %39 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %42 = llvm.insertvalue %40, %41[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.insertvalue %44, %43[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %46 = llvm.insertvalue %34, %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.insertvalue %35, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    llvm.br ^bb1(%3 : i64)
  ^bb1(%48: i64):  // 2 preds: ^bb0, ^bb2
    %49 = llvm.icmp "slt" %48, %4 : i64
    llvm.cond_br %49, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %50 = llvm.trunc %48 : i64 to i32
    %51 = llvm.mul %50, %1  : i32
    %52 = llvm.getelementptr %12[%48] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %50, %52 : !llvm.ptr<i32>
    %53 = llvm.getelementptr %26[%48] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %51, %53 : !llvm.ptr<i32>
    %54 = llvm.add %48, %4  : i64
    llvm.br ^bb1(%54 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%3 : i64)
  ^bb4(%55: i64):  // 2 preds: ^bb3, ^bb5
    %56 = llvm.icmp "slt" %55, %3 : i64
    llvm.cond_br %56, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %57 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %58 = llvm.getelementptr %57[%55] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %59 = llvm.bitcast %58 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %60 = llvm.load %59 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %61 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %62 = llvm.getelementptr %61[%55] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %63 = llvm.bitcast %62 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %64 = llvm.load %63 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %65 = llvm.add %60, %64  : vector<4xi32>
    %66 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %67 = llvm.getelementptr %66[%55] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %68 = llvm.bitcast %67 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    llvm.store %65, %68 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %69 = llvm.add %55, %5  : i64
    llvm.br ^bb4(%69 : i64)
  ^bb6:  // pred: ^bb4
    llvm.br ^bb7(%3 : i64)
  ^bb7(%70: i64):  // 2 preds: ^bb6, ^bb8
    %71 = llvm.icmp "slt" %70, %4 : i64
    llvm.cond_br %71, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %72 = llvm.getelementptr %12[%70] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %73 = llvm.load %72 : !llvm.ptr<i32>
    %74 = llvm.getelementptr %26[%70] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %75 = llvm.load %74 : !llvm.ptr<i32>
    %76 = llvm.add %73, %75  : i32
    %77 = llvm.getelementptr %40[%70] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %76, %77 : !llvm.ptr<i32>
    %78 = llvm.add %70, %4  : i64
    llvm.br ^bb7(%78 : i64)
  ^bb9:  // pred: ^bb7
    llvm.br ^bb10(%3, %0 : i64, i32)
  ^bb10(%79: i64, %80: i32):  // 2 preds: ^bb9, ^bb11
    %81 = llvm.icmp "slt" %79, %4 : i64
    llvm.cond_br %81, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %82 = llvm.getelementptr %40[%79] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %83 = llvm.load %82 : !llvm.ptr<i32>
    %84 = llvm.add %80, %83  : i32
    %85 = llvm.add %79, %4  : i64
    llvm.br ^bb10(%85, %84 : i64, i32)
  ^bb12:  // pred: ^bb10
    %86 = llvm.icmp "eq" %80, %0 : i32
    %87 = llvm.select %86, %0, %2 : i1, i32
    %88 = llvm.bitcast %12 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%88) : (!llvm.ptr<i8>) -> ()
    %89 = llvm.bitcast %26 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%89) : (!llvm.ptr<i8>) -> ()
    %90 = llvm.bitcast %40 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%90) : (!llvm.ptr<i8>) -> ()
    llvm.return %87 : i32
  }
}

