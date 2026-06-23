; ModuleID = 'benchmark/c_transcoder/COUNT_FREQUENCY_K_MATRIX_SIZE_N_MATRIXI_J_IJ/COUNT_FREQUENCY_K_MATRIX_SIZE_N_MATRIXI_J_IJ_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_FREQUENCY_K_MATRIX_SIZE_N_MATRIXI_J_IJ/COUNT_FREQUENCY_K_MATRIX_SIZE_N_MATRIXI_J_IJ_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, 1
  %8 = load i32, i32* %5, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %3, align 4
  br label %19

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 2, %14
  %16 = add nsw i32 %15, 1
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %13, %10
  %20 = load i32, i32* %3, align 4
  ret i32 %20
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
