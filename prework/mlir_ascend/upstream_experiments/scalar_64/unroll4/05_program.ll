; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare i8* @malloc(i64)

declare void @free(i8*)

define i32 @main() !dbg !3 {
  %1 = call i8* @malloc(i64 ptrtoint (i32* getelementptr (i32, i32* null, i64 64) to i64)), !dbg !7
  %2 = bitcast i8* %1 to i32*, !dbg !9
  %3 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } undef, i32* %2, 0, !dbg !10
  %4 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %3, i32* %2, 1, !dbg !11
  %5 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %4, i64 0, 2, !dbg !12
  %6 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %5, i64 64, 3, 0, !dbg !13
  %7 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %6, i64 1, 4, 0, !dbg !14
  %8 = call i8* @malloc(i64 ptrtoint (i32* getelementptr (i32, i32* null, i64 64) to i64)), !dbg !15
  %9 = bitcast i8* %8 to i32*, !dbg !16
  %10 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } undef, i32* %9, 0, !dbg !17
  %11 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %10, i32* %9, 1, !dbg !18
  %12 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %11, i64 0, 2, !dbg !19
  %13 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %12, i64 64, 3, 0, !dbg !20
  %14 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %13, i64 1, 4, 0, !dbg !21
  %15 = call i8* @malloc(i64 ptrtoint (i32* getelementptr (i32, i32* null, i64 64) to i64)), !dbg !22
  %16 = bitcast i8* %15 to i32*, !dbg !23
  %17 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } undef, i32* %16, 0, !dbg !24
  %18 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %17, i32* %16, 1, !dbg !25
  %19 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %18, i64 0, 2, !dbg !26
  %20 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %19, i64 64, 3, 0, !dbg !27
  %21 = insertvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %20, i64 1, 4, 0, !dbg !28
  br label %22, !dbg !29

22:                                               ; preds = %25, %0
  %23 = phi i64 [ %51, %25 ], [ 0, %0 ]
  %24 = icmp slt i64 %23, 64, !dbg !30
  br i1 %24, label %25, label %52, !dbg !31

25:                                               ; preds = %22
  %26 = trunc i64 %23 to i32, !dbg !32
  %27 = mul i32 %26, 2, !dbg !33
  %28 = getelementptr i32, i32* %2, i64 %23, !dbg !34
  store i32 %26, i32* %28, align 4, !dbg !35
  %29 = getelementptr i32, i32* %9, i64 %23, !dbg !36
  store i32 %27, i32* %29, align 4, !dbg !37
  %30 = add i64 %23, 1, !dbg !38
  %31 = trunc i64 %30 to i32, !dbg !39
  %32 = mul i32 %31, 2, !dbg !40
  %33 = add i64 %23, 1, !dbg !41
  %34 = getelementptr i32, i32* %2, i64 %33, !dbg !42
  store i32 %31, i32* %34, align 4, !dbg !43
  %35 = add i64 %23, 1, !dbg !44
  %36 = getelementptr i32, i32* %9, i64 %35, !dbg !45
  store i32 %32, i32* %36, align 4, !dbg !46
  %37 = add i64 %23, 2, !dbg !47
  %38 = trunc i64 %37 to i32, !dbg !48
  %39 = mul i32 %38, 2, !dbg !49
  %40 = add i64 %23, 2, !dbg !50
  %41 = getelementptr i32, i32* %2, i64 %40, !dbg !51
  store i32 %38, i32* %41, align 4, !dbg !52
  %42 = add i64 %23, 2, !dbg !53
  %43 = getelementptr i32, i32* %9, i64 %42, !dbg !54
  store i32 %39, i32* %43, align 4, !dbg !55
  %44 = add i64 %23, 3, !dbg !56
  %45 = trunc i64 %44 to i32, !dbg !57
  %46 = mul i32 %45, 2, !dbg !58
  %47 = add i64 %23, 3, !dbg !59
  %48 = getelementptr i32, i32* %2, i64 %47, !dbg !60
  store i32 %45, i32* %48, align 4, !dbg !61
  %49 = add i64 %23, 3, !dbg !62
  %50 = getelementptr i32, i32* %9, i64 %49, !dbg !63
  store i32 %46, i32* %50, align 4, !dbg !64
  %51 = add i64 %23, 4, !dbg !65
  br label %22, !dbg !66

52:                                               ; preds = %22
  br label %53, !dbg !67

53:                                               ; preds = %56, %52
  %54 = phi i64 [ %90, %56 ], [ 0, %52 ]
  %55 = icmp slt i64 %54, 64, !dbg !68
  br i1 %55, label %56, label %91, !dbg !69

56:                                               ; preds = %53
  %57 = getelementptr i32, i32* %2, i64 %54, !dbg !70
  %58 = load i32, i32* %57, align 4, !dbg !71
  %59 = getelementptr i32, i32* %9, i64 %54, !dbg !72
  %60 = load i32, i32* %59, align 4, !dbg !73
  %61 = add i32 %58, %60, !dbg !74
  %62 = getelementptr i32, i32* %16, i64 %54, !dbg !75
  store i32 %61, i32* %62, align 4, !dbg !76
  %63 = add i64 %54, 1, !dbg !77
  %64 = getelementptr i32, i32* %2, i64 %63, !dbg !78
  %65 = load i32, i32* %64, align 4, !dbg !79
  %66 = add i64 %54, 1, !dbg !80
  %67 = getelementptr i32, i32* %9, i64 %66, !dbg !81
  %68 = load i32, i32* %67, align 4, !dbg !82
  %69 = add i32 %65, %68, !dbg !83
  %70 = add i64 %54, 1, !dbg !84
  %71 = getelementptr i32, i32* %16, i64 %70, !dbg !85
  store i32 %69, i32* %71, align 4, !dbg !86
  %72 = add i64 %54, 2, !dbg !87
  %73 = getelementptr i32, i32* %2, i64 %72, !dbg !88
  %74 = load i32, i32* %73, align 4, !dbg !89
  %75 = add i64 %54, 2, !dbg !90
  %76 = getelementptr i32, i32* %9, i64 %75, !dbg !91
  %77 = load i32, i32* %76, align 4, !dbg !92
  %78 = add i32 %74, %77, !dbg !93
  %79 = add i64 %54, 2, !dbg !94
  %80 = getelementptr i32, i32* %16, i64 %79, !dbg !95
  store i32 %78, i32* %80, align 4, !dbg !96
  %81 = add i64 %54, 3, !dbg !97
  %82 = getelementptr i32, i32* %2, i64 %81, !dbg !98
  %83 = load i32, i32* %82, align 4, !dbg !99
  %84 = add i64 %54, 3, !dbg !100
  %85 = getelementptr i32, i32* %9, i64 %84, !dbg !101
  %86 = load i32, i32* %85, align 4, !dbg !102
  %87 = add i32 %83, %86, !dbg !103
  %88 = add i64 %54, 3, !dbg !104
  %89 = getelementptr i32, i32* %16, i64 %88, !dbg !105
  store i32 %87, i32* %89, align 4, !dbg !106
  %90 = add i64 %54, 4, !dbg !107
  br label %53, !dbg !108

91:                                               ; preds = %53
  br label %92, !dbg !109

92:                                               ; preds = %96, %91
  %93 = phi i64 [ %112, %96 ], [ 0, %91 ]
  %94 = phi i32 [ %111, %96 ], [ 0, %91 ]
  %95 = icmp slt i64 %93, 64, !dbg !110
  br i1 %95, label %96, label %113, !dbg !111

96:                                               ; preds = %92
  %97 = getelementptr i32, i32* %16, i64 %93, !dbg !112
  %98 = load i32, i32* %97, align 4, !dbg !113
  %99 = add i32 %94, %98, !dbg !114
  %100 = add i64 %93, 1, !dbg !115
  %101 = getelementptr i32, i32* %16, i64 %100, !dbg !116
  %102 = load i32, i32* %101, align 4, !dbg !117
  %103 = add i32 %99, %102, !dbg !118
  %104 = add i64 %93, 2, !dbg !119
  %105 = getelementptr i32, i32* %16, i64 %104, !dbg !120
  %106 = load i32, i32* %105, align 4, !dbg !121
  %107 = add i32 %103, %106, !dbg !122
  %108 = add i64 %93, 3, !dbg !123
  %109 = getelementptr i32, i32* %16, i64 %108, !dbg !124
  %110 = load i32, i32* %109, align 4, !dbg !125
  %111 = add i32 %107, %110, !dbg !126
  %112 = add i64 %93, 4, !dbg !127
  br label %92, !dbg !128

113:                                              ; preds = %92
  %114 = icmp ne i32 %94, 6048, !dbg !129
  %115 = zext i1 %114 to i32, !dbg !130
  %116 = bitcast i32* %2 to i8*, !dbg !131
  call void @free(i8* %116), !dbg !132
  %117 = bitcast i32* %9 to i8*, !dbg !133
  call void @free(i8* %117), !dbg !134
  %118 = bitcast i32* %16 to i8*, !dbg !135
  call void @free(i8* %118), !dbg !136
  ret i32 %115, !dbg !137
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "prework/mlir_ascend/upstream_experiments/scalar_64/unroll4/04_llvm.mlir", directory: "/home/roy/compiler-lab")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 19, column: 11, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 20, column: 11, scope: !8)
!10 = !DILocation(line: 22, column: 11, scope: !8)
!11 = !DILocation(line: 23, column: 11, scope: !8)
!12 = !DILocation(line: 25, column: 11, scope: !8)
!13 = !DILocation(line: 26, column: 11, scope: !8)
!14 = !DILocation(line: 27, column: 11, scope: !8)
!15 = !DILocation(line: 33, column: 11, scope: !8)
!16 = !DILocation(line: 34, column: 11, scope: !8)
!17 = !DILocation(line: 36, column: 11, scope: !8)
!18 = !DILocation(line: 37, column: 11, scope: !8)
!19 = !DILocation(line: 39, column: 11, scope: !8)
!20 = !DILocation(line: 40, column: 11, scope: !8)
!21 = !DILocation(line: 41, column: 11, scope: !8)
!22 = !DILocation(line: 47, column: 11, scope: !8)
!23 = !DILocation(line: 48, column: 11, scope: !8)
!24 = !DILocation(line: 50, column: 11, scope: !8)
!25 = !DILocation(line: 51, column: 11, scope: !8)
!26 = !DILocation(line: 53, column: 11, scope: !8)
!27 = !DILocation(line: 54, column: 11, scope: !8)
!28 = !DILocation(line: 55, column: 11, scope: !8)
!29 = !DILocation(line: 56, column: 5, scope: !8)
!30 = !DILocation(line: 58, column: 11, scope: !8)
!31 = !DILocation(line: 59, column: 5, scope: !8)
!32 = !DILocation(line: 61, column: 11, scope: !8)
!33 = !DILocation(line: 62, column: 11, scope: !8)
!34 = !DILocation(line: 63, column: 11, scope: !8)
!35 = !DILocation(line: 64, column: 5, scope: !8)
!36 = !DILocation(line: 65, column: 11, scope: !8)
!37 = !DILocation(line: 66, column: 5, scope: !8)
!38 = !DILocation(line: 67, column: 11, scope: !8)
!39 = !DILocation(line: 68, column: 11, scope: !8)
!40 = !DILocation(line: 69, column: 11, scope: !8)
!41 = !DILocation(line: 70, column: 11, scope: !8)
!42 = !DILocation(line: 71, column: 11, scope: !8)
!43 = !DILocation(line: 72, column: 5, scope: !8)
!44 = !DILocation(line: 73, column: 11, scope: !8)
!45 = !DILocation(line: 74, column: 11, scope: !8)
!46 = !DILocation(line: 75, column: 5, scope: !8)
!47 = !DILocation(line: 76, column: 11, scope: !8)
!48 = !DILocation(line: 77, column: 11, scope: !8)
!49 = !DILocation(line: 78, column: 11, scope: !8)
!50 = !DILocation(line: 79, column: 11, scope: !8)
!51 = !DILocation(line: 80, column: 11, scope: !8)
!52 = !DILocation(line: 81, column: 5, scope: !8)
!53 = !DILocation(line: 82, column: 11, scope: !8)
!54 = !DILocation(line: 83, column: 11, scope: !8)
!55 = !DILocation(line: 84, column: 5, scope: !8)
!56 = !DILocation(line: 85, column: 11, scope: !8)
!57 = !DILocation(line: 86, column: 11, scope: !8)
!58 = !DILocation(line: 87, column: 11, scope: !8)
!59 = !DILocation(line: 88, column: 11, scope: !8)
!60 = !DILocation(line: 89, column: 11, scope: !8)
!61 = !DILocation(line: 90, column: 5, scope: !8)
!62 = !DILocation(line: 91, column: 11, scope: !8)
!63 = !DILocation(line: 92, column: 11, scope: !8)
!64 = !DILocation(line: 93, column: 5, scope: !8)
!65 = !DILocation(line: 94, column: 11, scope: !8)
!66 = !DILocation(line: 95, column: 5, scope: !8)
!67 = !DILocation(line: 97, column: 5, scope: !8)
!68 = !DILocation(line: 99, column: 11, scope: !8)
!69 = !DILocation(line: 100, column: 5, scope: !8)
!70 = !DILocation(line: 102, column: 11, scope: !8)
!71 = !DILocation(line: 103, column: 11, scope: !8)
!72 = !DILocation(line: 104, column: 11, scope: !8)
!73 = !DILocation(line: 105, column: 11, scope: !8)
!74 = !DILocation(line: 106, column: 11, scope: !8)
!75 = !DILocation(line: 107, column: 11, scope: !8)
!76 = !DILocation(line: 108, column: 5, scope: !8)
!77 = !DILocation(line: 109, column: 11, scope: !8)
!78 = !DILocation(line: 110, column: 11, scope: !8)
!79 = !DILocation(line: 111, column: 11, scope: !8)
!80 = !DILocation(line: 112, column: 11, scope: !8)
!81 = !DILocation(line: 113, column: 11, scope: !8)
!82 = !DILocation(line: 114, column: 11, scope: !8)
!83 = !DILocation(line: 115, column: 11, scope: !8)
!84 = !DILocation(line: 116, column: 11, scope: !8)
!85 = !DILocation(line: 117, column: 11, scope: !8)
!86 = !DILocation(line: 118, column: 5, scope: !8)
!87 = !DILocation(line: 119, column: 11, scope: !8)
!88 = !DILocation(line: 120, column: 11, scope: !8)
!89 = !DILocation(line: 121, column: 11, scope: !8)
!90 = !DILocation(line: 122, column: 11, scope: !8)
!91 = !DILocation(line: 123, column: 12, scope: !8)
!92 = !DILocation(line: 124, column: 12, scope: !8)
!93 = !DILocation(line: 125, column: 12, scope: !8)
!94 = !DILocation(line: 126, column: 12, scope: !8)
!95 = !DILocation(line: 127, column: 12, scope: !8)
!96 = !DILocation(line: 128, column: 5, scope: !8)
!97 = !DILocation(line: 129, column: 12, scope: !8)
!98 = !DILocation(line: 130, column: 12, scope: !8)
!99 = !DILocation(line: 131, column: 12, scope: !8)
!100 = !DILocation(line: 132, column: 12, scope: !8)
!101 = !DILocation(line: 133, column: 12, scope: !8)
!102 = !DILocation(line: 134, column: 12, scope: !8)
!103 = !DILocation(line: 135, column: 12, scope: !8)
!104 = !DILocation(line: 136, column: 12, scope: !8)
!105 = !DILocation(line: 137, column: 12, scope: !8)
!106 = !DILocation(line: 138, column: 5, scope: !8)
!107 = !DILocation(line: 139, column: 12, scope: !8)
!108 = !DILocation(line: 140, column: 5, scope: !8)
!109 = !DILocation(line: 142, column: 5, scope: !8)
!110 = !DILocation(line: 144, column: 12, scope: !8)
!111 = !DILocation(line: 145, column: 5, scope: !8)
!112 = !DILocation(line: 147, column: 12, scope: !8)
!113 = !DILocation(line: 148, column: 12, scope: !8)
!114 = !DILocation(line: 149, column: 12, scope: !8)
!115 = !DILocation(line: 150, column: 12, scope: !8)
!116 = !DILocation(line: 151, column: 12, scope: !8)
!117 = !DILocation(line: 152, column: 12, scope: !8)
!118 = !DILocation(line: 153, column: 12, scope: !8)
!119 = !DILocation(line: 154, column: 12, scope: !8)
!120 = !DILocation(line: 155, column: 12, scope: !8)
!121 = !DILocation(line: 156, column: 12, scope: !8)
!122 = !DILocation(line: 157, column: 12, scope: !8)
!123 = !DILocation(line: 158, column: 12, scope: !8)
!124 = !DILocation(line: 159, column: 12, scope: !8)
!125 = !DILocation(line: 160, column: 12, scope: !8)
!126 = !DILocation(line: 161, column: 12, scope: !8)
!127 = !DILocation(line: 162, column: 12, scope: !8)
!128 = !DILocation(line: 163, column: 5, scope: !8)
!129 = !DILocation(line: 165, column: 12, scope: !8)
!130 = !DILocation(line: 166, column: 12, scope: !8)
!131 = !DILocation(line: 167, column: 12, scope: !8)
!132 = !DILocation(line: 168, column: 5, scope: !8)
!133 = !DILocation(line: 169, column: 12, scope: !8)
!134 = !DILocation(line: 170, column: 5, scope: !8)
!135 = !DILocation(line: 171, column: 12, scope: !8)
!136 = !DILocation(line: 172, column: 5, scope: !8)
!137 = !DILocation(line: 173, column: 5, scope: !8)
