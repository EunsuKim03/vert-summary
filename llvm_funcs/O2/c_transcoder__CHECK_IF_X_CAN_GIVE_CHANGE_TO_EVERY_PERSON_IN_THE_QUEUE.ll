; ModuleID = 'benchmark/c_transcoder/CHECK_IF_X_CAN_GIVE_CHANGE_TO_EVERY_PERSON_IN_THE_QUEUE/CHECK_IF_X_CAN_GIVE_CHANGE_TO_EVERY_PERSON_IN_THE_QUEUE_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_IF_X_CAN_GIVE_CHANGE_TO_EVERY_PERSON_IN_THE_QUEUE/CHECK_IF_X_CAN_GIVE_CHANGE_TO_EVERY_PERSON_IN_THE_QUEUE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %35

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %30
  %7 = phi i64 [ 0, %4 ], [ %33, %30 ]
  %8 = phi i32 [ 0, %4 ], [ %32, %30 ]
  %9 = phi i32 [ 0, %4 ], [ %31, %30 ]
  %10 = getelementptr inbounds i32, i32* %0, i64 %7
  %11 = load i32, i32* %10, align 4, !tbaa !5
  switch i32 %11, label %19 [
    i32 5, label %12
    i32 10, label %14
  ]

12:                                               ; preds = %6
  %13 = add nsw i32 %9, 1
  br label %30

14:                                               ; preds = %6
  %15 = icmp sgt i32 %9, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %14
  %17 = add nsw i32 %9, -1
  %18 = add nsw i32 %8, 1
  br label %30

19:                                               ; preds = %6
  %20 = icmp sgt i32 %9, 0
  %21 = icmp sgt i32 %8, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = add nsw i32 %9, -1
  %25 = add nsw i32 %8, -1
  br label %30

26:                                               ; preds = %19
  %27 = icmp sgt i32 %9, 2
  br i1 %27, label %28, label %35

28:                                               ; preds = %26
  %29 = add nsw i32 %9, -3
  br label %30

30:                                               ; preds = %12, %23, %28, %16
  %31 = phi i32 [ %13, %12 ], [ %17, %16 ], [ %24, %23 ], [ %29, %28 ]
  %32 = phi i32 [ %8, %12 ], [ %18, %16 ], [ %25, %23 ], [ %8, %28 ]
  %33 = add nuw nsw i64 %7, 1
  %34 = icmp eq i64 %33, %5
  br i1 %34, label %35, label %6, !llvm.loop !9

35:                                               ; preds = %30, %14, %26, %2
  %36 = phi i32 [ 1, %2 ], [ 0, %26 ], [ 0, %14 ], [ 1, %30 ]
  ret i32 %36
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
