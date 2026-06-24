; ModuleID = 'benchmark/c_transcoder/NEXT_POWER_OF_2_2/NEXT_POWER_OF_2_2_processed.c'
source_filename = "benchmark/c_transcoder/NEXT_POWER_OF_2_2/NEXT_POWER_OF_2_2_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = add i32 %3, -1
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = lshr i32 %5, 1
  %7 = load i32, i32* %2, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = lshr i32 %9, 2
  %11 = load i32, i32* %2, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = lshr i32 %13, 4
  %15 = load i32, i32* %2, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = lshr i32 %17, 8
  %19 = load i32, i32* %2, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = lshr i32 %21, 16
  %23 = load i32, i32* %2, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  ret i32 %27
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
