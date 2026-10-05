module {
  func @main() -> i32 {
    %a = memref.alloc() : memref<17xi32>
    %b = memref.alloc() : memref<17xi32>
    %c = memref.alloc() : memref<17xi32>
    %zero = arith.constant 0 : i32
    %two = arith.constant 2 : i32
    %expected = arith.constant 408 : i32
    %ok = arith.constant 0 : i32
    %bad = arith.constant 1 : i32
    affine.for %i = 0 to 17 {
      %idx = arith.index_cast %i : index to i32
      %twice = arith.muli %idx, %two : i32
      affine.store %idx, %a[%i] : memref<17xi32>
      affine.store %twice, %b[%i] : memref<17xi32>
    }

    affine.for %i = 0 to 16 step 4 {
      %x = vector.load %a[%i] : memref<17xi32>, vector<4xi32>
      %y = vector.load %b[%i] : memref<17xi32>, vector<4xi32>
      %v = arith.subi %x, %y : vector<4xi32>
      vector.store %v, %c[%i] : memref<17xi32>, vector<4xi32>
    }

    affine.for %i = 16 to 17 {
      %x = affine.load %a[%i] : memref<17xi32>
      %y = affine.load %b[%i] : memref<17xi32>
      %v = arith.addi %x, %y : i32
      affine.store %v, %c[%i] : memref<17xi32>
    }

    %sum = affine.for %i = 0 to 17 iter_args(%acc = %zero) -> i32 {
      %value = affine.load %c[%i] : memref<17xi32>
      %next = arith.addi %acc, %value : i32
      affine.yield %next : i32
    }
    %equal = arith.cmpi eq, %sum, %expected : i32
    %status = select %equal, %ok, %bad : i32
    memref.dealloc %a : memref<17xi32>
    memref.dealloc %b : memref<17xi32>
    memref.dealloc %c : memref<17xi32>
    return %status : i32
  }
}
