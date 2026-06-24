; ModuleID = 'benchmark/c_transcoder/COUNT_POSSIBLE_WAYS_TO_CONSTRUCT_BUILDINGS/COUNT_POSSIBLE_WAYS_TO_CONSTRUCT_BUILDINGS_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_POSSIBLE_WAYS_TO_CONSTRUCT_BUILDINGS/COUNT_POSSIBLE_WAYS_TO_CONSTRUCT_BUILDINGS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 2
  br i1 %4, label %7, label %10

5:                                                ; preds = %10
  %6 = add nsw i32 %13, %14
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ %6, %5 ], [ 2, %3 ]
  %9 = mul nsw i32 %8, %8
  br label %17

10:                                               ; preds = %3, %10
  %11 = phi i32 [ %15, %10 ], [ 2, %3 ]
  %12 = phi i32 [ %13, %10 ], [ 1, %3 ]
  %13 = phi i32 [ %14, %10 ], [ 1, %3 ]
  %14 = add nsw i32 %12, %13
  %15 = add nuw i32 %11, 1
  %16 = icmp eq i32 %11, %0
  br i1 %16, label %5, label %10, !llvm.loop !5

17:                                               ; preds = %1, %7
  %18 = phi i32 [ %9, %7 ], [ 4, %1 ]
  ret i32 %18
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
