; ModuleID = 'benchmark/c_transcoder/MODULUS_TWO_FLOAT_DOUBLE_NUMBERS/MODULUS_TWO_FLOAT_DOUBLE_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/MODULUS_TWO_FLOAT_DOUBLE_NUMBERS/MODULUS_TWO_FLOAT_DOUBLE_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local float @f_gold(double noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = fcmp olt double %0, 0.000000e+00
  %4 = fneg double %0
  %5 = select i1 %3, double %4, double %0
  %6 = fcmp olt double %1, 0.000000e+00
  %7 = fneg double %1
  %8 = select i1 %6, double %7, double %1
  %9 = fcmp ult double %5, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2, %10
  %11 = phi double [ %12, %10 ], [ %5, %2 ]
  %12 = fsub double %11, %8
  %13 = fcmp ult double %12, %8
  br i1 %13, label %14, label %10, !llvm.loop !5

14:                                               ; preds = %10, %2
  %15 = phi double [ %5, %2 ], [ %12, %10 ]
  %16 = fneg double %15
  %17 = select i1 %3, double %16, double %15
  %18 = fptrunc double %17 to float
  ret float %18
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
