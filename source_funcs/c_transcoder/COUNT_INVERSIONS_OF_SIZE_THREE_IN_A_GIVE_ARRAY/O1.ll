; ModuleID = 'benchmark/c_transcoder/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 2
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = add i32 %1, -2
  %6 = add i32 %1, -1
  %7 = sext i32 %6 to i64
  %8 = zext i32 %5 to i64
  %9 = zext i32 %6 to i64
  br label %17

10:                                               ; preds = %49, %17
  %11 = phi i32 [ %21, %17 ], [ %50, %49 ]
  %12 = add nuw nsw i64 %20, 1
  %13 = add nuw nsw i64 %19, 1
  %14 = icmp eq i64 %22, %8
  br i1 %14, label %15, label %17, !llvm.loop !5

15:                                               ; preds = %10, %2
  %16 = phi i32 [ 0, %2 ], [ %11, %10 ]
  ret i32 %16

17:                                               ; preds = %4, %10
  %18 = phi i64 [ 0, %4 ], [ %22, %10 ]
  %19 = phi i64 [ 1, %4 ], [ %13, %10 ]
  %20 = phi i64 [ 2, %4 ], [ %12, %10 ]
  %21 = phi i32 [ 0, %4 ], [ %11, %10 ]
  %22 = add nuw nsw i64 %18, 1
  %23 = icmp slt i64 %22, %7
  br i1 %23, label %24, label %10

24:                                               ; preds = %17
  %25 = getelementptr inbounds i32, i32* %0, i64 %18
  %26 = load i32, i32* %25, align 4, !tbaa !8
  br label %27

27:                                               ; preds = %24, %49
  %28 = phi i64 [ %19, %24 ], [ %34, %49 ]
  %29 = phi i64 [ %20, %24 ], [ %51, %49 ]
  %30 = phi i32 [ %21, %24 ], [ %50, %49 ]
  %31 = getelementptr inbounds i32, i32* %0, i64 %28
  %32 = load i32, i32* %31, align 4, !tbaa !8
  %33 = icmp sgt i32 %26, %32
  %34 = add nuw nsw i64 %28, 1
  %35 = trunc i64 %34 to i32
  %36 = icmp slt i32 %35, %1
  %37 = select i1 %33, i1 %36, i1 false
  br i1 %37, label %38, label %49

38:                                               ; preds = %27, %38
  %39 = phi i64 [ %46, %38 ], [ %29, %27 ]
  %40 = phi i32 [ %45, %38 ], [ %30, %27 ]
  %41 = getelementptr inbounds i32, i32* %0, i64 %39
  %42 = load i32, i32* %41, align 4, !tbaa !8
  %43 = icmp sgt i32 %32, %42
  %44 = zext i1 %43 to i32
  %45 = add nsw i32 %40, %44
  %46 = add nuw nsw i64 %39, 1
  %47 = trunc i64 %46 to i32
  %48 = icmp slt i32 %47, %1
  br i1 %48, label %38, label %49, !llvm.loop !12

49:                                               ; preds = %38, %27
  %50 = phi i32 [ %30, %27 ], [ %45, %38 ]
  %51 = add nuw nsw i64 %29, 1
  %52 = icmp eq i64 %34, %9
  br i1 %52, label %10, label %27, !llvm.loop !13
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
!13 = distinct !{!13, !6, !7}
