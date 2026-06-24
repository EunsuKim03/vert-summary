; ModuleID = 'benchmark/c_transcoder/MODULUS_TWO_FLOAT_DOUBLE_NUMBERS/MODULUS_TWO_FLOAT_DOUBLE_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/MODULUS_TWO_FLOAT_DOUBLE_NUMBERS/MODULUS_TWO_FLOAT_DOUBLE_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @f_gold(double noundef %0, double noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %7 = load double, double* %4, align 8
  %8 = fcmp olt double %7, 0.000000e+00
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load double, double* %4, align 8
  %11 = fneg double %10
  store double %11, double* %6, align 8
  br label %14

12:                                               ; preds = %2
  %13 = load double, double* %4, align 8
  store double %13, double* %6, align 8
  br label %14

14:                                               ; preds = %12, %9
  %15 = load double, double* %5, align 8
  %16 = fcmp olt double %15, 0.000000e+00
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load double, double* %5, align 8
  %19 = fneg double %18
  store double %19, double* %5, align 8
  br label %20

20:                                               ; preds = %17, %14
  br label %21

21:                                               ; preds = %25, %20
  %22 = load double, double* %6, align 8
  %23 = load double, double* %5, align 8
  %24 = fcmp oge double %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load double, double* %6, align 8
  %27 = load double, double* %5, align 8
  %28 = fsub double %26, %27
  store double %28, double* %6, align 8
  br label %21, !llvm.loop !6

29:                                               ; preds = %21
  %30 = load double, double* %4, align 8
  %31 = fcmp olt double %30, 0.000000e+00
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load double, double* %6, align 8
  %34 = fneg double %33
  %35 = fptrunc double %34 to float
  store float %35, float* %3, align 4
  br label %39

36:                                               ; preds = %29
  %37 = load double, double* %6, align 8
  %38 = fptrunc double %37 to float
  store float %38, float* %3, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = load float, float* %3, align 4
  ret float %40
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
