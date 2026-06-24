; ModuleID = 'benchmark/c_transcoder/POSITION_ELEMENT_STABLE_SORT/POSITION_ELEMENT_STABLE_SORT_processed.c'
source_filename = "benchmark/c_transcoder/POSITION_ELEMENT_STABLE_SORT/POSITION_ELEMENT_STABLE_SORT_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  %8 = load i32, i32* %7, align 4, !tbaa !5
  %9 = sext i32 %2 to i64
  %10 = zext i32 %1 to i64
  br label %13

11:                                               ; preds = %13, %3
  %12 = phi i32 [ 0, %3 ], [ %25, %13 ]
  ret i32 %12

13:                                               ; preds = %5, %13
  %14 = phi i64 [ 0, %5 ], [ %26, %13 ]
  %15 = phi i32 [ 0, %5 ], [ %25, %13 ]
  %16 = getelementptr inbounds i32, i32* %0, i64 %14
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = icmp slt i32 %17, %8
  %19 = zext i1 %18 to i32
  %20 = add nsw i32 %15, %19
  %21 = icmp eq i32 %17, %8
  %22 = icmp slt i64 %14, %9
  %23 = select i1 %21, i1 %22, i1 false
  %24 = zext i1 %23 to i32
  %25 = add nsw i32 %20, %24
  %26 = add nuw nsw i64 %14, 1
  %27 = icmp eq i64 %26, %10
  br i1 %27, label %11, label %13, !llvm.loop !9
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
