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
  br i1 %9, label %170, label %10

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
  %26 = icmp ult i64 %12, 16
  br i1 %26, label %51, label %27

27:                                               ; preds = %25
  %28 = and i64 %11, 15
  %29 = sub nsw i64 %12, %28
  br label %30

30:                                               ; preds = %30, %27
  %31 = phi i64 [ 0, %27 ], [ %46, %30 ]
  %32 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %27 ], [ %47, %30 ]
  %33 = add <8 x i32> %32, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %34 = urem <8 x i32> %32, <i32 97, i32 97, i32 97, i32 97, i32 97, i32 97, i32 97, i32 97>
  %35 = urem <8 x i32> %33, <i32 97, i32 97, i32 97, i32 97, i32 97, i32 97, i32 97, i32 97>
  %36 = getelementptr inbounds i32, i32* %15, i64 %31
  %37 = bitcast i32* %36 to <8 x i32>*
  store <8 x i32> %34, <8 x i32>* %37, align 4, !tbaa !9
  %38 = getelementptr inbounds i32, i32* %36, i64 8
  %39 = bitcast i32* %38 to <8 x i32>*
  store <8 x i32> %35, <8 x i32>* %39, align 4, !tbaa !9
  %40 = urem <8 x i32> %32, <i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31>
  %41 = urem <8 x i32> %33, <i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31, i32 31>
  %42 = getelementptr inbounds i32, i32* %17, i64 %31
  %43 = bitcast i32* %42 to <8 x i32>*
  store <8 x i32> %40, <8 x i32>* %43, align 4, !tbaa !9
  %44 = getelementptr inbounds i32, i32* %42, i64 8
  %45 = bitcast i32* %44 to <8 x i32>*
  store <8 x i32> %41, <8 x i32>* %45, align 4, !tbaa !9
  %46 = add nuw i64 %31, 16
  %47 = add <8 x i32> %32, <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
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
  br label %170

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
  %64 = icmp ult i64 %12, 16
  br i1 %64, label %100, label %65

65:                                               ; preds = %63
  %66 = and i64 %11, 15
  %67 = sub nsw i64 %12, %66
  br label %68

68:                                               ; preds = %68, %65
  %69 = phi i64 [ 0, %65 ], [ %96, %68 ]
  %70 = getelementptr inbounds i32, i32* %15, i64 %69
  %71 = bitcast i32* %70 to <8 x i32>*
  %72 = load <8 x i32>, <8 x i32>* %71, align 4, !tbaa !9
  %73 = getelementptr inbounds i32, i32* %70, i64 8
  %74 = bitcast i32* %73 to <8 x i32>*
  %75 = load <8 x i32>, <8 x i32>* %74, align 4, !tbaa !9
  %76 = shl nsw <8 x i32> %72, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %77 = shl nsw <8 x i32> %75, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %78 = getelementptr inbounds i32, i32* %17, i64 %69
  %79 = bitcast i32* %78 to <8 x i32>*
  %80 = load <8 x i32>, <8 x i32>* %79, align 4, !tbaa !9
  %81 = getelementptr inbounds i32, i32* %78, i64 8
  %82 = bitcast i32* %81 to <8 x i32>*
  %83 = load <8 x i32>, <8 x i32>* %82, align 4, !tbaa !9
  %84 = add nsw <8 x i32> %76, %80
  %85 = add nsw <8 x i32> %77, %83
  %86 = icmp sgt <8 x i32> %84, <i32 100, i32 100, i32 100, i32 100, i32 100, i32 100, i32 100, i32 100>
  %87 = icmp sgt <8 x i32> %85, <i32 100, i32 100, i32 100, i32 100, i32 100, i32 100, i32 100, i32 100>
  %88 = add nsw <8 x i32> %84, <i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3>
  %89 = add nsw <8 x i32> %85, <i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3>
  %90 = select <8 x i1> %86, <8 x i32> %88, <8 x i32> %84
  %91 = select <8 x i1> %87, <8 x i32> %89, <8 x i32> %85
  %92 = getelementptr inbounds i32, i32* %19, i64 %69
  %93 = bitcast i32* %92 to <8 x i32>*
  store <8 x i32> %90, <8 x i32>* %93, align 4, !tbaa !9
  %94 = getelementptr inbounds i32, i32* %92, i64 8
  %95 = bitcast i32* %94 to <8 x i32>*
  store <8 x i32> %91, <8 x i32>* %95, align 4, !tbaa !9
  %96 = add nuw i64 %69, 16
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
  %106 = shl nsw i32 %105, 1
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
  %117 = icmp ult i64 %12, 16
  br i1 %117, label %155, label %118

118:                                              ; preds = %116
  %119 = and i64 %11, 15
  %120 = sub nsw i64 %12, %119
  br label %121

121:                                              ; preds = %121, %118
  %122 = phi i64 [ 0, %118 ], [ %147, %121 ]
  %123 = phi <4 x i64> [ zeroinitializer, %118 ], [ %143, %121 ]
  %124 = phi <4 x i64> [ zeroinitializer, %118 ], [ %144, %121 ]
  %125 = phi <4 x i64> [ zeroinitializer, %118 ], [ %145, %121 ]
  %126 = phi <4 x i64> [ zeroinitializer, %118 ], [ %146, %121 ]
  %127 = getelementptr inbounds i32, i32* %19, i64 %122
  %128 = bitcast i32* %127 to <4 x i32>*
  %129 = load <4 x i32>, <4 x i32>* %128, align 4, !tbaa !9
  %130 = getelementptr inbounds i32, i32* %127, i64 4
  %131 = bitcast i32* %130 to <4 x i32>*
  %132 = load <4 x i32>, <4 x i32>* %131, align 4, !tbaa !9
  %133 = getelementptr inbounds i32, i32* %127, i64 8
  %134 = bitcast i32* %133 to <4 x i32>*
  %135 = load <4 x i32>, <4 x i32>* %134, align 4, !tbaa !9
  %136 = getelementptr inbounds i32, i32* %127, i64 12
  %137 = bitcast i32* %136 to <4 x i32>*
  %138 = load <4 x i32>, <4 x i32>* %137, align 4, !tbaa !9
  %139 = sext <4 x i32> %129 to <4 x i64>
  %140 = sext <4 x i32> %132 to <4 x i64>
  %141 = sext <4 x i32> %135 to <4 x i64>
  %142 = sext <4 x i32> %138 to <4 x i64>
  %143 = add <4 x i64> %123, %139
  %144 = add <4 x i64> %124, %140
  %145 = add <4 x i64> %125, %141
  %146 = add <4 x i64> %126, %142
  %147 = add nuw i64 %122, 16
  %148 = icmp eq i64 %147, %120
  br i1 %148, label %149, label %121, !llvm.loop !18

149:                                              ; preds = %121
  %150 = add <4 x i64> %144, %143
  %151 = add <4 x i64> %145, %150
  %152 = add <4 x i64> %146, %151
  %153 = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %152)
  %154 = icmp eq i64 %119, 0
  br i1 %154, label %167, label %155

155:                                              ; preds = %116, %149
  %156 = phi i64 [ 0, %116 ], [ %120, %149 ]
  %157 = phi i64 [ 0, %116 ], [ %153, %149 ]
  br label %158

158:                                              ; preds = %155, %158
  %159 = phi i64 [ %165, %158 ], [ %156, %155 ]
  %160 = phi i64 [ %164, %158 ], [ %157, %155 ]
  %161 = getelementptr inbounds i32, i32* %19, i64 %159
  %162 = load i32, i32* %161, align 4, !tbaa !9
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %160, %163
  %165 = add nuw nsw i64 %159, 1
  %166 = icmp eq i64 %165, %12
  br i1 %166, label %167, label %158, !llvm.loop !19

167:                                              ; preds = %158, %149
  %168 = phi i64 [ %153, %149 ], [ %164, %158 ]
  %169 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 noundef %168)
  tail call void @free(i8* noundef %14) #6
  tail call void @free(i8* noundef %16) #6
  tail call void @free(i8* noundef nonnull %18) #6
  br label %170

170:                                              ; preds = %53, %167, %4
  %171 = phi i32 [ 2, %4 ], [ 3, %53 ], [ 0, %167 ]
  ret i32 %171
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
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="goldmont" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clzero,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-sgx,-sse4a,-tbm,-tsxldtrk,-uintr,-wbnoinvd,-widekl,-xop" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="goldmont" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clzero,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-sgx,-sse4a,-tbm,-tsxldtrk,-uintr,-wbnoinvd,-widekl,-xop" }
attributes #2 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="goldmont" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clzero,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-sgx,-sse4a,-tbm,-tsxldtrk,-uintr,-wbnoinvd,-widekl,-xop" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="goldmont" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clzero,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-sgx,-sse4a,-tbm,-tsxldtrk,-uintr,-wbnoinvd,-widekl,-xop" }
attributes #4 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="goldmont" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+serialize,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+waitpkg,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-cldemote,-clzero,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-sgx,-sse4a,-tbm,-tsxldtrk,-uintr,-wbnoinvd,-widekl,-xop" }
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
