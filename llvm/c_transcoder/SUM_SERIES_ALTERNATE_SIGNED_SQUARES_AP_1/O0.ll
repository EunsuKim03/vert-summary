; ModuleID = 'benchmark/c_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1_processed.c'
source_filename = "benchmark/c_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %8, %11
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = mul nsw i32 2, %14
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = mul nsw i32 2, %21
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %19, %26
  %28 = sub nsw i32 %12, %27
  %29 = mul nsw i32 %5, %28
  %30 = load i32, i32* %3, align 4
  %31 = mul nsw i32 2, %30
  %32 = sub nsw i32 %31, 1
  %33 = sdiv i32 %29, %32
  ret i32 %33
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
