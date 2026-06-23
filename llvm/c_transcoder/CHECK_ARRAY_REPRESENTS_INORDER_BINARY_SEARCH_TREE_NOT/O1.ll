; ModuleID = 'benchmark/c_transcoder/CHECK_ARRAY_REPRESENTS_INORDER_BINARY_SEARCH_TREE_NOT/CHECK_ARRAY_REPRESENTS_INORDER_BINARY_SEARCH_TREE_NOT_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_ARRAY_REPRESENTS_INORDER_BINARY_SEARCH_TREE_NOT/CHECK_ARRAY_REPRESENTS_INORDER_BINARY_SEARCH_TREE_NOT_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %1, 2
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 1
  br i1 %5, label %6, label %26

6:                                                ; preds = %4
  %7 = sext i32 %1 to i64
  %8 = zext i32 %1 to i64
  %9 = load i32, i32* %0, align 4, !tbaa !5
  %10 = getelementptr inbounds i32, i32* %0, i64 1
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %26, label %13

13:                                               ; preds = %6, %16
  %14 = phi i64 [ %23, %16 ], [ 2, %6 ]
  %15 = icmp eq i64 %14, %8
  br i1 %15, label %24, label %16, !llvm.loop !9

16:                                               ; preds = %13
  %17 = add nsw i64 %14, -1
  %18 = getelementptr inbounds i32, i32* %0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = getelementptr inbounds i32, i32* %0, i64 %14
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = icmp sgt i32 %19, %21
  %23 = add nuw nsw i64 %14, 1
  br i1 %22, label %24, label %13, !llvm.loop !9

24:                                               ; preds = %13, %16
  %25 = icmp slt i64 %14, %7
  br label %26

26:                                               ; preds = %24, %6, %4
  %27 = phi i1 [ %5, %4 ], [ %5, %6 ], [ %25, %24 ]
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %26, %2
  %31 = phi i32 [ 1, %2 ], [ %29, %26 ]
  ret i32 %31
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
