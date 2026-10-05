module attributes {llvm.data_layout = ""} {
  llvm.func @free(!llvm.ptr<i8>)
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.constant(360 : i32) : i32
    %2 = llvm.mlir.constant(2 : i32) : i32
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(16 : index) : i64
    %5 = llvm.mlir.constant(1 : index) : i64
    %6 = llvm.mlir.constant(4 : index) : i64
    %7 = llvm.mlir.constant(16 : index) : i64
    %8 = llvm.mlir.constant(1 : index) : i64
    %9 = llvm.mlir.null : !llvm.ptr<i32>
    %10 = llvm.getelementptr %9[%7] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %11 = llvm.ptrtoint %10 : !llvm.ptr<i32> to i64
    %12 = llvm.call @malloc(%11) : (i64) -> !llvm.ptr<i8>
    %13 = llvm.bitcast %12 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %14 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.insertvalue %13, %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %16 = llvm.insertvalue %13, %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.insertvalue %17, %16[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %7, %18[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.insertvalue %8, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.mlir.constant(16 : index) : i64
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.mlir.null : !llvm.ptr<i32>
    %24 = llvm.getelementptr %23[%21] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %25 = llvm.ptrtoint %24 : !llvm.ptr<i32> to i64
    %26 = llvm.call @malloc(%25) : (i64) -> !llvm.ptr<i8>
    %27 = llvm.bitcast %26 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %28 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %29 = llvm.insertvalue %27, %28[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %33 = llvm.insertvalue %21, %32[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %34 = llvm.insertvalue %22, %33[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %35 = llvm.mlir.constant(16 : index) : i64
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.mlir.null : !llvm.ptr<i32>
    %38 = llvm.getelementptr %37[%35] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %39 = llvm.ptrtoint %38 : !llvm.ptr<i32> to i64
    %40 = llvm.call @malloc(%39) : (i64) -> !llvm.ptr<i8>
    %41 = llvm.bitcast %40 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %42 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %43 = llvm.insertvalue %41, %42[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.insertvalue %45, %44[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.insertvalue %35, %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %48 = llvm.insertvalue %36, %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    llvm.br ^bb1(%3 : i64)
  ^bb1(%49: i64):  // 2 preds: ^bb0, ^bb2
    %50 = llvm.icmp "slt" %49, %4 : i64
    llvm.cond_br %50, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %51 = llvm.trunc %49 : i64 to i32
    %52 = llvm.mul %51, %2  : i32
    %53 = llvm.getelementptr %13[%49] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %51, %53 : !llvm.ptr<i32>
    %54 = llvm.getelementptr %27[%49] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %52, %54 : !llvm.ptr<i32>
    %55 = llvm.add %49, %5  : i64
    llvm.br ^bb1(%55 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%3 : i64)
  ^bb4(%56: i64):  // 2 preds: ^bb3, ^bb5
    %57 = llvm.icmp "slt" %56, %4 : i64
    llvm.cond_br %57, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %58 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %59 = llvm.getelementptr %58[%56] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %60 = llvm.bitcast %59 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %61 = llvm.load %60 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %62 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %63 = llvm.getelementptr %62[%56] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %64 = llvm.bitcast %63 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %65 = llvm.load %64 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %66 = llvm.add %61, %65  : vector<4xi32>
    %67 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %68 = llvm.getelementptr %67[%56] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %69 = llvm.bitcast %68 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    llvm.store %66, %69 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %70 = llvm.add %56, %6  : i64
    llvm.br ^bb4(%70 : i64)
  ^bb6:  // pred: ^bb4
    llvm.br ^bb7(%4 : i64)
  ^bb7(%71: i64):  // 2 preds: ^bb6, ^bb8
    %72 = llvm.icmp "slt" %71, %4 : i64
    llvm.cond_br %72, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %73 = llvm.getelementptr %13[%71] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %74 = llvm.load %73 : !llvm.ptr<i32>
    %75 = llvm.getelementptr %27[%71] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %76 = llvm.load %75 : !llvm.ptr<i32>
    %77 = llvm.add %74, %76  : i32
    %78 = llvm.getelementptr %41[%71] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %77, %78 : !llvm.ptr<i32>
    %79 = llvm.add %71, %5  : i64
    llvm.br ^bb7(%79 : i64)
  ^bb9:  // pred: ^bb7
    llvm.br ^bb10(%3, %0 : i64, i32)
  ^bb10(%80: i64, %81: i32):  // 2 preds: ^bb9, ^bb11
    %82 = llvm.icmp "slt" %80, %4 : i64
    llvm.cond_br %82, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %83 = llvm.getelementptr %41[%80] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %84 = llvm.load %83 : !llvm.ptr<i32>
    %85 = llvm.add %81, %84  : i32
    %86 = llvm.add %80, %5  : i64
    llvm.br ^bb10(%86, %85 : i64, i32)
  ^bb12:  // pred: ^bb10
    %87 = llvm.icmp "ne" %81, %1 : i32
    %88 = llvm.zext %87 : i1 to i32
    %89 = llvm.bitcast %13 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%89) : (!llvm.ptr<i8>) -> ()
    %90 = llvm.bitcast %27 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%90) : (!llvm.ptr<i8>) -> ()
    %91 = llvm.bitcast %41 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%91) : (!llvm.ptr<i8>) -> ()
    llvm.return %88 : i32
  }
}

