module {
  func @main() -> i32 {
    %a = memref.alloc() : memref<16xi32>
    %b = memref.alloc() : memref<16xi32>
    %c = memref.alloc() : memref<16xi32>
    %zero = arith.constant 0 : i32
    %two = arith.constant 2 : i32
    %expected = arith.constant 360 : i32
    %ok = arith.constant 0 : i32
    %bad = arith.constant 1 : i32
    affine.for %i = 0 to 16 {
      %idx = arith.index_cast %i : index to i32
      %twice = arith.muli %idx, %two : i32
      affine.store %idx, %a[%i] : memref<16xi32>
      affine.store %twice, %b[%i] : memref<16xi32>
    }

    affine.for %i = 0 to 16 {
      %x = affine.load %a[%i] : memref<16xi32>
      %y = affine.load %b[%i] : memref<16xi32>
      %v = arith.addi %x, %y : i32
      affine.store %v, %c[%i] : memref<16xi32>
    }

    %sum = affine.for %i = 0 to 16 iter_args(%acc = %zero) -> i32 {
      %value = affine.load %c[%i] : memref<16xi32>
      %next = arith.addi %acc, %value : i32
      affine.yield %next : i32
    }
    %equal = arith.cmpi eq, %sum, %expected : i32
    %status = select %equal, %ok, %bad : i32
    memref.dealloc %a : memref<16xi32>
    memref.dealloc %b : memref<16xi32>
    memref.dealloc %c : memref<16xi32>
    return %status : i32
  }
}
