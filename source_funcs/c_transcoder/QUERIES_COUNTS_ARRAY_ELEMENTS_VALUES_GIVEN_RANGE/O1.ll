; ModuleID = 'benchmark/c_transcoder/QUERIES_COUNTS_ARRAY_ELEMENTS_VALUES_GIVEN_RANGE/QUERIES_COUNTS_ARRAY_ELEMENTS_VALUES_GIVEN_RANGE_processed.c'
source_filename = "benchmark/c_transcoder/QUERIES_COUNTS_ARRAY_ELEMENTS_VALUES_GIVEN_RANGE/QUERIES_COUNTS_ARRAY_ELEMENTS_VALUES_GIVEN_RANGE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = zext i32 %1 to i64
  br label %10

8:                                                ; preds = %10, %4
  %9 = phi i32 [ 0, %4 ], [ %19, %10 ]
  ret i32 %9

10:                                               ; preds = %6, %10
  %11 = phi i64 [ 0, %6 ], [ %20, %10 ]
  %12 = phi i32 [ 0, %6 ], [ %19, %10 ]
  %13 = getelementptr inbounds i32, i32* %0, i64 %11
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = icmp sge i32 %14, %2
  %16 = icmp sle i32 %14, %3
  %17 = and i1 %15, %16
  %18 = zext i1 %17 to i32
  %19 = add nuw nsw i32 %12, %18
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, %7
  br i1 %21, label %8, label %10, !llvm.loop !9
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
