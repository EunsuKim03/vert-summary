; ModuleID = 'benchmark/c_transcoder/COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE/COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE/COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %8, label %4

4:                                                ; preds = %8, %2
  %5 = phi i32 [ 1, %2 ], [ %11, %8 ]
  %6 = phi i32 [ 1, %2 ], [ %12, %8 ]
  %7 = icmp sgt i32 %5, %1
  br i1 %7, label %22, label %14

8:                                                ; preds = %2, %8
  %9 = phi i32 [ %12, %8 ], [ 1, %2 ]
  %10 = phi i32 [ %11, %8 ], [ 1, %2 ]
  %11 = mul nsw i32 %9, %10
  %12 = add nuw nsw i32 %9, 1
  %13 = icmp slt i32 %11, %0
  br i1 %13, label %8, label %4, !llvm.loop !5

14:                                               ; preds = %4, %14
  %15 = phi i32 [ %18, %14 ], [ 0, %4 ]
  %16 = phi i32 [ %20, %14 ], [ %6, %4 ]
  %17 = phi i32 [ %19, %14 ], [ %5, %4 ]
  %18 = add nuw nsw i32 %15, 1
  %19 = mul nsw i32 %16, %17
  %20 = add nuw nsw i32 %16, 1
  %21 = icmp sgt i32 %19, %1
  br i1 %21, label %22, label %14, !llvm.loop !8

22:                                               ; preds = %14, %4
  %23 = phi i32 [ 0, %4 ], [ %18, %14 ]
  ret i32 %23
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
!8 = distinct !{!8, !6, !7}
