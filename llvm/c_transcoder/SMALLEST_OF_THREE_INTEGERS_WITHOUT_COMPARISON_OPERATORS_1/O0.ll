; ModuleID = 'benchmark/c_transcoder/SMALLEST_OF_THREE_INTEGERS_WITHOUT_COMPARISON_OPERATORS_1/SMALLEST_OF_THREE_INTEGERS_WITHOUT_COMPARISON_OPERATORS_1_processed.c'
source_filename = "benchmark/c_transcoder/SMALLEST_OF_THREE_INTEGERS_WITHOUT_COMPARISON_OPERATORS_1/SMALLEST_OF_THREE_INTEGERS_WITHOUT_COMPARISON_OPERATORS_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sdiv i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sdiv i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  br label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %4, align 4
  br label %34

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sdiv i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %21
  %35 = load i32, i32* %4, align 4
  ret i32 %35
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
