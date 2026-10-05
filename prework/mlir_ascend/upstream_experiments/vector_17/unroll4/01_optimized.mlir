#map0 = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func @main() -> i32 {
    %c12 = arith.constant 12 : index
    %c8 = arith.constant 8 : index
    %c4 = arith.constant 4 : index
    %c32_i32 = arith.constant 32 : i32
    %c16_i32 = arith.constant 16 : i32
    %c0_i32 = arith.constant 0 : i32
    %c408_i32 = arith.constant 408 : i32
    %c2_i32 = arith.constant 2 : i32
    %c0 = arith.constant 0 : index
    %0 = memref.alloc() : memref<17xi32>
    %1 = memref.alloc() : memref<17xi32>
    %2 = memref.alloc() : memref<17xi32>
    affine.for %arg0 = 0 to 16 step 4 {
      %20 = arith.index_cast %arg0 : index to i32
      %21 = arith.muli %20, %c2_i32 : i32
      affine.store %20, %0[%arg0] : memref<17xi32>
      affine.store %21, %1[%arg0] : memref<17xi32>
      %22 = affine.apply #map0(%arg0)
      %23 = arith.index_cast %22 : index to i32
      %24 = arith.muli %23, %c2_i32 : i32
      affine.store %23, %0[%arg0 + 1] : memref<17xi32>
      affine.store %24, %1[%arg0 + 1] : memref<17xi32>
      %25 = affine.apply #map1(%arg0)
      %26 = arith.index_cast %25 : index to i32
      %27 = arith.muli %26, %c2_i32 : i32
      affine.store %26, %0[%arg0 + 2] : memref<17xi32>
      affine.store %27, %1[%arg0 + 2] : memref<17xi32>
      %28 = affine.apply #map2(%arg0)
      %29 = arith.index_cast %28 : index to i32
      %30 = arith.muli %29, %c2_i32 : i32
      affine.store %29, %0[%arg0 + 3] : memref<17xi32>
      affine.store %30, %1[%arg0 + 3] : memref<17xi32>
    }
    affine.store %c16_i32, %0[16] : memref<17xi32>
    affine.store %c32_i32, %1[16] : memref<17xi32>
    %3 = vector.load %0[%c0] : memref<17xi32>, vector<4xi32>
    %4 = vector.load %1[%c0] : memref<17xi32>, vector<4xi32>
    %5 = arith.addi %3, %4 : vector<4xi32>
    vector.store %5, %2[%c0] : memref<17xi32>, vector<4xi32>
    %6 = vector.load %0[%c4] : memref<17xi32>, vector<4xi32>
    %7 = vector.load %1[%c4] : memref<17xi32>, vector<4xi32>
    %8 = arith.addi %6, %7 : vector<4xi32>
    vector.store %8, %2[%c4] : memref<17xi32>, vector<4xi32>
    %9 = vector.load %0[%c8] : memref<17xi32>, vector<4xi32>
    %10 = vector.load %1[%c8] : memref<17xi32>, vector<4xi32>
    %11 = arith.addi %9, %10 : vector<4xi32>
    vector.store %11, %2[%c8] : memref<17xi32>, vector<4xi32>
    %12 = vector.load %0[%c12] : memref<17xi32>, vector<4xi32>
    %13 = vector.load %1[%c12] : memref<17xi32>, vector<4xi32>
    %14 = arith.addi %12, %13 : vector<4xi32>
    vector.store %14, %2[%c12] : memref<17xi32>, vector<4xi32>
    affine.for %arg0 = 16 to 17 {
      %20 = affine.load %0[%arg0] : memref<17xi32>
      %21 = affine.load %1[%arg0] : memref<17xi32>
      %22 = arith.addi %20, %21 : i32
      affine.store %22, %2[%arg0] : memref<17xi32>
    }
    %15 = affine.for %arg0 = 0 to 16 step 4 iter_args(%arg1 = %c0_i32) -> (i32) {
      %20 = affine.load %2[%arg0] : memref<17xi32>
      %21 = arith.addi %arg1, %20 : i32
      %22 = affine.load %2[%arg0 + 1] : memref<17xi32>
      %23 = arith.addi %21, %22 : i32
      %24 = affine.load %2[%arg0 + 2] : memref<17xi32>
      %25 = arith.addi %23, %24 : i32
      %26 = affine.load %2[%arg0 + 3] : memref<17xi32>
      %27 = arith.addi %25, %26 : i32
      affine.yield %27 : i32
    }
    %16 = affine.load %2[16] : memref<17xi32>
    %17 = arith.addi %15, %16 : i32
    %18 = arith.cmpi ne, %17, %c408_i32 : i32
    %19 = arith.extui %18 : i1 to i32
    memref.dealloc %0 : memref<17xi32>
    memref.dealloc %1 : memref<17xi32>
    memref.dealloc %2 : memref<17xi32>
    return %19 : i32
  }
}

