; ModuleID = 'benchmark/c_transcoder/FIND_THE_MISSING_NUMBER_2/FIND_THE_MISSING_NUMBER_2_processed.c'
source_filename = "benchmark/c_transcoder/FIND_THE_MISSING_NUMBER_2/FIND_THE_MISSING_NUMBER_2_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, i32* %0, align 4, !tbaa !5
  %4 = icmp sgt i32 %1, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = zext i32 %1 to i64
  br label %12

7:                                                ; preds = %12, %2
  %8 = phi i32 [ %3, %2 ], [ %17, %12 ]
  %9 = icmp slt i32 %1, 1
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = add i32 %1, 1
  br label %23

12:                                               ; preds = %5, %12
  %13 = phi i64 [ 1, %5 ], [ %18, %12 ]
  %14 = phi i32 [ %3, %5 ], [ %17, %12 ]
  %15 = getelementptr inbounds i32, i32* %0, i64 %13
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = xor i32 %16, %14
  %18 = add nuw nsw i64 %13, 1
  %19 = icmp eq i64 %18, %6
  br i1 %19, label %7, label %12, !llvm.loop !9

20:                                               ; preds = %23, %7
  %21 = phi i32 [ 1, %7 ], [ %26, %23 ]
  %22 = xor i32 %21, %8
  ret i32 %22

23:                                               ; preds = %10, %23
  %24 = phi i32 [ %27, %23 ], [ 2, %10 ]
  %25 = phi i32 [ %26, %23 ], [ 1, %10 ]
  %26 = xor i32 %24, %25
  %27 = add nuw i32 %24, 1
  %28 = icmp eq i32 %24, %11
  br i1 %28, label %20, label %23, !llvm.loop !12
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
