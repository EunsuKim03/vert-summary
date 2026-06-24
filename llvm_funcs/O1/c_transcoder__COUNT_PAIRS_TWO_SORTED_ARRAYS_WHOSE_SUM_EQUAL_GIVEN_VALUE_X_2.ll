; ModuleID = 'benchmark/c_transcoder/COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X_2/COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X_2_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X_2/COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X_2_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp sgt i32 %2, 0
  %7 = icmp sgt i32 %3, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %40

9:                                                ; preds = %5
  %10 = add nsw i32 %3, -1
  br label %11

11:                                               ; preds = %9, %33
  %12 = phi i32 [ %36, %33 ], [ %10, %9 ]
  %13 = phi i32 [ %35, %33 ], [ 0, %9 ]
  %14 = phi i32 [ %34, %33 ], [ 0, %9 ]
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i32, i32* %0, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = sext i32 %12 to i64
  %19 = getelementptr inbounds i32, i32* %1, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = add nsw i32 %20, %17
  %22 = icmp eq i32 %21, %4
  br i1 %22, label %23, label %27

23:                                               ; preds = %11
  %24 = add nsw i32 %13, 1
  %25 = add nsw i32 %12, -1
  %26 = add nsw i32 %14, 1
  br label %33

27:                                               ; preds = %11
  %28 = icmp slt i32 %21, %4
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = add nsw i32 %13, 1
  br label %33

31:                                               ; preds = %27
  %32 = add nsw i32 %12, -1
  br label %33

33:                                               ; preds = %29, %31, %23
  %34 = phi i32 [ %26, %23 ], [ %14, %29 ], [ %14, %31 ]
  %35 = phi i32 [ %24, %23 ], [ %30, %29 ], [ %13, %31 ]
  %36 = phi i32 [ %25, %23 ], [ %12, %29 ], [ %32, %31 ]
  %37 = icmp slt i32 %35, %2
  %38 = icmp sgt i32 %36, -1
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %11, label %40, !llvm.loop !9

40:                                               ; preds = %33, %5
  %41 = phi i32 [ 0, %5 ], [ %34, %33 ]
  ret i32 %41
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
