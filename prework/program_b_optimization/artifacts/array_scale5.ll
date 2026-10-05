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
  %7 = tail call i64 @strtol(i8* nocapture noundef nonnull %6, i8** noundef null, i32 noundef 10) #6
  %8 = trunc i64 %7 to i32
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %156, label %10

10:                                               ; preds = %2, %4
  %11 = phi i64 [ %7, %4 ], [ 1000000, %2 ]
  %12 = and i64 %11, 4294967295
  %13 = shl nuw nsw i64 %12, 2
  %14 = tail call noalias i8* @malloc(i64 noundef %13) #6
  %15 = bitcast i8* %14 to i32*
  %16 = tail call noalias i8* @malloc(i64 noundef %13) #6
  %17 = bitcast i8* %16 to i32*
  %18 = tail call noalias i8* @malloc(i64 noundef %13) #6
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
  tail call void @free(i8* noundef %14) #6
  tail call void @free(i8* noundef %16) #6
  tail call void @free(i8* noundef %18) #6
  br label %156

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
  %64 = icmp ult i64 %12, 8
  br i1 %64, label %100, label %65

65:                                               ; preds = %63
  %66 = and i64 %11, 7
  %67 = sub nsw i64 %12, %66
  br label %68

68:                                               ; preds = %68, %65
  %69 = phi i64 [ 0, %65 ], [ %96, %68 ]
  %70 = getelementptr inbounds i32, i32* %15, i64 %69
  %71 = bitcast i32* %70 to <4 x i32>*
  %72 = load <4 x i32>, <4 x i32>* %71, align 4, !tbaa !9
  %73 = getelementptr inbounds i32, i32* %70, i64 4
  %74 = bitcast i32* %73 to <4 x i32>*
  %75 = load <4 x i32>, <4 x i32>* %74, align 4, !tbaa !9
  %76 = mul nsw <4 x i32> %72, <i32 5, i32 5, i32 5, i32 5>
  %77 = mul nsw <4 x i32> %75, <i32 5, i32 5, i32 5, i32 5>
  %78 = getelementptr inbounds i32, i32* %17, i64 %69
  %79 = bitcast i32* %78 to <4 x i32>*
  %80 = load <4 x i32>, <4 x i32>* %79, align 4, !tbaa !9
  %81 = getelementptr inbounds i32, i32* %78, i64 4
  %82 = bitcast i32* %81 to <4 x i32>*
  %83 = load <4 x i32>, <4 x i32>* %82, align 4, !tbaa !9
  %84 = add nsw <4 x i32> %76, %80
  %85 = add nsw <4 x i32> %77, %83
  %86 = icmp sgt <4 x i32> %84, <i32 100, i32 100, i32 100, i32 100>
  %87 = icmp sgt <4 x i32> %85, <i32 100, i32 100, i32 100, i32 100>
  %88 = add nsw <4 x i32> %84, <i32 -3, i32 -3, i32 -3, i32 -3>
  %89 = add nsw <4 x i32> %85, <i32 -3, i32 -3, i32 -3, i32 -3>
  %90 = select <4 x i1> %86, <4 x i32> %88, <4 x i32> %84
  %91 = select <4 x i1> %87, <4 x i32> %89, <4 x i32> %85
  %92 = getelementptr inbounds i32, i32* %19, i64 %69
  %93 = bitcast i32* %92 to <4 x i32>*
  store <4 x i32> %90, <4 x i32>* %93, align 4, !tbaa !9
  %94 = getelementptr inbounds i32, i32* %92, i64 4
  %95 = bitcast i32* %94 to <4 x i32>*
  store <4 x i32> %91, <4 x i32>* %95, align 4, !tbaa !9
  %96 = add nuw i64 %69, 8
  %97 = icmp eq i64 %96, %67
  br i1 %97, label %98, label %68, !llvm.loop !16

98:                                               ; preds = %68
  %99 = icmp eq i64 %66, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %63, %98
  %101 = phi i64 [ 0, %63 ], [ %67, %98 ]
  br label %102

102:                                              ; preds = %100, %102
  %103 = phi i64 [ %114, %102 ], [ %101, %100 ]
  %104 = getelementptr inbounds i32, i32* %15, i64 %103
  %105 = load i32, i32* %104, align 4, !tbaa !9
  %106 = mul nsw i32 %105, 5
  %107 = getelementptr inbounds i32, i32* %17, i64 %103
  %108 = load i32, i32* %107, align 4, !tbaa !9
  %109 = add nsw i32 %106, %108
  %110 = icmp sgt i32 %109, 100
  %111 = add nsw i32 %109, -3
  %112 = select i1 %110, i32 %111, i32 %109
  %113 = getelementptr inbounds i32, i32* %19, i64 %103
  store i32 %112, i32* %113, align 4, !tbaa !9
  %114 = add nuw nsw i64 %103, 1
  %115 = icmp eq i64 %114, %12
  br i1 %115, label %116, label %102, !llvm.loop !17

116:                                              ; preds = %102, %98
  %117 = icmp ult i64 %12, 4
  br i1 %117, label %141, label %118

118:                                              ; preds = %116
  %119 = and i64 %11, 3
  %120 = sub nsw i64 %12, %119
  br label %121

121:                                              ; preds = %121, %118
  %122 = phi i64 [ 0, %118 ], [ %135, %121 ]
  %123 = phi <2 x i64> [ zeroinitializer, %118 ], [ %133, %121 ]
  %124 = phi <2 x i64> [ zeroinitializer, %118 ], [ %134, %121 ]
  %125 = getelementptr inbounds i32, i32* %19, i64 %122
  %126 = bitcast i32* %125 to <2 x i32>*
  %127 = load <2 x i32>, <2 x i32>* %126, align 4, !tbaa !9
  %128 = getelementptr inbounds i32, i32* %125, i64 2
  %129 = bitcast i32* %128 to <2 x i32>*
  %130 = load <2 x i32>, <2 x i32>* %129, align 4, !tbaa !9
  %131 = sext <2 x i32> %127 to <2 x i64>
  %132 = sext <2 x i32> %130 to <2 x i64>
  %133 = add <2 x i64> %123, %131
  %134 = add <2 x i64> %124, %132
  %135 = add nuw i64 %122, 4
  %136 = icmp eq i64 %135, %120
  br i1 %136, label %137, label %121, !llvm.loop !18

137:                                              ; preds = %121
  %138 = add <2 x i64> %134, %133
  %139 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %138)
  %140 = icmp eq i64 %119, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %116, %137
  %142 = phi i64 [ 0, %116 ], [ %120, %137 ]
  %143 = phi i64 [ 0, %116 ], [ %139, %137 ]
  br label %144

144:                                              ; preds = %141, %144
  %145 = phi i64 [ %151, %144 ], [ %142, %141 ]
  %146 = phi i64 [ %150, %144 ], [ %143, %141 ]
  %147 = getelementptr inbounds i32, i32* %19, i64 %145
  %148 = load i32, i32* %147, align 4, !tbaa !9
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %146, %149
  %151 = add nuw nsw i64 %145, 1
  %152 = icmp eq i64 %151, %12
  br i1 %152, label %153, label %144, !llvm.loop !19

153:                                              ; preds = %144, %137
  %154 = phi i64 [ %139, %137 ], [ %150, %144 ]
  %155 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 noundef %154)
  tail call void @free(i8* noundef %14) #6
  tail call void @free(i8* noundef %16) #6
  tail call void @free(i8* noundef nonnull %18) #6
  br label %156

156:                                              ; preds = %53, %153, %4
  %157 = phi i32 [ 2, %4 ], [ 3, %53 ], [ 0, %153 ]
  ret i32 %157
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }

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
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !15, !13}
!18 = distinct !{!18, !12, !13}
!19 = distinct !{!19, !12, !15, !13}
