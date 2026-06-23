; ModuleID = 'benchmark/c_transcoder/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_1/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_1_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_1/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add nsw i32 %1, 1
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %71

6:                                                ; preds = %3
  %7 = icmp sgt i32 %2, 0
  %8 = sext i32 %1 to i64
  %9 = sext i32 %1 to i64
  br label %17

10:                                               ; preds = %55
  %11 = trunc i64 %64 to i32
  br label %12

12:                                               ; preds = %10, %29
  %13 = phi i32 [ %30, %29 ], [ %67, %10 ]
  %14 = phi i32 [ %20, %29 ], [ %63, %10 ]
  %15 = phi i32 [ %31, %29 ], [ %11, %10 ]
  %16 = icmp slt i32 %32, %1
  br i1 %16, label %17, label %71, !llvm.loop !5

17:                                               ; preds = %6, %12
  %18 = phi i32 [ 0, %6 ], [ %32, %12 ]
  %19 = phi i32 [ 0, %6 ], [ %15, %12 ]
  %20 = phi i32 [ %4, %6 ], [ %14, %12 ]
  %21 = phi i32 [ 0, %6 ], [ %13, %12 ]
  %22 = icmp sle i32 %21, %2
  %23 = icmp slt i32 %18, %1
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = sext i32 %18 to i64
  br label %39

27:                                               ; preds = %39
  %28 = trunc i64 %48 to i32
  br label %29

29:                                               ; preds = %27, %17
  %30 = phi i32 [ %21, %17 ], [ %51, %27 ]
  %31 = phi i32 [ %19, %17 ], [ %47, %27 ]
  %32 = phi i32 [ %18, %17 ], [ %28, %27 ]
  %33 = icmp sgt i32 %30, %2
  %34 = icmp slt i32 %31, %1
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %12

36:                                               ; preds = %29
  %37 = sext i32 %31 to i64
  %38 = sext i32 %32 to i64
  br label %55

39:                                               ; preds = %25, %39
  %40 = phi i64 [ %26, %25 ], [ %48, %39 ]
  %41 = phi i32 [ %19, %25 ], [ %47, %39 ]
  %42 = phi i32 [ %21, %25 ], [ %51, %39 ]
  %43 = icmp slt i32 %42, 1
  %44 = and i1 %7, %43
  %45 = select i1 %44, i32 0, i32 %42
  %46 = trunc i64 %40 to i32
  %47 = select i1 %44, i32 %46, i32 %41
  %48 = add nsw i64 %40, 1
  %49 = getelementptr inbounds i32, i32* %0, i64 %40
  %50 = load i32, i32* %49, align 4, !tbaa !8
  %51 = add nsw i32 %50, %45
  %52 = icmp sle i32 %51, %2
  %53 = icmp slt i64 %48, %8
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %39, label %27, !llvm.loop !12

55:                                               ; preds = %36, %55
  %56 = phi i64 [ %37, %36 ], [ %64, %55 ]
  %57 = phi i32 [ %20, %36 ], [ %63, %55 ]
  %58 = phi i32 [ %30, %36 ], [ %67, %55 ]
  %59 = sub nsw i64 %38, %56
  %60 = sext i32 %57 to i64
  %61 = icmp slt i64 %59, %60
  %62 = trunc i64 %59 to i32
  %63 = select i1 %61, i32 %62, i32 %57
  %64 = add nsw i64 %56, 1
  %65 = getelementptr inbounds i32, i32* %0, i64 %56
  %66 = load i32, i32* %65, align 4, !tbaa !8
  %67 = sub nsw i32 %58, %66
  %68 = icmp sgt i32 %67, %2
  %69 = icmp slt i64 %64, %9
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %55, label %10, !llvm.loop !13

71:                                               ; preds = %12, %3
  %72 = phi i32 [ %4, %3 ], [ %14, %12 ]
  ret i32 %72
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
