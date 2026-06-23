; ModuleID = 'benchmark/c_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1_processed.c'
source_filename = "benchmark/c_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = add i32 %0, 1
  %5 = zext i32 %4 to i64
  br label %10

6:                                                ; preds = %10
  %7 = trunc i64 %15 to i32
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ 1, %1 ], [ %7, %6 ]
  ret i32 %9

10:                                               ; preds = %3, %10
  %11 = phi i64 [ 1, %3 ], [ %16, %10 ]
  %12 = phi i64 [ 1, %3 ], [ %15, %10 ]
  %13 = add nuw nsw i64 %11, 9
  %14 = mul nsw i64 %12, %13
  %15 = sdiv i64 %14, %11
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, %5
  br i1 %17, label %6, label %10, !llvm.loop !5
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
