; ModuleID = '/home/roy/compiler-lab/prework/program_a_factorial/src/factorial.c'
source_filename = "/home/roy/compiler-lab/prework/program_a_factorial/src/factorial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @factorial(i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp sgt i32 %1, 12
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 2, i32* %i, align 4
  store i32 1, i32* %result, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %result, align 4
  %5 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %4, %5
  store i32 %mul, i32* %result, align 4
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 1
  store i32 %add, i32* %i, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %result, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %answer = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @getint()
  store i32 %call, i32* %n, align 4
  %0 = load i32, i32* %n, align 4
  %call1 = call i32 @factorial(i32 noundef %0)
  store i32 %call1, i32* %answer, align 4
  %1 = load i32, i32* %answer, align 4
  call void @putint(i32 noundef %1)
  ret i32 0
}

declare i32 @getint() #1

declare void @putint(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
