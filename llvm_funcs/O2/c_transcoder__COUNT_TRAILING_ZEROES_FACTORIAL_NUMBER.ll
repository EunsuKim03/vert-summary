; ModuleID = 'benchmark/c_transcoder/COUNT_TRAILING_ZEROES_FACTORIAL_NUMBER/COUNT_TRAILING_ZEROES_FACTORIAL_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_TRAILING_ZEROES_FACTORIAL_NUMBER/COUNT_TRAILING_ZEROES_FACTORIAL_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 4
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = udiv i32 %0, 5
  br label %7

5:                                                ; preds = %7, %1
  %6 = phi i32 [ 0, %1 ], [ %11, %7 ]
  ret i32 %6

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %13, %7 ], [ %4, %3 ]
  %9 = phi i32 [ %12, %7 ], [ 5, %3 ]
  %10 = phi i32 [ %11, %7 ], [ 0, %3 ]
  %11 = add nsw i32 %8, %10
  %12 = mul nuw nsw i32 %9, 5
  %13 = sdiv i32 %0, %12
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %7, label %5, !llvm.loop !5
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
