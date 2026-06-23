; ModuleID = 'benchmark/c_transcoder/MODULAR_EXPONENTIATION_POWER_IN_MODULAR_ARITHMETIC/MODULAR_EXPONENTIATION_POWER_IN_MODULAR_ARITHMETIC_processed.c'
source_filename = "benchmark/c_transcoder/MODULAR_EXPONENTIATION_POWER_IN_MODULAR_ARITHMETIC/MODULAR_EXPONENTIATION_POWER_IN_MODULAR_ARITHMETIC_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %6, align 4
  %10 = srem i32 %8, %9
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %24, %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp ugt i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = srem i32 %21, %22
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %18, %14
  %25 = load i32, i32* %5, align 4
  %26 = lshr i32 %25, 1
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = srem i32 %29, %30
  store i32 %31, i32* %4, align 4
  br label %11, !llvm.loop !6

32:                                               ; preds = %11
  %33 = load i32, i32* %7, align 4
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
