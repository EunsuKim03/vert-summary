; ModuleID = 'benchmark/c_transcoder/FLOOR_IN_A_SORTED_ARRAY/FLOOR_IN_A_SORTED_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/FLOOR_IN_A_SORTED_ARRAY/FLOOR_IN_A_SORTED_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add nsw i32 %1, -1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %8 = icmp sgt i32 %7, %2
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = load i32, i32* %0, align 4, !tbaa !5
  %11 = icmp sle i32 %10, %2
  %12 = icmp sgt i32 %1, 1
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = zext i32 %1 to i64
  br label %16

16:                                               ; preds = %14, %24
  %17 = phi i64 [ 1, %14 ], [ %25, %24 ]
  %18 = getelementptr inbounds i32, i32* %0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = icmp sgt i32 %19, %2
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = trunc i64 %17 to i32
  %23 = add nsw i32 %22, -1
  br label %27

24:                                               ; preds = %16
  %25 = add nuw nsw i64 %17, 1
  %26 = icmp eq i64 %25, %15
  br i1 %26, label %27, label %16, !llvm.loop !9

27:                                               ; preds = %24, %21, %9, %3
  %28 = phi i32 [ %4, %3 ], [ -1, %9 ], [ %23, %21 ], [ -1, %24 ]
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
