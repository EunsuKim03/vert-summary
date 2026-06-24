; ModuleID = 'benchmark/c_transcoder/COUNT_DISTINCT_NON_NEGATIVE_PAIRS_X_Y_SATISFY_INEQUALITY_XX_YY_N_2_1/COUNT_DISTINCT_NON_NEGATIVE_PAIRS_X_Y_SATISFY_INEQUALITY_XX_YY_N_2_1_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_DISTINCT_NON_NEGATIVE_PAIRS_X_Y_SATISFY_INEQUALITY_XX_YY_N_2_1/COUNT_DISTINCT_NON_NEGATIVE_PAIRS_X_Y_SATISFY_INEQUALITY_XX_YY_N_2_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 0, %1 ], [ %6, %2 ]
  %4 = mul nsw i32 %3, %3
  %5 = icmp slt i32 %4, %0
  %6 = add nuw nsw i32 %3, 1
  br i1 %5, label %2, label %7, !llvm.loop !5

7:                                                ; preds = %2
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %19, %7
  %10 = phi i32 [ 0, %7 ], [ %13, %19 ]
  %11 = phi i32 [ %3, %7 ], [ %17, %19 ]
  %12 = phi i32 [ 0, %7 ], [ %14, %19 ]
  %13 = add nsw i32 %10, %11
  %14 = add nuw nsw i32 %12, 1
  %15 = mul nsw i32 %14, %14
  br label %16

16:                                               ; preds = %19, %9
  %17 = phi i32 [ %11, %9 ], [ %20, %19 ]
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = add nsw i32 %17, -1
  %21 = mul nsw i32 %20, %20
  %22 = add nuw nsw i32 %21, %15
  %23 = icmp slt i32 %22, %0
  br i1 %23, label %9, label %16, !llvm.loop !7

24:                                               ; preds = %16, %7
  %25 = phi i32 [ 0, %7 ], [ %13, %16 ]
  ret i32 %25
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
