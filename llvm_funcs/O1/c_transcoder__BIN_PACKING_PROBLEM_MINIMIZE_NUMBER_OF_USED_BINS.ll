; ModuleID = 'benchmark/c_transcoder/BIN_PACKING_PROBLEM_MINIMIZE_NUMBER_OF_USED_BINS/BIN_PACKING_PROBLEM_MINIMIZE_NUMBER_OF_USED_BINS_processed.c'
source_filename = "benchmark/c_transcoder/BIN_PACKING_PROBLEM_MINIMIZE_NUMBER_OF_USED_BINS/BIN_PACKING_PROBLEM_MINIMIZE_NUMBER_OF_USED_BINS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  br label %9

7:                                                ; preds = %9, %3
  %8 = phi i32 [ 0, %3 ], [ %17, %9 ]
  ret i32 %8

9:                                                ; preds = %5, %9
  %10 = phi i64 [ 0, %5 ], [ %20, %9 ]
  %11 = phi i32 [ %2, %5 ], [ %19, %9 ]
  %12 = phi i32 [ 0, %5 ], [ %17, %9 ]
  %13 = getelementptr inbounds i32, i32* %0, i64 %10
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = icmp slt i32 %11, %14
  %16 = zext i1 %15 to i32
  %17 = add nuw nsw i32 %12, %16
  %18 = select i1 %15, i32 %2, i32 %11
  %19 = sub nsw i32 %18, %14
  %20 = add nuw nsw i64 %10, 1
  %21 = icmp eq i64 %20, %6
  br i1 %21, label %7, label %9, !llvm.loop !9
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
