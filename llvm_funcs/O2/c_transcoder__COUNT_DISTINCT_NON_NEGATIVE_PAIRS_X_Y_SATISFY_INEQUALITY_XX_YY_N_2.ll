; ModuleID = 'benchmark/c_transcoder/COUNT_DISTINCT_NON_NEGATIVE_PAIRS_X_Y_SATISFY_INEQUALITY_XX_YY_N_2/COUNT_DISTINCT_NON_NEGATIVE_PAIRS_X_Y_SATISFY_INEQUALITY_XX_YY_N_2_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_DISTINCT_NON_NEGATIVE_PAIRS_X_Y_SATISFY_INEQUALITY_XX_YY_N_2/COUNT_DISTINCT_NON_NEGATIVE_PAIRS_X_Y_SATISFY_INEQUALITY_XX_YY_N_2_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %1, %10
  %4 = phi i32 [ %13, %10 ], [ 0, %1 ]
  %5 = phi i32 [ %12, %10 ], [ 0, %1 ]
  %6 = phi i32 [ %11, %10 ], [ 0, %1 ]
  %7 = icmp slt i32 %4, %0
  br i1 %7, label %15, label %10

8:                                                ; preds = %10, %1
  %9 = phi i32 [ 0, %1 ], [ %11, %10 ]
  ret i32 %9

10:                                               ; preds = %15, %3
  %11 = phi i32 [ %6, %3 ], [ %18, %15 ]
  %12 = add nuw nsw i32 %5, 1
  %13 = mul nsw i32 %12, %12
  %14 = icmp slt i32 %13, %0
  br i1 %14, label %3, label %8, !llvm.loop !5

15:                                               ; preds = %3, %15
  %16 = phi i32 [ %19, %15 ], [ 0, %3 ]
  %17 = phi i32 [ %18, %15 ], [ %6, %3 ]
  %18 = add nsw i32 %17, 1
  %19 = add nuw nsw i32 %16, 1
  %20 = mul nsw i32 %19, %19
  %21 = add nuw nsw i32 %20, %4
  %22 = icmp slt i32 %21, %0
  br i1 %22, label %15, label %10, !llvm.loop !7
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
!7 = distinct !{!7, !6}
