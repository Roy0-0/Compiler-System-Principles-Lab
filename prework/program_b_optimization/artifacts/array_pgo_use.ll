; ModuleID = '/home/roy/compiler-lab/prework/program_b_optimization/src/array_transform.c'
source_filename = "/home/roy/compiler-lab/prework/program_b_optimization/src/array_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #0 !prof !38 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %10, !prof !39

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8, !tbaa !40
  %7 = tail call i64 @strtol(i8* nocapture noundef nonnull %6, i8** noundef null, i32 noundef 10) #6
  %8 = trunc i64 %7 to i32
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %197, label %10, !prof !44

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
  br i1 %24, label %53, label %25, !prof !45

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
  store <4 x i32> %34, <4 x i32>* %37, align 4, !tbaa !46
  %38 = getelementptr inbounds i32, i32* %36, i64 4
  %39 = bitcast i32* %38 to <4 x i32>*
  store <4 x i32> %35, <4 x i32>* %39, align 4, !tbaa !46
  %40 = urem <4 x i32> %32, <i32 31, i32 31, i32 31, i32 31>
  %41 = urem <4 x i32> %33, <i32 31, i32 31, i32 31, i32 31>
  %42 = getelementptr inbounds i32, i32* %17, i64 %31
  %43 = bitcast i32* %42 to <4 x i32>*
  store <4 x i32> %40, <4 x i32>* %43, align 4, !tbaa !46
  %44 = getelementptr inbounds i32, i32* %42, i64 4
  %45 = bitcast i32* %44 to <4 x i32>*
  store <4 x i32> %41, <4 x i32>* %45, align 4, !tbaa !46
  %46 = add nuw i64 %31, 8
  %47 = add <4 x i32> %32, <i32 8, i32 8, i32 8, i32 8>
  %48 = icmp eq i64 %46, %29
  br i1 %48, label %49, label %30, !prof !48, !llvm.loop !49

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
  br label %197

54:                                               ; preds = %51, %54
  %55 = phi i64 [ %61, %54 ], [ %52, %51 ]
  %56 = trunc i64 %55 to i32
  %57 = urem i32 %56, 97
  %58 = getelementptr inbounds i32, i32* %15, i64 %55
  store i32 %57, i32* %58, align 4, !tbaa !46
  %59 = urem i32 %56, 31
  %60 = getelementptr inbounds i32, i32* %17, i64 %55
  store i32 %59, i32* %60, align 4, !tbaa !46
  %61 = add nuw nsw i64 %55, 1
  %62 = icmp eq i64 %61, %12
  br i1 %62, label %63, label %54, !prof !52, !llvm.loop !53

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
  %72 = load <4 x i32>, <4 x i32>* %71, align 4, !tbaa !46
  %73 = getelementptr inbounds i32, i32* %70, i64 4
  %74 = bitcast i32* %73 to <4 x i32>*
  %75 = load <4 x i32>, <4 x i32>* %74, align 4, !tbaa !46
  %76 = shl nsw <4 x i32> %72, <i32 1, i32 1, i32 1, i32 1>
  %77 = shl nsw <4 x i32> %75, <i32 1, i32 1, i32 1, i32 1>
  %78 = getelementptr inbounds i32, i32* %17, i64 %69
  %79 = bitcast i32* %78 to <4 x i32>*
  %80 = load <4 x i32>, <4 x i32>* %79, align 4, !tbaa !46
  %81 = getelementptr inbounds i32, i32* %78, i64 4
  %82 = bitcast i32* %81 to <4 x i32>*
  %83 = load <4 x i32>, <4 x i32>* %82, align 4, !tbaa !46
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
  store <4 x i32> %90, <4 x i32>* %93, align 4, !tbaa !46
  %94 = getelementptr inbounds i32, i32* %92, i64 4
  %95 = bitcast i32* %94 to <4 x i32>*
  store <4 x i32> %91, <4 x i32>* %95, align 4, !tbaa !46
  %96 = add nuw i64 %69, 8
  %97 = icmp eq i64 %96, %67
  br i1 %97, label %98, label %68, !prof !48, !llvm.loop !55

98:                                               ; preds = %68
  %99 = icmp eq i64 %66, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %63, %98
  %101 = phi i64 [ 0, %63 ], [ %67, %98 ]
  br label %102

102:                                              ; preds = %100, %102
  %103 = phi i64 [ %114, %102 ], [ %101, %100 ]
  %104 = getelementptr inbounds i32, i32* %15, i64 %103
  %105 = load i32, i32* %104, align 4, !tbaa !46
  %106 = shl nsw i32 %105, 1
  %107 = getelementptr inbounds i32, i32* %17, i64 %103
  %108 = load i32, i32* %107, align 4, !tbaa !46
  %109 = add nsw i32 %106, %108
  %110 = icmp sgt i32 %109, 100
  %111 = add nsw i32 %109, -3
  %112 = select i1 %110, i32 %111, i32 %109, !prof !56
  %113 = getelementptr inbounds i32, i32* %19, i64 %103
  store i32 %112, i32* %113, align 4, !tbaa !46
  %114 = add nuw nsw i64 %103, 1
  %115 = icmp eq i64 %114, %12
  br i1 %115, label %116, label %102, !prof !52, !llvm.loop !57

116:                                              ; preds = %102, %98
  %117 = icmp ult i64 %12, 4
  br i1 %117, label %182, label %118

118:                                              ; preds = %116
  %119 = and i64 %11, 3
  %120 = sub nsw i64 %12, %119
  %121 = add nsw i64 %12, -4
  %122 = sub nsw i64 %121, %119
  %123 = lshr i64 %122, 2
  %124 = add nuw nsw i64 %123, 1
  %125 = and i64 %124, 1
  %126 = icmp ult i64 %122, 4
  br i1 %126, label %158, label %127

127:                                              ; preds = %118
  %128 = and i64 %124, 9223372036854775806
  br label %129

129:                                              ; preds = %129, %127
  %130 = phi i64 [ 0, %127 ], [ %155, %129 ]
  %131 = phi <2 x i64> [ zeroinitializer, %127 ], [ %153, %129 ]
  %132 = phi <2 x i64> [ zeroinitializer, %127 ], [ %154, %129 ]
  %133 = phi i64 [ 0, %127 ], [ %156, %129 ]
  %134 = getelementptr inbounds i32, i32* %19, i64 %130
  %135 = bitcast i32* %134 to <2 x i32>*
  %136 = load <2 x i32>, <2 x i32>* %135, align 4, !tbaa !46
  %137 = getelementptr inbounds i32, i32* %134, i64 2
  %138 = bitcast i32* %137 to <2 x i32>*
  %139 = load <2 x i32>, <2 x i32>* %138, align 4, !tbaa !46
  %140 = sext <2 x i32> %136 to <2 x i64>
  %141 = sext <2 x i32> %139 to <2 x i64>
  %142 = add <2 x i64> %131, %140
  %143 = add <2 x i64> %132, %141
  %144 = or i64 %130, 4
  %145 = getelementptr inbounds i32, i32* %19, i64 %144
  %146 = bitcast i32* %145 to <2 x i32>*
  %147 = load <2 x i32>, <2 x i32>* %146, align 4, !tbaa !46
  %148 = getelementptr inbounds i32, i32* %145, i64 2
  %149 = bitcast i32* %148 to <2 x i32>*
  %150 = load <2 x i32>, <2 x i32>* %149, align 4, !tbaa !46
  %151 = sext <2 x i32> %147 to <2 x i64>
  %152 = sext <2 x i32> %150 to <2 x i64>
  %153 = add <2 x i64> %142, %151
  %154 = add <2 x i64> %143, %152
  %155 = add nuw i64 %130, 8
  %156 = add i64 %133, 2
  %157 = icmp eq i64 %156, %128
  br i1 %157, label %158, label %129, !prof !58, !llvm.loop !59

158:                                              ; preds = %129, %118
  %159 = phi <2 x i64> [ undef, %118 ], [ %153, %129 ]
  %160 = phi <2 x i64> [ undef, %118 ], [ %154, %129 ]
  %161 = phi i64 [ 0, %118 ], [ %155, %129 ]
  %162 = phi <2 x i64> [ zeroinitializer, %118 ], [ %153, %129 ]
  %163 = phi <2 x i64> [ zeroinitializer, %118 ], [ %154, %129 ]
  %164 = icmp eq i64 %125, 0
  br i1 %164, label %176, label %165

165:                                              ; preds = %158
  %166 = getelementptr inbounds i32, i32* %19, i64 %161
  %167 = bitcast i32* %166 to <2 x i32>*
  %168 = load <2 x i32>, <2 x i32>* %167, align 4, !tbaa !46
  %169 = getelementptr inbounds i32, i32* %166, i64 2
  %170 = bitcast i32* %169 to <2 x i32>*
  %171 = load <2 x i32>, <2 x i32>* %170, align 4, !tbaa !46
  %172 = sext <2 x i32> %168 to <2 x i64>
  %173 = sext <2 x i32> %171 to <2 x i64>
  %174 = add <2 x i64> %162, %172
  %175 = add <2 x i64> %163, %173
  br label %176

176:                                              ; preds = %158, %165
  %177 = phi <2 x i64> [ %159, %158 ], [ %174, %165 ]
  %178 = phi <2 x i64> [ %160, %158 ], [ %175, %165 ]
  %179 = add <2 x i64> %178, %177
  %180 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %179)
  %181 = icmp eq i64 %119, 0
  br i1 %181, label %194, label %182

182:                                              ; preds = %116, %176
  %183 = phi i64 [ 0, %116 ], [ %120, %176 ]
  %184 = phi i64 [ 0, %116 ], [ %180, %176 ]
  br label %185

185:                                              ; preds = %182, %185
  %186 = phi i64 [ %192, %185 ], [ %183, %182 ]
  %187 = phi i64 [ %191, %185 ], [ %184, %182 ]
  %188 = getelementptr inbounds i32, i32* %19, i64 %186
  %189 = load i32, i32* %188, align 4, !tbaa !46
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %187, %190
  %192 = add nuw nsw i64 %186, 1
  %193 = icmp eq i64 %192, %12
  br i1 %193, label %194, label %185, !prof !52, !llvm.loop !60

194:                                              ; preds = %185, %176
  %195 = phi i64 [ %180, %176 ], [ %191, %185 ]
  %196 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 noundef %195)
  tail call void @free(i8* noundef %14) #6
  tail call void @free(i8* noundef %16) #6
  tail call void @free(i8* noundef nonnull %18) #6
  br label %197

197:                                              ; preds = %53, %194, %4
  %198 = phi i32 [ 2, %4 ], [ 3, %53 ], [ 0, %194 ]
  ret i32 %198
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!37}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 4554035}
!4 = !{!"MaxCount", i64 1000000}
!5 = !{!"MaxInternalCount", i64 1000000}
!6 = !{!"MaxFunctionCount", i64 1000000}
!7 = !{!"NumCounts", i64 17}
!8 = !{!"NumFunctions", i64 6}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1000000, i32 4}
!14 = !{i32 100000, i64 1000000, i32 4}
!15 = !{i32 200000, i64 1000000, i32 4}
!16 = !{i32 300000, i64 1000000, i32 4}
!17 = !{i32 400000, i64 1000000, i32 4}
!18 = !{i32 500000, i64 1000000, i32 4}
!19 = !{i32 600000, i64 1000000, i32 4}
!20 = !{i32 700000, i64 1000000, i32 4}
!21 = !{i32 800000, i64 1000000, i32 4}
!22 = !{i32 900000, i64 554025, i32 5}
!23 = !{i32 950000, i64 554025, i32 5}
!24 = !{i32 990000, i64 554025, i32 5}
!25 = !{i32 999000, i64 554025, i32 5}
!26 = !{i32 999900, i64 554025, i32 5}
!27 = !{i32 999990, i64 554025, i32 5}
!28 = !{i32 999999, i64 1, i32 15}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 5, !"CG Profile", !34}
!34 = !{!35, !36}
!35 = !{i32 (i32, i8**)* @main, i64 (i8*, i8**, i32)* @strtol, i64 1}
!36 = !{i32 (i32, i8**)* @main, i8* (i64)* @malloc, i64 3}
!37 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!38 = !{!"function_entry_count", i64 1}
!39 = !{!"branch_weights", i32 2, i32 1}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!"branch_weights", i32 1073741824, i32 1073741824}
!45 = !{!"branch_weights", i32 19, i32 8}
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !42, i64 0}
!48 = !{!"branch_weights", i32 2, i32 124998}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.isvectorized", i32 1}
!52 = !{!"branch_weights", i32 2, i32 2}
!53 = distinct !{!53, !50, !54, !51}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = distinct !{!55, !50, !51}
!56 = !{!"branch_weights", i32 554026, i32 445976}
!57 = distinct !{!57, !50, !54, !51}
!58 = !{!"branch_weights", i32 2, i32 249998}
!59 = distinct !{!59, !50, !51}
!60 = distinct !{!60, !50, !54, !51}
