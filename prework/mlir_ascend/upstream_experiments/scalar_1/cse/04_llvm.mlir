module attributes {llvm.data_layout = ""} {
  llvm.func @free(!llvm.ptr<i8>)
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.constant(2 : i32) : i32
    %2 = llvm.mlir.constant(1 : i32) : i32
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(1 : index) : i64
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
    llvm.br ^bb1(%3 : i64)
  ^bb1(%47: i64):  // 2 preds: ^bb0, ^bb2
    %48 = llvm.icmp "slt" %47, %4 : i64
    llvm.cond_br %48, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %49 = llvm.trunc %47 : i64 to i32
    %50 = llvm.mul %49, %1  : i32
    %51 = llvm.getelementptr %11[%47] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %49, %51 : !llvm.ptr<i32>
    %52 = llvm.getelementptr %25[%47] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %50, %52 : !llvm.ptr<i32>
    %53 = llvm.add %47, %4  : i64
    llvm.br ^bb1(%53 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%3 : i64)
  ^bb4(%54: i64):  // 2 preds: ^bb3, ^bb5
    %55 = llvm.icmp "slt" %54, %4 : i64
    llvm.cond_br %55, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %56 = llvm.getelementptr %11[%54] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %57 = llvm.load %56 : !llvm.ptr<i32>
    %58 = llvm.getelementptr %25[%54] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %59 = llvm.load %58 : !llvm.ptr<i32>
    %60 = llvm.add %57, %59  : i32
    %61 = llvm.getelementptr %39[%54] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %60, %61 : !llvm.ptr<i32>
    %62 = llvm.add %54, %4  : i64
    llvm.br ^bb4(%62 : i64)
  ^bb6:  // pred: ^bb4
    llvm.br ^bb7(%3, %0 : i64, i32)
  ^bb7(%63: i64, %64: i32):  // 2 preds: ^bb6, ^bb8
    %65 = llvm.icmp "slt" %63, %4 : i64
    llvm.cond_br %65, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %66 = llvm.getelementptr %39[%63] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %67 = llvm.load %66 : !llvm.ptr<i32>
    %68 = llvm.add %64, %67  : i32
    %69 = llvm.add %63, %4  : i64
    llvm.br ^bb7(%69, %68 : i64, i32)
  ^bb9:  // pred: ^bb7
    %70 = llvm.icmp "eq" %64, %0 : i32
    %71 = llvm.select %70, %0, %2 : i1, i32
    %72 = llvm.bitcast %11 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%72) : (!llvm.ptr<i8>) -> ()
    %73 = llvm.bitcast %25 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%73) : (!llvm.ptr<i8>) -> ()
    %74 = llvm.bitcast %39 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%74) : (!llvm.ptr<i8>) -> ()
    llvm.return %71 : i32
  }
}

