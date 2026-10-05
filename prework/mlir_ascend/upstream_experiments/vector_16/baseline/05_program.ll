; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define i32 @main() !dbg !3 {
  %1 = call i8* @malloc(i64 ptrtoint (i32* getelementptr (i32, i32* null, i64 16) to i64)), !dbg !7
  %2 = bitcast i8* %1 to i32*, !dbg !9
  %3 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } undef, i32* %2, 0, !dbg !10
  %4 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %3, i32* %2, 1, !dbg !11
  %5 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %4, i64 0, 2, !dbg !12
  %6 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %5, i64 16, 3, 0, !dbg !13
  %7 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %6, i64 1, 4, 0, !dbg !14
  %8 = call i8* @malloc(i64 ptrtoint (i32* getelementptr (i32, i32* null, i64 16) to i64)), !dbg !15
  %9 = bitcast i8* %8 to i32*, !dbg !16
  %10 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } undef, i32* %9, 0, !dbg !17
  %11 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %10, i32* %9, 1, !dbg !18
  %12 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %11, i64 0, 2, !dbg !19
  %13 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %12, i64 16, 3, 0, !dbg !20
  %14 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %13, i64 1, 4, 0, !dbg !21
  %15 = call i8* @malloc(i64 ptrtoint (i32* getelementptr (i32, i32* null, i64 16) to i64)), !dbg !22
  %16 = bitcast i8* %15 to i32*, !dbg !23
  %17 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } undef, i32* %16, 0, !dbg !24
  %18 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %17, i32* %16, 1, !dbg !25
  %19 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %18, i64 0, 2, !dbg !26
  %20 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %19, i64 16, 3, 0, !dbg !27
  %21 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %20, i64 1, 4, 0, !dbg !28
  br label %22, !dbg !29

22:                                               ; preds = %25, %0
  %23 = phi i64 [ %30, %25 ], [ 0, %0 ]
  %24 = icmp slt i64 %23, 16, !dbg !30
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
  %33 = phi i64 [ %48, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 16, !dbg !41
  br i1 %34, label %35, label %49, !dbg !42

35:                                               ; preds = %32
  %36 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %7, 1, !dbg !43
  %37 = getelementptr i32, i32* %36, i64 %33, !dbg !44
  %38 = bitcast i32* %37 to <4 x i32>*, !dbg !45
  %39 = load <4 x i32>, <4 x i32>* %38, align 4, !dbg !46
  %40 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %14, 1, !dbg !47
  %41 = getelementptr i32, i32* %40, i64 %33, !dbg !48
  %42 = bitcast i32* %41 to <4 x i32>*, !dbg !49
  %43 = load <4 x i32>, <4 x i32>* %42, align 4, !dbg !50
  %44 = add <4 x i32> %39, %43, !dbg !51
  %45 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %21, 1, !dbg !52
  %46 = getelementptr i32, i32* %45, i64 %33, !dbg !53
  %47 = bitcast i32* %46 to <4 x i32>*, !dbg !54
  store <4 x i32> %44, <4 x i32>* %47, align 4, !dbg !55
  %48 = add i64 %33, 4, !dbg !56
  br label %32, !dbg !57

49:                                               ; preds = %32
  br label %50, !dbg !58

50:                                               ; preds = %53, %49
  %51 = phi i64 [ %60, %53 ], [ 16, %49 ]
  %52 = icmp slt i64 %51, 16, !dbg !59
  br i1 %52, label %53, label %61, !dbg !60

53:                                               ; preds = %50
  %54 = getelementptr i32, i32* %2, i64 %51, !dbg !61
  %55 = load i32, i32* %54, align 4, !dbg !62
  %56 = getelementptr i32, i32* %9, i64 %51, !dbg !63
  %57 = load i32, i32* %56, align 4, !dbg !64
  %58 = add i32 %55, %57, !dbg !65
  %59 = getelementptr i32, i32* %16, i64 %51, !dbg !66
  store i32 %58, i32* %59, align 4, !dbg !67
  %60 = add i64 %51, 1, !dbg !68
  br label %50, !dbg !69

61:                                               ; preds = %50
  br label %62, !dbg !70

62:                                               ; preds = %66, %61
  %63 = phi i64 [ %70, %66 ], [ 0, %61 ]
  %64 = phi i32 [ %69, %66 ], [ 0, %61 ]
  %65 = icmp slt i64 %63, 16, !dbg !71
  br i1 %65, label %66, label %71, !dbg !72

66:                                               ; preds = %62
  %67 = getelementptr i32, i32* %16, i64 %63, !dbg !73
  %68 = load i32, i32* %67, align 4, !dbg !74
  %69 = add i32 %64, %68, !dbg !75
  %70 = add i64 %63, 1, !dbg !76
  br label %62, !dbg !77

71:                                               ; preds = %62
  %72 = icmp eq i32 %64, 360, !dbg !78
  %73 = select i1 %72, i32 0, i32 1, !dbg !79
  %74 = bitcast i32* %2 to i8*, !dbg !80
  call void @free(i8* %74), !dbg !81
  %75 = bitcast i32* %9 to i8*, !dbg !82
  call void @free(i8* %75), !dbg !83
  %76 = bitcast i32* %16 to i8*, !dbg !84
  call void @free(i8* %76), !dbg !85
  ret i32 %73, !dbg !86
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "prework/mlir_ascend/upstream_experiments/vector_16/baseline/04_llvm.mlir", directory: "/home/roy/compiler-lab")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 18, column: 11, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 19, column: 11, scope: !8)
!10 = !DILocation(line: 21, column: 11, scope: !8)
!11 = !DILocation(line: 22, column: 11, scope: !8)
!12 = !DILocation(line: 24, column: 11, scope: !8)
!13 = !DILocation(line: 25, column: 11, scope: !8)
!14 = !DILocation(line: 26, column: 11, scope: !8)
!15 = !DILocation(line: 32, column: 11, scope: !8)
!16 = !DILocation(line: 33, column: 11, scope: !8)
!17 = !DILocation(line: 35, column: 11, scope: !8)
!18 = !DILocation(line: 36, column: 11, scope: !8)
!19 = !DILocation(line: 38, column: 11, scope: !8)
!20 = !DILocation(line: 39, column: 11, scope: !8)
!21 = !DILocation(line: 40, column: 11, scope: !8)
!22 = !DILocation(line: 46, column: 11, scope: !8)
!23 = !DILocation(line: 47, column: 11, scope: !8)
!24 = !DILocation(line: 49, column: 11, scope: !8)
!25 = !DILocation(line: 50, column: 11, scope: !8)
!26 = !DILocation(line: 52, column: 11, scope: !8)
!27 = !DILocation(line: 53, column: 11, scope: !8)
!28 = !DILocation(line: 54, column: 11, scope: !8)
!29 = !DILocation(line: 55, column: 5, scope: !8)
!30 = !DILocation(line: 57, column: 11, scope: !8)
!31 = !DILocation(line: 58, column: 5, scope: !8)
!32 = !DILocation(line: 60, column: 11, scope: !8)
!33 = !DILocation(line: 61, column: 11, scope: !8)
!34 = !DILocation(line: 62, column: 11, scope: !8)
!35 = !DILocation(line: 63, column: 5, scope: !8)
!36 = !DILocation(line: 64, column: 11, scope: !8)
!37 = !DILocation(line: 65, column: 5, scope: !8)
!38 = !DILocation(line: 66, column: 11, scope: !8)
!39 = !DILocation(line: 67, column: 5, scope: !8)
!40 = !DILocation(line: 69, column: 5, scope: !8)
!41 = !DILocation(line: 71, column: 11, scope: !8)
!42 = !DILocation(line: 72, column: 5, scope: !8)
!43 = !DILocation(line: 74, column: 11, scope: !8)
!44 = !DILocation(line: 75, column: 11, scope: !8)
!45 = !DILocation(line: 76, column: 11, scope: !8)
!46 = !DILocation(line: 77, column: 11, scope: !8)
!47 = !DILocation(line: 78, column: 11, scope: !8)
!48 = !DILocation(line: 79, column: 11, scope: !8)
!49 = !DILocation(line: 80, column: 11, scope: !8)
!50 = !DILocation(line: 81, column: 11, scope: !8)
!51 = !DILocation(line: 82, column: 11, scope: !8)
!52 = !DILocation(line: 83, column: 11, scope: !8)
!53 = !DILocation(line: 84, column: 11, scope: !8)
!54 = !DILocation(line: 85, column: 11, scope: !8)
!55 = !DILocation(line: 86, column: 5, scope: !8)
!56 = !DILocation(line: 87, column: 11, scope: !8)
!57 = !DILocation(line: 88, column: 5, scope: !8)
!58 = !DILocation(line: 90, column: 5, scope: !8)
!59 = !DILocation(line: 92, column: 11, scope: !8)
!60 = !DILocation(line: 93, column: 5, scope: !8)
!61 = !DILocation(line: 95, column: 11, scope: !8)
!62 = !DILocation(line: 96, column: 11, scope: !8)
!63 = !DILocation(line: 97, column: 11, scope: !8)
!64 = !DILocation(line: 98, column: 11, scope: !8)
!65 = !DILocation(line: 99, column: 11, scope: !8)
!66 = !DILocation(line: 100, column: 11, scope: !8)
!67 = !DILocation(line: 101, column: 5, scope: !8)
!68 = !DILocation(line: 102, column: 11, scope: !8)
!69 = !DILocation(line: 103, column: 5, scope: !8)
!70 = !DILocation(line: 105, column: 5, scope: !8)
!71 = !DILocation(line: 107, column: 11, scope: !8)
!72 = !DILocation(line: 108, column: 5, scope: !8)
!73 = !DILocation(line: 110, column: 11, scope: !8)
!74 = !DILocation(line: 111, column: 11, scope: !8)
!75 = !DILocation(line: 112, column: 11, scope: !8)
!76 = !DILocation(line: 113, column: 11, scope: !8)
!77 = !DILocation(line: 114, column: 5, scope: !8)
!78 = !DILocation(line: 116, column: 11, scope: !8)
!79 = !DILocation(line: 117, column: 11, scope: !8)
!80 = !DILocation(line: 118, column: 11, scope: !8)
!81 = !DILocation(line: 119, column: 5, scope: !8)
!82 = !DILocation(line: 120, column: 11, scope: !8)
!83 = !DILocation(line: 121, column: 5, scope: !8)
!84 = !DILocation(line: 122, column: 11, scope: !8)
!85 = !DILocation(line: 123, column: 5, scope: !8)
!86 = !DILocation(line: 124, column: 5, scope: !8)
