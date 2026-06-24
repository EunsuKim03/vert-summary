; ModuleID = 'benchmark/c_transcoder/COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X/COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X/COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %5
  %8 = icmp sgt i32 %3, 0
  %9 = zext i32 %2 to i64
  %10 = zext i32 %3 to i64
  br label %11

11:                                               ; preds = %7, %19
  %12 = phi i64 [ 0, %7 ], [ %21, %19 ]
  %13 = phi i32 [ 0, %7 ], [ %20, %19 ]
  br i1 %8, label %14, label %19

14:                                               ; preds = %11
  %15 = getelementptr inbounds i32, i32* %0, i64 %12
  %16 = load i32, i32* %15, align 4, !tbaa !5
  br label %23

17:                                               ; preds = %19, %5
  %18 = phi i32 [ 0, %5 ], [ %20, %19 ]
  ret i32 %18

19:                                               ; preds = %23, %11
  %20 = phi i32 [ %13, %11 ], [ %31, %23 ]
  %21 = add nuw nsw i64 %12, 1
  %22 = icmp eq i64 %21, %9
  br i1 %22, label %17, label %11, !llvm.loop !9

23:                                               ; preds = %14, %23
  %24 = phi i64 [ 0, %14 ], [ %32, %23 ]
  %25 = phi i32 [ %13, %14 ], [ %31, %23 ]
  %26 = getelementptr inbounds i32, i32* %1, i64 %24
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = add nsw i32 %27, %16
  %29 = icmp eq i32 %28, %4
  %30 = zext i1 %29 to i32
  %31 = add nsw i32 %25, %30
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq i64 %32, %10
  br i1 %33, label %19, label %23, !llvm.loop !12
}

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
