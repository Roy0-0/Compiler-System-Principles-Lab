; ModuleID = '/home/roy/compiler-lab/prework/program_b_optimization/src/array_transform.c'
source_filename = "/home/roy/compiler-lab/prework/program_b_optimization/src/array_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 !dbg !16 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !25, metadata !DIExpression()), !dbg !26
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %6, metadata !29, metadata !DIExpression()), !dbg !30
  store i32 1000000, i32* %6, align 4, !dbg !30
  %10 = load i32, i32* %4, align 4, !dbg !31
  %11 = icmp sgt i32 %10, 1, !dbg !33
  br i1 %11, label %12, label %17, !dbg !34

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8, !dbg !35
  %14 = getelementptr inbounds i8*, i8** %13, i64 1, !dbg !35
  %15 = load i8*, i8** %14, align 8, !dbg !35
  %16 = call i32 @atoi(i8* noundef %15) #5, !dbg !36
  store i32 %16, i32* %6, align 4, !dbg !37
  br label %17, !dbg !38

17:                                               ; preds = %12, %2
  %18 = load i32, i32* %6, align 4, !dbg !39
  %19 = icmp sle i32 %18, 0, !dbg !41
  br i1 %19, label %20, label %21, !dbg !42

20:                                               ; preds = %17
  store i32 2, i32* %3, align 4, !dbg !43
  br label %70, !dbg !43

21:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata i32** %7, metadata !44, metadata !DIExpression()), !dbg !46
  %22 = load i32, i32* %6, align 4, !dbg !47
  %23 = sext i32 %22 to i64, !dbg !48
  %24 = mul i64 4, %23, !dbg !49
  %25 = call noalias i8* @malloc(i64 noundef %24) #6, !dbg !50
  %26 = bitcast i8* %25 to i32*, !dbg !50
  store i32* %26, i32** %7, align 8, !dbg !46
  call void @llvm.dbg.declare(metadata i32** %8, metadata !51, metadata !DIExpression()), !dbg !52
  %27 = load i32, i32* %6, align 4, !dbg !53
  %28 = sext i32 %27 to i64, !dbg !54
  %29 = mul i64 4, %28, !dbg !55
  %30 = call noalias i8* @malloc(i64 noundef %29) #6, !dbg !56
  %31 = bitcast i8* %30 to i32*, !dbg !56
  store i32* %31, i32** %8, align 8, !dbg !52
  call void @llvm.dbg.declare(metadata i32** %9, metadata !57, metadata !DIExpression()), !dbg !58
  %32 = load i32, i32* %6, align 4, !dbg !59
  %33 = sext i32 %32 to i64, !dbg !60
  %34 = mul i64 4, %33, !dbg !61
  %35 = call noalias i8* @malloc(i64 noundef %34) #6, !dbg !62
  %36 = bitcast i8* %35 to i32*, !dbg !62
  store i32* %36, i32** %9, align 8, !dbg !58
  %37 = load i32*, i32** %7, align 8, !dbg !63
  %38 = icmp eq i32* %37, null, !dbg !65
  br i1 %38, label %45, label %39, !dbg !66

39:                                               ; preds = %21
  %40 = load i32*, i32** %8, align 8, !dbg !67
  %41 = icmp eq i32* %40, null, !dbg !68
  br i1 %41, label %45, label %42, !dbg !69

42:                                               ; preds = %39
  %43 = load i32*, i32** %9, align 8, !dbg !70
  %44 = icmp eq i32* %43, null, !dbg !71
  br i1 %44, label %45, label %52, !dbg !72

45:                                               ; preds = %42, %39, %21
  %46 = load i32*, i32** %7, align 8, !dbg !73
  %47 = bitcast i32* %46 to i8*, !dbg !73
  call void @free(i8* noundef %47) #6, !dbg !75
  %48 = load i32*, i32** %8, align 8, !dbg !76
  %49 = bitcast i32* %48 to i8*, !dbg !76
  call void @free(i8* noundef %49) #6, !dbg !77
  %50 = load i32*, i32** %9, align 8, !dbg !78
  %51 = bitcast i32* %50 to i8*, !dbg !78
  call void @free(i8* noundef %51) #6, !dbg !79
  store i32 3, i32* %3, align 4, !dbg !80
  br label %70, !dbg !80

52:                                               ; preds = %42
  %53 = load i32*, i32** %7, align 8, !dbg !81
  %54 = load i32*, i32** %8, align 8, !dbg !82
  %55 = load i32, i32* %6, align 4, !dbg !83
  call void @initialize(i32* noundef %53, i32* noundef %54, i32 noundef %55), !dbg !84
  %56 = load i32*, i32** %7, align 8, !dbg !85
  %57 = load i32*, i32** %8, align 8, !dbg !86
  %58 = load i32*, i32** %9, align 8, !dbg !87
  %59 = load i32, i32* %6, align 4, !dbg !88
  call void @transform(i32* noundef %56, i32* noundef %57, i32* noundef %58, i32 noundef %59), !dbg !89
  %60 = load i32*, i32** %9, align 8, !dbg !90
  %61 = load i32, i32* %6, align 4, !dbg !91
  %62 = call i64 @checksum(i32* noundef %60, i32 noundef %61), !dbg !92
  %63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 noundef %62), !dbg !93
  %64 = load i32*, i32** %7, align 8, !dbg !94
  %65 = bitcast i32* %64 to i8*, !dbg !94
  call void @free(i8* noundef %65) #6, !dbg !95
  %66 = load i32*, i32** %8, align 8, !dbg !96
  %67 = bitcast i32* %66 to i8*, !dbg !96
  call void @free(i8* noundef %67) #6, !dbg !97
  %68 = load i32*, i32** %9, align 8, !dbg !98
  %69 = bitcast i32* %68 to i8*, !dbg !98
  call void @free(i8* noundef %69) #6, !dbg !99
  store i32 0, i32* %3, align 4, !dbg !100
  br label %70, !dbg !100

70:                                               ; preds = %52, %45, %20
  %71 = load i32, i32* %3, align 4, !dbg !101
  ret i32 %71, !dbg !101
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize(i32* noundef %0, i32* noundef %1, i32 noundef %2) #0 !dbg !102 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !105, metadata !DIExpression()), !dbg !106
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !107, metadata !DIExpression()), !dbg !108
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %7, metadata !111, metadata !DIExpression()), !dbg !113
  store i32 0, i32* %7, align 4, !dbg !113
  br label %8, !dbg !114

8:                                                ; preds = %25, %3
  %9 = load i32, i32* %7, align 4, !dbg !115
  %10 = load i32, i32* %6, align 4, !dbg !117
  %11 = icmp slt i32 %9, %10, !dbg !118
  br i1 %11, label %12, label %28, !dbg !119

12:                                               ; preds = %8
  %13 = load i32, i32* %7, align 4, !dbg !120
  %14 = srem i32 %13, 97, !dbg !122
  %15 = load i32*, i32** %4, align 8, !dbg !123
  %16 = load i32, i32* %7, align 4, !dbg !124
  %17 = sext i32 %16 to i64, !dbg !123
  %18 = getelementptr inbounds i32, i32* %15, i64 %17, !dbg !123
  store i32 %14, i32* %18, align 4, !dbg !125
  %19 = load i32, i32* %7, align 4, !dbg !126
  %20 = srem i32 %19, 31, !dbg !127
  %21 = load i32*, i32** %5, align 8, !dbg !128
  %22 = load i32, i32* %7, align 4, !dbg !129
  %23 = sext i32 %22 to i64, !dbg !128
  %24 = getelementptr inbounds i32, i32* %21, i64 %23, !dbg !128
  store i32 %20, i32* %24, align 4, !dbg !130
  br label %25, !dbg !131

25:                                               ; preds = %12
  %26 = load i32, i32* %7, align 4, !dbg !132
  %27 = add nsw i32 %26, 1, !dbg !132
  store i32 %27, i32* %7, align 4, !dbg !132
  br label %8, !dbg !133, !llvm.loop !134

28:                                               ; preds = %8
  ret void, !dbg !137
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transform(i32* noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) #0 !dbg !138 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !143, metadata !DIExpression()), !dbg !144
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !145, metadata !DIExpression()), !dbg !146
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !147, metadata !DIExpression()), !dbg !148
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata i32* %9, metadata !151, metadata !DIExpression()), !dbg !153
  store i32 0, i32* %9, align 4, !dbg !153
  br label %10, !dbg !154

10:                                               ; preds = %32, %4
  %11 = load i32, i32* %9, align 4, !dbg !155
  %12 = load i32, i32* %8, align 4, !dbg !157
  %13 = icmp slt i32 %11, %12, !dbg !158
  br i1 %13, label %14, label %35, !dbg !159

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8, !dbg !160
  %16 = load i32, i32* %9, align 4, !dbg !161
  %17 = sext i32 %16 to i64, !dbg !160
  %18 = getelementptr inbounds i32, i32* %15, i64 %17, !dbg !160
  %19 = load i32, i32* %18, align 4, !dbg !160
  %20 = mul nsw i32 %19, 2, !dbg !162
  %21 = load i32*, i32** %6, align 8, !dbg !163
  %22 = load i32, i32* %9, align 4, !dbg !164
  %23 = sext i32 %22 to i64, !dbg !163
  %24 = getelementptr inbounds i32, i32* %21, i64 %23, !dbg !163
  %25 = load i32, i32* %24, align 4, !dbg !163
  %26 = add nsw i32 %20, %25, !dbg !165
  %27 = call i32 @adjust_value(i32 noundef %26), !dbg !166
  %28 = load i32*, i32** %7, align 8, !dbg !167
  %29 = load i32, i32* %9, align 4, !dbg !168
  %30 = sext i32 %29 to i64, !dbg !167
  %31 = getelementptr inbounds i32, i32* %28, i64 %30, !dbg !167
  store i32 %27, i32* %31, align 4, !dbg !169
  br label %32, !dbg !167

32:                                               ; preds = %14
  %33 = load i32, i32* %9, align 4, !dbg !170
  %34 = add nsw i32 %33, 1, !dbg !170
  store i32 %34, i32* %9, align 4, !dbg !170
  br label %10, !dbg !171, !llvm.loop !172

35:                                               ; preds = %10
  ret void, !dbg !174
}

declare i32 @printf(i8* noundef, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @checksum(i32* noundef %0, i32 noundef %1) #0 !dbg !175 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !183, metadata !DIExpression()), !dbg !184
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i64* %5, metadata !187, metadata !DIExpression()), !dbg !188
  store i64 0, i64* %5, align 8, !dbg !188
  call void @llvm.dbg.declare(metadata i32* %6, metadata !189, metadata !DIExpression()), !dbg !191
  store i32 0, i32* %6, align 4, !dbg !191
  br label %7, !dbg !192

7:                                                ; preds = %20, %2
  %8 = load i32, i32* %6, align 4, !dbg !193
  %9 = load i32, i32* %4, align 4, !dbg !195
  %10 = icmp slt i32 %8, %9, !dbg !196
  br i1 %10, label %11, label %23, !dbg !197

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8, !dbg !198
  %13 = load i32, i32* %6, align 4, !dbg !199
  %14 = sext i32 %13 to i64, !dbg !198
  %15 = getelementptr inbounds i32, i32* %12, i64 %14, !dbg !198
  %16 = load i32, i32* %15, align 4, !dbg !198
  %17 = sext i32 %16 to i64, !dbg !198
  %18 = load i64, i64* %5, align 8, !dbg !200
  %19 = add nsw i64 %18, %17, !dbg !200
  store i64 %19, i64* %5, align 8, !dbg !200
  br label %20, !dbg !201

20:                                               ; preds = %11
  %21 = load i32, i32* %6, align 4, !dbg !202
  %22 = add nsw i32 %21, 1, !dbg !202
  store i32 %22, i32* %6, align 4, !dbg !202
  br label %7, !dbg !203, !llvm.loop !204

23:                                               ; preds = %7
  %24 = load i64, i64* %5, align 8, !dbg !206
  ret i64 %24, !dbg !207
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_value(i32 noundef %0) #0 !dbg !208 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !211, metadata !DIExpression()), !dbg !212
  %4 = load i32, i32* %3, align 4, !dbg !213
  %5 = icmp sgt i32 %4, 100, !dbg !215
  br i1 %5, label %6, label %9, !dbg !216

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4, !dbg !217
  %8 = sub nsw i32 %7, 3, !dbg !218
  store i32 %8, i32* %2, align 4, !dbg !219
  br label %11, !dbg !219

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4, !dbg !220
  store i32 %10, i32* %2, align 4, !dbg !221
  br label %11, !dbg !221

11:                                               ; preds = %9, %6
  %12 = load i32, i32* %2, align 4, !dbg !222
  ret i32 %12, !dbg !222
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/roy/compiler-lab/prework/program_b_optimization/src/array_transform.c", directory: "/home/roy/compiler-lab/prework", checksumkind: CSK_MD5, checksum: "253a3e79462fd930358b2d99fd4fc2ef")
!2 = !{!3, !6, !7}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !4, line: 46, baseType: !5)
!4 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!5 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!16 = distinct !DISubprogram(name: "main", scope: !17, file: !17, line: 40, type: !18, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!17 = !DIFile(filename: "program_b_optimization/src/array_transform.c", directory: "/home/roy/compiler-lab/prework", checksumkind: CSK_MD5, checksum: "253a3e79462fd930358b2d99fd4fc2ef")
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !20, !21}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !{}
!25 = !DILocalVariable(name: "argc", arg: 1, scope: !16, file: !17, line: 40, type: !20)
!26 = !DILocation(line: 40, column: 14, scope: !16)
!27 = !DILocalVariable(name: "argv", arg: 2, scope: !16, file: !17, line: 40, type: !21)
!28 = !DILocation(line: 40, column: 27, scope: !16)
!29 = !DILocalVariable(name: "n", scope: !16, file: !17, line: 41, type: !20)
!30 = !DILocation(line: 41, column: 9, scope: !16)
!31 = !DILocation(line: 42, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !16, file: !17, line: 42, column: 9)
!33 = !DILocation(line: 42, column: 14, scope: !32)
!34 = !DILocation(line: 42, column: 9, scope: !16)
!35 = !DILocation(line: 42, column: 28, scope: !32)
!36 = !DILocation(line: 42, column: 23, scope: !32)
!37 = !DILocation(line: 42, column: 21, scope: !32)
!38 = !DILocation(line: 42, column: 19, scope: !32)
!39 = !DILocation(line: 43, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !16, file: !17, line: 43, column: 9)
!41 = !DILocation(line: 43, column: 11, scope: !40)
!42 = !DILocation(line: 43, column: 9, scope: !16)
!43 = !DILocation(line: 43, column: 17, scope: !40)
!44 = !DILocalVariable(name: "a", scope: !16, file: !17, line: 44, type: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!46 = !DILocation(line: 44, column: 10, scope: !16)
!47 = !DILocation(line: 44, column: 43, scope: !16)
!48 = !DILocation(line: 44, column: 35, scope: !16)
!49 = !DILocation(line: 44, column: 33, scope: !16)
!50 = !DILocation(line: 44, column: 14, scope: !16)
!51 = !DILocalVariable(name: "b", scope: !16, file: !17, line: 45, type: !45)
!52 = !DILocation(line: 45, column: 10, scope: !16)
!53 = !DILocation(line: 45, column: 43, scope: !16)
!54 = !DILocation(line: 45, column: 35, scope: !16)
!55 = !DILocation(line: 45, column: 33, scope: !16)
!56 = !DILocation(line: 45, column: 14, scope: !16)
!57 = !DILocalVariable(name: "c", scope: !16, file: !17, line: 46, type: !45)
!58 = !DILocation(line: 46, column: 10, scope: !16)
!59 = !DILocation(line: 46, column: 43, scope: !16)
!60 = !DILocation(line: 46, column: 35, scope: !16)
!61 = !DILocation(line: 46, column: 33, scope: !16)
!62 = !DILocation(line: 46, column: 14, scope: !16)
!63 = !DILocation(line: 47, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !16, file: !17, line: 47, column: 9)
!65 = !DILocation(line: 47, column: 11, scope: !64)
!66 = !DILocation(line: 47, column: 19, scope: !64)
!67 = !DILocation(line: 47, column: 22, scope: !64)
!68 = !DILocation(line: 47, column: 24, scope: !64)
!69 = !DILocation(line: 47, column: 32, scope: !64)
!70 = !DILocation(line: 47, column: 35, scope: !64)
!71 = !DILocation(line: 47, column: 37, scope: !64)
!72 = !DILocation(line: 47, column: 9, scope: !16)
!73 = !DILocation(line: 47, column: 53, scope: !74)
!74 = distinct !DILexicalBlock(scope: !64, file: !17, line: 47, column: 46)
!75 = !DILocation(line: 47, column: 48, scope: !74)
!76 = !DILocation(line: 47, column: 62, scope: !74)
!77 = !DILocation(line: 47, column: 57, scope: !74)
!78 = !DILocation(line: 47, column: 71, scope: !74)
!79 = !DILocation(line: 47, column: 66, scope: !74)
!80 = !DILocation(line: 47, column: 75, scope: !74)
!81 = !DILocation(line: 48, column: 16, scope: !16)
!82 = !DILocation(line: 48, column: 19, scope: !16)
!83 = !DILocation(line: 48, column: 22, scope: !16)
!84 = !DILocation(line: 48, column: 5, scope: !16)
!85 = !DILocation(line: 49, column: 15, scope: !16)
!86 = !DILocation(line: 49, column: 18, scope: !16)
!87 = !DILocation(line: 49, column: 21, scope: !16)
!88 = !DILocation(line: 49, column: 24, scope: !16)
!89 = !DILocation(line: 49, column: 5, scope: !16)
!90 = !DILocation(line: 50, column: 42, scope: !16)
!91 = !DILocation(line: 50, column: 45, scope: !16)
!92 = !DILocation(line: 50, column: 33, scope: !16)
!93 = !DILocation(line: 50, column: 5, scope: !16)
!94 = !DILocation(line: 51, column: 10, scope: !16)
!95 = !DILocation(line: 51, column: 5, scope: !16)
!96 = !DILocation(line: 51, column: 19, scope: !16)
!97 = !DILocation(line: 51, column: 14, scope: !16)
!98 = !DILocation(line: 51, column: 28, scope: !16)
!99 = !DILocation(line: 51, column: 23, scope: !16)
!100 = !DILocation(line: 52, column: 5, scope: !16)
!101 = !DILocation(line: 53, column: 1, scope: !16)
!102 = distinct !DISubprogram(name: "initialize", scope: !17, file: !17, line: 24, type: !103, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !24)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !45, !45, !20}
!105 = !DILocalVariable(name: "a", arg: 1, scope: !102, file: !17, line: 24, type: !45)
!106 = !DILocation(line: 24, column: 29, scope: !102)
!107 = !DILocalVariable(name: "b", arg: 2, scope: !102, file: !17, line: 24, type: !45)
!108 = !DILocation(line: 24, column: 37, scope: !102)
!109 = !DILocalVariable(name: "n", arg: 3, scope: !102, file: !17, line: 24, type: !20)
!110 = !DILocation(line: 24, column: 44, scope: !102)
!111 = !DILocalVariable(name: "i", scope: !112, file: !17, line: 25, type: !20)
!112 = distinct !DILexicalBlock(scope: !102, file: !17, line: 25, column: 5)
!113 = !DILocation(line: 25, column: 14, scope: !112)
!114 = !DILocation(line: 25, column: 10, scope: !112)
!115 = !DILocation(line: 25, column: 21, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !17, line: 25, column: 5)
!117 = !DILocation(line: 25, column: 25, scope: !116)
!118 = !DILocation(line: 25, column: 23, scope: !116)
!119 = !DILocation(line: 25, column: 5, scope: !112)
!120 = !DILocation(line: 25, column: 42, scope: !121)
!121 = distinct !DILexicalBlock(scope: !116, file: !17, line: 25, column: 33)
!122 = !DILocation(line: 25, column: 44, scope: !121)
!123 = !DILocation(line: 25, column: 35, scope: !121)
!124 = !DILocation(line: 25, column: 37, scope: !121)
!125 = !DILocation(line: 25, column: 40, scope: !121)
!126 = !DILocation(line: 25, column: 57, scope: !121)
!127 = !DILocation(line: 25, column: 59, scope: !121)
!128 = !DILocation(line: 25, column: 50, scope: !121)
!129 = !DILocation(line: 25, column: 52, scope: !121)
!130 = !DILocation(line: 25, column: 55, scope: !121)
!131 = !DILocation(line: 25, column: 65, scope: !121)
!132 = !DILocation(line: 25, column: 28, scope: !116)
!133 = !DILocation(line: 25, column: 5, scope: !116)
!134 = distinct !{!134, !119, !135, !136}
!135 = !DILocation(line: 25, column: 65, scope: !112)
!136 = !{!"llvm.loop.mustprogress"}
!137 = !DILocation(line: 26, column: 1, scope: !102)
!138 = distinct !DISubprogram(name: "transform", scope: !17, file: !17, line: 27, type: !139, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !24)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !141, !141, !45, !20}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!143 = !DILocalVariable(name: "a", arg: 1, scope: !138, file: !17, line: 27, type: !141)
!144 = !DILocation(line: 27, column: 43, scope: !138)
!145 = !DILocalVariable(name: "b", arg: 2, scope: !138, file: !17, line: 27, type: !141)
!146 = !DILocation(line: 27, column: 66, scope: !138)
!147 = !DILocalVariable(name: "c", arg: 3, scope: !138, file: !17, line: 27, type: !45)
!148 = !DILocation(line: 27, column: 83, scope: !138)
!149 = !DILocalVariable(name: "n", arg: 4, scope: !138, file: !17, line: 27, type: !20)
!150 = !DILocation(line: 27, column: 90, scope: !138)
!151 = !DILocalVariable(name: "i", scope: !152, file: !17, line: 32, type: !20)
!152 = distinct !DILexicalBlock(scope: !138, file: !17, line: 32, column: 5)
!153 = !DILocation(line: 32, column: 14, scope: !152)
!154 = !DILocation(line: 32, column: 10, scope: !152)
!155 = !DILocation(line: 32, column: 21, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !17, line: 32, column: 5)
!157 = !DILocation(line: 32, column: 25, scope: !156)
!158 = !DILocation(line: 32, column: 23, scope: !156)
!159 = !DILocation(line: 32, column: 5, scope: !152)
!160 = !DILocation(line: 32, column: 53, scope: !156)
!161 = !DILocation(line: 32, column: 55, scope: !156)
!162 = !DILocation(line: 32, column: 58, scope: !156)
!163 = !DILocation(line: 32, column: 68, scope: !156)
!164 = !DILocation(line: 32, column: 70, scope: !156)
!165 = !DILocation(line: 32, column: 66, scope: !156)
!166 = !DILocation(line: 32, column: 40, scope: !156)
!167 = !DILocation(line: 32, column: 33, scope: !156)
!168 = !DILocation(line: 32, column: 35, scope: !156)
!169 = !DILocation(line: 32, column: 38, scope: !156)
!170 = !DILocation(line: 32, column: 28, scope: !156)
!171 = !DILocation(line: 32, column: 5, scope: !156)
!172 = distinct !{!172, !159, !173, !136}
!173 = !DILocation(line: 32, column: 72, scope: !152)
!174 = !DILocation(line: 34, column: 1, scope: !138)
!175 = distinct !DISubprogram(name: "checksum", scope: !17, file: !17, line: 35, type: !176, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !24)
!176 = !DISubroutineType(types: !177)
!177 = !{!178, !141, !20}
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !179, line: 27, baseType: !180)
!179 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !181, line: 44, baseType: !182)
!181 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!182 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!183 = !DILocalVariable(name: "c", arg: 1, scope: !175, file: !17, line: 35, type: !141)
!184 = !DILocation(line: 35, column: 36, scope: !175)
!185 = !DILocalVariable(name: "n", arg: 2, scope: !175, file: !17, line: 35, type: !20)
!186 = !DILocation(line: 35, column: 43, scope: !175)
!187 = !DILocalVariable(name: "sum", scope: !175, file: !17, line: 36, type: !178)
!188 = !DILocation(line: 36, column: 13, scope: !175)
!189 = !DILocalVariable(name: "i", scope: !190, file: !17, line: 37, type: !20)
!190 = distinct !DILexicalBlock(scope: !175, file: !17, line: 37, column: 5)
!191 = !DILocation(line: 37, column: 14, scope: !190)
!192 = !DILocation(line: 37, column: 10, scope: !190)
!193 = !DILocation(line: 37, column: 21, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !17, line: 37, column: 5)
!195 = !DILocation(line: 37, column: 25, scope: !194)
!196 = !DILocation(line: 37, column: 23, scope: !194)
!197 = !DILocation(line: 37, column: 5, scope: !190)
!198 = !DILocation(line: 37, column: 40, scope: !194)
!199 = !DILocation(line: 37, column: 42, scope: !194)
!200 = !DILocation(line: 37, column: 37, scope: !194)
!201 = !DILocation(line: 37, column: 33, scope: !194)
!202 = !DILocation(line: 37, column: 28, scope: !194)
!203 = !DILocation(line: 37, column: 5, scope: !194)
!204 = distinct !{!204, !197, !205, !136}
!205 = !DILocation(line: 37, column: 43, scope: !190)
!206 = !DILocation(line: 38, column: 12, scope: !175)
!207 = !DILocation(line: 38, column: 5, scope: !175)
!208 = distinct !DISubprogram(name: "adjust_value", scope: !17, file: !17, line: 20, type: !209, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !24)
!209 = !DISubroutineType(types: !210)
!210 = !{!20, !20}
!211 = !DILocalVariable(name: "value", arg: 1, scope: !208, file: !17, line: 20, type: !20)
!212 = !DILocation(line: 20, column: 44, scope: !208)
!213 = !DILocation(line: 21, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !208, file: !17, line: 21, column: 9)
!215 = !DILocation(line: 21, column: 15, scope: !214)
!216 = !DILocation(line: 21, column: 9, scope: !208)
!217 = !DILocation(line: 21, column: 35, scope: !214)
!218 = !DILocation(line: 21, column: 41, scope: !214)
!219 = !DILocation(line: 21, column: 28, scope: !214)
!220 = !DILocation(line: 22, column: 12, scope: !208)
!221 = !DILocation(line: 22, column: 5, scope: !208)
!222 = !DILocation(line: 23, column: 1, scope: !208)
