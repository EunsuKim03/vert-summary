; ModuleID = 'benchmark/c_transcoder/FIND_THE_NUMBER_OCCURRING_ODD_NUMBER_OF_TIMES/FIND_THE_NUMBER_OCCURRING_ODD_NUMBER_OF_TIMES_processed.c'
source_filename = "benchmark/c_transcoder/FIND_THE_NUMBER_OCCURRING_ODD_NUMBER_OF_TIMES/FIND_THE_NUMBER_OCCURRING_ODD_NUMBER_OF_TIMES_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %33

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = zext i32 %1 to i64
  br label %9

7:                                                ; preds = %30
  %8 = icmp eq i64 %32, %5
  br i1 %8, label %33, label %9, !llvm.loop !5

9:                                                ; preds = %4, %7
  %10 = phi i64 [ 0, %4 ], [ %32, %7 ]
  %11 = phi i32 [ undef, %4 ], [ %31, %7 ]
  %12 = getelementptr inbounds i32, i32* %0, i64 %10
  %13 = load i32, i32* %12, align 4, !tbaa !8
  br label %17

14:                                               ; preds = %17
  %15 = and i32 %24, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %27

17:                                               ; preds = %9, %17
  %18 = phi i64 [ 0, %9 ], [ %25, %17 ]
  %19 = phi i32 [ 0, %9 ], [ %24, %17 ]
  %20 = getelementptr inbounds i32, i32* %0, i64 %18
  %21 = load i32, i32* %20, align 4, !tbaa !8
  %22 = icmp eq i32 %13, %21
  %23 = zext i1 %22 to i32
  %24 = add nuw nsw i32 %19, %23
  %25 = add nuw nsw i64 %18, 1
  %26 = icmp eq i64 %25, %6
  br i1 %26, label %14, label %17, !llvm.loop !12

27:                                               ; preds = %14
  %28 = getelementptr inbounds i32, i32* %0, i64 %10
  %29 = load i32, i32* %28, align 4, !tbaa !8
  br label %30

30:                                               ; preds = %14, %27
  %31 = phi i32 [ %29, %27 ], [ %11, %14 ]
  %32 = add nuw nsw i64 %10, 1
  br i1 %16, label %7, label %33

33:                                               ; preds = %30, %7, %2
  %34 = phi i32 [ -1, %2 ], [ %31, %30 ], [ -1, %7 ]
  ret i32 %34
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
