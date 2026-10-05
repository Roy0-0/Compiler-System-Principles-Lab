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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #9
  store i8* null, i8** %4, align 8, !tbaa !5
  %12 = tail call i32* @__errno_location() #10
  store i32 0, i32* %12, align 4, !tbaa !9
  %13 = call i64 @strtoull(i8* noundef %10, i8** noundef nonnull %4, i32 noundef 10) #9
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #9
  br label %266

27:                                               ; preds = %19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #9
  %28 = icmp ugt i32 %0, 2
  br i1 %28, label %29, label %49

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8*, i8** %1, i64 2
  %31 = load i8*, i8** %30, align 8, !tbaa !5
  %32 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #9
  store i8* null, i8** %3, align 8, !tbaa !5
  store i32 0, i32* %12, align 4, !tbaa !9
  %33 = call i64 @strtoull(i8* noundef %31, i8** noundef nonnull %3, i32 noundef 10) #9
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
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #9
  br label %266

47:                                               ; preds = %39
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #9
  %48 = icmp ugt i32 %0, 3
  br i1 %48, label %266, label %49

49:                                               ; preds = %2, %27, %47
  %50 = phi i64 [ %13, %47 ], [ %13, %27 ], [ 1000000, %2 ]
  %51 = phi i64 [ %33, %47 ], [ 20, %27 ], [ 20, %2 ]
  %52 = shl nuw nsw i64 %50, 2
  %53 = tail call noalias i8* @malloc(i64 noundef %52) #9
  %54 = bitcast i8* %53 to i32*
  %55 = tail call noalias i8* @malloc(i64 noundef %52) #9
  %56 = bitcast i8* %55 to i32*
  %57 = tail call noalias i8* @malloc(i64 noundef %52) #9
  %58 = bitcast i8* %57 to i32*
  %59 = icmp eq i8* %53, null
  %60 = icmp eq i8* %55, null
  %61 = or i1 %59, %60
  %62 = icmp eq i8* %57, null
  %63 = or i1 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %49
  %65 = add i64 %50, -1
  %66 = and i64 %50, 1
  %67 = icmp eq i64 %65, 0
  br i1 %67, label %90, label %68

68:                                               ; preds = %64
  %69 = and i64 %50, -2
  br label %71

70:                                               ; preds = %49
  tail call void @free(i8* noundef %53) #9
  tail call void @free(i8* noundef %55) #9
  tail call void @free(i8* noundef %57) #9
  br label %266

71:                                               ; preds = %71, %68
  %72 = phi i64 [ 0, %68 ], [ %87, %71 ]
  %73 = phi i64 [ 0, %68 ], [ %88, %71 ]
  %74 = urem i64 %72, 97
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds i32, i32* %54, i64 %72
  store i32 %75, i32* %76, align 4, !tbaa !9
  %77 = urem i64 %72, 31
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds i32, i32* %56, i64 %72
  store i32 %78, i32* %79, align 4, !tbaa !9
  %80 = or i64 %72, 1
  %81 = urem i64 %80, 97
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds i32, i32* %54, i64 %80
  store i32 %82, i32* %83, align 4, !tbaa !9
  %84 = urem i64 %80, 31
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds i32, i32* %56, i64 %80
  store i32 %85, i32* %86, align 4, !tbaa !9
  %87 = add nuw i64 %72, 2
  %88 = add i64 %73, 2
  %89 = icmp eq i64 %88, %69
  br i1 %89, label %90, label %71, !llvm.loop !12

90:                                               ; preds = %71, %64
  %91 = phi i64 [ 0, %64 ], [ %87, %71 ]
  %92 = icmp eq i64 %66, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = urem i64 %91, 97
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds i32, i32* %54, i64 %91
  store i32 %95, i32* %96, align 4, !tbaa !9
  %97 = urem i64 %91, 31
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds i32, i32* %56, i64 %91
  store i32 %98, i32* %99, align 4, !tbaa !9
  br label %100

100:                                              ; preds = %90, %93
  %101 = and i64 %50, 1
  %102 = icmp eq i64 %65, 0
  br i1 %102, label %135, label %103

103:                                              ; preds = %100
  %104 = and i64 %50, -2
  br label %105

105:                                              ; preds = %105, %103
  %106 = phi i64 [ 0, %103 ], [ %132, %105 ]
  %107 = phi i64 [ 0, %103 ], [ %131, %105 ]
  %108 = phi i64 [ 0, %103 ], [ %133, %105 ]
  %109 = getelementptr inbounds i32, i32* %54, i64 %106
  %110 = load i32, i32* %109, align 4, !tbaa !9
  %111 = shl nsw i32 %110, 1
  %112 = getelementptr inbounds i32, i32* %56, i64 %106
  %113 = load i32, i32* %112, align 4, !tbaa !9
  %114 = add nsw i32 %111, %113
  %115 = icmp sgt i32 %114, 100
  %116 = add nsw i32 %114, -3
  %117 = select i1 %115, i32 %116, i32 %114
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %107, %118
  %120 = or i64 %106, 1
  %121 = getelementptr inbounds i32, i32* %54, i64 %120
  %122 = load i32, i32* %121, align 4, !tbaa !9
  %123 = shl nsw i32 %122, 1
  %124 = getelementptr inbounds i32, i32* %56, i64 %120
  %125 = load i32, i32* %124, align 4, !tbaa !9
  %126 = add nsw i32 %123, %125
  %127 = icmp sgt i32 %126, 100
  %128 = add nsw i32 %126, -3
  %129 = select i1 %127, i32 %128, i32 %126
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %119, %130
  %132 = add nuw i64 %106, 2
  %133 = add i64 %108, 2
  %134 = icmp eq i64 %133, %104
  br i1 %134, label %135, label %105, !llvm.loop !14

135:                                              ; preds = %105, %100
  %136 = phi i64 [ undef, %100 ], [ %131, %105 ]
  %137 = phi i64 [ 0, %100 ], [ %132, %105 ]
  %138 = phi i64 [ 0, %100 ], [ %131, %105 ]
  %139 = icmp eq i64 %101, 0
  br i1 %139, label %152, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds i32, i32* %54, i64 %137
  %142 = load i32, i32* %141, align 4, !tbaa !9
  %143 = shl nsw i32 %142, 1
  %144 = getelementptr inbounds i32, i32* %56, i64 %137
  %145 = load i32, i32* %144, align 4, !tbaa !9
  %146 = add nsw i32 %143, %145
  %147 = icmp sgt i32 %146, 100
  %148 = add nsw i32 %146, -3
  %149 = select i1 %147, i32 %148, i32 %146
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %138, %150
  br label %152

152:                                              ; preds = %135, %140
  %153 = phi i64 [ %136, %135 ], [ %151, %140 ]
  tail call fastcc void @transform(i32* noundef nonnull %54, i32* noundef nonnull %56, i32* noundef %58, i64 noundef %50)
  %154 = bitcast %struct.timespec* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %154) #9
  %155 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %155) #9
  %156 = call i32 @clock_gettime(i32 noundef 1, %struct.timespec* noundef nonnull %5) #9
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = icmp eq i64 %51, 0
  br i1 %159, label %161, label %169

160:                                              ; preds = %152
  call void @free(i8* noundef nonnull %53) #9
  call void @free(i8* noundef nonnull %55) #9
  call void @free(i8* noundef %57) #9
  br label %264

161:                                              ; preds = %169, %158
  %162 = call i32 @clock_gettime(i32 noundef 1, %struct.timespec* noundef nonnull %6) #9
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %161
  %165 = and i64 %50, 7
  %166 = icmp ult i64 %65, 7
  br i1 %166, label %220, label %167

167:                                              ; preds = %164
  %168 = and i64 %50, -8
  br label %174

169:                                              ; preds = %158, %169
  %170 = phi i64 [ %171, %169 ], [ 0, %158 ]
  call fastcc void @transform(i32* noundef %54, i32* noundef %56, i32* noundef %58, i64 noundef %50)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !15
  %171 = add nuw i64 %170, 1
  %172 = icmp eq i64 %171, %51
  br i1 %172, label %161, label %169, !llvm.loop !16

173:                                              ; preds = %161
  call void @free(i8* noundef %53) #9
  call void @free(i8* noundef %55) #9
  call void @free(i8* noundef %57) #9
  br label %264

174:                                              ; preds = %174, %167
  %175 = phi i64 [ 0, %167 ], [ %217, %174 ]
  %176 = phi i64 [ 0, %167 ], [ %216, %174 ]
  %177 = phi i64 [ 0, %167 ], [ %218, %174 ]
  %178 = getelementptr inbounds i32, i32* %58, i64 %175
  %179 = load i32, i32* %178, align 4, !tbaa !9
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %176, %180
  %182 = or i64 %175, 1
  %183 = getelementptr inbounds i32, i32* %58, i64 %182
  %184 = load i32, i32* %183, align 4, !tbaa !9
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %181, %185
  %187 = or i64 %175, 2
  %188 = getelementptr inbounds i32, i32* %58, i64 %187
  %189 = load i32, i32* %188, align 4, !tbaa !9
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %186, %190
  %192 = or i64 %175, 3
  %193 = getelementptr inbounds i32, i32* %58, i64 %192
  %194 = load i32, i32* %193, align 4, !tbaa !9
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %191, %195
  %197 = or i64 %175, 4
  %198 = getelementptr inbounds i32, i32* %58, i64 %197
  %199 = load i32, i32* %198, align 4, !tbaa !9
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %196, %200
  %202 = or i64 %175, 5
  %203 = getelementptr inbounds i32, i32* %58, i64 %202
  %204 = load i32, i32* %203, align 4, !tbaa !9
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %201, %205
  %207 = or i64 %175, 6
  %208 = getelementptr inbounds i32, i32* %58, i64 %207
  %209 = load i32, i32* %208, align 4, !tbaa !9
  %210 = sext i32 %209 to i64
  %211 = add nsw i64 %206, %210
  %212 = or i64 %175, 7
  %213 = getelementptr inbounds i32, i32* %58, i64 %212
  %214 = load i32, i32* %213, align 4, !tbaa !9
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %211, %215
  %217 = add nuw i64 %175, 8
  %218 = add i64 %177, 8
  %219 = icmp eq i64 %218, %168
  br i1 %219, label %220, label %174, !llvm.loop !17

220:                                              ; preds = %174, %164
  %221 = phi i64 [ undef, %164 ], [ %216, %174 ]
  %222 = phi i64 [ 0, %164 ], [ %217, %174 ]
  %223 = phi i64 [ 0, %164 ], [ %216, %174 ]
  %224 = icmp eq i64 %165, 0
  br i1 %224, label %236, label %225

225:                                              ; preds = %220, %225
  %226 = phi i64 [ %233, %225 ], [ %222, %220 ]
  %227 = phi i64 [ %232, %225 ], [ %223, %220 ]
  %228 = phi i64 [ %234, %225 ], [ 0, %220 ]
  %229 = getelementptr inbounds i32, i32* %58, i64 %226
  %230 = load i32, i32* %229, align 4, !tbaa !9
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %227, %231
  %233 = add nuw i64 %226, 1
  %234 = add i64 %228, 1
  %235 = icmp eq i64 %234, %165
  br i1 %235, label %236, label %225, !llvm.loop !18

236:                                              ; preds = %225, %220
  %237 = phi i64 [ %221, %220 ], [ %232, %225 ]
  %238 = icmp eq i64 %237, %153
  %239 = zext i1 %238 to i32
  %240 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i64 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i64 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i64 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i64 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = sub i64 %245, %241
  %249 = sub nsw i64 %247, %243
  %250 = icmp slt i64 %249, 0
  %251 = add nsw i64 %249, 1000000000
  %252 = ashr i64 %249, 63
  %253 = add i64 %248, %252
  %254 = select i1 %250, i64 %251, i64 %249
  %255 = mul i64 %253, 1000000000
  %256 = add i64 %255, %254
  %257 = uitofp i64 %256 to double
  %258 = uitofp i64 %50 to double
  %259 = uitofp i64 %51 to double
  %260 = fmul double %258, %259
  %261 = fdiv double %257, %260
  %262 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0), i64 noundef %50, i64 noundef %51, i64 noundef %237, i64 noundef %153, i32 noundef %239, i64 noundef %256, double noundef %261)
  call void @free(i8* noundef %53) #9
  call void @free(i8* noundef %55) #9
  call void @free(i8* noundef nonnull %57) #9
  %263 = select i1 %238, i32 0, i32 4
  br label %264

264:                                              ; preds = %236, %173, %160
  %265 = phi i32 [ 5, %160 ], [ 5, %173 ], [ %263, %236 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %155) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %154) #9
  br label %266

266:                                              ; preds = %46, %26, %70, %264, %47
  %267 = phi i32 [ 2, %47 ], [ 3, %70 ], [ %265, %264 ], [ 2, %26 ], [ 2, %46 ]
  ret i32 %267
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
  br i1 %5, label %25, label %6

6:                                                ; preds = %4
  %7 = and i64 %3, 1
  %8 = icmp eq i64 %3, 1
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = and i64 %3, -2
  br label %26

11:                                               ; preds = %26, %6
  %12 = phi i64 [ 0, %6 ], [ %50, %26 ]
  %13 = icmp eq i64 %7, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds i32, i32* %0, i64 %12
  %16 = load i32, i32* %15, align 4, !tbaa !9
  %17 = shl nsw i32 %16, 1
  %18 = getelementptr inbounds i32, i32* %1, i64 %12
  %19 = load i32, i32* %18, align 4, !tbaa !9
  %20 = add nsw i32 %17, %19
  %21 = icmp sgt i32 %20, 100
  %22 = add nsw i32 %20, -3
  %23 = select i1 %21, i32 %22, i32 %20
  %24 = getelementptr inbounds i32, i32* %2, i64 %12
  store i32 %23, i32* %24, align 4, !tbaa !9
  br label %25

25:                                               ; preds = %14, %11, %4
  ret void

26:                                               ; preds = %26, %9
  %27 = phi i64 [ 0, %9 ], [ %50, %26 ]
  %28 = phi i64 [ 0, %9 ], [ %51, %26 ]
  %29 = getelementptr inbounds i32, i32* %0, i64 %27
  %30 = load i32, i32* %29, align 4, !tbaa !9
  %31 = shl nsw i32 %30, 1
  %32 = getelementptr inbounds i32, i32* %1, i64 %27
  %33 = load i32, i32* %32, align 4, !tbaa !9
  %34 = add nsw i32 %31, %33
  %35 = icmp sgt i32 %34, 100
  %36 = add nsw i32 %34, -3
  %37 = select i1 %35, i32 %36, i32 %34
  %38 = getelementptr inbounds i32, i32* %2, i64 %27
  store i32 %37, i32* %38, align 4, !tbaa !9
  %39 = or i64 %27, 1
  %40 = getelementptr inbounds i32, i32* %0, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !9
  %42 = shl nsw i32 %41, 1
  %43 = getelementptr inbounds i32, i32* %1, i64 %39
  %44 = load i32, i32* %43, align 4, !tbaa !9
  %45 = add nsw i32 %42, %44
  %46 = icmp sgt i32 %45, 100
  %47 = add nsw i32 %45, -3
  %48 = select i1 %46, i32 %47, i32 %45
  %49 = getelementptr inbounds i32, i32* %2, i64 %39
  store i32 %48, i32* %49, align 4, !tbaa !9
  %50 = add nuw i64 %27, 2
  %51 = add i64 %28, 2
  %52 = icmp eq i64 %51, %10
  br i1 %52, label %11, label %26, !llvm.loop !20
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

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone willreturn }

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
!14 = distinct !{!14, !13}
!15 = !{i64 2147807002}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !13}
