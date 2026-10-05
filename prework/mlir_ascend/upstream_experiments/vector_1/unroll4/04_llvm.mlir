module attributes {llvm.data_layout = ""} {
  llvm.func @free(!llvm.ptr<i8>)
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.constant(2 : i32) : i32
    %2 = llvm.mlir.constant(0 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(4 : index) : i64
    %5 = llvm.mlir.constant(1 : index) : i64
    %6 = llvm.mlir.constant(1 : index) : i64
    %7 = llvm.mlir.null : !llvm.ptr<i32>
    %8 = llvm.getelementptr %7[%5] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %9 = llvm.ptrtoint %8 : !llvm.ptr<i32> to i64
    %10 = llvm.call @malloc(%9) : (i64) -> !llvm.ptr<i8>
    %11 = llvm.bitcast %10 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.insertvalue %11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %14 = llvm.insertvalue %11, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.insertvalue %15, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.insertvalue %5, %16[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.insertvalue %6, %17[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.null : !llvm.ptr<i32>
    %22 = llvm.getelementptr %21[%19] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %23 = llvm.ptrtoint %22 : !llvm.ptr<i32> to i64
    %24 = llvm.call @malloc(%23) : (i64) -> !llvm.ptr<i8>
    %25 = llvm.bitcast %24 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %26 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %27 = llvm.insertvalue %25, %26[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %28 = llvm.insertvalue %25, %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %29 = llvm.mlir.constant(0 : index) : i64
    %30 = llvm.insertvalue %29, %28[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %31 = llvm.insertvalue %19, %30[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %32 = llvm.insertvalue %20, %31[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.mlir.null : !llvm.ptr<i32>
    %36 = llvm.getelementptr %35[%33] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %37 = llvm.ptrtoint %36 : !llvm.ptr<i32> to i64
    %38 = llvm.call @malloc(%37) : (i64) -> !llvm.ptr<i8>
    %39 = llvm.bitcast %38 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %40 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %41 = llvm.insertvalue %39, %40[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %42 = llvm.insertvalue %39, %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %43 = llvm.mlir.constant(0 : index) : i64
    %44 = llvm.insertvalue %43, %42[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %45 = llvm.insertvalue %33, %44[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %46 = llvm.insertvalue %34, %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    llvm.br ^bb1(%2 : i64)
  ^bb1(%47: i64):  // 2 preds: ^bb0, ^bb2
    %48 = llvm.icmp "slt" %47, %3 : i64
    llvm.cond_br %48, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %49 = llvm.trunc %47 : i64 to i32
    %50 = llvm.mul %49, %1  : i32
    %51 = llvm.getelementptr %11[%47] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %49, %51 : !llvm.ptr<i32>
    %52 = llvm.getelementptr %25[%47] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %50, %52 : !llvm.ptr<i32>
    %53 = llvm.add %47, %3  : i64
    llvm.br ^bb1(%53 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%2 : i64)
  ^bb4(%54: i64):  // 2 preds: ^bb3, ^bb5
    %55 = llvm.icmp "slt" %54, %2 : i64
    llvm.cond_br %55, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %56 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %57 = llvm.getelementptr %56[%54] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %59 = llvm.load %58 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %60 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %61 = llvm.getelementptr %60[%54] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %62 = llvm.bitcast %61 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %63 = llvm.load %62 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %64 = llvm.add %59, %63  : vector<4xi32>
    %65 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %66 = llvm.getelementptr %65[%54] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %67 = llvm.bitcast %66 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    llvm.store %64, %67 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %68 = llvm.add %54, %4  : i64
    llvm.br ^bb4(%68 : i64)
  ^bb6:  // pred: ^bb4
    llvm.br ^bb7(%2 : i64)
  ^bb7(%69: i64):  // 2 preds: ^bb6, ^bb8
    %70 = llvm.icmp "slt" %69, %3 : i64
    llvm.cond_br %70, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %71 = llvm.getelementptr %11[%69] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %72 = llvm.load %71 : !llvm.ptr<i32>
    %73 = llvm.getelementptr %25[%69] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %74 = llvm.load %73 : !llvm.ptr<i32>
    %75 = llvm.add %72, %74  : i32
    %76 = llvm.getelementptr %39[%69] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %75, %76 : !llvm.ptr<i32>
    %77 = llvm.add %69, %3  : i64
    llvm.br ^bb7(%77 : i64)
  ^bb9:  // pred: ^bb7
    llvm.br ^bb10(%2, %0 : i64, i32)
  ^bb10(%78: i64, %79: i32):  // 2 preds: ^bb9, ^bb11
    %80 = llvm.icmp "slt" %78, %3 : i64
    llvm.cond_br %80, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %81 = llvm.getelementptr %39[%78] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %82 = llvm.load %81 : !llvm.ptr<i32>
    %83 = llvm.add %79, %82  : i32
    %84 = llvm.add %78, %3  : i64
    llvm.br ^bb10(%84, %83 : i64, i32)
  ^bb12:  // pred: ^bb10
    %85 = llvm.icmp "ne" %79, %0 : i32
    %86 = llvm.zext %85 : i1 to i32
    %87 = llvm.bitcast %11 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%87) : (!llvm.ptr<i8>) -> ()
    %88 = llvm.bitcast %25 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%88) : (!llvm.ptr<i8>) -> ()
    %89 = llvm.bitcast %39 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%89) : (!llvm.ptr<i8>) -> ()
    llvm.return %86 : i32
  }
}

