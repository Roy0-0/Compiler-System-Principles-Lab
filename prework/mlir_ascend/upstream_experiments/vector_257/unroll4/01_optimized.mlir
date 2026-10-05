#map0 = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
#map3 = affine_map<(d0) -> (d0 + 4)>
#map4 = affine_map<(d0) -> (d0 + 8)>
#map5 = affine_map<(d0) -> (d0 + 12)>
module {
  func @main() -> i32 {
    %c512_i32 = arith.constant 512 : i32
    %c256_i32 = arith.constant 256 : i32
    %c0_i32 = arith.constant 0 : i32
    %c98688_i32 = arith.constant 98688 : i32
    %c2_i32 = arith.constant 2 : i32
    %0 = memref.alloc() : memref<257xi32>
    %1 = memref.alloc() : memref<257xi32>
    %2 = memref.alloc() : memref<257xi32>
    affine.for %arg0 = 0 to 256 step 4 {
      %8 = arith.index_cast %arg0 : index to i32
      %9 = arith.muli %8, %c2_i32 : i32
      affine.store %8, %0[%arg0] : memref<257xi32>
      affine.store %9, %1[%arg0] : memref<257xi32>
      %10 = affine.apply #map0(%arg0)
      %11 = arith.index_cast %10 : index to i32
      %12 = arith.muli %11, %c2_i32 : i32
      affine.store %11, %0[%arg0 + 1] : memref<257xi32>
      affine.store %12, %1[%arg0 + 1] : memref<257xi32>
      %13 = affine.apply #map1(%arg0)
      %14 = arith.index_cast %13 : index to i32
      %15 = arith.muli %14, %c2_i32 : i32
      affine.store %14, %0[%arg0 + 2] : memref<257xi32>
      affine.store %15, %1[%arg0 + 2] : memref<257xi32>
      %16 = affine.apply #map2(%arg0)
      %17 = arith.index_cast %16 : index to i32
      %18 = arith.muli %17, %c2_i32 : i32
      affine.store %17, %0[%arg0 + 3] : memref<257xi32>
      affine.store %18, %1[%arg0 + 3] : memref<257xi32>
    }
    affine.store %c256_i32, %0[256] : memref<257xi32>
    affine.store %c512_i32, %1[256] : memref<257xi32>
    affine.for %arg0 = 0 to 256 step 16 {
      %8 = vector.load %0[%arg0] : memref<257xi32>, vector<4xi32>
      %9 = vector.load %1[%arg0] : memref<257xi32>, vector<4xi32>
      %10 = arith.addi %8, %9 : vector<4xi32>
      vector.store %10, %2[%arg0] : memref<257xi32>, vector<4xi32>
      %11 = affine.apply #map3(%arg0)
      %12 = vector.load %0[%11] : memref<257xi32>, vector<4xi32>
      %13 = vector.load %1[%11] : memref<257xi32>, vector<4xi32>
      %14 = arith.addi %12, %13 : vector<4xi32>
      vector.store %14, %2[%11] : memref<257xi32>, vector<4xi32>
      %15 = affine.apply #map4(%arg0)
      %16 = vector.load %0[%15] : memref<257xi32>, vector<4xi32>
      %17 = vector.load %1[%15] : memref<257xi32>, vector<4xi32>
      %18 = arith.addi %16, %17 : vector<4xi32>
      vector.store %18, %2[%15] : memref<257xi32>, vector<4xi32>
      %19 = affine.apply #map5(%arg0)
      %20 = vector.load %0[%19] : memref<257xi32>, vector<4xi32>
      %21 = vector.load %1[%19] : memref<257xi32>, vector<4xi32>
      %22 = arith.addi %20, %21 : vector<4xi32>
      vector.store %22, %2[%19] : memref<257xi32>, vector<4xi32>
    }
    affine.for %arg0 = 256 to 257 {
      %8 = affine.load %0[%arg0] : memref<257xi32>
      %9 = affine.load %1[%arg0] : memref<257xi32>
      %10 = arith.addi %8, %9 : i32
      affine.store %10, %2[%arg0] : memref<257xi32>
    }
    %3 = affine.for %arg0 = 0 to 256 step 4 iter_args(%arg1 = %c0_i32) -> (i32) {
      %8 = affine.load %2[%arg0] : memref<257xi32>
      %9 = arith.addi %arg1, %8 : i32
      %10 = affine.load %2[%arg0 + 1] : memref<257xi32>
      %11 = arith.addi %9, %10 : i32
      %12 = affine.load %2[%arg0 + 2] : memref<257xi32>
      %13 = arith.addi %11, %12 : i32
      %14 = affine.load %2[%arg0 + 3] : memref<257xi32>
      %15 = arith.addi %13, %14 : i32
      affine.yield %15 : i32
    }
    %4 = affine.load %2[256] : memref<257xi32>
    %5 = arith.addi %3, %4 : i32
    %6 = arith.cmpi ne, %5, %c98688_i32 : i32
    %7 = arith.extui %6 : i1 to i32
    memref.dealloc %0 : memref<257xi32>
    memref.dealloc %1 : memref<257xi32>
    memref.dealloc %2 : memref<257xi32>
    return %7 : i32
  }
}

