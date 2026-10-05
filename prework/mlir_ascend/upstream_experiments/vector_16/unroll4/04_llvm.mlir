module attributes {llvm.data_layout = ""} {
  llvm.func @free(!llvm.ptr<i8>)
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(12 : index) : i64
    %1 = llvm.mlir.constant(8 : index) : i64
    %2 = llvm.mlir.constant(4 : index) : i64
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(360 : i32) : i32
    %5 = llvm.mlir.constant(2 : i32) : i32
    %6 = llvm.mlir.constant(0 : index) : i64
    %7 = llvm.mlir.constant(16 : index) : i64
    %8 = llvm.mlir.constant(1 : index) : i64
    %9 = llvm.mlir.constant(2 : index) : i64
    %10 = llvm.mlir.constant(3 : index) : i64
    %11 = llvm.mlir.constant(16 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.null : !llvm.ptr<i32>
    %14 = llvm.getelementptr %13[%11] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %15 = llvm.ptrtoint %14 : !llvm.ptr<i32> to i64
    %16 = llvm.call @malloc(%15) : (i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %23 = llvm.insertvalue %11, %22[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %24 = llvm.insertvalue %12, %23[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.mlir.constant(16 : index) : i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.mlir.null : !llvm.ptr<i32>
    %28 = llvm.getelementptr %27[%25] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %29 = llvm.ptrtoint %28 : !llvm.ptr<i32> to i64
    %30 = llvm.call @malloc(%29) : (i64) -> !llvm.ptr<i8>
    %31 = llvm.bitcast %30 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %32 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %33 = llvm.insertvalue %31, %32[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.insertvalue %25, %36[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %38 = llvm.insertvalue %26, %37[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %39 = llvm.mlir.constant(16 : index) : i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.mlir.null : !llvm.ptr<i32>
    %42 = llvm.getelementptr %41[%39] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %43 = llvm.ptrtoint %42 : !llvm.ptr<i32> to i64
    %44 = llvm.call @malloc(%43) : (i64) -> !llvm.ptr<i8>
    %45 = llvm.bitcast %44 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.insertvalue %45, %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %51 = llvm.insertvalue %39, %50[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %52 = llvm.insertvalue %40, %51[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    llvm.br ^bb1(%6 : i64)
  ^bb1(%53: i64):  // 2 preds: ^bb0, ^bb2
    %54 = llvm.icmp "slt" %53, %7 : i64
    llvm.cond_br %54, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %55 = llvm.trunc %53 : i64 to i32
    %56 = llvm.mul %55, %5  : i32
    %57 = llvm.getelementptr %17[%53] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %55, %57 : !llvm.ptr<i32>
    %58 = llvm.getelementptr %31[%53] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %56, %58 : !llvm.ptr<i32>
    %59 = llvm.add %53, %8  : i64
    %60 = llvm.trunc %59 : i64 to i32
    %61 = llvm.mul %60, %5  : i32
    %62 = llvm.add %53, %8  : i64
    %63 = llvm.getelementptr %17[%62] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %60, %63 : !llvm.ptr<i32>
    %64 = llvm.add %53, %8  : i64
    %65 = llvm.getelementptr %31[%64] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %61, %65 : !llvm.ptr<i32>
    %66 = llvm.add %53, %9  : i64
    %67 = llvm.trunc %66 : i64 to i32
    %68 = llvm.mul %67, %5  : i32
    %69 = llvm.add %53, %9  : i64
    %70 = llvm.getelementptr %17[%69] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %67, %70 : !llvm.ptr<i32>
    %71 = llvm.add %53, %9  : i64
    %72 = llvm.getelementptr %31[%71] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %68, %72 : !llvm.ptr<i32>
    %73 = llvm.add %53, %10  : i64
    %74 = llvm.trunc %73 : i64 to i32
    %75 = llvm.mul %74, %5  : i32
    %76 = llvm.add %53, %10  : i64
    %77 = llvm.getelementptr %17[%76] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %74, %77 : !llvm.ptr<i32>
    %78 = llvm.add %53, %10  : i64
    %79 = llvm.getelementptr %31[%78] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %75, %79 : !llvm.ptr<i32>
    %80 = llvm.add %53, %2  : i64
    llvm.br ^bb1(%80 : i64)
  ^bb3:  // pred: ^bb1
    %81 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %82 = llvm.getelementptr %81[%6] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %83 = llvm.bitcast %82 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %84 = llvm.load %83 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %85 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %86 = llvm.getelementptr %85[%6] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %87 = llvm.bitcast %86 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %88 = llvm.load %87 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %89 = llvm.add %84, %88  : vector<4xi32>
    %90 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %91 = llvm.getelementptr %90[%6] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %92 = llvm.bitcast %91 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    llvm.store %89, %92 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %93 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %94 = llvm.getelementptr %93[%2] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %95 = llvm.bitcast %94 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %96 = llvm.load %95 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %97 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %98 = llvm.getelementptr %97[%2] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %99 = llvm.bitcast %98 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %100 = llvm.load %99 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %101 = llvm.add %96, %100  : vector<4xi32>
    %102 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %103 = llvm.getelementptr %102[%2] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %104 = llvm.bitcast %103 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    llvm.store %101, %104 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %105 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %106 = llvm.getelementptr %105[%1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %107 = llvm.bitcast %106 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %108 = llvm.load %107 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %109 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %110 = llvm.getelementptr %109[%1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %111 = llvm.bitcast %110 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %112 = llvm.load %111 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %113 = llvm.add %108, %112  : vector<4xi32>
    %114 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %115 = llvm.getelementptr %114[%1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %116 = llvm.bitcast %115 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    llvm.store %113, %116 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %117 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %118 = llvm.getelementptr %117[%0] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %119 = llvm.bitcast %118 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %120 = llvm.load %119 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %121 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %122 = llvm.getelementptr %121[%0] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %123 = llvm.bitcast %122 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %124 = llvm.load %123 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %125 = llvm.add %120, %124  : vector<4xi32>
    %126 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %127 = llvm.getelementptr %126[%0] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %128 = llvm.bitcast %127 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    llvm.store %125, %128 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    llvm.br ^bb4(%7 : i64)
  ^bb4(%129: i64):  // 2 preds: ^bb3, ^bb5
    %130 = llvm.icmp "slt" %129, %7 : i64
    llvm.cond_br %130, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %131 = llvm.getelementptr %17[%129] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %132 = llvm.load %131 : !llvm.ptr<i32>
    %133 = llvm.getelementptr %31[%129] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %134 = llvm.load %133 : !llvm.ptr<i32>
    %135 = llvm.add %132, %134  : i32
    %136 = llvm.getelementptr %45[%129] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %135, %136 : !llvm.ptr<i32>
    %137 = llvm.add %129, %8  : i64
    llvm.br ^bb4(%137 : i64)
  ^bb6:  // pred: ^bb4
    llvm.br ^bb7(%6, %3 : i64, i32)
  ^bb7(%138: i64, %139: i32):  // 2 preds: ^bb6, ^bb8
    %140 = llvm.icmp "slt" %138, %7 : i64
    llvm.cond_br %140, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %141 = llvm.getelementptr %45[%138] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %142 = llvm.load %141 : !llvm.ptr<i32>
    %143 = llvm.add %139, %142  : i32
    %144 = llvm.add %138, %8  : i64
    %145 = llvm.getelementptr %45[%144] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %146 = llvm.load %145 : !llvm.ptr<i32>
    %147 = llvm.add %143, %146  : i32
    %148 = llvm.add %138, %9  : i64
    %149 = llvm.getelementptr %45[%148] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %150 = llvm.load %149 : !llvm.ptr<i32>
    %151 = llvm.add %147, %150  : i32
    %152 = llvm.add %138, %10  : i64
    %153 = llvm.getelementptr %45[%152] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %154 = llvm.load %153 : !llvm.ptr<i32>
    %155 = llvm.add %151, %154  : i32
    %156 = llvm.add %138, %2  : i64
    llvm.br ^bb7(%156, %155 : i64, i32)
  ^bb9:  // pred: ^bb7
    %157 = llvm.icmp "ne" %139, %4 : i32
    %158 = llvm.zext %157 : i1 to i32
    %159 = llvm.bitcast %17 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%159) : (!llvm.ptr<i8>) -> ()
    %160 = llvm.bitcast %31 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%160) : (!llvm.ptr<i8>) -> ()
    %161 = llvm.bitcast %45 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%161) : (!llvm.ptr<i8>) -> ()
    llvm.return %158 : i32
  }
}

