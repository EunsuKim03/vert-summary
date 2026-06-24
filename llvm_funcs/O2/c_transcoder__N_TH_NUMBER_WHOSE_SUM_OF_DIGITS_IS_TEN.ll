; ModuleID = 'benchmark/c_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_processed.c'
source_filename = "benchmark/c_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi i32 [ 0, %1 ], [ %8, %5 ]
  %4 = phi i32 [ 1, %1 ], [ %10, %5 ]
  br label %11

5:                                                ; preds = %11
  %6 = icmp eq i32 %15, 10
  %7 = zext i1 %6 to i32
  %8 = add nuw nsw i32 %3, %7
  %9 = icmp eq i32 %8, %0
  %10 = add nuw nsw i32 %4, 1
  br i1 %9, label %18, label %2

11:                                               ; preds = %2, %11
  %12 = phi i32 [ %4, %2 ], [ %16, %11 ]
  %13 = phi i32 [ 0, %2 ], [ %15, %11 ]
  %14 = urem i32 %12, 10
  %15 = add nuw nsw i32 %14, %13
  %16 = udiv i32 %12, 10
  %17 = icmp ult i32 %12, 10
  br i1 %17, label %5, label %11, !llvm.loop !5

18:                                               ; preds = %5
  ret i32 %4
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
