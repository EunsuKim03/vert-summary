; ModuleID = 'benchmark/c_transcoder/PROGRAM_CALCULATE_VOLUME_ELLIPSOID/PROGRAM_CALCULATE_VOLUME_ELLIPSOID_processed.c'
source_filename = "benchmark/c_transcoder/PROGRAM_CALCULATE_VOLUME_ELLIPSOID/PROGRAM_CALCULATE_VOLUME_ELLIPSOID_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @f_gold(float noundef %0, float noundef %1, float noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  store float 0x40091EB860000000, float* %7, align 4
  %8 = load float, float* %7, align 4
  %9 = fpext float %8 to double
  %10 = fmul double 1.330000e+00, %9
  %11 = load float, float* %4, align 4
  %12 = fpext float %11 to double
  %13 = fmul double %10, %12
  %14 = load float, float* %5, align 4
  %15 = fpext float %14 to double
  %16 = fmul double %13, %15
  %17 = load float, float* %6, align 4
  %18 = fpext float %17 to double
  %19 = fmul double %16, %18
  %20 = fptrunc double %19 to float
  ret float %20
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
