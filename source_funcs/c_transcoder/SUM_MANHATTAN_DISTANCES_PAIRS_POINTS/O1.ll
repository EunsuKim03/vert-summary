; ModuleID = 'benchmark/c_transcoder/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS_processed.c'
source_filename = "benchmark/c_transcoder/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = sext i32 %2 to i64
  %7 = zext i32 %2 to i64
  %8 = zext i32 %2 to i64
  br label %15

9:                                                ; preds = %26, %15
  %10 = phi i32 [ %18, %15 ], [ %38, %26 ]
  %11 = add nuw nsw i64 %17, 1
  %12 = icmp eq i64 %19, %7
  br i1 %12, label %13, label %15, !llvm.loop !5

13:                                               ; preds = %9, %3
  %14 = phi i32 [ 0, %3 ], [ %10, %9 ]
  ret i32 %14

15:                                               ; preds = %5, %9
  %16 = phi i64 [ 0, %5 ], [ %19, %9 ]
  %17 = phi i64 [ 1, %5 ], [ %11, %9 ]
  %18 = phi i32 [ 0, %5 ], [ %10, %9 ]
  %19 = add nuw nsw i64 %16, 1
  %20 = icmp slt i64 %19, %6
  br i1 %20, label %21, label %9

21:                                               ; preds = %15
  %22 = getelementptr inbounds i32, i32* %0, i64 %16
  %23 = load i32, i32* %22, align 4, !tbaa !8
  %24 = getelementptr inbounds i32, i32* %1, i64 %16
  %25 = load i32, i32* %24, align 4, !tbaa !8
  br label %26

26:                                               ; preds = %21, %26
  %27 = phi i64 [ %17, %21 ], [ %39, %26 ]
  %28 = phi i32 [ %18, %21 ], [ %38, %26 ]
  %29 = getelementptr inbounds i32, i32* %0, i64 %27
  %30 = load i32, i32* %29, align 4, !tbaa !8
  %31 = sub nsw i32 %23, %30
  %32 = call i32 @llvm.abs.i32(i32 %31, i1 true)
  %33 = getelementptr inbounds i32, i32* %1, i64 %27
  %34 = load i32, i32* %33, align 4, !tbaa !8
  %35 = sub nsw i32 %25, %34
  %36 = call i32 @llvm.abs.i32(i32 %35, i1 true)
  %37 = add i32 %32, %28
  %38 = add i32 %37, %36
  %39 = add nuw nsw i64 %27, 1
  %40 = icmp eq i64 %39, %8
  br i1 %40, label %9, label %26, !llvm.loop !12
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

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
