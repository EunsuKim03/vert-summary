; ModuleID = 'benchmark/c_transcoder/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %48

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = srem i32 %9, 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = sdiv i32 %14, 4
  store i32 %15, i32* %2, align 4
  br label %48

16:                                               ; preds = %8
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 9
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %48

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 %24, 9
  %26 = sdiv i32 %25, 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %48

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %32, 6
  %34 = sdiv i32 %33, 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %48

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 15
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 -1, i32* %2, align 4
  br label %48

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = sub nsw i32 %44, 15
  %46 = sdiv i32 %45, 4
  %47 = add nsw i32 %46, 2
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %7, %13, %22, %23, %31, %42, %43, %36
  %49 = load i32, i32* %2, align 4
  ret i32 %49
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
