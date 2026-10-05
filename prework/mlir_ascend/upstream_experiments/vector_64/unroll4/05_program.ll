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
  %54 = phi i64 [ %108, %56 ], [ 0, %52 ]
  %55 = icmp slt i64 %54, 64, !dbg !68
  br i1 %55, label %56, label %109, !dbg !69

56:                                               ; preds = %53
  %57 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %7, 1, !dbg !70
  %58 = getelementptr i32, i32* %57, i64 %54, !dbg !71
  %59 = bitcast i32* %58 to <4 x i32>*, !dbg !72
  %60 = load <4 x i32>, <4 x i32>* %59, align 4, !dbg !73
  %61 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %14, 1, !dbg !74
  %62 = getelementptr i32, i32* %61, i64 %54, !dbg !75
  %63 = bitcast i32* %62 to <4 x i32>*, !dbg !76
  %64 = load <4 x i32>, <4 x i32>* %63, align 4, !dbg !77
  %65 = add <4 x i32> %60, %64, !dbg !78
  %66 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %21, 1, !dbg !79
  %67 = getelementptr i32, i32* %66, i64 %54, !dbg !80
  %68 = bitcast i32* %67 to <4 x i32>*, !dbg !81
  store <4 x i32> %65, <4 x i32>* %68, align 4, !dbg !82
  %69 = add i64 %54, 4, !dbg !83
  %70 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %7, 1, !dbg !84
  %71 = getelementptr i32, i32* %70, i64 %69, !dbg !85
  %72 = bitcast i32* %71 to <4 x i32>*, !dbg !86
  %73 = load <4 x i32>, <4 x i32>* %72, align 4, !dbg !87
  %74 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %14, 1, !dbg !88
  %75 = getelementptr i32, i32* %74, i64 %69, !dbg !89
  %76 = bitcast i32* %75 to <4 x i32>*, !dbg !90
  %77 = load <4 x i32>, <4 x i32>* %76, align 4, !dbg !91
  %78 = add <4 x i32> %73, %77, !dbg !92
  %79 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %21, 1, !dbg !93
  %80 = getelementptr i32, i32* %79, i64 %69, !dbg !94
  %81 = bitcast i32* %80 to <4 x i32>*, !dbg !95
  store <4 x i32> %78, <4 x i32>* %81, align 4, !dbg !96
  %82 = add i64 %54, 8, !dbg !97
  %83 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %7, 1, !dbg !98
  %84 = getelementptr i32, i32* %83, i64 %82, !dbg !99
  %85 = bitcast i32* %84 to <4 x i32>*, !dbg !100
  %86 = load <4 x i32>, <4 x i32>* %85, align 4, !dbg !101
  %87 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %14, 1, !dbg !102
  %88 = getelementptr i32, i32* %87, i64 %82, !dbg !103
  %89 = bitcast i32* %88 to <4 x i32>*, !dbg !104
  %90 = load <4 x i32>, <4 x i32>* %89, align 4, !dbg !105
  %91 = add <4 x i32> %86, %90, !dbg !106
  %92 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %21, 1, !dbg !107
  %93 = getelementptr i32, i32* %92, i64 %82, !dbg !108
  %94 = bitcast i32* %93 to <4 x i32>*, !dbg !109
  store <4 x i32> %91, <4 x i32>* %94, align 4, !dbg !110
  %95 = add i64 %54, 12, !dbg !111
  %96 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %7, 1, !dbg !112
  %97 = getelementptr i32, i32* %96, i64 %95, !dbg !113
  %98 = bitcast i32* %97 to <4 x i32>*, !dbg !114
  %99 = load <4 x i32>, <4 x i32>* %98, align 4, !dbg !115
  %100 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %14, 1, !dbg !116
  %101 = getelementptr i32, i32* %100, i64 %95, !dbg !117
  %102 = bitcast i32* %101 to <4 x i32>*, !dbg !118
  %103 = load <4 x i32>, <4 x i32>* %102, align 4, !dbg !119
  %104 = add <4 x i32> %99, %103, !dbg !120
  %105 = extractvalue { i32*, i32*, i64, [1 x i64], [1 x i64] } %21, 1, !dbg !121
  %106 = getelementptr i32, i32* %105, i64 %95, !dbg !122
  %107 = bitcast i32* %106 to <4 x i32>*, !dbg !123
  store <4 x i32> %104, <4 x i32>* %107, align 4, !dbg !124
  %108 = add i64 %54, 16, !dbg !125
  br label %53, !dbg !126

109:                                              ; preds = %53
  br label %110, !dbg !127

110:                                              ; preds = %113, %109
  %111 = phi i64 [ %120, %113 ], [ 64, %109 ]
  %112 = icmp slt i64 %111, 64, !dbg !128
  br i1 %112, label %113, label %121, !dbg !129

113:                                              ; preds = %110
  %114 = getelementptr i32, i32* %2, i64 %111, !dbg !130
  %115 = load i32, i32* %114, align 4, !dbg !131
  %116 = getelementptr i32, i32* %9, i64 %111, !dbg !132
  %117 = load i32, i32* %116, align 4, !dbg !133
  %118 = add i32 %115, %117, !dbg !134
  %119 = getelementptr i32, i32* %16, i64 %111, !dbg !135
  store i32 %118, i32* %119, align 4, !dbg !136
  %120 = add i64 %111, 1, !dbg !137
  br label %110, !dbg !138

121:                                              ; preds = %110
  br label %122, !dbg !139

122:                                              ; preds = %126, %121
  %123 = phi i64 [ %142, %126 ], [ 0, %121 ]
  %124 = phi i32 [ %141, %126 ], [ 0, %121 ]
  %125 = icmp slt i64 %123, 64, !dbg !140
  br i1 %125, label %126, label %143, !dbg !141

126:                                              ; preds = %122
  %127 = getelementptr i32, i32* %16, i64 %123, !dbg !142
  %128 = load i32, i32* %127, align 4, !dbg !143
  %129 = add i32 %124, %128, !dbg !144
  %130 = add i64 %123, 1, !dbg !145
  %131 = getelementptr i32, i32* %16, i64 %130, !dbg !146
  %132 = load i32, i32* %131, align 4, !dbg !147
  %133 = add i32 %129, %132, !dbg !148
  %134 = add i64 %123, 2, !dbg !149
  %135 = getelementptr i32, i32* %16, i64 %134, !dbg !150
  %136 = load i32, i32* %135, align 4, !dbg !151
  %137 = add i32 %133, %136, !dbg !152
  %138 = add i64 %123, 3, !dbg !153
  %139 = getelementptr i32, i32* %16, i64 %138, !dbg !154
  %140 = load i32, i32* %139, align 4, !dbg !155
  %141 = add i32 %137, %140, !dbg !156
  %142 = add i64 %123, 4, !dbg !157
  br label %122, !dbg !158

143:                                              ; preds = %122
  %144 = icmp ne i32 %124, 6048, !dbg !159
  %145 = zext i1 %144 to i32, !dbg !160
  %146 = bitcast i32* %2 to i8*, !dbg !161
  call void @free(i8* %146), !dbg !162
  %147 = bitcast i32* %9 to i8*, !dbg !163
  call void @free(i8* %147), !dbg !164
  %148 = bitcast i32* %16 to i8*, !dbg !165
  call void @free(i8* %148), !dbg !166
  ret i32 %145, !dbg !167
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "prework/mlir_ascend/upstream_experiments/vector_64/unroll4/04_llvm.mlir", directory: "/home/roy/compiler-lab")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 22, column: 11, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 23, column: 11, scope: !8)
!10 = !DILocation(line: 25, column: 11, scope: !8)
!11 = !DILocation(line: 26, column: 11, scope: !8)
!12 = !DILocation(line: 28, column: 11, scope: !8)
!13 = !DILocation(line: 29, column: 11, scope: !8)
!14 = !DILocation(line: 30, column: 11, scope: !8)
!15 = !DILocation(line: 36, column: 11, scope: !8)
!16 = !DILocation(line: 37, column: 11, scope: !8)
!17 = !DILocation(line: 39, column: 11, scope: !8)
!18 = !DILocation(line: 40, column: 11, scope: !8)
!19 = !DILocation(line: 42, column: 11, scope: !8)
!20 = !DILocation(line: 43, column: 11, scope: !8)
!21 = !DILocation(line: 44, column: 11, scope: !8)
!22 = !DILocation(line: 50, column: 11, scope: !8)
!23 = !DILocation(line: 51, column: 11, scope: !8)
!24 = !DILocation(line: 53, column: 11, scope: !8)
!25 = !DILocation(line: 54, column: 11, scope: !8)
!26 = !DILocation(line: 56, column: 11, scope: !8)
!27 = !DILocation(line: 57, column: 11, scope: !8)
!28 = !DILocation(line: 58, column: 11, scope: !8)
!29 = !DILocation(line: 59, column: 5, scope: !8)
!30 = !DILocation(line: 61, column: 11, scope: !8)
!31 = !DILocation(line: 62, column: 5, scope: !8)
!32 = !DILocation(line: 64, column: 11, scope: !8)
!33 = !DILocation(line: 65, column: 11, scope: !8)
!34 = !DILocation(line: 66, column: 11, scope: !8)
!35 = !DILocation(line: 67, column: 5, scope: !8)
!36 = !DILocation(line: 68, column: 11, scope: !8)
!37 = !DILocation(line: 69, column: 5, scope: !8)
!38 = !DILocation(line: 70, column: 11, scope: !8)
!39 = !DILocation(line: 71, column: 11, scope: !8)
!40 = !DILocation(line: 72, column: 11, scope: !8)
!41 = !DILocation(line: 73, column: 11, scope: !8)
!42 = !DILocation(line: 74, column: 11, scope: !8)
!43 = !DILocation(line: 75, column: 5, scope: !8)
!44 = !DILocation(line: 76, column: 11, scope: !8)
!45 = !DILocation(line: 77, column: 11, scope: !8)
!46 = !DILocation(line: 78, column: 5, scope: !8)
!47 = !DILocation(line: 79, column: 11, scope: !8)
!48 = !DILocation(line: 80, column: 11, scope: !8)
!49 = !DILocation(line: 81, column: 11, scope: !8)
!50 = !DILocation(line: 82, column: 11, scope: !8)
!51 = !DILocation(line: 83, column: 11, scope: !8)
!52 = !DILocation(line: 84, column: 5, scope: !8)
!53 = !DILocation(line: 85, column: 11, scope: !8)
!54 = !DILocation(line: 86, column: 11, scope: !8)
!55 = !DILocation(line: 87, column: 5, scope: !8)
!56 = !DILocation(line: 88, column: 11, scope: !8)
!57 = !DILocation(line: 89, column: 11, scope: !8)
!58 = !DILocation(line: 90, column: 11, scope: !8)
!59 = !DILocation(line: 91, column: 11, scope: !8)
!60 = !DILocation(line: 92, column: 11, scope: !8)
!61 = !DILocation(line: 93, column: 5, scope: !8)
!62 = !DILocation(line: 94, column: 11, scope: !8)
!63 = !DILocation(line: 95, column: 11, scope: !8)
!64 = !DILocation(line: 96, column: 5, scope: !8)
!65 = !DILocation(line: 97, column: 11, scope: !8)
!66 = !DILocation(line: 98, column: 5, scope: !8)
!67 = !DILocation(line: 100, column: 5, scope: !8)
!68 = !DILocation(line: 102, column: 11, scope: !8)
!69 = !DILocation(line: 103, column: 5, scope: !8)
!70 = !DILocation(line: 105, column: 11, scope: !8)
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
!82 = !DILocation(line: 117, column: 5, scope: !8)
!83 = !DILocation(line: 118, column: 11, scope: !8)
!84 = !DILocation(line: 119, column: 11, scope: !8)
!85 = !DILocation(line: 120, column: 11, scope: !8)
!86 = !DILocation(line: 121, column: 11, scope: !8)
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
!109 = !DILocation(line: 144, column: 12, scope: !8)
!110 = !DILocation(line: 145, column: 5, scope: !8)
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
!122 = !DILocation(line: 157, column: 12, scope: !8)
!123 = !DILocation(line: 158, column: 12, scope: !8)
!124 = !DILocation(line: 159, column: 5, scope: !8)
!125 = !DILocation(line: 160, column: 12, scope: !8)
!126 = !DILocation(line: 161, column: 5, scope: !8)
!127 = !DILocation(line: 163, column: 5, scope: !8)
!128 = !DILocation(line: 165, column: 12, scope: !8)
!129 = !DILocation(line: 166, column: 5, scope: !8)
!130 = !DILocation(line: 168, column: 12, scope: !8)
!131 = !DILocation(line: 169, column: 12, scope: !8)
!132 = !DILocation(line: 170, column: 12, scope: !8)
!133 = !DILocation(line: 171, column: 12, scope: !8)
!134 = !DILocation(line: 172, column: 12, scope: !8)
!135 = !DILocation(line: 173, column: 12, scope: !8)
!136 = !DILocation(line: 174, column: 5, scope: !8)
!137 = !DILocation(line: 175, column: 12, scope: !8)
!138 = !DILocation(line: 176, column: 5, scope: !8)
!139 = !DILocation(line: 178, column: 5, scope: !8)
!140 = !DILocation(line: 180, column: 12, scope: !8)
!141 = !DILocation(line: 181, column: 5, scope: !8)
!142 = !DILocation(line: 183, column: 12, scope: !8)
!143 = !DILocation(line: 184, column: 12, scope: !8)
!144 = !DILocation(line: 185, column: 12, scope: !8)
!145 = !DILocation(line: 186, column: 12, scope: !8)
!146 = !DILocation(line: 187, column: 12, scope: !8)
!147 = !DILocation(line: 188, column: 12, scope: !8)
!148 = !DILocation(line: 189, column: 12, scope: !8)
!149 = !DILocation(line: 190, column: 12, scope: !8)
!150 = !DILocation(line: 191, column: 12, scope: !8)
!151 = !DILocation(line: 192, column: 12, scope: !8)
!152 = !DILocation(line: 193, column: 12, scope: !8)
!153 = !DILocation(line: 194, column: 12, scope: !8)
!154 = !DILocation(line: 195, column: 12, scope: !8)
!155 = !DILocation(line: 196, column: 12, scope: !8)
!156 = !DILocation(line: 197, column: 12, scope: !8)
!157 = !DILocation(line: 198, column: 12, scope: !8)
!158 = !DILocation(line: 199, column: 5, scope: !8)
!159 = !DILocation(line: 201, column: 12, scope: !8)
!160 = !DILocation(line: 202, column: 12, scope: !8)
!161 = !DILocation(line: 203, column: 12, scope: !8)
!162 = !DILocation(line: 204, column: 5, scope: !8)
!163 = !DILocation(line: 205, column: 12, scope: !8)
!164 = !DILocation(line: 206, column: 5, scope: !8)
!165 = !DILocation(line: 207, column: 12, scope: !8)
!166 = !DILocation(line: 208, column: 5, scope: !8)
!167 = !DILocation(line: 209, column: 5, scope: !8)
