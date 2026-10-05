module attributes {llvm.data_layout = ""} {
  llvm.func @free(!llvm.ptr<i8>)
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.constant(98688 : i32) : i32
    %2 = llvm.mlir.constant(2 : i32) : i32
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(257 : index) : i64
    %5 = llvm.mlir.constant(1 : index) : i64
    %6 = llvm.mlir.constant(257 : index) : i64
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
    %20 = llvm.mlir.constant(257 : index) : i64
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
    %34 = llvm.mlir.constant(257 : index) : i64
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
    %51 = llvm.mul %50, %2  : i32
    %52 = llvm.getelementptr %12[%48] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %50, %52 : !llvm.ptr<i32>
    %53 = llvm.getelementptr %26[%48] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %51, %53 : !llvm.ptr<i32>
    %54 = llvm.add %48, %5  : i64
    llvm.br ^bb1(%54 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%3 : i64)
  ^bb4(%55: i64):  // 2 preds: ^bb3, ^bb5
    %56 = llvm.icmp "slt" %55, %4 : i64
    llvm.cond_br %56, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %57 = llvm.getelementptr %12[%55] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %58 = llvm.load %57 : !llvm.ptr<i32>
    %59 = llvm.getelementptr %26[%55] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %60 = llvm.load %59 : !llvm.ptr<i32>
    %61 = llvm.add %58, %60  : i32
    %62 = llvm.getelementptr %40[%55] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %61, %62 : !llvm.ptr<i32>
    %63 = llvm.add %55, %5  : i64
    llvm.br ^bb4(%63 : i64)
  ^bb6:  // pred: ^bb4
    llvm.br ^bb7(%3, %0 : i64, i32)
  ^bb7(%64: i64, %65: i32):  // 2 preds: ^bb6, ^bb8
    %66 = llvm.icmp "slt" %64, %4 : i64
    llvm.cond_br %66, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %67 = llvm.getelementptr %40[%64] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %68 = llvm.load %67 : !llvm.ptr<i32>
    %69 = llvm.add %65, %68  : i32
    %70 = llvm.add %64, %5  : i64
    llvm.br ^bb7(%70, %69 : i64, i32)
  ^bb9:  // pred: ^bb7
    %71 = llvm.icmp "ne" %65, %1 : i32
    %72 = llvm.zext %71 : i1 to i32
    %73 = llvm.bitcast %12 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%73) : (!llvm.ptr<i8>) -> ()
    %74 = llvm.bitcast %26 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%74) : (!llvm.ptr<i8>) -> ()
    %75 = llvm.bitcast %40 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%75) : (!llvm.ptr<i8>) -> ()
    llvm.return %72 : i32
  }
}

