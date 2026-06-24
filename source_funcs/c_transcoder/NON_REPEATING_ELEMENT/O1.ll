; ModuleID = 'benchmark/c_transcoder/NON_REPEATING_ELEMENT/NON_REPEATING_ELEMENT_processed.c'
source_filename = "benchmark/c_transcoder/NON_REPEATING_ELEMENT/NON_REPEATING_ELEMENT_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %35

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = zext i32 %1 to i64
  br label %9

7:                                                ; preds = %32
  %8 = icmp eq i64 %34, %5
  br i1 %8, label %35, label %9, !llvm.loop !5

9:                                                ; preds = %4, %7
  %10 = phi i64 [ 0, %4 ], [ %34, %7 ]
  %11 = phi i32 [ undef, %4 ], [ %33, %7 ]
  %12 = getelementptr inbounds i32, i32* %0, i64 %10
  br label %13

13:                                               ; preds = %9, %21
  %14 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %15 = icmp eq i64 %10, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %12, align 4, !tbaa !8
  %18 = getelementptr inbounds i32, i32* %0, i64 %14
  %19 = load i32, i32* %18, align 4, !tbaa !8
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %13, %16
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, %6
  br i1 %23, label %26, label %13, !llvm.loop !12

24:                                               ; preds = %16
  %25 = trunc i64 %14 to i32
  br label %26

26:                                               ; preds = %21, %24
  %27 = phi i32 [ %25, %24 ], [ %1, %21 ]
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds i32, i32* %0, i64 %10
  %31 = load i32, i32* %30, align 4, !tbaa !8
  br label %32

32:                                               ; preds = %26, %29
  %33 = phi i32 [ %31, %29 ], [ %11, %26 ]
  %34 = add nuw nsw i64 %10, 1
  br i1 %28, label %35, label %7

35:                                               ; preds = %32, %7, %2
  %36 = phi i32 [ -1, %2 ], [ %33, %32 ], [ -1, %7 ]
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !6, !7}
