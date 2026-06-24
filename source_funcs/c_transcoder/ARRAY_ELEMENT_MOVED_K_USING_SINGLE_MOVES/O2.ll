; ModuleID = 'benchmark/c_transcoder/ARRAY_ELEMENT_MOVED_K_USING_SINGLE_MOVES/ARRAY_ELEMENT_MOVED_K_USING_SINGLE_MOVES_processed.c'
source_filename = "benchmark/c_transcoder/ARRAY_ELEMENT_MOVED_K_USING_SINGLE_MOVES/ARRAY_ELEMENT_MOVED_K_USING_SINGLE_MOVES_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add nsw i32 %1, -1
  %5 = icmp sgt i32 %4, %2
  br i1 %5, label %6, label %26

6:                                                ; preds = %3
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %6
  %9 = zext i32 %1 to i64
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i64 [ %23, %10 ], [ 0, %8 ]
  %12 = phi i32 [ %21, %10 ], [ 0, %8 ]
  %13 = phi i32 [ %20, %10 ], [ 0, %8 ]
  %14 = getelementptr inbounds i32, i32* %0, i64 %11
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = icmp sgt i32 %15, %13
  %17 = add nsw i32 %12, 1
  %18 = icmp eq i64 %11, 0
  %19 = select i1 %18, i32 %12, i32 1
  %20 = select i1 %16, i32 %15, i32 %13
  %21 = select i1 %16, i32 %19, i32 %17
  %22 = icmp slt i32 %21, %2
  %23 = add nuw nsw i64 %11, 1
  %24 = icmp ult i64 %23, %9
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %10, label %26, !llvm.loop !9

26:                                               ; preds = %10, %6, %3
  %27 = phi i32 [ %1, %3 ], [ 0, %6 ], [ %20, %10 ]
  ret i32 %27
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
