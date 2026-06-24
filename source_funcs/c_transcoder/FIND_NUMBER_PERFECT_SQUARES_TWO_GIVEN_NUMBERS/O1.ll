; ModuleID = 'benchmark/c_transcoder/FIND_NUMBER_PERFECT_SQUARES_TWO_GIVEN_NUMBERS/FIND_NUMBER_PERFECT_SQUARES_TWO_GIVEN_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/FIND_NUMBER_PERFECT_SQUARES_TWO_GIVEN_NUMBERS/FIND_NUMBER_PERFECT_SQUARES_TWO_GIVEN_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %10
  %5 = phi i32 [ %12, %10 ], [ %0, %2 ]
  %6 = phi i32 [ %11, %10 ], [ 0, %2 ]
  %7 = icmp slt i32 %5, 1
  br i1 %7, label %10, label %14

8:                                                ; preds = %10, %2
  %9 = phi i32 [ 0, %2 ], [ %11, %10 ]
  ret i32 %9

10:                                               ; preds = %14, %4
  %11 = phi i32 [ %6, %4 ], [ %20, %14 ]
  %12 = add nsw i32 %5, 1
  %13 = icmp eq i32 %5, %1
  br i1 %13, label %8, label %4, !llvm.loop !5

14:                                               ; preds = %4, %14
  %15 = phi i32 [ %22, %14 ], [ 1, %4 ]
  %16 = phi i32 [ %21, %14 ], [ 1, %4 ]
  %17 = phi i32 [ %20, %14 ], [ %6, %4 ]
  %18 = icmp eq i32 %15, %5
  %19 = zext i1 %18 to i32
  %20 = add nsw i32 %17, %19
  %21 = add nuw nsw i32 %16, 1
  %22 = mul nsw i32 %21, %21
  %23 = icmp sgt i32 %22, %5
  br i1 %23, label %10, label %14, !llvm.loop !8
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
