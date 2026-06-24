; ModuleID = 'benchmark/c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_processed.c'
source_filename = "benchmark/c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @f_gold(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  store double 0.000000e+00, double* %4, align 8
  store i8 1, i8* %5, align 1
  br label %6

6:                                                ; preds = %42, %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %2, align 4
  %12 = load i8, i8* %5, align 1
  %13 = trunc i8 %12 to i1
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load i8, i8* %5, align 1
  %16 = trunc i8 %15 to i1
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %5, align 1
  %19 = load double, double* %4, align 8
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  %22 = sitofp i32 %21 to double
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  %25 = sitofp i32 %24 to double
  %26 = fdiv double %22, %25
  %27 = fadd double %19, %26
  store double %27, double* %4, align 8
  br label %42

28:                                               ; preds = %9
  %29 = load i8, i8* %5, align 1
  %30 = trunc i8 %29 to i1
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %5, align 1
  %33 = load double, double* %4, align 8
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  %36 = sitofp i32 %35 to double
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %36, %39
  %41 = fsub double %33, %40
  store double %41, double* %4, align 8
  br label %42

42:                                               ; preds = %28, %14
  br label %6, !llvm.loop !6

43:                                               ; preds = %6
  %44 = load double, double* %4, align 8
  %45 = fptrunc double %44 to float
  ret float %45
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
