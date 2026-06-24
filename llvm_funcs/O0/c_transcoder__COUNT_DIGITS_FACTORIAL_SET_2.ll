; ModuleID = 'benchmark/c_transcoder/COUNT_DIGITS_FACTORIAL_SET_2/COUNT_DIGITS_FACTORIAL_SET_2_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_DIGITS_FACTORIAL_SET_2/COUNT_DIGITS_FACTORIAL_SET_2_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_gold(i32 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %29

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i64 1, i64* %2, align 8
  br label %29

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = sitofp i32 %13 to double
  %15 = load i32, i32* %3, align 4
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %16, 0x4005BF0A8B145769
  %18 = call double @log10(double noundef %17) #3
  %19 = load i32, i32* %3, align 4
  %20 = sitofp i32 %19 to double
  %21 = fmul double 0x401921FB54442D18, %20
  %22 = call double @log10(double noundef %21) #3
  %23 = fdiv double %22, 2.000000e+00
  %24 = call double @llvm.fmuladd.f64(double %14, double %18, double %23)
  store double %24, double* %4, align 8
  %25 = load double, double* %4, align 8
  %26 = call double @llvm.floor.f64(double %25)
  %27 = fadd double %26, 1.000000e+00
  %28 = fptosi double %27 to i64
  store i64 %28, i64* %2, align 8
  br label %29

29:                                               ; preds = %12, %11, %7
  %30 = load i64, i64* %2, align 8
  ret i64 %30
}

; Function Attrs: nounwind
declare double @log10(double noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
