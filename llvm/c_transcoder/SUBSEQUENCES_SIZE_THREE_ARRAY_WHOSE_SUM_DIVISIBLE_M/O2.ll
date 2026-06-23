; ModuleID = 'benchmark/c_transcoder/SUBSEQUENCES_SIZE_THREE_ARRAY_WHOSE_SUM_DIVISIBLE_M/SUBSEQUENCES_SIZE_THREE_ARRAY_WHOSE_SUM_DIVISIBLE_M_processed.c'
source_filename = "benchmark/c_transcoder/SUBSEQUENCES_SIZE_THREE_ARRAY_WHOSE_SUM_DIVISIBLE_M/SUBSEQUENCES_SIZE_THREE_ARRAY_WHOSE_SUM_DIVISIBLE_M_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  %7 = zext i32 %1 to i64
  br label %15

8:                                                ; preds = %24, %15
  %9 = phi i32 [ %19, %15 ], [ %25, %24 ]
  %10 = add nuw nsw i64 %18, 1
  %11 = add nuw nsw i64 %17, 1
  %12 = icmp eq i64 %20, %7
  br i1 %12, label %13, label %15, !llvm.loop !5

13:                                               ; preds = %8, %3
  %14 = phi i32 [ 0, %3 ], [ %9, %8 ]
  ret i32 %14

15:                                               ; preds = %5, %8
  %16 = phi i64 [ 0, %5 ], [ %20, %8 ]
  %17 = phi i64 [ 1, %5 ], [ %11, %8 ]
  %18 = phi i64 [ 2, %5 ], [ %10, %8 ]
  %19 = phi i32 [ 0, %5 ], [ %9, %8 ]
  %20 = add nuw nsw i64 %16, 1
  %21 = icmp ult i64 %20, %6
  br i1 %21, label %22, label %8

22:                                               ; preds = %15
  %23 = getelementptr inbounds i32, i32* %0, i64 %16
  br label %28

24:                                               ; preds = %40, %28
  %25 = phi i32 [ %31, %28 ], [ %49, %40 ]
  %26 = add nuw nsw i64 %30, 1
  %27 = icmp eq i64 %32, %7
  br i1 %27, label %8, label %28, !llvm.loop !7

28:                                               ; preds = %22, %24
  %29 = phi i64 [ %17, %22 ], [ %32, %24 ]
  %30 = phi i64 [ %18, %22 ], [ %26, %24 ]
  %31 = phi i32 [ %19, %22 ], [ %25, %24 ]
  %32 = add nuw nsw i64 %29, 1
  %33 = trunc i64 %32 to i32
  %34 = icmp slt i32 %33, %1
  br i1 %34, label %35, label %24

35:                                               ; preds = %28
  %36 = load i32, i32* %23, align 4, !tbaa !8
  %37 = getelementptr inbounds i32, i32* %0, i64 %29
  %38 = load i32, i32* %37, align 4, !tbaa !8
  %39 = add nsw i32 %38, %36
  br label %40

40:                                               ; preds = %35, %40
  %41 = phi i64 [ %30, %35 ], [ %50, %40 ]
  %42 = phi i32 [ %31, %35 ], [ %49, %40 ]
  %43 = getelementptr inbounds i32, i32* %0, i64 %41
  %44 = load i32, i32* %43, align 4, !tbaa !8
  %45 = add nsw i32 %39, %44
  %46 = srem i32 %45, %2
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = add nsw i32 %42, %48
  %50 = add nuw nsw i64 %41, 1
  %51 = trunc i64 %50 to i32
  %52 = icmp slt i32 %51, %1
  br i1 %52, label %40, label %24, !llvm.loop !12
}

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !6}
