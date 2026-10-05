module attributes {llvm.data_layout = ""} {
  llvm.func @free(!llvm.ptr<i8>)
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(12 : index) : i64
    %1 = llvm.mlir.constant(8 : index) : i64
    %2 = llvm.mlir.constant(4 : index) : i64
    %3 = llvm.mlir.constant(32 : i32) : i32
    %4 = llvm.mlir.constant(16 : i32) : i32
    %5 = llvm.mlir.constant(0 : i32) : i32
    %6 = llvm.mlir.constant(408 : i32) : i32
    %7 = llvm.mlir.constant(2 : i32) : i32
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(16 : index) : i64
    %10 = llvm.mlir.constant(17 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(2 : index) : i64
    %13 = llvm.mlir.constant(3 : index) : i64
    %14 = llvm.mlir.constant(17 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.null : !llvm.ptr<i32>
    %17 = llvm.getelementptr %16[%14] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %18 = llvm.ptrtoint %17 : !llvm.ptr<i32> to i64
    %19 = llvm.call @malloc(%18) : (i64) -> !llvm.ptr<i8>
    %20 = llvm.bitcast %19 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %21 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %22 = llvm.insertvalue %20, %21[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %23 = llvm.insertvalue %20, %22[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.insertvalue %24, %23[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %26 = llvm.insertvalue %14, %25[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %27 = llvm.insertvalue %15, %26[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %28 = llvm.mlir.constant(17 : index) : i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.mlir.null : !llvm.ptr<i32>
    %31 = llvm.getelementptr %30[%28] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %32 = llvm.ptrtoint %31 : !llvm.ptr<i32> to i64
    %33 = llvm.call @malloc(%32) : (i64) -> !llvm.ptr<i8>
    %34 = llvm.bitcast %33 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %35 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %36 = llvm.insertvalue %34, %35[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.insertvalue %34, %36[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %40 = llvm.insertvalue %28, %39[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %41 = llvm.insertvalue %29, %40[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %42 = llvm.mlir.constant(17 : index) : i64
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.mlir.null : !llvm.ptr<i32>
    %45 = llvm.getelementptr %44[%42] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %46 = llvm.ptrtoint %45 : !llvm.ptr<i32> to i64
    %47 = llvm.call @malloc(%46) : (i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %49 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %50 = llvm.insertvalue %48, %49[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %54 = llvm.insertvalue %42, %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %55 = llvm.insertvalue %43, %54[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    llvm.br ^bb1(%8 : i64)
  ^bb1(%56: i64):  // 2 preds: ^bb0, ^bb2
    %57 = llvm.icmp "slt" %56, %9 : i64
    llvm.cond_br %57, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %58 = llvm.trunc %56 : i64 to i32
    %59 = llvm.mul %58, %7  : i32
    %60 = llvm.getelementptr %20[%56] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %58, %60 : !llvm.ptr<i32>
    %61 = llvm.getelementptr %34[%56] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %59, %61 : !llvm.ptr<i32>
    %62 = llvm.add %56, %11  : i64
    %63 = llvm.trunc %62 : i64 to i32
    %64 = llvm.mul %63, %7  : i32
    %65 = llvm.add %56, %11  : i64
    %66 = llvm.getelementptr %20[%65] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %63, %66 : !llvm.ptr<i32>
    %67 = llvm.add %56, %11  : i64
    %68 = llvm.getelementptr %34[%67] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %64, %68 : !llvm.ptr<i32>
    %69 = llvm.add %56, %12  : i64
    %70 = llvm.trunc %69 : i64 to i32
    %71 = llvm.mul %70, %7  : i32
    %72 = llvm.add %56, %12  : i64
    %73 = llvm.getelementptr %20[%72] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %70, %73 : !llvm.ptr<i32>
    %74 = llvm.add %56, %12  : i64
    %75 = llvm.getelementptr %34[%74] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %71, %75 : !llvm.ptr<i32>
    %76 = llvm.add %56, %13  : i64
    %77 = llvm.trunc %76 : i64 to i32
    %78 = llvm.mul %77, %7  : i32
    %79 = llvm.add %56, %13  : i64
    %80 = llvm.getelementptr %20[%79] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %77, %80 : !llvm.ptr<i32>
    %81 = llvm.add %56, %13  : i64
    %82 = llvm.getelementptr %34[%81] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %78, %82 : !llvm.ptr<i32>
    %83 = llvm.add %56, %2  : i64
    llvm.br ^bb1(%83 : i64)
  ^bb3:  // pred: ^bb1
    %84 = llvm.getelementptr %20[%9] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %4, %84 : !llvm.ptr<i32>
    %85 = llvm.getelementptr %34[%9] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %3, %85 : !llvm.ptr<i32>
    %86 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %87 = llvm.getelementptr %86[%8] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %88 = llvm.bitcast %87 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %89 = llvm.load %88 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %90 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %91 = llvm.getelementptr %90[%8] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %92 = llvm.bitcast %91 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %93 = llvm.load %92 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %94 = llvm.add %89, %93  : vector<4xi32>
    %95 = llvm.extractvalue %55[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %96 = llvm.getelementptr %95[%8] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %97 = llvm.bitcast %96 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    llvm.store %94, %97 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %98 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %99 = llvm.getelementptr %98[%2] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %100 = llvm.bitcast %99 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %101 = llvm.load %100 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %102 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %103 = llvm.getelementptr %102[%2] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %104 = llvm.bitcast %103 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %105 = llvm.load %104 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %106 = llvm.add %101, %105  : vector<4xi32>
    %107 = llvm.extractvalue %55[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %108 = llvm.getelementptr %107[%2] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %109 = llvm.bitcast %108 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    llvm.store %106, %109 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %110 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %111 = llvm.getelementptr %110[%1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %112 = llvm.bitcast %111 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %113 = llvm.load %112 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %114 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %115 = llvm.getelementptr %114[%1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %116 = llvm.bitcast %115 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %117 = llvm.load %116 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %118 = llvm.add %113, %117  : vector<4xi32>
    %119 = llvm.extractvalue %55[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %120 = llvm.getelementptr %119[%1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %121 = llvm.bitcast %120 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    llvm.store %118, %121 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %122 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %123 = llvm.getelementptr %122[%0] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %124 = llvm.bitcast %123 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %125 = llvm.load %124 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %126 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %127 = llvm.getelementptr %126[%0] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %128 = llvm.bitcast %127 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %129 = llvm.load %128 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %130 = llvm.add %125, %129  : vector<4xi32>
    %131 = llvm.extractvalue %55[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %132 = llvm.getelementptr %131[%0] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %133 = llvm.bitcast %132 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    llvm.store %130, %133 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    llvm.br ^bb4(%9 : i64)
  ^bb4(%134: i64):  // 2 preds: ^bb3, ^bb5
    %135 = llvm.icmp "slt" %134, %10 : i64
    llvm.cond_br %135, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %136 = llvm.getelementptr %20[%134] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %137 = llvm.load %136 : !llvm.ptr<i32>
    %138 = llvm.getelementptr %34[%134] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %139 = llvm.load %138 : !llvm.ptr<i32>
    %140 = llvm.add %137, %139  : i32
    %141 = llvm.getelementptr %48[%134] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %140, %141 : !llvm.ptr<i32>
    %142 = llvm.add %134, %11  : i64
    llvm.br ^bb4(%142 : i64)
  ^bb6:  // pred: ^bb4
    llvm.br ^bb7(%8, %5 : i64, i32)
  ^bb7(%143: i64, %144: i32):  // 2 preds: ^bb6, ^bb8
    %145 = llvm.icmp "slt" %143, %9 : i64
    llvm.cond_br %145, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %146 = llvm.getelementptr %48[%143] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %147 = llvm.load %146 : !llvm.ptr<i32>
    %148 = llvm.add %144, %147  : i32
    %149 = llvm.add %143, %11  : i64
    %150 = llvm.getelementptr %48[%149] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %151 = llvm.load %150 : !llvm.ptr<i32>
    %152 = llvm.add %148, %151  : i32
    %153 = llvm.add %143, %12  : i64
    %154 = llvm.getelementptr %48[%153] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %155 = llvm.load %154 : !llvm.ptr<i32>
    %156 = llvm.add %152, %155  : i32
    %157 = llvm.add %143, %13  : i64
    %158 = llvm.getelementptr %48[%157] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %159 = llvm.load %158 : !llvm.ptr<i32>
    %160 = llvm.add %156, %159  : i32
    %161 = llvm.add %143, %2  : i64
    llvm.br ^bb7(%161, %160 : i64, i32)
  ^bb9:  // pred: ^bb7
    %162 = llvm.getelementptr %48[%9] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %163 = llvm.load %162 : !llvm.ptr<i32>
    %164 = llvm.add %144, %163  : i32
    %165 = llvm.icmp "ne" %164, %6 : i32
    %166 = llvm.zext %165 : i1 to i32
    %167 = llvm.bitcast %20 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%167) : (!llvm.ptr<i8>) -> ()
    %168 = llvm.bitcast %34 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%168) : (!llvm.ptr<i8>) -> ()
    %169 = llvm.bitcast %48 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%169) : (!llvm.ptr<i8>) -> ()
    llvm.return %166 : i32
  }
}

