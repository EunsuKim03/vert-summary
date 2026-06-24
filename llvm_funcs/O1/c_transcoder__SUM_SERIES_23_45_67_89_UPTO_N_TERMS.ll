; ModuleID = 'benchmark/c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_processed.c'
source_filename = "benchmark/c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local float @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %21

3:                                                ; preds = %1, %3
  %4 = phi i1 [ %17, %3 ], [ true, %1 ]
  %5 = phi double [ %16, %3 ], [ 0.000000e+00, %1 ]
  %6 = phi i32 [ %11, %3 ], [ 1, %1 ]
  %7 = phi i32 [ %8, %3 ], [ %0, %1 ]
  %8 = add nsw i32 %7, -1
  %9 = add nuw nsw i32 %6, 1
  %10 = sitofp i32 %9 to double
  %11 = add nuw nsw i32 %6, 2
  %12 = sitofp i32 %11 to double
  %13 = fdiv double %10, %12
  %14 = fneg double %13
  %15 = select i1 %4, double %13, double %14
  %16 = fadd double %5, %15
  %17 = xor i1 %4, true
  %18 = icmp sgt i32 %7, 1
  br i1 %18, label %3, label %19, !llvm.loop !5

19:                                               ; preds = %3
  %20 = fptrunc double %16 to float
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi float [ 0.000000e+00, %1 ], [ %20, %19 ]
  ret float %22
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
