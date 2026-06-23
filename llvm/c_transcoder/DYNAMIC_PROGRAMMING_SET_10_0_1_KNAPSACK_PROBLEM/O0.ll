; ModuleID = 'benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM_processed.c'
source_filename = "benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %4
  store i32 0, i32* %5, align 4
  br label %60

16:                                               ; preds = %12
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, 1
  %31 = call i32 @f_gold(i32 noundef %26, i32* noundef %27, i32* noundef %28, i32 noundef %30)
  store i32 %31, i32* %5, align 4
  br label %60

32:                                               ; preds = %16
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %39, %45
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @f_gold(i32 noundef %46, i32* noundef %47, i32* noundef %48, i32 noundef %50)
  %52 = add nsw i32 %38, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, 1
  %58 = call i32 @f_gold(i32 noundef %53, i32* noundef %54, i32* noundef %55, i32 noundef %57)
  %59 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %52, i32 noundef %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %32, %25, %15
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare i32 @max(...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
