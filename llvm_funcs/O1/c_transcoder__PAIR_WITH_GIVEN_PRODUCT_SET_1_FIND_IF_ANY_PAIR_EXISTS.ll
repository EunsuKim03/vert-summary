; ModuleID = 'benchmark/c_transcoder/PAIR_WITH_GIVEN_PRODUCT_SET_1_FIND_IF_ANY_PAIR_EXISTS/PAIR_WITH_GIVEN_PRODUCT_SET_1_FIND_IF_ANY_PAIR_EXISTS_processed.c'
source_filename = "benchmark/c_transcoder/PAIR_WITH_GIVEN_PRODUCT_SET_1_FIND_IF_ANY_PAIR_EXISTS/PAIR_WITH_GIVEN_PRODUCT_SET_1_FIND_IF_ANY_PAIR_EXISTS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add nsw i32 %1, -1
  %5 = icmp sgt i32 %1, 1
  br i1 %5, label %6, label %42

6:                                                ; preds = %3
  %7 = sext i32 %1 to i64
  br label %10

8:                                                ; preds = %37
  %9 = icmp slt i32 %41, %4
  br i1 %9, label %10, label %42, !llvm.loop !5

10:                                               ; preds = %6, %8
  %11 = phi i32 [ %41, %8 ], [ 0, %6 ]
  %12 = icmp slt i32 %11, %1
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  %14 = add nsw i32 %11, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %0, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !8
  %18 = sext i32 %11 to i64
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !8
  %21 = mul nsw i32 %17, %20
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %37, label %28

23:                                               ; preds = %28
  %24 = getelementptr inbounds i32, i32* %0, i64 %30
  %25 = load i32, i32* %24, align 4, !tbaa !8
  %26 = mul nsw i32 %17, %25
  %27 = icmp eq i32 %26, %2
  br i1 %27, label %32, label %28, !llvm.loop !12

28:                                               ; preds = %13, %23
  %29 = phi i64 [ %30, %23 ], [ %18, %13 ]
  %30 = add nsw i64 %29, 1
  %31 = icmp eq i64 %30, %7
  br i1 %31, label %35, label %23, !llvm.loop !12

32:                                               ; preds = %23
  %33 = icmp slt i64 %30, %7
  %34 = trunc i64 %30 to i32
  br label %37

35:                                               ; preds = %28
  %36 = icmp slt i64 %30, %7
  br label %37

37:                                               ; preds = %35, %13, %32, %10
  %38 = phi i32 [ %11, %10 ], [ %34, %32 ], [ %11, %13 ], [ %1, %35 ]
  %39 = phi i1 [ %12, %10 ], [ %33, %32 ], [ %12, %13 ], [ %36, %35 ]
  %40 = phi i32 [ 5, %10 ], [ 1, %32 ], [ 1, %13 ], [ 5, %35 ]
  %41 = add nsw i32 %38, 1
  br i1 %39, label %42, label %8

42:                                               ; preds = %37, %8, %3
  %43 = phi i32 [ 2, %3 ], [ %40, %37 ], [ 2, %8 ]
  %44 = icmp ne i32 %43, 2
  %45 = zext i1 %44 to i32
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !6, !7}
