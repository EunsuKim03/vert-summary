; ModuleID = 'benchmark/c_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1_processed.c'
source_filename = "benchmark/c_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %4
  %7 = zext i32 %1 to i64
  br label %8

8:                                                ; preds = %6, %15
  %9 = phi i64 [ 0, %6 ], [ %16, %15 ]
  %10 = getelementptr inbounds i32, i32* %0, i64 %9
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = icmp eq i32 %11, %2
  %13 = icmp eq i32 %11, %3
  %14 = or i1 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = add nuw nsw i64 %9, 1
  %17 = icmp eq i64 %16, %7
  br i1 %17, label %50, label %8, !llvm.loop !9

18:                                               ; preds = %8
  %19 = trunc i64 %9 to i32
  br label %20

20:                                               ; preds = %18, %4
  %21 = phi i32 [ 0, %4 ], [ %19, %18 ]
  %22 = icmp slt i32 %21, %1
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = zext i32 %21 to i64
  br label %25

25:                                               ; preds = %23, %44
  %26 = phi i64 [ %24, %23 ], [ %47, %44 ]
  %27 = phi i32 [ %21, %23 ], [ %46, %44 ]
  %28 = phi i32 [ 2147483647, %23 ], [ %45, %44 ]
  %29 = getelementptr inbounds i32, i32* %0, i64 %26
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = icmp eq i32 %30, %2
  %32 = icmp eq i32 %30, %3
  %33 = or i1 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %25
  %35 = sext i32 %27 to i64
  %36 = getelementptr inbounds i32, i32* %0, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !5
  %38 = icmp ne i32 %37, %30
  %39 = trunc i64 %26 to i32
  %40 = sub nsw i32 %39, %27
  %41 = icmp slt i32 %40, %28
  %42 = select i1 %38, i1 %41, i1 false
  %43 = select i1 %42, i32 %40, i32 %28
  br label %44

44:                                               ; preds = %34, %25
  %45 = phi i32 [ %28, %25 ], [ %43, %34 ]
  %46 = phi i32 [ %27, %25 ], [ %39, %34 ]
  %47 = add nuw nsw i64 %26, 1
  %48 = trunc i64 %47 to i32
  %49 = icmp slt i32 %48, %1
  br i1 %49, label %25, label %50, !llvm.loop !11

50:                                               ; preds = %15, %44, %20
  %51 = phi i32 [ 2147483647, %20 ], [ %45, %44 ], [ 2147483647, %15 ]
  ret i32 %51
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
