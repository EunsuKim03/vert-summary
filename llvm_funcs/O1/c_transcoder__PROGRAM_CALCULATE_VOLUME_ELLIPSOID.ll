; ModuleID = 'benchmark/c_transcoder/PROGRAM_CALCULATE_VOLUME_ELLIPSOID/PROGRAM_CALCULATE_VOLUME_ELLIPSOID_processed.c'
source_filename = "benchmark/c_transcoder/PROGRAM_CALCULATE_VOLUME_ELLIPSOID/PROGRAM_CALCULATE_VOLUME_ELLIPSOID_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @f_gold(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = fpext float %0 to double
  %5 = fmul double %4, 0x4010B46DCF333333
  %6 = fpext float %1 to double
  %7 = fmul double %5, %6
  %8 = fpext float %2 to double
  %9 = fmul double %7, %8
  %10 = fptrunc double %9 to float
  ret float %10
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
