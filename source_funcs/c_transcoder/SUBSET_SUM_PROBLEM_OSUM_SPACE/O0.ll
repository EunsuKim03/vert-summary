; ModuleID = 'benchmark/c_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_processed.c'
source_filename = "benchmark/c_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = mul nuw i64 2, %13
  %16 = alloca i8, i64 %15, align 16
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %129, %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %132

21:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %125, %21
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %128

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = srem i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = mul nsw i64 %32, %13
  %34 = getelementptr inbounds i8, i8* %16, i64 %33
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 1, i8* %37, align 1
  br label %124

38:                                               ; preds = %26
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = srem i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %44, %13
  %46 = getelementptr inbounds i8, i8* %16, i64 %45
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 0, i8* %49, align 1
  br label %123

50:                                               ; preds = %38
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %101

59:                                               ; preds = %50
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  %62 = srem i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = mul nsw i64 %63, %13
  %65 = getelementptr inbounds i8, i8* %16, i64 %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %66, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %65, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = trunc i8 %76 to i1
  br i1 %77, label %90, label %78

78:                                               ; preds = %59
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  %81 = srem i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = mul nsw i64 %82, %13
  %84 = getelementptr inbounds i8, i8* %16, i64 %83
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = trunc i8 %88 to i1
  br label %90

90:                                               ; preds = %78, %59
  %91 = phi i1 [ true, %59 ], [ %89, %78 ]
  %92 = load i32, i32* %9, align 4
  %93 = srem i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = mul nsw i64 %94, %13
  %96 = getelementptr inbounds i8, i8* %16, i64 %95
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = zext i1 %91 to i8
  store i8 %100, i8* %99, align 1
  br label %122

101:                                              ; preds = %50
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  %104 = srem i32 %103, 2
  %105 = sext i32 %104 to i64
  %106 = mul nsw i64 %105, %13
  %107 = getelementptr inbounds i8, i8* %16, i64 %106
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = trunc i8 %111 to i1
  %113 = load i32, i32* %9, align 4
  %114 = srem i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = mul nsw i64 %115, %13
  %117 = getelementptr inbounds i8, i8* %16, i64 %116
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = zext i1 %112 to i8
  store i8 %121, i8* %120, align 1
  br label %122

122:                                              ; preds = %101, %90
  br label %123

123:                                              ; preds = %122, %41
  br label %124

124:                                              ; preds = %123, %29
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %22, !llvm.loop !6

128:                                              ; preds = %22
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %17, !llvm.loop !8

132:                                              ; preds = %17
  %133 = load i32, i32* %5, align 4
  %134 = srem i32 %133, 2
  %135 = sext i32 %134 to i64
  %136 = mul nsw i64 %135, %13
  %137 = getelementptr inbounds i8, i8* %16, i64 %136
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = trunc i8 %141 to i1
  %143 = zext i1 %142 to i32
  %144 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %144)
  ret i32 %143
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }

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
