; ModuleID = 'benchmark/c_transcoder/DISTRIBUTING_ITEMS_PERSON_CANNOT_TAKE_TWO_ITEMS_TYPE/DISTRIBUTING_ITEMS_PERSON_CANNOT_TAKE_TWO_ITEMS_TYPE_processed.c'
source_filename = "benchmark/c_transcoder/DISTRIBUTING_ITEMS_PERSON_CANNOT_TAKE_TWO_ITEMS_TYPE/DISTRIBUTING_ITEMS_PERSON_CANNOT_TAKE_TWO_ITEMS_TYPE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %27

5:                                                ; preds = %3
  %6 = shl nsw i32 %2, 1
  %7 = zext i32 %1 to i64
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi i64 [ 0, %5 ], [ %25, %24 ]
  %10 = getelementptr inbounds i32, i32* %0, i64 %9
  %11 = load i32, i32* %10, align 4, !tbaa !5
  br label %14

12:                                               ; preds = %14
  %13 = icmp eq i64 %23, %7
  br i1 %13, label %24, label %14, !llvm.loop !9

14:                                               ; preds = %8, %12
  %15 = phi i64 [ 0, %8 ], [ %23, %12 ]
  %16 = phi i32 [ 0, %8 ], [ %21, %12 ]
  %17 = getelementptr inbounds i32, i32* %0, i64 %15
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = icmp eq i32 %18, %11
  %20 = zext i1 %19 to i32
  %21 = add nuw nsw i32 %16, %20
  %22 = icmp sgt i32 %21, %6
  %23 = add nuw nsw i64 %15, 1
  br i1 %22, label %27, label %12

24:                                               ; preds = %12
  %25 = add nuw nsw i64 %9, 1
  %26 = icmp eq i64 %25, %7
  br i1 %26, label %27, label %8, !llvm.loop !11

27:                                               ; preds = %24, %14, %3
  %28 = phi i32 [ 1, %3 ], [ 0, %14 ], [ 1, %24 ]
  ret i32 %28
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
!11 = distinct !{!11, !10}
