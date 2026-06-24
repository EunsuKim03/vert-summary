; ModuleID = 'benchmark/c_transcoder/MAXIMUM_TRIPLET_SUM_ARRAY/MAXIMUM_TRIPLET_SUM_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_TRIPLET_SUM_ARRAY/MAXIMUM_TRIPLET_SUM_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = sext i32 %1 to i64
  %6 = zext i32 %1 to i64
  %7 = zext i32 %1 to i64
  br label %15

8:                                                ; preds = %24, %15
  %9 = phi i32 [ %19, %15 ], [ %25, %24 ]
  %10 = add nuw nsw i64 %18, 1
  %11 = add nuw nsw i64 %17, 1
  %12 = icmp eq i64 %20, %6
  br i1 %12, label %13, label %15, !llvm.loop !5

13:                                               ; preds = %8, %2
  %14 = phi i32 [ -2147483648, %2 ], [ %9, %8 ]
  ret i32 %14

15:                                               ; preds = %4, %8
  %16 = phi i64 [ 0, %4 ], [ %20, %8 ]
  %17 = phi i64 [ 1, %4 ], [ %11, %8 ]
  %18 = phi i64 [ 2, %4 ], [ %10, %8 ]
  %19 = phi i32 [ -2147483648, %4 ], [ %9, %8 ]
  %20 = add nuw nsw i64 %16, 1
  %21 = icmp slt i64 %20, %5
  br i1 %21, label %22, label %8

22:                                               ; preds = %15
  %23 = getelementptr inbounds i32, i32* %0, i64 %16
  br label %28

24:                                               ; preds = %40, %28
  %25 = phi i32 [ %31, %28 ], [ %47, %40 ]
  %26 = add nuw nsw i64 %30, 1
  %27 = icmp eq i64 %32, %7
  br i1 %27, label %8, label %28, !llvm.loop !8

28:                                               ; preds = %22, %24
  %29 = phi i64 [ %17, %22 ], [ %32, %24 ]
  %30 = phi i64 [ %18, %22 ], [ %26, %24 ]
  %31 = phi i32 [ %19, %22 ], [ %25, %24 ]
  %32 = add nuw nsw i64 %29, 1
  %33 = trunc i64 %32 to i32
  %34 = icmp slt i32 %33, %1
  br i1 %34, label %35, label %24

35:                                               ; preds = %28
  %36 = load i32, i32* %23, align 4, !tbaa !9
  %37 = getelementptr inbounds i32, i32* %0, i64 %29
  %38 = load i32, i32* %37, align 4, !tbaa !9
  %39 = add nsw i32 %38, %36
  br label %40

40:                                               ; preds = %35, %40
  %41 = phi i64 [ %30, %35 ], [ %48, %40 ]
  %42 = phi i32 [ %31, %35 ], [ %47, %40 ]
  %43 = getelementptr inbounds i32, i32* %0, i64 %41
  %44 = load i32, i32* %43, align 4, !tbaa !9
  %45 = add nsw i32 %39, %44
  %46 = icmp slt i32 %42, %45
  %47 = select i1 %46, i32 %45, i32 %42
  %48 = add nuw nsw i64 %41, 1
  %49 = trunc i64 %48 to i32
  %50 = icmp slt i32 %49, %1
  br i1 %50, label %40, label %24, !llvm.loop !13
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
!8 = distinct !{!8, !6, !7}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = distinct !{!13, !6, !7}
