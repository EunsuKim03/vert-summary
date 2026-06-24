; ModuleID = 'benchmark/c_transcoder/SUM_SERIES_0_6_0_06_0_006_0_0006_N_TERMS/SUM_SERIES_0_6_0_06_0_006_0_0006_N_TERMS_processed.c'
source_filename = "benchmark/c_transcoder/SUM_SERIES_0_6_0_06_0_006_0_0006_N_TERMS/SUM_SERIES_0_6_0_06_0_006_0_0006_N_TERMS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @f_gold(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sitofp i32 %3 to double
  %5 = call double @pow(double noundef 1.000000e+01, double noundef %4) #2
  %6 = fdiv double 1.000000e+00, %5
  %7 = fsub double 1.000000e+00, %6
  %8 = fmul double 6.660000e-01, %7
  %9 = fptrunc double %8 to float
  ret float %9
}

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
