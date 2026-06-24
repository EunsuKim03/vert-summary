; ModuleID = 'benchmark/c_transcoder/COUNT_FIBONACCI_NUMBERS_GIVEN_RANGE_LOG_TIME/COUNT_FIBONACCI_NUMBERS_GIVEN_RANGE_LOG_TIME_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_FIBONACCI_NUMBERS_GIVEN_RANGE_LOG_TIME/COUNT_FIBONACCI_NUMBERS_GIVEN_RANGE_LOG_TIME_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %11, %4 ], [ 0, %2 ]
  %6 = phi i32 [ %12, %4 ], [ 1, %2 ]
  %7 = phi i32 [ %6, %4 ], [ 1, %2 ]
  %8 = phi i32 [ %7, %4 ], [ 0, %2 ]
  %9 = icmp sge i32 %8, %0
  %10 = zext i1 %9 to i32
  %11 = add nuw nsw i32 %5, %10
  %12 = add nsw i32 %6, %7
  %13 = icmp sgt i32 %7, %1
  br i1 %13, label %14, label %4, !llvm.loop !5

14:                                               ; preds = %4, %2
  %15 = phi i32 [ 0, %2 ], [ %11, %4 ]
  ret i32 %15
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
