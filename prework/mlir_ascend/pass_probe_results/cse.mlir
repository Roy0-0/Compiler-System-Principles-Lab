module {
  func @probe(%arg0: i32, %arg1: i32) -> i32 {
    %c0_i32 = arith.constant 0 : i32
    %0 = arith.addi %arg0, %arg1 : i32
    %1 = arith.addi %0, %c0_i32 : i32
    %2 = arith.addi %1, %0 : i32
    return %2 : i32
  }
}

