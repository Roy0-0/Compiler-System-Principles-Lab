module {
  func @probe(%x: i32, %y: i32) -> i32 {
    %zero = arith.constant 0 : i32
    %a = arith.addi %x, %y : i32
    %b = arith.addi %x, %y : i32
    %c = arith.addi %a, %zero : i32
    %d = arith.addi %c, %b : i32
    return %d : i32
  }
}
