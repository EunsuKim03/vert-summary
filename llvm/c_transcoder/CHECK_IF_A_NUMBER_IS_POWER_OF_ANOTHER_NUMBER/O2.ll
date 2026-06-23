; ModuleID = 'benchmark/c_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 1
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 1
  br i1 %5, label %8, label %12

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 1
  br label %15

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %10, %8 ], [ 1, %4 ]
  %10 = mul nsw i32 %9, %0
  %11 = icmp slt i32 %10, %1
  br i1 %11, label %8, label %12, !llvm.loop !5

12:                                               ; preds = %8, %4
  %13 = phi i32 [ 1, %4 ], [ %10, %8 ]
  %14 = icmp eq i32 %13, %1
  br label %15

15:                                               ; preds = %12, %6
  %16 = phi i1 [ %7, %6 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
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
