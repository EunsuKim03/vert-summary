; ModuleID = 'benchmark/c_transcoder/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add nsw i32 %1, 1
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %63

6:                                                ; preds = %3
  %7 = sext i32 %1 to i64
  %8 = sext i32 %1 to i64
  br label %16

9:                                                ; preds = %47
  %10 = trunc i64 %56 to i32
  br label %11

11:                                               ; preds = %9, %28
  %12 = phi i32 [ %29, %28 ], [ %59, %9 ]
  %13 = phi i32 [ %19, %28 ], [ %55, %9 ]
  %14 = phi i32 [ %18, %28 ], [ %10, %9 ]
  %15 = icmp slt i32 %30, %1
  br i1 %15, label %16, label %63, !llvm.loop !5

16:                                               ; preds = %6, %11
  %17 = phi i32 [ %30, %11 ], [ 0, %6 ]
  %18 = phi i32 [ %14, %11 ], [ 0, %6 ]
  %19 = phi i32 [ %13, %11 ], [ %4, %6 ]
  %20 = phi i32 [ %12, %11 ], [ 0, %6 ]
  %21 = icmp sle i32 %20, %2
  %22 = icmp slt i32 %17, %1
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = sext i32 %17 to i64
  br label %37

26:                                               ; preds = %37
  %27 = trunc i64 %40 to i32
  br label %28

28:                                               ; preds = %26, %16
  %29 = phi i32 [ %20, %16 ], [ %43, %26 ]
  %30 = phi i32 [ %17, %16 ], [ %27, %26 ]
  %31 = icmp sgt i32 %29, %2
  %32 = icmp slt i32 %18, %1
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %11

34:                                               ; preds = %28
  %35 = sext i32 %18 to i64
  %36 = sext i32 %30 to i64
  br label %47

37:                                               ; preds = %24, %37
  %38 = phi i64 [ %25, %24 ], [ %40, %37 ]
  %39 = phi i32 [ %20, %24 ], [ %43, %37 ]
  %40 = add nsw i64 %38, 1
  %41 = getelementptr inbounds i32, i32* %0, i64 %38
  %42 = load i32, i32* %41, align 4, !tbaa !8
  %43 = add nsw i32 %42, %39
  %44 = icmp sle i32 %43, %2
  %45 = icmp slt i64 %40, %7
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %37, label %26, !llvm.loop !12

47:                                               ; preds = %34, %47
  %48 = phi i64 [ %35, %34 ], [ %56, %47 ]
  %49 = phi i32 [ %19, %34 ], [ %55, %47 ]
  %50 = phi i32 [ %29, %34 ], [ %59, %47 ]
  %51 = sub nsw i64 %36, %48
  %52 = sext i32 %49 to i64
  %53 = icmp slt i64 %51, %52
  %54 = trunc i64 %51 to i32
  %55 = select i1 %53, i32 %54, i32 %49
  %56 = add nsw i64 %48, 1
  %57 = getelementptr inbounds i32, i32* %0, i64 %48
  %58 = load i32, i32* %57, align 4, !tbaa !8
  %59 = sub nsw i32 %50, %58
  %60 = icmp sgt i32 %59, %2
  %61 = icmp slt i64 %56, %8
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %47, label %9, !llvm.loop !13

63:                                               ; preds = %11, %3
  %64 = phi i32 [ %4, %3 ], [ %13, %11 ]
  ret i32 %64
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
