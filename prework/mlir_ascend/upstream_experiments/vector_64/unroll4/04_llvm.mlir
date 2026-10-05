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
    %6 = llvm.mlir.constant(16 : index) : i64
    %7 = llvm.mlir.constant(8 : index) : i64
    %8 = llvm.mlir.constant(12 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(2 : index) : i64
    %11 = llvm.mlir.constant(3 : index) : i64
    %12 = llvm.mlir.constant(64 : index) : i64
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.null : !llvm.ptr<i32>
    %15 = llvm.getelementptr %14[%12] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %16 = llvm.ptrtoint %15 : !llvm.ptr<i32> to i64
    %17 = llvm.call @malloc(%16) : (i64) -> !llvm.ptr<i8>
    %18 = llvm.bitcast %17 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %19 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %24 = llvm.insertvalue %12, %23[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.insertvalue %13, %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %26 = llvm.mlir.constant(64 : index) : i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.mlir.null : !llvm.ptr<i32>
    %29 = llvm.getelementptr %28[%26] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %30 = llvm.ptrtoint %29 : !llvm.ptr<i32> to i64
    %31 = llvm.call @malloc(%30) : (i64) -> !llvm.ptr<i8>
    %32 = llvm.bitcast %31 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %33 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %34 = llvm.insertvalue %32, %33[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %38 = llvm.insertvalue %26, %37[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %39 = llvm.insertvalue %27, %38[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %40 = llvm.mlir.constant(64 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.null : !llvm.ptr<i32>
    %43 = llvm.getelementptr %42[%40] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %44 = llvm.ptrtoint %43 : !llvm.ptr<i32> to i64
    %45 = llvm.call @malloc(%44) : (i64) -> !llvm.ptr<i8>
    %46 = llvm.bitcast %45 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.insertvalue %46, %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.insertvalue %50, %49[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %52 = llvm.insertvalue %40, %51[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %53 = llvm.insertvalue %41, %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    llvm.br ^bb1(%3 : i64)
  ^bb1(%54: i64):  // 2 preds: ^bb0, ^bb2
    %55 = llvm.icmp "slt" %54, %4 : i64
    llvm.cond_br %55, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %56 = llvm.trunc %54 : i64 to i32
    %57 = llvm.mul %56, %2  : i32
    %58 = llvm.getelementptr %18[%54] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %56, %58 : !llvm.ptr<i32>
    %59 = llvm.getelementptr %32[%54] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %57, %59 : !llvm.ptr<i32>
    %60 = llvm.add %54, %9  : i64
    %61 = llvm.trunc %60 : i64 to i32
    %62 = llvm.mul %61, %2  : i32
    %63 = llvm.add %54, %9  : i64
    %64 = llvm.getelementptr %18[%63] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %61, %64 : !llvm.ptr<i32>
    %65 = llvm.add %54, %9  : i64
    %66 = llvm.getelementptr %32[%65] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %62, %66 : !llvm.ptr<i32>
    %67 = llvm.add %54, %10  : i64
    %68 = llvm.trunc %67 : i64 to i32
    %69 = llvm.mul %68, %2  : i32
    %70 = llvm.add %54, %10  : i64
    %71 = llvm.getelementptr %18[%70] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %68, %71 : !llvm.ptr<i32>
    %72 = llvm.add %54, %10  : i64
    %73 = llvm.getelementptr %32[%72] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %69, %73 : !llvm.ptr<i32>
    %74 = llvm.add %54, %11  : i64
    %75 = llvm.trunc %74 : i64 to i32
    %76 = llvm.mul %75, %2  : i32
    %77 = llvm.add %54, %11  : i64
    %78 = llvm.getelementptr %18[%77] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %75, %78 : !llvm.ptr<i32>
    %79 = llvm.add %54, %11  : i64
    %80 = llvm.getelementptr %32[%79] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %76, %80 : !llvm.ptr<i32>
    %81 = llvm.add %54, %5  : i64
    llvm.br ^bb1(%81 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%3 : i64)
  ^bb4(%82: i64):  // 2 preds: ^bb3, ^bb5
    %83 = llvm.icmp "slt" %82, %4 : i64
    llvm.cond_br %83, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %84 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %85 = llvm.getelementptr %84[%82] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %86 = llvm.bitcast %85 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %87 = llvm.load %86 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %88 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %89 = llvm.getelementptr %88[%82] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %90 = llvm.bitcast %89 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %91 = llvm.load %90 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %92 = llvm.add %87, %91  : vector<4xi32>
    %93 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %94 = llvm.getelementptr %93[%82] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %95 = llvm.bitcast %94 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    llvm.store %92, %95 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %96 = llvm.add %82, %5  : i64
    %97 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %98 = llvm.getelementptr %97[%96] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %99 = llvm.bitcast %98 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %100 = llvm.load %99 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %101 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %102 = llvm.getelementptr %101[%96] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %103 = llvm.bitcast %102 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %104 = llvm.load %103 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %105 = llvm.add %100, %104  : vector<4xi32>
    %106 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %107 = llvm.getelementptr %106[%96] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %108 = llvm.bitcast %107 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    llvm.store %105, %108 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %109 = llvm.add %82, %7  : i64
    %110 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %111 = llvm.getelementptr %110[%109] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %112 = llvm.bitcast %111 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %113 = llvm.load %112 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %114 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %115 = llvm.getelementptr %114[%109] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %116 = llvm.bitcast %115 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %117 = llvm.load %116 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %118 = llvm.add %113, %117  : vector<4xi32>
    %119 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %120 = llvm.getelementptr %119[%109] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %121 = llvm.bitcast %120 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    llvm.store %118, %121 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %122 = llvm.add %82, %8  : i64
    %123 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %124 = llvm.getelementptr %123[%122] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %125 = llvm.bitcast %124 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %126 = llvm.load %125 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %127 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %128 = llvm.getelementptr %127[%122] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %129 = llvm.bitcast %128 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    %130 = llvm.load %129 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %131 = llvm.add %126, %130  : vector<4xi32>
    %132 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %133 = llvm.getelementptr %132[%122] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %134 = llvm.bitcast %133 : !llvm.ptr<i32> to !llvm.ptr<vector<4xi32>>
    llvm.store %131, %134 {alignment = 4 : i64} : !llvm.ptr<vector<4xi32>>
    %135 = llvm.add %82, %6  : i64
    llvm.br ^bb4(%135 : i64)
  ^bb6:  // pred: ^bb4
    llvm.br ^bb7(%4 : i64)
  ^bb7(%136: i64):  // 2 preds: ^bb6, ^bb8
    %137 = llvm.icmp "slt" %136, %4 : i64
    llvm.cond_br %137, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %138 = llvm.getelementptr %18[%136] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %139 = llvm.load %138 : !llvm.ptr<i32>
    %140 = llvm.getelementptr %32[%136] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %141 = llvm.load %140 : !llvm.ptr<i32>
    %142 = llvm.add %139, %141  : i32
    %143 = llvm.getelementptr %46[%136] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %142, %143 : !llvm.ptr<i32>
    %144 = llvm.add %136, %9  : i64
    llvm.br ^bb7(%144 : i64)
  ^bb9:  // pred: ^bb7
    llvm.br ^bb10(%3, %0 : i64, i32)
  ^bb10(%145: i64, %146: i32):  // 2 preds: ^bb9, ^bb11
    %147 = llvm.icmp "slt" %145, %4 : i64
    llvm.cond_br %147, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %148 = llvm.getelementptr %46[%145] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %149 = llvm.load %148 : !llvm.ptr<i32>
    %150 = llvm.add %146, %149  : i32
    %151 = llvm.add %145, %9  : i64
    %152 = llvm.getelementptr %46[%151] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %153 = llvm.load %152 : !llvm.ptr<i32>
    %154 = llvm.add %150, %153  : i32
    %155 = llvm.add %145, %10  : i64
    %156 = llvm.getelementptr %46[%155] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %157 = llvm.load %156 : !llvm.ptr<i32>
    %158 = llvm.add %154, %157  : i32
    %159 = llvm.add %145, %11  : i64
    %160 = llvm.getelementptr %46[%159] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %161 = llvm.load %160 : !llvm.ptr<i32>
    %162 = llvm.add %158, %161  : i32
    %163 = llvm.add %145, %5  : i64
    llvm.br ^bb10(%163, %162 : i64, i32)
  ^bb12:  // pred: ^bb10
    %164 = llvm.icmp "ne" %146, %1 : i32
    %165 = llvm.zext %164 : i1 to i32
    %166 = llvm.bitcast %18 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%166) : (!llvm.ptr<i8>) -> ()
    %167 = llvm.bitcast %32 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%167) : (!llvm.ptr<i8>) -> ()
    %168 = llvm.bitcast %46 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @free(%168) : (!llvm.ptr<i8>) -> ()
    llvm.return %165 : i32
  }
}

