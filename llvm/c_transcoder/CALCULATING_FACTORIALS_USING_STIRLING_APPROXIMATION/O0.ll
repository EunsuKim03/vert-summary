; ModuleID = 'benchmark/c_transcoder/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION_processed.c'
source_filename = "benchmark/c_transcoder/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %25

9:                                                ; preds = %1
  store float 0x4005AE1480000000, float* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sitofp i32 %10 to double
  %12 = fmul double 6.280000e+00, %11
  %13 = call double @sqrt(double noundef %12) #2
  %14 = load i32, i32* %3, align 4
  %15 = sitofp i32 %14 to float
  %16 = load float, float* %5, align 4
  %17 = fdiv float %15, %16
  %18 = fpext float %17 to double
  %19 = load i32, i32* %3, align 4
  %20 = sitofp i32 %19 to double
  %21 = call double @pow(double noundef %18, double noundef %20) #2
  %22 = fmul double %13, %21
  %23 = fptosi double %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %9, %8
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #1

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
