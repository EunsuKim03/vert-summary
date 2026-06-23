; ModuleID = 'benchmark/c_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER/SWAP_BITS_IN_A_GIVEN_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER/SWAP_BITS_IN_A_GIVEN_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = lshr i32 %13, %14
  %16 = load i32, i32* %8, align 4
  %17 = shl i32 1, %16
  %18 = sub i32 %17, 1
  %19 = and i32 %15, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = lshr i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 1, %23
  %25 = sub i32 %24, 1
  %26 = and i32 %22, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = xor i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 %33, %34
  %36 = or i32 %32, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %11, align 4
  %39 = xor i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  ret i32 %40
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
