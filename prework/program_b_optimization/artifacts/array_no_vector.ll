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
  %7 = tail call i64 @strtol(i8* nocapture noundef nonnull %6, i8** noundef null, i32 noundef 10) #5
  %8 = trunc i64 %7 to i32
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %174, label %10

10:                                               ; preds = %2, %4
  %11 = phi i64 [ %7, %4 ], [ 1000000, %2 ]
  %12 = and i64 %11, 4294967295
  %13 = shl nuw nsw i64 %12, 2
  %14 = tail call noalias i8* @malloc(i64 noundef %13) #5
  %15 = bitcast i8* %14 to i32*
  %16 = tail call noalias i8* @malloc(i64 noundef %13) #5
  %17 = bitcast i8* %16 to i32*
  %18 = tail call noalias i8* @malloc(i64 noundef %13) #5
  %19 = bitcast i8* %18 to i32*
  %20 = icmp eq i8* %14, null
  %21 = icmp eq i8* %16, null
  %22 = or i1 %20, %21
  %23 = icmp eq i8* %18, null
  %24 = or i1 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %10
  %26 = add nsw i64 %12, -1
  %27 = and i64 %11, 1
  %28 = icmp eq i64 %26, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %25
  %30 = sub nsw i64 %12, %27
  br label %32

31:                                               ; preds = %10
  tail call void @free(i8* noundef %14) #5
  tail call void @free(i8* noundef %16) #5
  tail call void @free(i8* noundef %18) #5
  br label %174

32:                                               ; preds = %32, %29
  %33 = phi i64 [ 0, %29 ], [ %46, %32 ]
  %34 = phi i64 [ 0, %29 ], [ %47, %32 ]
  %35 = trunc i64 %33 to i32
  %36 = urem i32 %35, 97
  %37 = getelementptr inbounds i32, i32* %15, i64 %33
  store i32 %36, i32* %37, align 4, !tbaa !9
  %38 = urem i32 %35, 31
  %39 = getelementptr inbounds i32, i32* %17, i64 %33
  store i32 %38, i32* %39, align 4, !tbaa !9
  %40 = or i64 %33, 1
  %41 = trunc i64 %40 to i32
  %42 = urem i32 %41, 97
  %43 = getelementptr inbounds i32, i32* %15, i64 %40
  store i32 %42, i32* %43, align 4, !tbaa !9
  %44 = urem i32 %41, 31
  %45 = getelementptr inbounds i32, i32* %17, i64 %40
  store i32 %44, i32* %45, align 4, !tbaa !9
  %46 = add nuw nsw i64 %33, 2
  %47 = add i64 %34, 2
  %48 = icmp eq i64 %47, %30
  br i1 %48, label %49, label %32, !llvm.loop !11

49:                                               ; preds = %32, %25
  %50 = phi i64 [ 0, %25 ], [ %46, %32 ]
  %51 = icmp eq i64 %27, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = trunc i64 %50 to i32
  %54 = urem i32 %53, 97
  %55 = getelementptr inbounds i32, i32* %15, i64 %50
  store i32 %54, i32* %55, align 4, !tbaa !9
  %56 = urem i32 %53, 31
  %57 = getelementptr inbounds i32, i32* %17, i64 %50
  store i32 %56, i32* %57, align 4, !tbaa !9
  br label %58

58:                                               ; preds = %49, %52
  %59 = and i64 %11, 1
  %60 = icmp eq i64 %26, 0
  br i1 %60, label %90, label %61

61:                                               ; preds = %58
  %62 = sub nsw i64 %12, %59
  br label %63

63:                                               ; preds = %63, %61
  %64 = phi i64 [ 0, %61 ], [ %87, %63 ]
  %65 = phi i64 [ 0, %61 ], [ %88, %63 ]
  %66 = getelementptr inbounds i32, i32* %15, i64 %64
  %67 = load i32, i32* %66, align 4, !tbaa !9
  %68 = shl nsw i32 %67, 1
  %69 = getelementptr inbounds i32, i32* %17, i64 %64
  %70 = load i32, i32* %69, align 4, !tbaa !9
  %71 = add nsw i32 %68, %70
  %72 = icmp sgt i32 %71, 100
  %73 = add nsw i32 %71, -3
  %74 = select i1 %72, i32 %73, i32 %71
  %75 = getelementptr inbounds i32, i32* %19, i64 %64
  store i32 %74, i32* %75, align 4, !tbaa !9
  %76 = or i64 %64, 1
  %77 = getelementptr inbounds i32, i32* %15, i64 %76
  %78 = load i32, i32* %77, align 4, !tbaa !9
  %79 = shl nsw i32 %78, 1
  %80 = getelementptr inbounds i32, i32* %17, i64 %76
  %81 = load i32, i32* %80, align 4, !tbaa !9
  %82 = add nsw i32 %79, %81
  %83 = icmp sgt i32 %82, 100
  %84 = add nsw i32 %82, -3
  %85 = select i1 %83, i32 %84, i32 %82
  %86 = getelementptr inbounds i32, i32* %19, i64 %76
  store i32 %85, i32* %86, align 4, !tbaa !9
  %87 = add nuw nsw i64 %64, 2
  %88 = add i64 %65, 2
  %89 = icmp eq i64 %88, %62
  br i1 %89, label %90, label %63, !llvm.loop !13

90:                                               ; preds = %63, %58
  %91 = phi i64 [ 0, %58 ], [ %87, %63 ]
  %92 = icmp eq i64 %59, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds i32, i32* %15, i64 %91
  %95 = load i32, i32* %94, align 4, !tbaa !9
  %96 = shl nsw i32 %95, 1
  %97 = getelementptr inbounds i32, i32* %17, i64 %91
  %98 = load i32, i32* %97, align 4, !tbaa !9
  %99 = add nsw i32 %96, %98
  %100 = icmp sgt i32 %99, 100
  %101 = add nsw i32 %99, -3
  %102 = select i1 %100, i32 %101, i32 %99
  %103 = getelementptr inbounds i32, i32* %19, i64 %91
  store i32 %102, i32* %103, align 4, !tbaa !9
  br label %104

104:                                              ; preds = %90, %93
  %105 = and i64 %11, 7
  %106 = icmp ult i64 %26, 7
  br i1 %106, label %155, label %107

107:                                              ; preds = %104
  %108 = sub nsw i64 %12, %105
  br label %109

109:                                              ; preds = %109, %107
  %110 = phi i64 [ 0, %107 ], [ %152, %109 ]
  %111 = phi i64 [ 0, %107 ], [ %151, %109 ]
  %112 = phi i64 [ 0, %107 ], [ %153, %109 ]
  %113 = getelementptr inbounds i32, i32* %19, i64 %110
  %114 = load i32, i32* %113, align 4, !tbaa !9
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %111, %115
  %117 = or i64 %110, 1
  %118 = getelementptr inbounds i32, i32* %19, i64 %117
  %119 = load i32, i32* %118, align 4, !tbaa !9
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %116, %120
  %122 = or i64 %110, 2
  %123 = getelementptr inbounds i32, i32* %19, i64 %122
  %124 = load i32, i32* %123, align 4, !tbaa !9
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %121, %125
  %127 = or i64 %110, 3
  %128 = getelementptr inbounds i32, i32* %19, i64 %127
  %129 = load i32, i32* %128, align 4, !tbaa !9
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %126, %130
  %132 = or i64 %110, 4
  %133 = getelementptr inbounds i32, i32* %19, i64 %132
  %134 = load i32, i32* %133, align 4, !tbaa !9
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %131, %135
  %137 = or i64 %110, 5
  %138 = getelementptr inbounds i32, i32* %19, i64 %137
  %139 = load i32, i32* %138, align 4, !tbaa !9
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %136, %140
  %142 = or i64 %110, 6
  %143 = getelementptr inbounds i32, i32* %19, i64 %142
  %144 = load i32, i32* %143, align 4, !tbaa !9
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %141, %145
  %147 = or i64 %110, 7
  %148 = getelementptr inbounds i32, i32* %19, i64 %147
  %149 = load i32, i32* %148, align 4, !tbaa !9
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %146, %150
  %152 = add nuw nsw i64 %110, 8
  %153 = add i64 %112, 8
  %154 = icmp eq i64 %153, %108
  br i1 %154, label %155, label %109, !llvm.loop !14

155:                                              ; preds = %109, %104
  %156 = phi i64 [ undef, %104 ], [ %151, %109 ]
  %157 = phi i64 [ 0, %104 ], [ %152, %109 ]
  %158 = phi i64 [ 0, %104 ], [ %151, %109 ]
  %159 = icmp eq i64 %105, 0
  br i1 %159, label %171, label %160

160:                                              ; preds = %155, %160
  %161 = phi i64 [ %168, %160 ], [ %157, %155 ]
  %162 = phi i64 [ %167, %160 ], [ %158, %155 ]
  %163 = phi i64 [ %169, %160 ], [ 0, %155 ]
  %164 = getelementptr inbounds i32, i32* %19, i64 %161
  %165 = load i32, i32* %164, align 4, !tbaa !9
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %162, %166
  %168 = add nuw nsw i64 %161, 1
  %169 = add i64 %163, 1
  %170 = icmp eq i64 %169, %105
  br i1 %170, label %171, label %160, !llvm.loop !15

171:                                              ; preds = %160, %155
  %172 = phi i64 [ %156, %155 ], [ %167, %160 ]
  %173 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 noundef %172)
  tail call void @free(i8* noundef %14) #5
  tail call void @free(i8* noundef %16) #5
  tail call void @free(i8* noundef nonnull %18) #5
  br label %174

174:                                              ; preds = %31, %171, %4
  %175 = phi i32 [ 2, %4 ], [ 3, %31 ], [ 0, %171 ]
  ret i32 %175
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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
