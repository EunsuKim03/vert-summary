; ModuleID = 'benchmark/c_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_processed.c'
source_filename = "benchmark/c_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi i32 [ undef, %1 ], [ %11, %6 ]
  %4 = phi i32 [ 0, %1 ], [ %9, %6 ]
  %5 = phi i32 [ 1, %1 ], [ %12, %6 ]
  br label %13

6:                                                ; preds = %13
  %7 = icmp eq i32 %17, 10
  %8 = zext i1 %7 to i32
  %9 = add nuw nsw i32 %4, %8
  %10 = icmp eq i32 %9, %0
  %11 = select i1 %10, i32 %5, i32 %3
  %12 = add nuw nsw i32 %5, 1
  br i1 %10, label %20, label %2, !llvm.loop !5

13:                                               ; preds = %2, %13
  %14 = phi i32 [ %5, %2 ], [ %18, %13 ]
  %15 = phi i32 [ 0, %2 ], [ %17, %13 ]
  %16 = srem i32 %14, 10
  %17 = add nsw i32 %16, %15
  %18 = sdiv i32 %14, 10
  %19 = icmp sgt i32 %14, 9
  br i1 %19, label %13, label %6, !llvm.loop !7

20:                                               ; preds = %6
  ret i32 %11
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
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !8, !6}
!8 = !{!"llvm.loop.mustprogress"}
