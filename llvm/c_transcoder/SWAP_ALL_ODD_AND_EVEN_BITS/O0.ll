; ModuleID = 'benchmark/c_transcoder/SWAP_ALL_ODD_AND_EVEN_BITS/SWAP_ALL_ODD_AND_EVEN_BITS_processed.c'
source_filename = "benchmark/c_transcoder/SWAP_ALL_ODD_AND_EVEN_BITS/SWAP_ALL_ODD_AND_EVEN_BITS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %5, -1431655766
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 1431655765
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = lshr i32 %9, 1
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %13, %14
  ret i32 %15
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
