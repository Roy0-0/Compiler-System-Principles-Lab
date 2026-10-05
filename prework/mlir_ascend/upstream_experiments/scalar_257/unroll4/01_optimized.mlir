#map0 = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
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
      %11 = arith.index_cast %arg0 : index to i32
      %12 = arith.muli %11, %c2_i32 : i32
      affine.store %11, %0[%arg0] : memref<257xi32>
      affine.store %12, %1[%arg0] : memref<257xi32>
      %13 = affine.apply #map0(%arg0)
      %14 = arith.index_cast %13 : index to i32
      %15 = arith.muli %14, %c2_i32 : i32
      affine.store %14, %0[%arg0 + 1] : memref<257xi32>
      affine.store %15, %1[%arg0 + 1] : memref<257xi32>
      %16 = affine.apply #map1(%arg0)
      %17 = arith.index_cast %16 : index to i32
      %18 = arith.muli %17, %c2_i32 : i32
      affine.store %17, %0[%arg0 + 2] : memref<257xi32>
      affine.store %18, %1[%arg0 + 2] : memref<257xi32>
      %19 = affine.apply #map2(%arg0)
      %20 = arith.index_cast %19 : index to i32
      %21 = arith.muli %20, %c2_i32 : i32
      affine.store %20, %0[%arg0 + 3] : memref<257xi32>
      affine.store %21, %1[%arg0 + 3] : memref<257xi32>
    }
    affine.store %c256_i32, %0[256] : memref<257xi32>
    affine.store %c512_i32, %1[256] : memref<257xi32>
    affine.for %arg0 = 0 to 256 step 4 {
      %11 = affine.load %0[%arg0] : memref<257xi32>
      %12 = affine.load %1[%arg0] : memref<257xi32>
      %13 = arith.addi %11, %12 : i32
      affine.store %13, %2[%arg0] : memref<257xi32>
      %14 = affine.load %0[%arg0 + 1] : memref<257xi32>
      %15 = affine.load %1[%arg0 + 1] : memref<257xi32>
      %16 = arith.addi %14, %15 : i32
      affine.store %16, %2[%arg0 + 1] : memref<257xi32>
      %17 = affine.load %0[%arg0 + 2] : memref<257xi32>
      %18 = affine.load %1[%arg0 + 2] : memref<257xi32>
      %19 = arith.addi %17, %18 : i32
      affine.store %19, %2[%arg0 + 2] : memref<257xi32>
      %20 = affine.load %0[%arg0 + 3] : memref<257xi32>
      %21 = affine.load %1[%arg0 + 3] : memref<257xi32>
      %22 = arith.addi %20, %21 : i32
      affine.store %22, %2[%arg0 + 3] : memref<257xi32>
    }
    %3 = affine.load %0[256] : memref<257xi32>
    %4 = affine.load %1[256] : memref<257xi32>
    %5 = arith.addi %3, %4 : i32
    affine.store %5, %2[256] : memref<257xi32>
    %6 = affine.for %arg0 = 0 to 256 step 4 iter_args(%arg1 = %c0_i32) -> (i32) {
      %11 = affine.load %2[%arg0] : memref<257xi32>
      %12 = arith.addi %arg1, %11 : i32
      %13 = affine.load %2[%arg0 + 1] : memref<257xi32>
      %14 = arith.addi %12, %13 : i32
      %15 = affine.load %2[%arg0 + 2] : memref<257xi32>
      %16 = arith.addi %14, %15 : i32
      %17 = affine.load %2[%arg0 + 3] : memref<257xi32>
      %18 = arith.addi %16, %17 : i32
      affine.yield %18 : i32
    }
    %7 = affine.load %2[256] : memref<257xi32>
    %8 = arith.addi %6, %7 : i32
    %9 = arith.cmpi ne, %8, %c98688_i32 : i32
    %10 = arith.extui %9 : i1 to i32
    memref.dealloc %0 : memref<257xi32>
    memref.dealloc %1 : memref<257xi32>
    memref.dealloc %2 : memref<257xi32>
    return %10 : i32
  }
}

