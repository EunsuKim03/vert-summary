; ModuleID = 'benchmark/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %124

12:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %13

13:                                               ; preds = %33, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %23, %28
  br label %30

30:                                               ; preds = %17, %13
  %31 = phi i1 [ false, %13 ], [ %29, %17 ]
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %13, !llvm.loop !6

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %124

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %73, %41
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %48, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %43
  %57 = load i32, i32* %6, align 4
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %64, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %124

73:                                               ; preds = %59, %56
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %43, !llvm.loop !8

76:                                               ; preds = %43
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  br label %124

81:                                               ; preds = %76
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %8, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %87, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %124

96:                                               ; preds = %81
  br label %97

97:                                               ; preds = %120, %96
  %98 = load i32, i32* %8, align 4
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %101, %102
  br label %104

104:                                              ; preds = %100, %97
  %105 = phi i1 [ false, %97 ], [ %103, %100 ]
  br i1 %105, label %106, label %123

106:                                              ; preds = %104
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %111, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %124

120:                                              ; preds = %106
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %97, !llvm.loop !9

123:                                              ; preds = %104
  store i32 1, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %119, %95, %80, %72, %40, %11
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
