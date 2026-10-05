; ModuleID = '/home/roy/compiler-lab/prework/program_b_optimization/src/array_transform.c'
source_filename = "/home/roy/compiler-lab/prework/program_b_optimization/src/array_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8, !tbaa !5
  %7 = call i64 @strtol(i8* nocapture noundef nonnull %6, i8** noundef null, i32 noundef 10) #5
  %8 = trunc i64 %7 to i32
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %8, %4 ], [ 1000000, %2 ]
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %73, label %12

12:                                               ; preds = %9
  %13 = sext i32 %10 to i64
  %14 = shl nsw i64 %13, 2
  %15 = call noalias i8* @malloc(i64 noundef %14) #5
  %16 = bitcast i8* %15 to i32*
  %17 = call noalias i8* @malloc(i64 noundef %14) #5
  %18 = bitcast i8* %17 to i32*
  %19 = call noalias i8* @malloc(i64 noundef %14) #5
  %20 = bitcast i8* %19 to i32*
  %21 = icmp eq i8* %15, null
  %22 = icmp eq i8* %17, null
  %23 = or i1 %21, %22
  %24 = icmp eq i8* %19, null
  %25 = or i1 %23, %24
  br i1 %25, label %71, label %26

26:                                               ; preds = %12
  %27 = icmp sgt i32 %10, 0
  br i1 %27, label %28, label %68

28:                                               ; preds = %26
  %29 = zext i32 %10 to i64
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i64 [ 0, %28 ], [ %37, %30 ]
  %32 = trunc i64 %31 to i32
  %33 = urem i32 %32, 97
  %34 = getelementptr inbounds i32, i32* %16, i64 %31
  store i32 %33, i32* %34, align 4, !tbaa !9
  %35 = urem i32 %32, 31
  %36 = getelementptr inbounds i32, i32* %18, i64 %31
  store i32 %35, i32* %36, align 4, !tbaa !9
  %37 = add nuw nsw i64 %31, 1
  %38 = icmp eq i64 %37, %29
  br i1 %38, label %39, label %30, !llvm.loop !11

39:                                               ; preds = %30
  br i1 %27, label %40, label %68

40:                                               ; preds = %39
  %41 = zext i32 %10 to i64
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi i64 [ 0, %40 ], [ %54, %42 ]
  %44 = getelementptr inbounds i32, i32* %16, i64 %43
  %45 = load i32, i32* %44, align 4, !tbaa !9
  %46 = shl nsw i32 %45, 1
  %47 = getelementptr inbounds i32, i32* %18, i64 %43
  %48 = load i32, i32* %47, align 4, !tbaa !9
  %49 = add nsw i32 %46, %48
  %50 = icmp sgt i32 %49, 100
  %51 = add nsw i32 %49, -3
  %52 = select i1 %50, i32 %51, i32 %49
  %53 = getelementptr inbounds i32, i32* %20, i64 %43
  store i32 %52, i32* %53, align 4, !tbaa !9
  %54 = add nuw nsw i64 %43, 1
  %55 = icmp eq i64 %54, %41
  br i1 %55, label %56, label %42, !llvm.loop !14

56:                                               ; preds = %42
  br i1 %27, label %57, label %68

57:                                               ; preds = %56
  %58 = zext i32 %10 to i64
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i64 [ 0, %57 ], [ %66, %59 ]
  %61 = phi i64 [ 0, %57 ], [ %65, %59 ]
  %62 = getelementptr inbounds i32, i32* %20, i64 %60
  %63 = load i32, i32* %62, align 4, !tbaa !9
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %61, %64
  %66 = add nuw nsw i64 %60, 1
  %67 = icmp eq i64 %66, %58
  br i1 %67, label %68, label %59, !llvm.loop !15

68:                                               ; preds = %59, %39, %26, %56
  %69 = phi i64 [ 0, %56 ], [ 0, %26 ], [ 0, %39 ], [ %65, %59 ]
  %70 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 noundef %69)
  br label %71

71:                                               ; preds = %12, %68
  %72 = phi i32 [ 0, %68 ], [ 3, %12 ]
  call void @free(i8* noundef %15) #5
  call void @free(i8* noundef %17) #5
  call void @free(i8* noundef %19) #5
  br label %73

73:                                               ; preds = %71, %9
  %74 = phi i32 [ 2, %9 ], [ %72, %71 ]
  ret i32 %74
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
