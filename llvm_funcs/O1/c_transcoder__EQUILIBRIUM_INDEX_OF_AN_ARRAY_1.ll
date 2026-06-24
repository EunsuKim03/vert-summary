; ModuleID = 'benchmark/c_transcoder/EQUILIBRIUM_INDEX_OF_AN_ARRAY_1/EQUILIBRIUM_INDEX_OF_AN_ARRAY_1_processed.c'
source_filename = "benchmark/c_transcoder/EQUILIBRIUM_INDEX_OF_AN_ARRAY_1/EQUILIBRIUM_INDEX_OF_AN_ARRAY_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %11

6:                                                ; preds = %11, %2
  %7 = phi i32 [ 0, %2 ], [ %16, %11 ]
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %6
  %10 = zext i32 %1 to i64
  br label %19

11:                                               ; preds = %4, %11
  %12 = phi i64 [ 0, %4 ], [ %17, %11 ]
  %13 = phi i32 [ 0, %4 ], [ %16, %11 ]
  %14 = getelementptr inbounds i32, i32* %0, i64 %12
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = add nsw i32 %15, %13
  %17 = add nuw nsw i64 %12, 1
  %18 = icmp eq i64 %17, %5
  br i1 %18, label %6, label %11, !llvm.loop !9

19:                                               ; preds = %9, %27
  %20 = phi i64 [ 0, %9 ], [ %29, %27 ]
  %21 = phi i32 [ 0, %9 ], [ %28, %27 ]
  %22 = phi i32 [ %7, %9 ], [ %25, %27 ]
  %23 = getelementptr inbounds i32, i32* %0, i64 %20
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = sub nsw i32 %22, %24
  %26 = icmp eq i32 %21, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = add nsw i32 %24, %21
  %29 = add nuw nsw i64 %20, 1
  %30 = icmp eq i64 %29, %10
  br i1 %30, label %33, label %19, !llvm.loop !12

31:                                               ; preds = %19
  %32 = trunc i64 %20 to i32
  br label %33

33:                                               ; preds = %31, %27, %6
  %34 = phi i32 [ -1, %6 ], [ %32, %31 ], [ -1, %27 ]
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
