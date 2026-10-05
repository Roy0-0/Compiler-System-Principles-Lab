#map0 = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func @main() -> i32 {
    %c12 = arith.constant 12 : index
    %c8 = arith.constant 8 : index
    %c4 = arith.constant 4 : index
    %c0_i32 = arith.constant 0 : i32
    %c360_i32 = arith.constant 360 : i32
    %c2_i32 = arith.constant 2 : i32
    %c0 = arith.constant 0 : index
    %0 = memref.alloc() : memref<16xi32>
    %1 = memref.alloc() : memref<16xi32>
    %2 = memref.alloc() : memref<16xi32>
    affine.for %arg0 = 0 to 16 step 4 {
      %18 = arith.index_cast %arg0 : index to i32
      %19 = arith.muli %18, %c2_i32 : i32
      affine.store %18, %0[%arg0] : memref<16xi32>
      affine.store %19, %1[%arg0] : memref<16xi32>
      %20 = affine.apply #map0(%arg0)
      %21 = arith.index_cast %20 : index to i32
      %22 = arith.muli %21, %c2_i32 : i32
      affine.store %21, %0[%arg0 + 1] : memref<16xi32>
      affine.store %22, %1[%arg0 + 1] : memref<16xi32>
      %23 = affine.apply #map1(%arg0)
      %24 = arith.index_cast %23 : index to i32
      %25 = arith.muli %24, %c2_i32 : i32
      affine.store %24, %0[%arg0 + 2] : memref<16xi32>
      affine.store %25, %1[%arg0 + 2] : memref<16xi32>
      %26 = affine.apply #map2(%arg0)
      %27 = arith.index_cast %26 : index to i32
      %28 = arith.muli %27, %c2_i32 : i32
      affine.store %27, %0[%arg0 + 3] : memref<16xi32>
      affine.store %28, %1[%arg0 + 3] : memref<16xi32>
    }
    %3 = vector.load %0[%c0] : memref<16xi32>, vector<4xi32>
    %4 = vector.load %1[%c0] : memref<16xi32>, vector<4xi32>
    %5 = arith.addi %3, %4 : vector<4xi32>
    vector.store %5, %2[%c0] : memref<16xi32>, vector<4xi32>
    %6 = vector.load %0[%c4] : memref<16xi32>, vector<4xi32>
    %7 = vector.load %1[%c4] : memref<16xi32>, vector<4xi32>
    %8 = arith.addi %6, %7 : vector<4xi32>
    vector.store %8, %2[%c4] : memref<16xi32>, vector<4xi32>
    %9 = vector.load %0[%c8] : memref<16xi32>, vector<4xi32>
    %10 = vector.load %1[%c8] : memref<16xi32>, vector<4xi32>
    %11 = arith.addi %9, %10 : vector<4xi32>
    vector.store %11, %2[%c8] : memref<16xi32>, vector<4xi32>
    %12 = vector.load %0[%c12] : memref<16xi32>, vector<4xi32>
    %13 = vector.load %1[%c12] : memref<16xi32>, vector<4xi32>
    %14 = arith.addi %12, %13 : vector<4xi32>
    vector.store %14, %2[%c12] : memref<16xi32>, vector<4xi32>
    affine.for %arg0 = 16 to 16 {
      %18 = affine.load %0[%arg0] : memref<16xi32>
      %19 = affine.load %1[%arg0] : memref<16xi32>
      %20 = arith.addi %18, %19 : i32
      affine.store %20, %2[%arg0] : memref<16xi32>
    }
    %15 = affine.for %arg0 = 0 to 16 step 4 iter_args(%arg1 = %c0_i32) -> (i32) {
      %18 = affine.load %2[%arg0] : memref<16xi32>
      %19 = arith.addi %arg1, %18 : i32
      %20 = affine.load %2[%arg0 + 1] : memref<16xi32>
      %21 = arith.addi %19, %20 : i32
      %22 = affine.load %2[%arg0 + 2] : memref<16xi32>
      %23 = arith.addi %21, %22 : i32
      %24 = affine.load %2[%arg0 + 3] : memref<16xi32>
      %25 = arith.addi %23, %24 : i32
      affine.yield %25 : i32
    }
    %16 = arith.cmpi ne, %15, %c360_i32 : i32
    %17 = arith.extui %16 : i1 to i32
    memref.dealloc %0 : memref<16xi32>
    memref.dealloc %1 : memref<16xi32>
    memref.dealloc %2 : memref<16xi32>
    return %17 : i32
  }
}

