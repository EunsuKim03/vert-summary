; ModuleID = 'benchmark/c_transcoder/NUMBER_ORDERED_PAIRS_AI_AJ_0/NUMBER_ORDERED_PAIRS_AI_AJ_0_processed.c'
source_filename = "benchmark/c_transcoder/NUMBER_ORDERED_PAIRS_AI_AJ_0/NUMBER_ORDERED_PAIRS_AI_AJ_0_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = sext i32 %1 to i64
  %6 = zext i32 %1 to i64
  %7 = zext i32 %1 to i64
  br label %14

8:                                                ; preds = %23, %14
  %9 = phi i32 [ %17, %14 ], [ %31, %23 ]
  %10 = add nuw nsw i64 %16, 1
  %11 = icmp eq i64 %18, %6
  br i1 %11, label %12, label %14, !llvm.loop !5

12:                                               ; preds = %8, %2
  %13 = phi i32 [ 0, %2 ], [ %9, %8 ]
  ret i32 %13

14:                                               ; preds = %4, %8
  %15 = phi i64 [ 0, %4 ], [ %18, %8 ]
  %16 = phi i64 [ 1, %4 ], [ %10, %8 ]
  %17 = phi i32 [ 0, %4 ], [ %9, %8 ]
  %18 = add nuw nsw i64 %15, 1
  %19 = icmp slt i64 %18, %5
  br i1 %19, label %20, label %8

20:                                               ; preds = %14
  %21 = getelementptr inbounds i32, i32* %0, i64 %15
  %22 = load i32, i32* %21, align 4, !tbaa !8
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ %16, %20 ], [ %32, %23 ]
  %25 = phi i32 [ %17, %20 ], [ %31, %23 ]
  %26 = getelementptr inbounds i32, i32* %0, i64 %24
  %27 = load i32, i32* %26, align 4, !tbaa !8
  %28 = and i32 %27, %22
  %29 = icmp eq i32 %28, 0
  %30 = add nsw i32 %25, 2
  %31 = select i1 %29, i32 %30, i32 %25
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq i64 %32, %7
  br i1 %33, label %8, label %23, !llvm.loop !12
}

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !6, !7}
