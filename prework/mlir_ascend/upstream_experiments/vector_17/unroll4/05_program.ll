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
  %23 = phi i64 [ %51, %25 ], [ 0, %0 ]
  %24 = icmp slt i64 %23, 16, !dbg !30
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
  %53 = getelementptr i32, i32* %2, i64 16, !dbg !67
  store i32 16, i32* %53, align 4, !dbg !68
  %54 = getelementptr i32, i32* %9, i64 16, !dbg !69
  store i32 32, i32* %54, align 4, !dbg !70
  %55 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %7, 1, !dbg !71
  %56 = getelementptr i32, i32* %55, i64 0, !dbg !72
  %57 = bitcast i32* %56 to <4 x i32>*, !dbg !73
  %58 = load <4 x i32>, <4 x i32>* %57, align 4, !dbg !74
  %59 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %14, 1, !dbg !75
  %60 = getelementptr i32, i32* %59, i64 0, !dbg !76
  %61 = bitcast i32* %60 to <4 x i32>*, !dbg !77
  %62 = load <4 x i32>, <4 x i32>* %61, align 4, !dbg !78
  %63 = add <4 x i32> %58, %62, !dbg !79
  %64 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %21, 1, !dbg !80
  %65 = getelementptr i32, i32* %64, i64 0, !dbg !81
  %66 = bitcast i32* %65 to <4 x i32>*, !dbg !82
  store <4 x i32> %63, <4 x i32>* %66, align 4, !dbg !83
  %67 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %7, 1, !dbg !84
  %68 = getelementptr i32, i32* %67, i64 4, !dbg !85
  %69 = bitcast i32* %68 to <4 x i32>*, !dbg !86
  %70 = load <4 x i32>, <4 x i32>* %69, align 4, !dbg !87
  %71 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %14, 1, !dbg !88
  %72 = getelementptr i32, i32* %71, i64 4, !dbg !89
  %73 = bitcast i32* %72 to <4 x i32>*, !dbg !90
  %74 = load <4 x i32>, <4 x i32>* %73, align 4, !dbg !91
  %75 = add <4 x i32> %70, %74, !dbg !92
  %76 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %21, 1, !dbg !93
  %77 = getelementptr i32, i32* %76, i64 4, !dbg !94
  %78 = bitcast i32* %77 to <4 x i32>*, !dbg !95
  store <4 x i32> %75, <4 x i32>* %78, align 4, !dbg !96
  %79 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %7, 1, !dbg !97
  %80 = getelementptr i32, i32* %79, i64 8, !dbg !98
  %81 = bitcast i32* %80 to <4 x i32>*, !dbg !99
  %82 = load <4 x i32>, <4 x i32>* %81, align 4, !dbg !100
  %83 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %14, 1, !dbg !101
  %84 = getelementptr i32, i32* %83, i64 8, !dbg !102
  %85 = bitcast i32* %84 to <4 x i32>*, !dbg !103
  %86 = load <4 x i32>, <4 x i32>* %85, align 4, !dbg !104
  %87 = add <4 x i32> %82, %86, !dbg !105
  %88 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %21, 1, !dbg !106
  %89 = getelementptr i32, i32* %88, i64 8, !dbg !107
  %90 = bitcast i32* %89 to <4 x i32>*, !dbg !108
  store <4 x i32> %87, <4 x i32>* %90, align 4, !dbg !109
  %91 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %7, 1, !dbg !110
  %92 = getelementptr i32, i32* %91, i64 12, !dbg !111
  %93 = bitcast i32* %92 to <4 x i32>*, !dbg !112
  %94 = load <4 x i32>, <4 x i32>* %93, align 4, !dbg !113
  %95 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %14, 1, !dbg !114
  %96 = getelementptr i32, i32* %95, i64 12, !dbg !115
  %97 = bitcast i32* %96 to <4 x i32>*, !dbg !116
  %98 = load <4 x i32>, <4 x i32>* %97, align 4, !dbg !117
  %99 = add <4 x i32> %94, %98, !dbg !118
  %100 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %21, 1, !dbg !119
  %101 = getelementptr i32, i32* %100, i64 12, !dbg !120
  %102 = bitcast i32* %101 to <4 x i32>*, !dbg !121
  store <4 x i32> %99, <4 x i32>* %102, align 4, !dbg !122
  br label %103, !dbg !123

103:                                              ; preds = %106, %52
  %104 = phi i64 [ %113, %106 ], [ 16, %52 ]
  %105 = icmp slt i64 %104, 17, !dbg !124
  br i1 %105, label %106, label %114, !dbg !125

106:                                              ; preds = %103
  %107 = getelementptr i32, i32* %2, i64 %104, !dbg !126
  %108 = load i32, i32* %107, align 4, !dbg !127
  %109 = getelementptr i32, i32* %9, i64 %104, !dbg !128
  %110 = load i32, i32* %109, align 4, !dbg !129
  %111 = add i32 %108, %110, !dbg !130
  %112 = getelementptr i32, i32* %16, i64 %104, !dbg !131
  store i32 %111, i32* %112, align 4, !dbg !132
  %113 = add i64 %104, 1, !dbg !133
  br label %103, !dbg !134

114:                                              ; preds = %103
  br label %115, !dbg !135

115:                                              ; preds = %119, %114
  %116 = phi i64 [ %135, %119 ], [ 0, %114 ]
  %117 = phi i32 [ %134, %119 ], [ 0, %114 ]
  %118 = icmp slt i64 %116, 16, !dbg !136
  br i1 %118, label %119, label %136, !dbg !137

119:                                              ; preds = %115
  %120 = getelementptr i32, i32* %16, i64 %116, !dbg !138
  %121 = load i32, i32* %120, align 4, !dbg !139
  %122 = add i32 %117, %121, !dbg !140
  %123 = add i64 %116, 1, !dbg !141
  %124 = getelementptr i32, i32* %16, i64 %123, !dbg !142
  %125 = load i32, i32* %124, align 4, !dbg !143
  %126 = add i32 %122, %125, !dbg !144
  %127 = add i64 %116, 2, !dbg !145
  %128 = getelementptr i32, i32* %16, i64 %127, !dbg !146
  %129 = load i32, i32* %128, align 4, !dbg !147
  %130 = add i32 %126, %129, !dbg !148
  %131 = add i64 %116, 3, !dbg !149
  %132 = getelementptr i32, i32* %16, i64 %131, !dbg !150
  %133 = load i32, i32* %132, align 4, !dbg !151
  %134 = add i32 %130, %133, !dbg !152
  %135 = add i64 %116, 4, !dbg !153
  br label %115, !dbg !154

136:                                              ; preds = %115
  %137 = getelementptr i32, i32* %16, i64 16, !dbg !155
  %138 = load i32, i32* %137, align 4, !dbg !156
  %139 = add i32 %117, %138, !dbg !157
  %140 = icmp ne i32 %139, 408, !dbg !158
  %141 = zext i1 %140 to i32, !dbg !159
  %142 = bitcast i32* %2 to i8*, !dbg !160
  call void @free(i8* %142), !dbg !161
  %143 = bitcast i32* %9 to i8*, !dbg !162
  call void @free(i8* %143), !dbg !163
  %144 = bitcast i32* %16 to i8*, !dbg !164
  call void @free(i8* %144), !dbg !165
  ret i32 %141, !dbg !166
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "prework/mlir_ascend/upstream_experiments/vector_17/unroll4/04_llvm.mlir", directory: "/home/roy/compiler-lab")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 24, column: 11, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 25, column: 11, scope: !8)
!10 = !DILocation(line: 27, column: 11, scope: !8)
!11 = !DILocation(line: 28, column: 11, scope: !8)
!12 = !DILocation(line: 30, column: 11, scope: !8)
!13 = !DILocation(line: 31, column: 11, scope: !8)
!14 = !DILocation(line: 32, column: 11, scope: !8)
!15 = !DILocation(line: 38, column: 11, scope: !8)
!16 = !DILocation(line: 39, column: 11, scope: !8)
!17 = !DILocation(line: 41, column: 11, scope: !8)
!18 = !DILocation(line: 42, column: 11, scope: !8)
!19 = !DILocation(line: 44, column: 11, scope: !8)
!20 = !DILocation(line: 45, column: 11, scope: !8)
!21 = !DILocation(line: 46, column: 11, scope: !8)
!22 = !DILocation(line: 52, column: 11, scope: !8)
!23 = !DILocation(line: 53, column: 11, scope: !8)
!24 = !DILocation(line: 55, column: 11, scope: !8)
!25 = !DILocation(line: 56, column: 11, scope: !8)
!26 = !DILocation(line: 58, column: 11, scope: !8)
!27 = !DILocation(line: 59, column: 11, scope: !8)
!28 = !DILocation(line: 60, column: 11, scope: !8)
!29 = !DILocation(line: 61, column: 5, scope: !8)
!30 = !DILocation(line: 63, column: 11, scope: !8)
!31 = !DILocation(line: 64, column: 5, scope: !8)
!32 = !DILocation(line: 66, column: 11, scope: !8)
!33 = !DILocation(line: 67, column: 11, scope: !8)
!34 = !DILocation(line: 68, column: 11, scope: !8)
!35 = !DILocation(line: 69, column: 5, scope: !8)
!36 = !DILocation(line: 70, column: 11, scope: !8)
!37 = !DILocation(line: 71, column: 5, scope: !8)
!38 = !DILocation(line: 72, column: 11, scope: !8)
!39 = !DILocation(line: 73, column: 11, scope: !8)
!40 = !DILocation(line: 74, column: 11, scope: !8)
!41 = !DILocation(line: 75, column: 11, scope: !8)
!42 = !DILocation(line: 76, column: 11, scope: !8)
!43 = !DILocation(line: 77, column: 5, scope: !8)
!44 = !DILocation(line: 78, column: 11, scope: !8)
!45 = !DILocation(line: 79, column: 11, scope: !8)
!46 = !DILocation(line: 80, column: 5, scope: !8)
!47 = !DILocation(line: 81, column: 11, scope: !8)
!48 = !DILocation(line: 82, column: 11, scope: !8)
!49 = !DILocation(line: 83, column: 11, scope: !8)
!50 = !DILocation(line: 84, column: 11, scope: !8)
!51 = !DILocation(line: 85, column: 11, scope: !8)
!52 = !DILocation(line: 86, column: 5, scope: !8)
!53 = !DILocation(line: 87, column: 11, scope: !8)
!54 = !DILocation(line: 88, column: 11, scope: !8)
!55 = !DILocation(line: 89, column: 5, scope: !8)
!56 = !DILocation(line: 90, column: 11, scope: !8)
!57 = !DILocation(line: 91, column: 11, scope: !8)
!58 = !DILocation(line: 92, column: 11, scope: !8)
!59 = !DILocation(line: 93, column: 11, scope: !8)
!60 = !DILocation(line: 94, column: 11, scope: !8)
!61 = !DILocation(line: 95, column: 5, scope: !8)
!62 = !DILocation(line: 96, column: 11, scope: !8)
!63 = !DILocation(line: 97, column: 11, scope: !8)
!64 = !DILocation(line: 98, column: 5, scope: !8)
!65 = !DILocation(line: 99, column: 11, scope: !8)
!66 = !DILocation(line: 100, column: 5, scope: !8)
!67 = !DILocation(line: 102, column: 11, scope: !8)
!68 = !DILocation(line: 103, column: 5, scope: !8)
!69 = !DILocation(line: 104, column: 11, scope: !8)
!70 = !DILocation(line: 105, column: 5, scope: !8)
!71 = !DILocation(line: 106, column: 11, scope: !8)
!72 = !DILocation(line: 107, column: 11, scope: !8)
!73 = !DILocation(line: 108, column: 11, scope: !8)
!74 = !DILocation(line: 109, column: 11, scope: !8)
!75 = !DILocation(line: 110, column: 11, scope: !8)
!76 = !DILocation(line: 111, column: 11, scope: !8)
!77 = !DILocation(line: 112, column: 11, scope: !8)
!78 = !DILocation(line: 113, column: 11, scope: !8)
!79 = !DILocation(line: 114, column: 11, scope: !8)
!80 = !DILocation(line: 115, column: 11, scope: !8)
!81 = !DILocation(line: 116, column: 11, scope: !8)
!82 = !DILocation(line: 117, column: 11, scope: !8)
!83 = !DILocation(line: 118, column: 5, scope: !8)
!84 = !DILocation(line: 119, column: 11, scope: !8)
!85 = !DILocation(line: 120, column: 11, scope: !8)
!86 = !DILocation(line: 121, column: 12, scope: !8)
!87 = !DILocation(line: 122, column: 12, scope: !8)
!88 = !DILocation(line: 123, column: 12, scope: !8)
!89 = !DILocation(line: 124, column: 12, scope: !8)
!90 = !DILocation(line: 125, column: 12, scope: !8)
!91 = !DILocation(line: 126, column: 12, scope: !8)
!92 = !DILocation(line: 127, column: 12, scope: !8)
!93 = !DILocation(line: 128, column: 12, scope: !8)
!94 = !DILocation(line: 129, column: 12, scope: !8)
!95 = !DILocation(line: 130, column: 12, scope: !8)
!96 = !DILocation(line: 131, column: 5, scope: !8)
!97 = !DILocation(line: 132, column: 12, scope: !8)
!98 = !DILocation(line: 133, column: 12, scope: !8)
!99 = !DILocation(line: 134, column: 12, scope: !8)
!100 = !DILocation(line: 135, column: 12, scope: !8)
!101 = !DILocation(line: 136, column: 12, scope: !8)
!102 = !DILocation(line: 137, column: 12, scope: !8)
!103 = !DILocation(line: 138, column: 12, scope: !8)
!104 = !DILocation(line: 139, column: 12, scope: !8)
!105 = !DILocation(line: 140, column: 12, scope: !8)
!106 = !DILocation(line: 141, column: 12, scope: !8)
!107 = !DILocation(line: 142, column: 12, scope: !8)
!108 = !DILocation(line: 143, column: 12, scope: !8)
!109 = !DILocation(line: 144, column: 5, scope: !8)
!110 = !DILocation(line: 145, column: 12, scope: !8)
!111 = !DILocation(line: 146, column: 12, scope: !8)
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
!122 = !DILocation(line: 157, column: 5, scope: !8)
!123 = !DILocation(line: 158, column: 5, scope: !8)
!124 = !DILocation(line: 160, column: 12, scope: !8)
!125 = !DILocation(line: 161, column: 5, scope: !8)
!126 = !DILocation(line: 163, column: 12, scope: !8)
!127 = !DILocation(line: 164, column: 12, scope: !8)
!128 = !DILocation(line: 165, column: 12, scope: !8)
!129 = !DILocation(line: 166, column: 12, scope: !8)
!130 = !DILocation(line: 167, column: 12, scope: !8)
!131 = !DILocation(line: 168, column: 12, scope: !8)
!132 = !DILocation(line: 169, column: 5, scope: !8)
!133 = !DILocation(line: 170, column: 12, scope: !8)
!134 = !DILocation(line: 171, column: 5, scope: !8)
!135 = !DILocation(line: 173, column: 5, scope: !8)
!136 = !DILocation(line: 175, column: 12, scope: !8)
!137 = !DILocation(line: 176, column: 5, scope: !8)
!138 = !DILocation(line: 178, column: 12, scope: !8)
!139 = !DILocation(line: 179, column: 12, scope: !8)
!140 = !DILocation(line: 180, column: 12, scope: !8)
!141 = !DILocation(line: 181, column: 12, scope: !8)
!142 = !DILocation(line: 182, column: 12, scope: !8)
!143 = !DILocation(line: 183, column: 12, scope: !8)
!144 = !DILocation(line: 184, column: 12, scope: !8)
!145 = !DILocation(line: 185, column: 12, scope: !8)
!146 = !DILocation(line: 186, column: 12, scope: !8)
!147 = !DILocation(line: 187, column: 12, scope: !8)
!148 = !DILocation(line: 188, column: 12, scope: !8)
!149 = !DILocation(line: 189, column: 12, scope: !8)
!150 = !DILocation(line: 190, column: 12, scope: !8)
!151 = !DILocation(line: 191, column: 12, scope: !8)
!152 = !DILocation(line: 192, column: 12, scope: !8)
!153 = !DILocation(line: 193, column: 12, scope: !8)
!154 = !DILocation(line: 194, column: 5, scope: !8)
!155 = !DILocation(line: 196, column: 12, scope: !8)
!156 = !DILocation(line: 197, column: 12, scope: !8)
!157 = !DILocation(line: 198, column: 12, scope: !8)
!158 = !DILocation(line: 199, column: 12, scope: !8)
!159 = !DILocation(line: 200, column: 12, scope: !8)
!160 = !DILocation(line: 201, column: 12, scope: !8)
!161 = !DILocation(line: 202, column: 5, scope: !8)
!162 = !DILocation(line: 203, column: 12, scope: !8)
!163 = !DILocation(line: 204, column: 5, scope: !8)
!164 = !DILocation(line: 205, column: 12, scope: !8)
!165 = !DILocation(line: 206, column: 5, scope: !8)
!166 = !DILocation(line: 207, column: 5, scope: !8)
