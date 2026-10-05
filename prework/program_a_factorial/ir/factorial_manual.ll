; Hand-written SSA LLVM IR for program A.
; The loop uses phi nodes instead of the alloca/load/store pattern emitted at -O0.

declare i32 @getint()
declare void @putint(i32)

define i32 @factorial(i32 %n) {
entry:
  %neg = icmp slt i32 %n, 0
  %high = icmp sgt i32 %n, 12
  %invalid = or i1 %neg, %high
  br i1 %invalid, label %reject, label %loop

reject:
  ret i32 -1

loop:
  %i = phi i32 [ 2, %entry ], [ %next_i, %body ]
  %result = phi i32 [ 1, %entry ], [ %next_result, %body ]
  %continue = icmp sle i32 %i, %n
  br i1 %continue, label %body, label %done

body:
  %next_result = mul i32 %result, %i
  %next_i = add i32 %i, 1
  br label %loop

done:
  ret i32 %result
}

define i32 @main() {
entry:
  %n = call i32 @getint()
  %answer = call i32 @factorial(i32 %n)
  call void @putint(i32 %answer)
  ret i32 0
}
