; ModuleID = 'benchmark/c_transcoder/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_processed.c'
source_filename = "benchmark/c_transcoder/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = mul nuw i64 2, %15
  %18 = alloca i32, i64 %17, align 16
  store i64 %15, i64* %10, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = mul nuw i64 2, %15
  %21 = mul nuw i64 4, %20
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 %21, i1 false)
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %148, %4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %151

26:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  %28 = srem i32 %27, 2
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %89

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %87, %30
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %88

36:                                               ; preds = %31
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %36
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i64 0, %15
  %51 = getelementptr inbounds i32, i32* %18, i64 %50
  %52 = load i32, i32* %12, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %52, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %51, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %49, %61
  %63 = mul nsw i64 0, %15
  %64 = getelementptr inbounds i32, i32* %18, i64 %63
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %62, i32 noundef %68)
  %70 = mul nsw i64 1, %15
  %71 = getelementptr inbounds i32, i32* %18, i64 %70
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %69, i32* %74, align 4
  br label %87

75:                                               ; preds = %36
  %76 = mul nsw i64 0, %15
  %77 = getelementptr inbounds i32, i32* %18, i64 %76
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i64 1, %15
  %83 = getelementptr inbounds i32, i32* %18, i64 %82
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %81, i32* %86, align 4
  br label %87

87:                                               ; preds = %75, %44
  br label %31, !llvm.loop !6

88:                                               ; preds = %31
  br label %148

89:                                               ; preds = %26
  br label %90

90:                                               ; preds = %146, %89
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %147

95:                                               ; preds = %90
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %134

103:                                              ; preds = %95
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i64 1, %15
  %110 = getelementptr inbounds i32, i32* %18, i64 %109
  %111 = load i32, i32* %12, align 4
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %111, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %110, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %108, %120
  %122 = mul nsw i64 1, %15
  %123 = getelementptr inbounds i32, i32* %18, i64 %122
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %121, i32 noundef %127)
  %129 = mul nsw i64 0, %15
  %130 = getelementptr inbounds i32, i32* %18, i64 %129
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %128, i32* %133, align 4
  br label %146

134:                                              ; preds = %95
  %135 = mul nsw i64 1, %15
  %136 = getelementptr inbounds i32, i32* %18, i64 %135
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i64 0, %15
  %142 = getelementptr inbounds i32, i32* %18, i64 %141
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %140, i32* %145, align 4
  br label %146

146:                                              ; preds = %134, %103
  br label %90, !llvm.loop !8

147:                                              ; preds = %90
  br label %148

148:                                              ; preds = %147, %88
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %11, align 4
  br label %22, !llvm.loop !9

151:                                              ; preds = %22
  %152 = load i32, i32* %7, align 4
  %153 = srem i32 %152, 2
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = mul nsw i64 0, %15
  %157 = getelementptr inbounds i32, i32* %18, i64 %156
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  br label %169

162:                                              ; preds = %151
  %163 = mul nsw i64 1, %15
  %164 = getelementptr inbounds i32, i32* %18, i64 %163
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  br label %169

169:                                              ; preds = %162, %155
  %170 = phi i32 [ %161, %155 ], [ %168, %162 ]
  %171 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %171)
  ret i32 %170
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @max(...) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
