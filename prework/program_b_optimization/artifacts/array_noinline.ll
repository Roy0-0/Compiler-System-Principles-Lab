; ModuleID = '/home/roy/compiler-lab/prework/program_b_optimization/src/array_transform.c'
source_filename = "/home/roy/compiler-lab/prework/program_b_optimization/src/array_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8, !tbaa !5
  %7 = tail call i64 @strtol(i8* nocapture noundef nonnull %6, i8** noundef null, i32 noundef 10) #7
  %8 = trunc i64 %7 to i32
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %116, label %10

10:                                               ; preds = %2, %4
  %11 = phi i64 [ %7, %4 ], [ 1000000, %2 ]
  %12 = and i64 %11, 4294967295
  %13 = shl nuw nsw i64 %12, 2
  %14 = tail call noalias i8* @malloc(i64 noundef %13) #7
  %15 = bitcast i8* %14 to i32*
  %16 = tail call noalias i8* @malloc(i64 noundef %13) #7
  %17 = bitcast i8* %16 to i32*
  %18 = tail call noalias i8* @malloc(i64 noundef %13) #7
  %19 = bitcast i8* %18 to i32*
  %20 = icmp eq i8* %14, null
  %21 = icmp eq i8* %16, null
  %22 = or i1 %20, %21
  %23 = icmp eq i8* %18, null
  %24 = or i1 %22, %23
  br i1 %24, label %53, label %25

25:                                               ; preds = %10
  %26 = icmp ult i64 %12, 8
  br i1 %26, label %51, label %27

27:                                               ; preds = %25
  %28 = and i64 %11, 7
  %29 = sub nsw i64 %12, %28
  br label %30

30:                                               ; preds = %30, %27
  %31 = phi i64 [ 0, %27 ], [ %46, %30 ]
  %32 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %27 ], [ %47, %30 ]
  %33 = add <4 x i32> %32, <i32 4, i32 4, i32 4, i32 4>
  %34 = urem <4 x i32> %32, <i32 97, i32 97, i32 97, i32 97>
  %35 = urem <4 x i32> %33, <i32 97, i32 97, i32 97, i32 97>
  %36 = getelementptr inbounds i32, i32* %15, i64 %31
  %37 = bitcast i32* %36 to <4 x i32>*
  store <4 x i32> %34, <4 x i32>* %37, align 4, !tbaa !9
  %38 = getelementptr inbounds i32, i32* %36, i64 4
  %39 = bitcast i32* %38 to <4 x i32>*
  store <4 x i32> %35, <4 x i32>* %39, align 4, !tbaa !9
  %40 = urem <4 x i32> %32, <i32 31, i32 31, i32 31, i32 31>
  %41 = urem <4 x i32> %33, <i32 31, i32 31, i32 31, i32 31>
  %42 = getelementptr inbounds i32, i32* %17, i64 %31
  %43 = bitcast i32* %42 to <4 x i32>*
  store <4 x i32> %40, <4 x i32>* %43, align 4, !tbaa !9
  %44 = getelementptr inbounds i32, i32* %42, i64 4
  %45 = bitcast i32* %44 to <4 x i32>*
  store <4 x i32> %41, <4 x i32>* %45, align 4, !tbaa !9
  %46 = add nuw i64 %31, 8
  %47 = add <4 x i32> %32, <i32 8, i32 8, i32 8, i32 8>
  %48 = icmp eq i64 %46, %29
  br i1 %48, label %49, label %30, !llvm.loop !11

49:                                               ; preds = %30
  %50 = icmp eq i64 %28, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %25, %49
  %52 = phi i64 [ 0, %25 ], [ %29, %49 ]
  br label %54

53:                                               ; preds = %10
  tail call void @free(i8* noundef %14) #7
  tail call void @free(i8* noundef %16) #7
  tail call void @free(i8* noundef %18) #7
  br label %116

54:                                               ; preds = %51, %54
  %55 = phi i64 [ %61, %54 ], [ %52, %51 ]
  %56 = trunc i64 %55 to i32
  %57 = urem i32 %56, 97
  %58 = getelementptr inbounds i32, i32* %15, i64 %55
  store i32 %57, i32* %58, align 4, !tbaa !9
  %59 = urem i32 %56, 31
  %60 = getelementptr inbounds i32, i32* %17, i64 %55
  store i32 %59, i32* %60, align 4, !tbaa !9
  %61 = add nuw nsw i64 %55, 1
  %62 = icmp eq i64 %61, %12
  br i1 %62, label %63, label %54, !llvm.loop !14

63:                                               ; preds = %54, %49
  br label %64

64:                                               ; preds = %63, %64
  %65 = phi i64 [ %74, %64 ], [ 0, %63 ]
  %66 = getelementptr inbounds i32, i32* %15, i64 %65
  %67 = load i32, i32* %66, align 4, !tbaa !9
  %68 = shl nsw i32 %67, 1
  %69 = getelementptr inbounds i32, i32* %17, i64 %65
  %70 = load i32, i32* %69, align 4, !tbaa !9
  %71 = add nsw i32 %68, %70
  %72 = tail call fastcc i32 @adjust_value(i32 noundef %71) #7
  %73 = getelementptr inbounds i32, i32* %19, i64 %65
  store i32 %72, i32* %73, align 4, !tbaa !9
  %74 = add nuw nsw i64 %65, 1
  %75 = icmp eq i64 %74, %12
  br i1 %75, label %76, label %64, !llvm.loop !16

76:                                               ; preds = %64
  %77 = icmp ult i64 %12, 4
  br i1 %77, label %101, label %78

78:                                               ; preds = %76
  %79 = and i64 %11, 3
  %80 = sub nsw i64 %12, %79
  br label %81

81:                                               ; preds = %81, %78
  %82 = phi i64 [ 0, %78 ], [ %95, %81 ]
  %83 = phi <2 x i64> [ zeroinitializer, %78 ], [ %93, %81 ]
  %84 = phi <2 x i64> [ zeroinitializer, %78 ], [ %94, %81 ]
  %85 = getelementptr inbounds i32, i32* %19, i64 %82
  %86 = bitcast i32* %85 to <2 x i32>*
  %87 = load <2 x i32>, <2 x i32>* %86, align 4, !tbaa !9
  %88 = getelementptr inbounds i32, i32* %85, i64 2
  %89 = bitcast i32* %88 to <2 x i32>*
  %90 = load <2 x i32>, <2 x i32>* %89, align 4, !tbaa !9
  %91 = sext <2 x i32> %87 to <2 x i64>
  %92 = sext <2 x i32> %90 to <2 x i64>
  %93 = add <2 x i64> %83, %91
  %94 = add <2 x i64> %84, %92
  %95 = add nuw i64 %82, 4
  %96 = icmp eq i64 %95, %80
  br i1 %96, label %97, label %81, !llvm.loop !17

97:                                               ; preds = %81
  %98 = add <2 x i64> %94, %93
  %99 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %98)
  %100 = icmp eq i64 %79, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %76, %97
  %102 = phi i64 [ 0, %76 ], [ %80, %97 ]
  %103 = phi i64 [ 0, %76 ], [ %99, %97 ]
  br label %104

104:                                              ; preds = %101, %104
  %105 = phi i64 [ %111, %104 ], [ %102, %101 ]
  %106 = phi i64 [ %110, %104 ], [ %103, %101 ]
  %107 = getelementptr inbounds i32, i32* %19, i64 %105
  %108 = load i32, i32* %107, align 4, !tbaa !9
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %106, %109
  %111 = add nuw nsw i64 %105, 1
  %112 = icmp eq i64 %111, %12
  br i1 %112, label %113, label %104, !llvm.loop !18

113:                                              ; preds = %104, %97
  %114 = phi i64 [ %99, %97 ], [ %110, %104 ]
  %115 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 noundef %114)
  tail call void @free(i8* noundef %14) #7
  tail call void @free(i8* noundef %16) #7
  tail call void @free(i8* noundef nonnull %18) #7
  br label %116

116:                                              ; preds = %53, %113, %4
  %117 = phi i32 [ 2, %4 ], [ 3, %53 ], [ 0, %113 ]
  ret i32 %117
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @adjust_value(i32 noundef %0) unnamed_addr #5 {
  %2 = icmp sgt i32 %0, 100
  %3 = add nsw i32 %0, -3
  %4 = select i1 %2, i32 %3, i32 %0
  ret i32 %4
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }

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
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !12, !15, !13}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12, !13}
!18 = distinct !{!18, !12, !15, !13}
