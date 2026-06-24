; ModuleID = 'benchmark/c_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND_processed.c'
source_filename = "benchmark/c_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"Wrong input\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %8 = load double, double* %3, align 8
  %9 = fcmp olt double %8, 0.000000e+00
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = load double, double* %4, align 8
  %12 = fcmp olt double %11, 0.000000e+00
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = load double, double* %3, align 8
  %15 = fcmp ogt double %14, 1.200000e+01
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load double, double* %4, align 8
  %18 = fcmp ogt double %17, 6.000000e+01
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %13, %10, %2
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  %22 = load double, double* %3, align 8
  %23 = fcmp oeq double %22, 1.200000e+01
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store double 0.000000e+00, double* %3, align 8
  br label %25

25:                                               ; preds = %24, %21
  %26 = load double, double* %4, align 8
  %27 = fcmp oeq double %26, 6.000000e+01
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store double 0.000000e+00, double* %4, align 8
  br label %29

29:                                               ; preds = %28, %25
  %30 = load double, double* %3, align 8
  %31 = load double, double* %4, align 8
  %32 = call double @llvm.fmuladd.f64(double %30, double 6.000000e+01, double %31)
  %33 = fmul double 5.000000e-01, %32
  %34 = fptosi double %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load double, double* %4, align 8
  %36 = fmul double 6.000000e+00, %35
  %37 = fptosi double %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %38, %39
  %41 = call i32 @abs(i32 noundef %40) #4
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 360, %42
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %43, i32 noundef %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare i32 @printf(i8* noundef, ...) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind readnone willreturn
declare i32 @abs(i32 noundef) #3

declare i32 @min(...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
