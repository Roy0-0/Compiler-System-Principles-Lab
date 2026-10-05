; ModuleID = '/home/roy/compiler-lab/prework/program_a_factorial/stages/factorial_raw.ll'
source_filename = "/home/roy/compiler-lab/prework/program_a_factorial/src/factorial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @factorial(i32 noundef %n) local_unnamed_addr #0 {
entry:
  %0 = icmp ugt i32 %n, 12
  br i1 %0, label %return, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %cmp2.not6 = icmp ult i32 %n, 2
  br i1 %cmp2.not6, label %return, label %vector.ph

vector.ph:                                        ; preds = %while.cond.preheader
  %n.rnd.up = add i32 %n, 2
  %n.vec = and i32 %n.rnd.up, -4
  %trip.count.minus.1 = add i32 %n, -2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  switch i32 %n.vec, label %vector.body.2 [
    i32 4, label %middle.block
    i32 8, label %middle.block.fold.split
  ]

vector.body.2:                                    ; preds = %vector.ph
  br label %middle.block

middle.block.fold.split:                          ; preds = %vector.ph
  br label %middle.block

middle.block:                                     ; preds = %vector.ph, %middle.block.fold.split, %vector.body.2
  %index.lcssa = phi i32 [ 0, %vector.ph ], [ 8, %vector.body.2 ], [ 4, %middle.block.fold.split ]
  %vec.phi.lcssa = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %vector.ph ], [ <i32 12, i32 21, i32 32, i32 45>, %vector.body.2 ], [ <i32 2, i32 3, i32 4, i32 5>, %middle.block.fold.split ]
  %.lcssa = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %vector.ph ], [ <i32 120, i32 231, i32 384, i32 585>, %vector.body.2 ], [ <i32 12, i32 21, i32 32, i32 45>, %middle.block.fold.split ]
  %broadcast.splatinsert9 = insertelement <4 x i32> poison, i32 %index.lcssa, i64 0
  %broadcast.splat10 = shufflevector <4 x i32> %broadcast.splatinsert9, <4 x i32> poison, <4 x i32> zeroinitializer
  %vec.iv = or <4 x i32> %broadcast.splat10, <i32 0, i32 1, i32 2, i32 3>
  %.not = icmp ugt <4 x i32> %vec.iv, %broadcast.splat
  %1 = select <4 x i1> %.not, <4 x i32> %vec.phi.lcssa, <4 x i32> %.lcssa
  %2 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %1)
  br label %return

return:                                           ; preds = %middle.block, %while.cond.preheader, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 1, %while.cond.preheader ], [ %2, %middle.block ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @getint() #4
  %call1 = tail call i32 @factorial(i32 noundef %call)
  tail call void @putint(i32 noundef %call1) #4
  ret i32 0
}

declare i32 @getint() local_unnamed_addr #2

declare void @putint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #3

attributes #0 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
