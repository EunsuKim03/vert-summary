; ModuleID = 'benchmark/c_transcoder/DISTRIBUTING_ITEMS_PERSON_CANNOT_TAKE_TWO_ITEMS_TYPE/DISTRIBUTING_ITEMS_PERSON_CANNOT_TAKE_TWO_ITEMS_TYPE_processed.c'
source_filename = "benchmark/c_transcoder/DISTRIBUTING_ITEMS_PERSON_CANNOT_TAKE_TWO_ITEMS_TYPE/DISTRIBUTING_ITEMS_PERSON_CANNOT_TAKE_TWO_ITEMS_TYPE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %39

5:                                                ; preds = %3
  %6 = shl nsw i32 %2, 1
  %7 = sext i32 %1 to i64
  %8 = zext i32 %1 to i64
  %9 = zext i32 %1 to i64
  %10 = load i32, i32* %0, align 4, !tbaa !5
  br label %13

11:                                               ; preds = %35
  %12 = icmp eq i64 %38, %8
  br i1 %12, label %39, label %13, !llvm.loop !9

13:                                               ; preds = %5, %11
  %14 = phi i64 [ 0, %5 ], [ %38, %11 ]
  %15 = getelementptr inbounds i32, i32* %0, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = icmp eq i32 %10, %16
  %18 = zext i1 %17 to i32
  %19 = icmp slt i32 %6, %18
  br i1 %19, label %35, label %20

20:                                               ; preds = %13, %24
  %21 = phi i64 [ %31, %24 ], [ 1, %13 ]
  %22 = phi i32 [ %29, %24 ], [ %18, %13 ]
  %23 = icmp eq i64 %21, %9
  br i1 %23, label %32, label %24, !llvm.loop !12

24:                                               ; preds = %20
  %25 = getelementptr inbounds i32, i32* %0, i64 %21
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = icmp eq i32 %26, %16
  %28 = zext i1 %27 to i32
  %29 = add nuw nsw i32 %22, %28
  %30 = icmp sgt i32 %29, %6
  %31 = add nuw nsw i64 %21, 1
  br i1 %30, label %32, label %20, !llvm.loop !12

32:                                               ; preds = %20, %24
  %33 = phi i32 [ 1, %24 ], [ 5, %20 ]
  %34 = icmp slt i64 %21, %7
  br label %35

35:                                               ; preds = %32, %13
  %36 = phi i1 [ true, %13 ], [ %34, %32 ]
  %37 = phi i32 [ 1, %13 ], [ %33, %32 ]
  %38 = add nuw nsw i64 %14, 1
  br i1 %36, label %39, label %11

39:                                               ; preds = %35, %11, %3
  %40 = phi i32 [ 2, %3 ], [ %37, %35 ], [ 2, %11 ]
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i32
  ret i32 %42
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
