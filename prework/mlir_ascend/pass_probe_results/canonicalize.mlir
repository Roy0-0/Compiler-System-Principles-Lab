module {
  func @probe(%arg0: i32, %arg1: i32) -> i32 {
    %0 = arith.addi %arg0, %arg1 : i32
    %1 = arith.addi %arg0, %arg1 : i32
    %2 = arith.addi %0, %1 : i32
    return %2 : i32
  }
}

