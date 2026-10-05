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
  br i1 %9, label %211, label %10

10:                                               ; preds = %2, %4
  %11 = phi i32 [ %8, %4 ], [ 1000000, %2 ]
  %12 = zext i32 %11 to i64
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
  br i1 %24, label %52, label %25

25:                                               ; preds = %10
  %26 = icmp ult i32 %11, 8
  br i1 %26, label %50, label %27

27:                                               ; preds = %25
  %28 = and i64 %12, 4294967288
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i64 [ 0, %27 ], [ %45, %29 ]
  %31 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %27 ], [ %46, %29 ]
  %32 = add <4 x i32> %31, <i32 4, i32 4, i32 4, i32 4>
  %33 = urem <4 x i32> %31, <i32 97, i32 97, i32 97, i32 97>
  %34 = urem <4 x i32> %32, <i32 97, i32 97, i32 97, i32 97>
  %35 = getelementptr inbounds i32, i32* %15, i64 %30
  %36 = bitcast i32* %35 to <4 x i32>*
  store <4 x i32> %33, <4 x i32>* %36, align 4, !tbaa !9
  %37 = getelementptr inbounds i32, i32* %35, i64 4
  %38 = bitcast i32* %37 to <4 x i32>*
  store <4 x i32> %34, <4 x i32>* %38, align 4, !tbaa !9
  %39 = urem <4 x i32> %31, <i32 31, i32 31, i32 31, i32 31>
  %40 = urem <4 x i32> %32, <i32 31, i32 31, i32 31, i32 31>
  %41 = getelementptr inbounds i32, i32* %17, i64 %30
  %42 = bitcast i32* %41 to <4 x i32>*
  store <4 x i32> %39, <4 x i32>* %42, align 4, !tbaa !9
  %43 = getelementptr inbounds i32, i32* %41, i64 4
  %44 = bitcast i32* %43 to <4 x i32>*
  store <4 x i32> %40, <4 x i32>* %44, align 4, !tbaa !9
  %45 = add nuw i64 %30, 8
  %46 = add <4 x i32> %31, <i32 8, i32 8, i32 8, i32 8>
  %47 = icmp eq i64 %45, %28
  br i1 %47, label %48, label %29, !llvm.loop !11

48:                                               ; preds = %29
  %49 = icmp eq i64 %28, %12
  br i1 %49, label %62, label %50

50:                                               ; preds = %25, %48
  %51 = phi i64 [ 0, %25 ], [ %28, %48 ]
  br label %53

52:                                               ; preds = %10
  tail call void @free(i8* noundef %14) #6
  tail call void @free(i8* noundef %16) #6
  tail call void @free(i8* noundef %18) #6
  br label %211

53:                                               ; preds = %50, %53
  %54 = phi i64 [ %60, %53 ], [ %51, %50 ]
  %55 = trunc i64 %54 to i32
  %56 = urem i32 %55, 97
  %57 = getelementptr inbounds i32, i32* %15, i64 %54
  store i32 %56, i32* %57, align 4, !tbaa !9
  %58 = urem i32 %55, 31
  %59 = getelementptr inbounds i32, i32* %17, i64 %54
  store i32 %58, i32* %59, align 4, !tbaa !9
  %60 = add nuw nsw i64 %54, 1
  %61 = icmp eq i64 %60, %12
  br i1 %61, label %62, label %53, !llvm.loop !14

62:                                               ; preds = %53, %48
  %63 = load i32, i32* %15, align 4, !tbaa !9
  %64 = shl nsw i32 %63, 1
  %65 = load i32, i32* %17, align 4, !tbaa !9
  %66 = add nsw i32 %64, %65
  %67 = icmp sgt i32 %66, 100
  %68 = add nsw i32 %66, -3
  %69 = select i1 %67, i32 %68, i32 %66
  store i32 %69, i32* %19, align 4, !tbaa !9
  %70 = icmp sgt i32 %11, 1
  br i1 %70, label %71, label %123

71:                                               ; preds = %62
  %72 = add nsw i64 %12, -1
  %73 = and i64 %72, 1
  %74 = icmp eq i32 %11, 2
  br i1 %74, label %107, label %75

75:                                               ; preds = %71
  %76 = and i64 %72, -2
  br label %77

77:                                               ; preds = %77, %75
  %78 = phi i32 [ %69, %75 ], [ %102, %77 ]
  %79 = phi i64 [ 1, %75 ], [ %104, %77 ]
  %80 = phi i64 [ 0, %75 ], [ %105, %77 ]
  %81 = getelementptr inbounds i32, i32* %15, i64 %79
  %82 = load i32, i32* %81, align 4, !tbaa !9
  %83 = shl nsw i32 %82, 1
  %84 = getelementptr inbounds i32, i32* %17, i64 %79
  %85 = load i32, i32* %84, align 4, !tbaa !9
  %86 = add nsw i32 %83, %85
  %87 = icmp sgt i32 %86, 100
  %88 = add nsw i32 %86, -3
  %89 = select i1 %87, i32 %88, i32 %86
  %90 = add nsw i32 %89, %78
  %91 = getelementptr inbounds i32, i32* %19, i64 %79
  store i32 %90, i32* %91, align 4, !tbaa !9
  %92 = add nuw nsw i64 %79, 1
  %93 = getelementptr inbounds i32, i32* %15, i64 %92
  %94 = load i32, i32* %93, align 4, !tbaa !9
  %95 = shl nsw i32 %94, 1
  %96 = getelementptr inbounds i32, i32* %17, i64 %92
  %97 = load i32, i32* %96, align 4, !tbaa !9
  %98 = add nsw i32 %95, %97
  %99 = icmp sgt i32 %98, 100
  %100 = add nsw i32 %98, -3
  %101 = select i1 %99, i32 %100, i32 %98
  %102 = add nsw i32 %101, %90
  %103 = getelementptr inbounds i32, i32* %19, i64 %92
  store i32 %102, i32* %103, align 4, !tbaa !9
  %104 = add nuw nsw i64 %79, 2
  %105 = add i64 %80, 2
  %106 = icmp eq i64 %105, %76
  br i1 %106, label %107, label %77, !llvm.loop !16

107:                                              ; preds = %77, %71
  %108 = phi i32 [ %69, %71 ], [ %102, %77 ]
  %109 = phi i64 [ 1, %71 ], [ %104, %77 ]
  %110 = icmp eq i64 %73, 0
  br i1 %110, label %123, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds i32, i32* %15, i64 %109
  %113 = load i32, i32* %112, align 4, !tbaa !9
  %114 = shl nsw i32 %113, 1
  %115 = getelementptr inbounds i32, i32* %17, i64 %109
  %116 = load i32, i32* %115, align 4, !tbaa !9
  %117 = add nsw i32 %114, %116
  %118 = icmp sgt i32 %117, 100
  %119 = add nsw i32 %117, -3
  %120 = select i1 %118, i32 %119, i32 %117
  %121 = add nsw i32 %120, %108
  %122 = getelementptr inbounds i32, i32* %19, i64 %109
  store i32 %121, i32* %122, align 4, !tbaa !9
  br label %123

123:                                              ; preds = %111, %107, %62
  %124 = sext i32 %69 to i64
  %125 = icmp eq i32 %11, 1
  br i1 %125, label %208, label %126, !llvm.loop !17

126:                                              ; preds = %123
  %127 = add nsw i64 %12, -1
  %128 = icmp ult i64 %127, 4
  br i1 %128, label %196, label %129

129:                                              ; preds = %126
  %130 = and i64 %127, -4
  %131 = or i64 %130, 1
  %132 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %124, i64 0
  %133 = add nsw i64 %130, -4
  %134 = lshr exact i64 %133, 2
  %135 = add nuw nsw i64 %134, 1
  %136 = and i64 %135, 1
  %137 = icmp eq i64 %133, 0
  br i1 %137, label %172, label %138

138:                                              ; preds = %129
  %139 = and i64 %135, 9223372036854775806
  br label %140

140:                                              ; preds = %140, %138
  %141 = phi i64 [ 0, %138 ], [ %167, %140 ]
  %142 = phi <2 x i64> [ %132, %138 ], [ %165, %140 ]
  %143 = phi <2 x i64> [ zeroinitializer, %138 ], [ %166, %140 ]
  %144 = phi i64 [ 0, %138 ], [ %168, %140 ]
  %145 = or i64 %141, 1
  %146 = getelementptr inbounds i32, i32* %19, i64 %145
  %147 = bitcast i32* %146 to <2 x i32>*
  %148 = load <2 x i32>, <2 x i32>* %147, align 4, !tbaa !9
  %149 = getelementptr inbounds i32, i32* %146, i64 2
  %150 = bitcast i32* %149 to <2 x i32>*
  %151 = load <2 x i32>, <2 x i32>* %150, align 4, !tbaa !9
  %152 = sext <2 x i32> %148 to <2 x i64>
  %153 = sext <2 x i32> %151 to <2 x i64>
  %154 = add <2 x i64> %142, %152
  %155 = add <2 x i64> %143, %153
  %156 = or i64 %141, 5
  %157 = getelementptr inbounds i32, i32* %19, i64 %156
  %158 = bitcast i32* %157 to <2 x i32>*
  %159 = load <2 x i32>, <2 x i32>* %158, align 4, !tbaa !9
  %160 = getelementptr inbounds i32, i32* %157, i64 2
  %161 = bitcast i32* %160 to <2 x i32>*
  %162 = load <2 x i32>, <2 x i32>* %161, align 4, !tbaa !9
  %163 = sext <2 x i32> %159 to <2 x i64>
  %164 = sext <2 x i32> %162 to <2 x i64>
  %165 = add <2 x i64> %154, %163
  %166 = add <2 x i64> %155, %164
  %167 = add nuw i64 %141, 8
  %168 = add i64 %144, 2
  %169 = icmp eq i64 %168, %139
  br i1 %169, label %170, label %140, !llvm.loop !18

170:                                              ; preds = %140
  %171 = or i64 %167, 1
  br label %172

172:                                              ; preds = %170, %129
  %173 = phi <2 x i64> [ undef, %129 ], [ %165, %170 ]
  %174 = phi <2 x i64> [ undef, %129 ], [ %166, %170 ]
  %175 = phi i64 [ 1, %129 ], [ %171, %170 ]
  %176 = phi <2 x i64> [ %132, %129 ], [ %165, %170 ]
  %177 = phi <2 x i64> [ zeroinitializer, %129 ], [ %166, %170 ]
  %178 = icmp eq i64 %136, 0
  br i1 %178, label %190, label %179

179:                                              ; preds = %172
  %180 = getelementptr inbounds i32, i32* %19, i64 %175
  %181 = bitcast i32* %180 to <2 x i32>*
  %182 = load <2 x i32>, <2 x i32>* %181, align 4, !tbaa !9
  %183 = getelementptr inbounds i32, i32* %180, i64 2
  %184 = bitcast i32* %183 to <2 x i32>*
  %185 = load <2 x i32>, <2 x i32>* %184, align 4, !tbaa !9
  %186 = sext <2 x i32> %182 to <2 x i64>
  %187 = sext <2 x i32> %185 to <2 x i64>
  %188 = add <2 x i64> %176, %186
  %189 = add <2 x i64> %177, %187
  br label %190

190:                                              ; preds = %172, %179
  %191 = phi <2 x i64> [ %173, %172 ], [ %188, %179 ]
  %192 = phi <2 x i64> [ %174, %172 ], [ %189, %179 ]
  %193 = add <2 x i64> %192, %191
  %194 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %193)
  %195 = icmp eq i64 %127, %130
  br i1 %195, label %208, label %196

196:                                              ; preds = %126, %190
  %197 = phi i64 [ 1, %126 ], [ %131, %190 ]
  %198 = phi i64 [ %124, %126 ], [ %194, %190 ]
  br label %199

199:                                              ; preds = %196, %199
  %200 = phi i64 [ %206, %199 ], [ %197, %196 ]
  %201 = phi i64 [ %205, %199 ], [ %198, %196 ]
  %202 = getelementptr inbounds i32, i32* %19, i64 %200
  %203 = load i32, i32* %202, align 4, !tbaa !9
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %201, %204
  %206 = add nuw nsw i64 %200, 1
  %207 = icmp eq i64 %206, %12
  br i1 %207, label %208, label %199, !llvm.loop !19

208:                                              ; preds = %199, %190, %123
  %209 = phi i64 [ %124, %123 ], [ %194, %190 ], [ %205, %199 ]
  %210 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 noundef %209)
  tail call void @free(i8* noundef %14) #6
  tail call void @free(i8* noundef %16) #6
  tail call void @free(i8* noundef nonnull %18) #6
  br label %211

211:                                              ; preds = %52, %208, %4
  %212 = phi i32 [ 2, %4 ], [ 3, %52 ], [ 0, %208 ]
  ret i32 %212
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
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12, !13}
!19 = distinct !{!19, !12, !15, !13}
