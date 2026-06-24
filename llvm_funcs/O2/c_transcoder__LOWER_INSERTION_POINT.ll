; ModuleID = 'benchmark/c_transcoder/LOWER_INSERTION_POINT/LOWER_INSERTION_POINT_processed.c'
source_filename = "benchmark/c_transcoder/LOWER_INSERTION_POINT/LOWER_INSERTION_POINT_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, i32* %0, align 4, !tbaa !5
  %5 = icmp sgt i32 %4, %2
  br i1 %5, label %44, label %6

6:                                                ; preds = %3
  %7 = add nsw i32 %1, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %44, label %12

12:                                               ; preds = %6
  %13 = icmp sgt i32 %1, 1
  br i1 %13, label %14, label %28

14:                                               ; preds = %12
  %15 = getelementptr inbounds i32, i32* %0, i64 1
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = icmp slt i32 %16, %2
  br i1 %17, label %18, label %28

18:                                               ; preds = %14, %22
  %19 = phi i32 [ %27, %22 ], [ 2, %14 ]
  %20 = phi i32 [ %19, %22 ], [ 1, %14 ]
  %21 = icmp slt i32 %19, %1
  br i1 %21, label %22, label %28, !llvm.loop !9

22:                                               ; preds = %18
  %23 = zext i32 %19 to i64
  %24 = getelementptr inbounds i32, i32* %0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = icmp slt i32 %25, %2
  %27 = shl nsw i32 %19, 1
  br i1 %26, label %18, label %28, !llvm.loop !9

28:                                               ; preds = %18, %22, %14, %12
  %29 = phi i32 [ 0, %12 ], [ 0, %14 ], [ %20, %22 ], [ %20, %18 ]
  %30 = icmp slt i32 %29, %1
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  br label %33

33:                                               ; preds = %31, %38
  %34 = phi i64 [ %32, %31 ], [ %39, %38 ]
  %35 = getelementptr inbounds i32, i32* %0, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !5
  %37 = icmp slt i32 %36, %2
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = add nuw nsw i64 %34, 1
  %40 = trunc i64 %39 to i32
  %41 = icmp slt i32 %40, %1
  br i1 %41, label %33, label %44, !llvm.loop !11

42:                                               ; preds = %33
  %43 = trunc i64 %34 to i32
  br label %44

44:                                               ; preds = %38, %42, %28, %6, %3
  %45 = phi i32 [ 0, %3 ], [ %1, %6 ], [ %29, %28 ], [ %43, %42 ], [ %1, %38 ]
  ret i32 %45
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
