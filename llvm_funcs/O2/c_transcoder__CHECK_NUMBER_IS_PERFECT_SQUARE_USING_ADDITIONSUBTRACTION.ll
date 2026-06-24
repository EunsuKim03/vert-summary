; ModuleID = 'benchmark/c_transcoder/CHECK_NUMBER_IS_PERFECT_SQUARE_USING_ADDITIONSUBTRACTION/CHECK_NUMBER_IS_PERFECT_SQUARE_USING_ADDITIONSUBTRACTION_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_NUMBER_IS_PERFECT_SQUARE_USING_ADDITIONSUBTRACTION/CHECK_NUMBER_IS_PERFECT_SQUARE_USING_ADDITIONSUBTRACTION_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %6, label %11

3:                                                ; preds = %6
  %4 = add nuw nsw i32 %7, 2
  %5 = icmp slt i32 %9, %0
  br i1 %5, label %6, label %11, !llvm.loop !5

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %4, %3 ], [ 1, %1 ]
  %8 = phi i32 [ %9, %3 ], [ 0, %1 ]
  %9 = add nuw nsw i32 %7, %8
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %11, label %3

11:                                               ; preds = %3, %6, %1
  %12 = phi i32 [ 0, %1 ], [ 1, %6 ], [ 0, %3 ]
  ret i32 %12
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
