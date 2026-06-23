; ModuleID = 'benchmark/c_transcoder/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_2/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_2_processed.c'
source_filename = "benchmark/c_transcoder/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_2/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_2_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 %20, %21
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %4, align 4
  br label %35

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = mul nsw i32 %27, %28
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %4, align 4
  br label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %31, %24
  %36 = load i32, i32* %4, align 4
  ret i32 %36
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
