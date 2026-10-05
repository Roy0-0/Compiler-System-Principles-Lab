module attributes {llvm.data_layout = ""} {
  llvm.func @free(!llvm.ptr<i8>)
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.constant(6048 : i32) : i32
    %2 = llvm.mlir.constant(2 : i32) : i32
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(64 : index) : i64
    %5 = llvm.mlir.constant(4 : index) : i64
    %6 = llvm.mlir.constant(1 : index) : i64
    %7 = llvm.mlir.constant(2 : index) : i64
    %8 = llvm.mlir.constant(3 : index) : i64
    %9 = llvm.mlir.constant(64 : index) : i64
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
    %23 = llvm.mlir.constant(64 : index) : i64
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
    %37 = llvm.mlir.constant(64 : index) : i64
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
    llvm.br ^bb1(%3 : i64)
  ^bb1(%51: i64):  // 2 preds: ^bb0, ^bb2
    %52 = llvm.icmp "slt" %51, %4 : i64
    llvm.cond_br %52, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %53 = llvm.trunc %51 : i64 to i32
    %54 = llvm.mul %53, %2  : i32
    %55 = llvm.getelementptr %15[%51] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %53, %55 : !llvm.ptr<i32>
    %56 = llvm.getelementptr %29[%51] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %54, %56 : !llvm.ptr<i32>
    %57 = llvm.add %51, %6  : i64
    %58 = llvm.trunc %57 : i64 to i32
    %59 = llvm.mul %58, %2  : i32
    %60 = llvm.add %51, %6  : i64
    %61 = llvm.getelementptr %15[%60] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %58, %61 : !llvm.ptr<i32>
    %62 = llvm.add %51, %6  : i64
    %63 = llvm.getelementptr %29[%62] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %59, %63 : !llvm.ptr<i32>
    %64 = llvm.add %51, %7  : i64
    %65 = llvm.trunc %64 : i64 to i32
    %66 = llvm.mul %65, %2  : i32
    %67 = llvm.add %51, %7  : i64
    %68 = llvm.getelementptr %15[%67] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %65, %68 : !llvm.ptr<i32>
    %69 = llvm.add %51, %7  : i64
    %70 = llvm.getelementptr %29[%69] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %66, %70 : !llvm.ptr<i32>
    %71 = llvm.add %51, %8  : i64
    %72 = llvm.trunc %71 : i64 to i32
    %73 = llvm.mul %72, %2  : i32
    %74 = llvm.add %51, %8  : i64
    %75 = llvm.getelementptr %15[%74] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %72, %75 : !llvm.ptr<i32>
    %76 = llvm.add %51, %8  : i64
    %77 = llvm.getelementptr %29[%76] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %73, %77 : !llvm.ptr<i32>
    %78 = llvm.add %51, %5  : i64
    llvm.br ^bb1(%78 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%3 : i64)
  ^bb4(%79: i64):  // 2 preds: ^bb3, ^bb5
    %80 = llvm.icmp "slt" %79, %4 : i64
    llvm.cond_br %80, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %81 = llvm.getelementptr %15[%79] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %82 = llvm.load %81 : !llvm.ptr<i32>
    %83 = llvm.getelementptr %29[%79] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %84 = llvm.load %83 : !llvm.ptr<i32>
    %85 = llvm.add %82, %84  : i32
    %86 = llvm.getelementptr %43[%79] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %85, %86 : !llvm.ptr<i32>
    %87 = llvm.add %79, %6  : i64
    %88 = llvm.getelementptr %15[%87] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %89 = llvm.load %88 : !llvm.ptr<i32>
    %90 = llvm.add %79, %6  : i64
    %91 = llvm.getelementptr %29[%90] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %92 = llvm.load %91 : !llvm.ptr<i32>
    %93 = llvm.add %89, %92  : i32
    %94 = llvm.add %79, %6  : i64
    %95 = llvm.getelementptr %43[%94] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %93, %95 : !llvm.ptr<i32>
    %96 = llvm.add %79, %7  : i64
    %97 = llvm.getelementptr %15[%96] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %98 = llvm.load %97 : !llvm.ptr<i32>
    %99 = llvm.add %79, %7  : i64
    %100 = llvm.getelementptr %29[%99] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %101 = llvm.load %100 : !llvm.ptr<i32>
    %102 = llvm.add %98, %101  : i32
    %103 = llvm.add %79, %7  : i64
    %104 = llvm.getelementptr %43[%103] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %102, %104 : !llvm.ptr<i32>
    %105 = llvm.add %79, %8  : i64
    %106 = llvm.getelementptr %15[%105] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %107 = llvm.load %106 : !llvm.ptr<i32>
    %108 = llvm.add %79, %8  : i64
    %109 = llvm.getelementptr %29[%108] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %110 = llvm.load %109 : !llvm.ptr<i32>
    %111 = llvm.add %107, %110  : i32
    %112 = llvm.add %79, %8  : i64
    %113 = llvm.getelementptr %43[%112] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %111, %113 : !llvm.ptr<i32>
    %114 = llvm.add %79, %5  : i64
    llvm.br ^bb4(%114 : i64)
  ^bb6:  // pred: ^bb4
    llvm.br ^bb7(%3, %0 : i64, i32)
  ^bb7(%115: i64, %116: i32):  // 2 preds: ^bb6, ^bb8
    %117 = llvm.icmp "slt" %115, %4 : i64
    llvm.cond_br %117, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %118 = llvm.getelementptr %43[%115] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %119 = llvm.load %118 : !llvm.ptr<i32>
    %120 = llvm.add %116, %119  : i32
    %121 = llvm.add %115, %6  : i64
    %122 = llvm.getelementptr %43[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %123 = llvm.load %122 : !llvm.ptr<i32>
    %124 = llvm.add %120, %123  : i32
    %125 = llvm.add %115, %7  : i64
    %126 = llvm.getelementptr %43[%125] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %127 = llvm.load %126 : !llvm.ptr<i32>
    %128 = llvm.add %124, %127  : i32
    %129 = llvm.add %115, %8  : i64
    %130 = llvm.getelementptr %43[%129] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %131 = llvm.load %130 : !llvm.ptr<i32>
    %132 = llvm.add %128, %131  : i32
    %133 = llvm.add %115, %5  : i64
    llvm.br ^bb7(%133, %132 : i64, i32)
  ^bb9:  // pred: ^bb7
    %134 = llvm.icmp "ne" %116, %1 : i32
    %135 = llvm.zext %134 : i1 to i32
    %136 = llvm.bitcast %15 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%136) : (!llvm.ptr<i8>) -> ()
    %137 = llvm.bitcast %29 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%137) : (!llvm.ptr<i8>) -> ()
    %138 = llvm.bitcast %43 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%138) : (!llvm.ptr<i8>) -> ()
    llvm.return %135 : i32
  }
}

