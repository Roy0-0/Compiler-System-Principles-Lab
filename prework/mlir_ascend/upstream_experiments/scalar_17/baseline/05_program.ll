; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define i32 @main() !dbg !3 {
  %1 = call i8* @malloc(i64 ptrtoint (i32* getelementptr (i32, i32* null, i64 17) to i64)), !dbg !7
  %2 = bitcast i8* %1 to i32*, !dbg !9
  %3 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } undef, i32* %2, 0, !dbg !10
  %4 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %3, i32* %2, 1, !dbg !11
  %5 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %4, i64 0, 2, !dbg !12
  %6 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %5, i64 17, 3, 0, !dbg !13
  %7 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %6, i64 1, 4, 0, !dbg !14
  %8 = call i8* @malloc(i64 ptrtoint (i32* getelementptr (i32, i32* null, i64 17) to i64)), !dbg !15
  %9 = bitcast i8* %8 to i32*, !dbg !16
  %10 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } undef, i32* %9, 0, !dbg !17
  %11 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %10, i32* %9, 1, !dbg !18
  %12 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %11, i64 0, 2, !dbg !19
  %13 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %12, i64 17, 3, 0, !dbg !20
  %14 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %13, i64 1, 4, 0, !dbg !21
  %15 = call i8* @malloc(i64 ptrtoint (i32* getelementptr (i32, i32* null, i64 17) to i64)), !dbg !22
  %16 = bitcast i8* %15 to i32*, !dbg !23
  %17 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } undef, i32* %16, 0, !dbg !24
  %18 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %17, i32* %16, 1, !dbg !25
  %19 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %18, i64 0, 2, !dbg !26
  %20 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %19, i64 17, 3, 0, !dbg !27
  %21 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %20, i64 1, 4, 0, !dbg !28
  br label %22, !dbg !29

22:                                               ; preds = %25, %0
  %23 = phi i64 [ %30, %25 ], [ 0, %0 ]
  %24 = icmp slt i64 %23, 17, !dbg !30
  br i1 %24, label %25, label %31, !dbg !31

25:                                               ; preds = %22
  %26 = trunc i64 %23 to i32, !dbg !32
  %27 = mul i32 %26, 2, !dbg !33
  %28 = getelementptr i32, i32* %2, i64 %23, !dbg !34
  store i32 %26, i32* %28, align 4, !dbg !35
  %29 = getelementptr i32, i32* %9, i64 %23, !dbg !36
  store i32 %27, i32* %29, align 4, !dbg !37
  %30 = add i64 %23, 1, !dbg !38
  br label %22, !dbg !39

31:                                               ; preds = %22
  br label %32, !dbg !40

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %42, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 17, !dbg !41
  br i1 %34, label %35, label %43, !dbg !42

35:                                               ; preds = %32
  %36 = getelementptr i32, i32* %2, i64 %33, !dbg !43
  %37 = load i32, i32* %36, align 4, !dbg !44
  %38 = getelementptr i32, i32* %9, i64 %33, !dbg !45
  %39 = load i32, i32* %38, align 4, !dbg !46
  %40 = add i32 %37, %39, !dbg !47
  %41 = getelementptr i32, i32* %16, i64 %33, !dbg !48
  store i32 %40, i32* %41, align 4, !dbg !49
  %42 = add i64 %33, 1, !dbg !50
  br label %32, !dbg !51

43:                                               ; preds = %32
  br label %44, !dbg !52

44:                                               ; preds = %48, %43
  %45 = phi i64 [ %52, %48 ], [ 0, %43 ]
  %46 = phi i32 [ %51, %48 ], [ 0, %43 ]
  %47 = icmp slt i64 %45, 17, !dbg !53
  br i1 %47, label %48, label %53, !dbg !54

48:                                               ; preds = %44
  %49 = getelementptr i32, i32* %16, i64 %45, !dbg !55
  %50 = load i32, i32* %49, align 4, !dbg !56
  %51 = add i32 %46, %50, !dbg !57
  %52 = add i64 %45, 1, !dbg !58
  br label %44, !dbg !59

53:                                               ; preds = %44
  %54 = icmp eq i32 %46, 408, !dbg !60
  %55 = select i1 %54, i32 0, i32 1, !dbg !61
  %56 = bitcast i32* %2 to i8*, !dbg !62
  call void @free(i8* %56), !dbg !63
  %57 = bitcast i32* %9 to i8*, !dbg !64
  call void @free(i8* %57), !dbg !65
  %58 = bitcast i32* %16 to i8*, !dbg !66
  call void @free(i8* %58), !dbg !67
  ret i32 %55, !dbg !68
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "prework/mlir_ascend/upstream_experiments/scalar_17/baseline/04_llvm.mlir", directory: "/home/roy/compiler-lab")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 17, column: 11, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 18, column: 11, scope: !8)
!10 = !DILocation(line: 20, column: 11, scope: !8)
!11 = !DILocation(line: 21, column: 11, scope: !8)
!12 = !DILocation(line: 23, column: 11, scope: !8)
!13 = !DILocation(line: 24, column: 11, scope: !8)
!14 = !DILocation(line: 25, column: 11, scope: !8)
!15 = !DILocation(line: 31, column: 11, scope: !8)
!16 = !DILocation(line: 32, column: 11, scope: !8)
!17 = !DILocation(line: 34, column: 11, scope: !8)
!18 = !DILocation(line: 35, column: 11, scope: !8)
!19 = !DILocation(line: 37, column: 11, scope: !8)
!20 = !DILocation(line: 38, column: 11, scope: !8)
!21 = !DILocation(line: 39, column: 11, scope: !8)
!22 = !DILocation(line: 45, column: 11, scope: !8)
!23 = !DILocation(line: 46, column: 11, scope: !8)
!24 = !DILocation(line: 48, column: 11, scope: !8)
!25 = !DILocation(line: 49, column: 11, scope: !8)
!26 = !DILocation(line: 51, column: 11, scope: !8)
!27 = !DILocation(line: 52, column: 11, scope: !8)
!28 = !DILocation(line: 53, column: 11, scope: !8)
!29 = !DILocation(line: 54, column: 5, scope: !8)
!30 = !DILocation(line: 56, column: 11, scope: !8)
!31 = !DILocation(line: 57, column: 5, scope: !8)
!32 = !DILocation(line: 59, column: 11, scope: !8)
!33 = !DILocation(line: 60, column: 11, scope: !8)
!34 = !DILocation(line: 61, column: 11, scope: !8)
!35 = !DILocation(line: 62, column: 5, scope: !8)
!36 = !DILocation(line: 63, column: 11, scope: !8)
!37 = !DILocation(line: 64, column: 5, scope: !8)
!38 = !DILocation(line: 65, column: 11, scope: !8)
!39 = !DILocation(line: 66, column: 5, scope: !8)
!40 = !DILocation(line: 68, column: 5, scope: !8)
!41 = !DILocation(line: 70, column: 11, scope: !8)
!42 = !DILocation(line: 71, column: 5, scope: !8)
!43 = !DILocation(line: 73, column: 11, scope: !8)
!44 = !DILocation(line: 74, column: 11, scope: !8)
!45 = !DILocation(line: 75, column: 11, scope: !8)
!46 = !DILocation(line: 76, column: 11, scope: !8)
!47 = !DILocation(line: 77, column: 11, scope: !8)
!48 = !DILocation(line: 78, column: 11, scope: !8)
!49 = !DILocation(line: 79, column: 5, scope: !8)
!50 = !DILocation(line: 80, column: 11, scope: !8)
!51 = !DILocation(line: 81, column: 5, scope: !8)
!52 = !DILocation(line: 83, column: 5, scope: !8)
!53 = !DILocation(line: 85, column: 11, scope: !8)
!54 = !DILocation(line: 86, column: 5, scope: !8)
!55 = !DILocation(line: 88, column: 11, scope: !8)
!56 = !DILocation(line: 89, column: 11, scope: !8)
!57 = !DILocation(line: 90, column: 11, scope: !8)
!58 = !DILocation(line: 91, column: 11, scope: !8)
!59 = !DILocation(line: 92, column: 5, scope: !8)
!60 = !DILocation(line: 94, column: 11, scope: !8)
!61 = !DILocation(line: 95, column: 11, scope: !8)
!62 = !DILocation(line: 96, column: 11, scope: !8)
!63 = !DILocation(line: 97, column: 5, scope: !8)
!64 = !DILocation(line: 98, column: 11, scope: !8)
!65 = !DILocation(line: 99, column: 5, scope: !8)
!66 = !DILocation(line: 100, column: 11, scope: !8)
!67 = !DILocation(line: 101, column: 5, scope: !8)
!68 = !DILocation(line: 102, column: 5, scope: !8)
