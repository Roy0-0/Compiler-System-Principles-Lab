; ModuleID = '/home/roy/compiler-lab/prework/program_c_kernel_probe/src/kernel_probe.c'
source_filename = "/home/roy/compiler-lab/prework/program_c_kernel_probe/src/kernel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [110 x i8] c"mode=independent n=%zu repeats=%zu checksum=%ld reference=%ld verified=%d elapsed_ns=%lu ns_per_element=%.6f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %49

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8*, i8** %1, i64 1
  %10 = load i8*, i8** %9, align 8, !tbaa !5
  %11 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #10
  store i8* null, i8** %4, align 8, !tbaa !5
  %12 = tail call i32* @__errno_location() #11
  store i32 0, i32* %12, align 4, !tbaa !9
  %13 = call i64 @strtoull(i8* noundef %10, i8** noundef nonnull %4, i32 noundef 10) #10
  %14 = load i32, i32* %12, align 4, !tbaa !9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %8
  %17 = load i8*, i8** %4, align 8, !tbaa !5
  %18 = icmp eq i8* %17, %10
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = load i8, i8* %17, align 1, !tbaa !11
  %21 = icmp ne i8 %20, 0
  %22 = icmp eq i64 %13, 0
  %23 = select i1 %21, i1 true, i1 %22
  %24 = icmp ugt i64 %13, 20000000
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %16, %8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #10
  br label %281

27:                                               ; preds = %19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #10
  %28 = icmp ugt i32 %0, 2
  br i1 %28, label %29, label %49

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8*, i8** %1, i64 2
  %31 = load i8*, i8** %30, align 8, !tbaa !5
  %32 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #10
  store i8* null, i8** %3, align 8, !tbaa !5
  store i32 0, i32* %12, align 4, !tbaa !9
  %33 = call i64 @strtoull(i8* noundef %31, i8** noundef nonnull %3, i32 noundef 10) #10
  %34 = load i32, i32* %12, align 4, !tbaa !9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load i8*, i8** %3, align 8, !tbaa !5
  %38 = icmp eq i8* %37, %31
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load i8, i8* %37, align 1, !tbaa !11
  %41 = icmp ne i8 %40, 0
  %42 = icmp eq i64 %33, 0
  %43 = select i1 %41, i1 true, i1 %42
  %44 = icmp ugt i64 %33, 10000
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %36, %29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #10
  br label %281

47:                                               ; preds = %39
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #10
  %48 = icmp ugt i32 %0, 3
  br i1 %48, label %281, label %49

49:                                               ; preds = %2, %27, %47
  %50 = phi i64 [ %13, %47 ], [ %13, %27 ], [ 1000000, %2 ]
  %51 = phi i64 [ %33, %47 ], [ 20, %27 ], [ 20, %2 ]
  %52 = shl nuw nsw i64 %50, 2
  %53 = tail call noalias i8* @malloc(i64 noundef %52) #10
  %54 = bitcast i8* %53 to i32*
  %55 = tail call noalias i8* @malloc(i64 noundef %52) #10
  %56 = bitcast i8* %55 to i32*
  %57 = tail call noalias i8* @malloc(i64 noundef %52) #10
  %58 = bitcast i8* %57 to i32*
  %59 = icmp eq i8* %53, null
  %60 = icmp eq i8* %55, null
  %61 = or i1 %59, %60
  %62 = icmp eq i8* %57, null
  %63 = or i1 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %49
  %65 = and i64 %50, 1
  %66 = icmp eq i64 %50, 1
  br i1 %66, label %89, label %67

67:                                               ; preds = %64
  %68 = and i64 %50, -2
  br label %70

69:                                               ; preds = %49
  tail call void @free(i8* noundef %53) #10
  tail call void @free(i8* noundef %55) #10
  tail call void @free(i8* noundef %57) #10
  br label %281

70:                                               ; preds = %70, %67
  %71 = phi i64 [ 0, %67 ], [ %86, %70 ]
  %72 = phi i64 [ 0, %67 ], [ %87, %70 ]
  %73 = urem i64 %71, 97
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds i32, i32* %54, i64 %71
  store i32 %74, i32* %75, align 4, !tbaa !9
  %76 = urem i64 %71, 31
  %77 = trunc i64 %76 to i32
  %78 = getelementptr inbounds i32, i32* %56, i64 %71
  store i32 %77, i32* %78, align 4, !tbaa !9
  %79 = or i64 %71, 1
  %80 = urem i64 %79, 97
  %81 = trunc i64 %80 to i32
  %82 = getelementptr inbounds i32, i32* %54, i64 %79
  store i32 %81, i32* %82, align 4, !tbaa !9
  %83 = urem i64 %79, 31
  %84 = trunc i64 %83 to i32
  %85 = getelementptr inbounds i32, i32* %56, i64 %79
  store i32 %84, i32* %85, align 4, !tbaa !9
  %86 = add nuw i64 %71, 2
  %87 = add i64 %72, 2
  %88 = icmp eq i64 %87, %68
  br i1 %88, label %89, label %70, !llvm.loop !12

89:                                               ; preds = %70, %64
  %90 = phi i64 [ 0, %64 ], [ %86, %70 ]
  %91 = icmp eq i64 %65, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %89
  %93 = urem i64 %90, 97
  %94 = trunc i64 %93 to i32
  %95 = getelementptr inbounds i32, i32* %54, i64 %90
  store i32 %94, i32* %95, align 4, !tbaa !9
  %96 = urem i64 %90, 31
  %97 = trunc i64 %96 to i32
  %98 = getelementptr inbounds i32, i32* %56, i64 %90
  store i32 %97, i32* %98, align 4, !tbaa !9
  br label %99

99:                                               ; preds = %89, %92
  %100 = icmp ult i64 %50, 4
  br i1 %100, label %139, label %101

101:                                              ; preds = %99
  %102 = and i64 %50, -4
  br label %103

103:                                              ; preds = %103, %101
  %104 = phi i64 [ 0, %101 ], [ %133, %103 ]
  %105 = phi <2 x i64> [ zeroinitializer, %101 ], [ %131, %103 ]
  %106 = phi <2 x i64> [ zeroinitializer, %101 ], [ %132, %103 ]
  %107 = getelementptr inbounds i32, i32* %54, i64 %104
  %108 = bitcast i32* %107 to <2 x i32>*
  %109 = load <2 x i32>, <2 x i32>* %108, align 4, !tbaa !9
  %110 = getelementptr inbounds i32, i32* %107, i64 2
  %111 = bitcast i32* %110 to <2 x i32>*
  %112 = load <2 x i32>, <2 x i32>* %111, align 4, !tbaa !9
  %113 = shl nsw <2 x i32> %109, <i32 1, i32 1>
  %114 = shl nsw <2 x i32> %112, <i32 1, i32 1>
  %115 = getelementptr inbounds i32, i32* %56, i64 %104
  %116 = bitcast i32* %115 to <2 x i32>*
  %117 = load <2 x i32>, <2 x i32>* %116, align 4, !tbaa !9
  %118 = getelementptr inbounds i32, i32* %115, i64 2
  %119 = bitcast i32* %118 to <2 x i32>*
  %120 = load <2 x i32>, <2 x i32>* %119, align 4, !tbaa !9
  %121 = add nsw <2 x i32> %113, %117
  %122 = add nsw <2 x i32> %114, %120
  %123 = icmp sgt <2 x i32> %121, <i32 100, i32 100>
  %124 = icmp sgt <2 x i32> %122, <i32 100, i32 100>
  %125 = add nsw <2 x i32> %121, <i32 -3, i32 -3>
  %126 = add nsw <2 x i32> %122, <i32 -3, i32 -3>
  %127 = select <2 x i1> %123, <2 x i32> %125, <2 x i32> %121
  %128 = select <2 x i1> %124, <2 x i32> %126, <2 x i32> %122
  %129 = sext <2 x i32> %127 to <2 x i64>
  %130 = sext <2 x i32> %128 to <2 x i64>
  %131 = add <2 x i64> %105, %129
  %132 = add <2 x i64> %106, %130
  %133 = add nuw i64 %104, 4
  %134 = icmp eq i64 %133, %102
  br i1 %134, label %135, label %103, !llvm.loop !14

135:                                              ; preds = %103
  %136 = add <2 x i64> %132, %131
  %137 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %136)
  %138 = icmp eq i64 %50, %102
  br i1 %138, label %158, label %139

139:                                              ; preds = %99, %135
  %140 = phi i64 [ 0, %99 ], [ %102, %135 ]
  %141 = phi i64 [ 0, %99 ], [ %137, %135 ]
  br label %142

142:                                              ; preds = %139, %142
  %143 = phi i64 [ %156, %142 ], [ %140, %139 ]
  %144 = phi i64 [ %155, %142 ], [ %141, %139 ]
  %145 = getelementptr inbounds i32, i32* %54, i64 %143
  %146 = load i32, i32* %145, align 4, !tbaa !9
  %147 = shl nsw i32 %146, 1
  %148 = getelementptr inbounds i32, i32* %56, i64 %143
  %149 = load i32, i32* %148, align 4, !tbaa !9
  %150 = add nsw i32 %147, %149
  %151 = icmp sgt i32 %150, 100
  %152 = add nsw i32 %150, -3
  %153 = select i1 %151, i32 %152, i32 %150
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %144, %154
  %156 = add nuw i64 %143, 1
  %157 = icmp eq i64 %156, %50
  br i1 %157, label %158, label %142, !llvm.loop !16

158:                                              ; preds = %142, %135
  %159 = phi i64 [ %137, %135 ], [ %155, %142 ]
  tail call fastcc void @transform(i32* noundef nonnull %54, i32* noundef nonnull %56, i32* noundef %58, i64 noundef %50)
  %160 = bitcast %struct.timespec* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %160) #10
  %161 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %161) #10
  %162 = call i32 @clock_gettime(i32 noundef 1, %struct.timespec* noundef nonnull %5) #10
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %158
  %165 = icmp eq i64 %51, 0
  br i1 %165, label %167, label %237

166:                                              ; preds = %158
  call void @free(i8* noundef nonnull %53) #10
  call void @free(i8* noundef nonnull %55) #10
  call void @free(i8* noundef %57) #10
  br label %279

167:                                              ; preds = %237, %164
  %168 = call i32 @clock_gettime(i32 noundef 1, %struct.timespec* noundef nonnull %6) #10
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %241

170:                                              ; preds = %167
  %171 = icmp ult i64 %50, 4
  br i1 %171, label %234, label %172

172:                                              ; preds = %170
  %173 = and i64 %50, -4
  %174 = add i64 %173, -4
  %175 = lshr exact i64 %174, 2
  %176 = add nuw nsw i64 %175, 1
  %177 = and i64 %176, 1
  %178 = icmp eq i64 %174, 0
  br i1 %178, label %210, label %179

179:                                              ; preds = %172
  %180 = and i64 %176, 9223372036854775806
  br label %181

181:                                              ; preds = %181, %179
  %182 = phi i64 [ 0, %179 ], [ %207, %181 ]
  %183 = phi <2 x i64> [ zeroinitializer, %179 ], [ %205, %181 ]
  %184 = phi <2 x i64> [ zeroinitializer, %179 ], [ %206, %181 ]
  %185 = phi i64 [ 0, %179 ], [ %208, %181 ]
  %186 = getelementptr inbounds i32, i32* %58, i64 %182
  %187 = bitcast i32* %186 to <2 x i32>*
  %188 = load <2 x i32>, <2 x i32>* %187, align 4, !tbaa !9
  %189 = getelementptr inbounds i32, i32* %186, i64 2
  %190 = bitcast i32* %189 to <2 x i32>*
  %191 = load <2 x i32>, <2 x i32>* %190, align 4, !tbaa !9
  %192 = sext <2 x i32> %188 to <2 x i64>
  %193 = sext <2 x i32> %191 to <2 x i64>
  %194 = add <2 x i64> %183, %192
  %195 = add <2 x i64> %184, %193
  %196 = or i64 %182, 4
  %197 = getelementptr inbounds i32, i32* %58, i64 %196
  %198 = bitcast i32* %197 to <2 x i32>*
  %199 = load <2 x i32>, <2 x i32>* %198, align 4, !tbaa !9
  %200 = getelementptr inbounds i32, i32* %197, i64 2
  %201 = bitcast i32* %200 to <2 x i32>*
  %202 = load <2 x i32>, <2 x i32>* %201, align 4, !tbaa !9
  %203 = sext <2 x i32> %199 to <2 x i64>
  %204 = sext <2 x i32> %202 to <2 x i64>
  %205 = add <2 x i64> %194, %203
  %206 = add <2 x i64> %195, %204
  %207 = add nuw i64 %182, 8
  %208 = add i64 %185, 2
  %209 = icmp eq i64 %208, %180
  br i1 %209, label %210, label %181, !llvm.loop !18

210:                                              ; preds = %181, %172
  %211 = phi <2 x i64> [ undef, %172 ], [ %205, %181 ]
  %212 = phi <2 x i64> [ undef, %172 ], [ %206, %181 ]
  %213 = phi i64 [ 0, %172 ], [ %207, %181 ]
  %214 = phi <2 x i64> [ zeroinitializer, %172 ], [ %205, %181 ]
  %215 = phi <2 x i64> [ zeroinitializer, %172 ], [ %206, %181 ]
  %216 = icmp eq i64 %177, 0
  br i1 %216, label %228, label %217

217:                                              ; preds = %210
  %218 = getelementptr inbounds i32, i32* %58, i64 %213
  %219 = bitcast i32* %218 to <2 x i32>*
  %220 = load <2 x i32>, <2 x i32>* %219, align 4, !tbaa !9
  %221 = getelementptr inbounds i32, i32* %218, i64 2
  %222 = bitcast i32* %221 to <2 x i32>*
  %223 = load <2 x i32>, <2 x i32>* %222, align 4, !tbaa !9
  %224 = sext <2 x i32> %220 to <2 x i64>
  %225 = sext <2 x i32> %223 to <2 x i64>
  %226 = add <2 x i64> %214, %224
  %227 = add <2 x i64> %215, %225
  br label %228

228:                                              ; preds = %210, %217
  %229 = phi <2 x i64> [ %211, %210 ], [ %226, %217 ]
  %230 = phi <2 x i64> [ %212, %210 ], [ %227, %217 ]
  %231 = add <2 x i64> %230, %229
  %232 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %231)
  %233 = icmp eq i64 %50, %173
  br i1 %233, label %251, label %234

234:                                              ; preds = %170, %228
  %235 = phi i64 [ 0, %170 ], [ %173, %228 ]
  %236 = phi i64 [ 0, %170 ], [ %232, %228 ]
  br label %242

237:                                              ; preds = %164, %237
  %238 = phi i64 [ %239, %237 ], [ 0, %164 ]
  call fastcc void @transform(i32* noundef %54, i32* noundef %56, i32* noundef %58, i64 noundef %50)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !19
  %239 = add nuw i64 %238, 1
  %240 = icmp eq i64 %239, %51
  br i1 %240, label %167, label %237, !llvm.loop !20

241:                                              ; preds = %167
  call void @free(i8* noundef %53) #10
  call void @free(i8* noundef %55) #10
  call void @free(i8* noundef %57) #10
  br label %279

242:                                              ; preds = %234, %242
  %243 = phi i64 [ %249, %242 ], [ %235, %234 ]
  %244 = phi i64 [ %248, %242 ], [ %236, %234 ]
  %245 = getelementptr inbounds i32, i32* %58, i64 %243
  %246 = load i32, i32* %245, align 4, !tbaa !9
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %244, %247
  %249 = add nuw i64 %243, 1
  %250 = icmp eq i64 %249, %50
  br i1 %250, label %251, label %242, !llvm.loop !21

251:                                              ; preds = %242, %228
  %252 = phi i64 [ %232, %228 ], [ %248, %242 ]
  %253 = icmp eq i64 %252, %159
  %254 = zext i1 %253 to i32
  %255 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i64 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i64 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i64 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i64 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = sub i64 %260, %256
  %264 = sub nsw i64 %262, %258
  %265 = icmp slt i64 %264, 0
  %266 = add nsw i64 %264, 1000000000
  %267 = ashr i64 %264, 63
  %268 = add i64 %263, %267
  %269 = select i1 %265, i64 %266, i64 %264
  %270 = mul i64 %268, 1000000000
  %271 = add i64 %270, %269
  %272 = uitofp i64 %271 to double
  %273 = uitofp i64 %50 to double
  %274 = uitofp i64 %51 to double
  %275 = fmul double %273, %274
  %276 = fdiv double %272, %275
  %277 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0), i64 noundef %50, i64 noundef %51, i64 noundef %252, i64 noundef %159, i32 noundef %254, i64 noundef %271, double noundef %276)
  call void @free(i8* noundef %53) #10
  call void @free(i8* noundef %55) #10
  call void @free(i8* noundef nonnull %57) #10
  %278 = select i1 %253, i32 0, i32 4
  br label %279

279:                                              ; preds = %251, %241, %166
  %280 = phi i32 [ 5, %166 ], [ 5, %241 ], [ %278, %251 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %161) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %160) #10
  br label %281

281:                                              ; preds = %46, %26, %69, %279, %47
  %282 = phi i32 [ 2, %47 ], [ 3, %69 ], [ %280, %279 ], [ 2, %26 ], [ 2, %46 ]
  ret i32 %282
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @transform(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32* nocapture noundef writeonly %2, i64 noundef %3) unnamed_addr #4 {
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %74, label %6

6:                                                ; preds = %4
  %7 = icmp ult i64 %3, 8
  br i1 %7, label %53, label %8

8:                                                ; preds = %6
  %9 = getelementptr i32, i32* %2, i64 %3
  %10 = getelementptr i32, i32* %0, i64 %3
  %11 = getelementptr i32, i32* %1, i64 %3
  %12 = icmp ugt i32* %10, %2
  %13 = icmp ugt i32* %9, %0
  %14 = and i1 %12, %13
  %15 = icmp ugt i32* %11, %2
  %16 = icmp ugt i32* %9, %1
  %17 = and i1 %15, %16
  %18 = or i1 %14, %17
  br i1 %18, label %53, label %19

19:                                               ; preds = %8
  %20 = and i64 %3, -8
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i64 [ 0, %19 ], [ %49, %21 ]
  %23 = getelementptr inbounds i32, i32* %0, i64 %22
  %24 = bitcast i32* %23 to <4 x i32>*
  %25 = load <4 x i32>, <4 x i32>* %24, align 4, !tbaa !9, !alias.scope !22
  %26 = getelementptr inbounds i32, i32* %23, i64 4
  %27 = bitcast i32* %26 to <4 x i32>*
  %28 = load <4 x i32>, <4 x i32>* %27, align 4, !tbaa !9, !alias.scope !22
  %29 = shl nsw <4 x i32> %25, <i32 1, i32 1, i32 1, i32 1>
  %30 = shl nsw <4 x i32> %28, <i32 1, i32 1, i32 1, i32 1>
  %31 = getelementptr inbounds i32, i32* %1, i64 %22
  %32 = bitcast i32* %31 to <4 x i32>*
  %33 = load <4 x i32>, <4 x i32>* %32, align 4, !tbaa !9, !alias.scope !25
  %34 = getelementptr inbounds i32, i32* %31, i64 4
  %35 = bitcast i32* %34 to <4 x i32>*
  %36 = load <4 x i32>, <4 x i32>* %35, align 4, !tbaa !9, !alias.scope !25
  %37 = add nsw <4 x i32> %29, %33
  %38 = add nsw <4 x i32> %30, %36
  %39 = icmp sgt <4 x i32> %37, <i32 100, i32 100, i32 100, i32 100>
  %40 = icmp sgt <4 x i32> %38, <i32 100, i32 100, i32 100, i32 100>
  %41 = add nsw <4 x i32> %37, <i32 -3, i32 -3, i32 -3, i32 -3>
  %42 = add nsw <4 x i32> %38, <i32 -3, i32 -3, i32 -3, i32 -3>
  %43 = select <4 x i1> %39, <4 x i32> %41, <4 x i32> %37
  %44 = select <4 x i1> %40, <4 x i32> %42, <4 x i32> %38
  %45 = getelementptr inbounds i32, i32* %2, i64 %22
  %46 = bitcast i32* %45 to <4 x i32>*
  store <4 x i32> %43, <4 x i32>* %46, align 4, !tbaa !9, !alias.scope !27, !noalias !29
  %47 = getelementptr inbounds i32, i32* %45, i64 4
  %48 = bitcast i32* %47 to <4 x i32>*
  store <4 x i32> %44, <4 x i32>* %48, align 4, !tbaa !9, !alias.scope !27, !noalias !29
  %49 = add nuw i64 %22, 8
  %50 = icmp eq i64 %49, %20
  br i1 %50, label %51, label %21, !llvm.loop !30

51:                                               ; preds = %21
  %52 = icmp eq i64 %20, %3
  br i1 %52, label %74, label %53

53:                                               ; preds = %8, %6, %51
  %54 = phi i64 [ 0, %8 ], [ 0, %6 ], [ %20, %51 ]
  %55 = xor i64 %54, -1
  %56 = and i64 %3, 1
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds i32, i32* %0, i64 %54
  %60 = load i32, i32* %59, align 4, !tbaa !9
  %61 = shl nsw i32 %60, 1
  %62 = getelementptr inbounds i32, i32* %1, i64 %54
  %63 = load i32, i32* %62, align 4, !tbaa !9
  %64 = add nsw i32 %61, %63
  %65 = icmp sgt i32 %64, 100
  %66 = add nsw i32 %64, -3
  %67 = select i1 %65, i32 %66, i32 %64
  %68 = getelementptr inbounds i32, i32* %2, i64 %54
  store i32 %67, i32* %68, align 4, !tbaa !9
  %69 = or i64 %54, 1
  br label %70

70:                                               ; preds = %58, %53
  %71 = phi i64 [ %54, %53 ], [ %69, %58 ]
  %72 = sub i64 0, %3
  %73 = icmp eq i64 %55, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %75, %51, %4
  ret void

75:                                               ; preds = %70, %75
  %76 = phi i64 [ %98, %75 ], [ %71, %70 ]
  %77 = getelementptr inbounds i32, i32* %0, i64 %76
  %78 = load i32, i32* %77, align 4, !tbaa !9
  %79 = shl nsw i32 %78, 1
  %80 = getelementptr inbounds i32, i32* %1, i64 %76
  %81 = load i32, i32* %80, align 4, !tbaa !9
  %82 = add nsw i32 %79, %81
  %83 = icmp sgt i32 %82, 100
  %84 = add nsw i32 %82, -3
  %85 = select i1 %83, i32 %84, i32 %82
  %86 = getelementptr inbounds i32, i32* %2, i64 %76
  store i32 %85, i32* %86, align 4, !tbaa !9
  %87 = add nuw i64 %76, 1
  %88 = getelementptr inbounds i32, i32* %0, i64 %87
  %89 = load i32, i32* %88, align 4, !tbaa !9
  %90 = shl nsw i32 %89, 1
  %91 = getelementptr inbounds i32, i32* %1, i64 %87
  %92 = load i32, i32* %91, align 4, !tbaa !9
  %93 = add nsw i32 %90, %92
  %94 = icmp sgt i32 %93, 100
  %95 = add nsw i32 %93, -3
  %96 = select i1 %94, i32 %95, i32 %93
  %97 = getelementptr inbounds i32, i32* %2, i64 %87
  store i32 %96, i32* %97, align 4, !tbaa !9
  %98 = add nuw i64 %76, 2
  %99 = icmp eq i64 %98, %3
  br i1 %99, label %74, label %75, !llvm.loop !31
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, %struct.timespec* noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoull(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #9

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone willreturn }

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
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13, !15}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = distinct !{!16, !13, !17, !15}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !13, !15}
!19 = !{i64 2147807002}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13, !17, !15}
!22 = !{!23}
!23 = distinct !{!23, !24}
!24 = distinct !{!24, !"LVerDomain"}
!25 = !{!26}
!26 = distinct !{!26, !24}
!27 = !{!28}
!28 = distinct !{!28, !24}
!29 = !{!23, !26}
!30 = distinct !{!30, !13, !15}
!31 = distinct !{!31, !13, !15}
