; ModuleID = '/home/roy/compiler-lab/prework/program_a_factorial/stages/factorial_raw.ll'
source_filename = "/home/roy/compiler-lab/prework/program_a_factorial/src/factorial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @factorial(i32 noundef %n) #0 {
entry:
  %cmp = icmp slt i32 %n, 0
  %cmp1 = icmp sgt i32 %n, 12
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %while.cond

while.cond:                                       ; preds = %entry, %while.body
  %i.0 = phi i32 [ %add, %while.body ], [ 2, %entry ]
  %result.0 = phi i32 [ %mul, %while.body ], [ 1, %entry ]
  %cmp2.not = icmp sgt i32 %i.0, %n
  br i1 %cmp2.not, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %mul = mul nsw i32 %result.0, %i.0
  %add = add nuw nsw i32 %i.0, 1
  br label %while.cond, !llvm.loop !6

return:                                           ; preds = %while.cond, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %result.0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %call = call i32 @getint() #2
  %call1 = call i32 @factorial(i32 noundef %call)
  call void @putint(i32 noundef %call1) #2
  ret i32 0
}

declare i32 @getint() #1

declare void @putint(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
