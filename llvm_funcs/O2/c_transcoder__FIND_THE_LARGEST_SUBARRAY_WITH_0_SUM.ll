; ModuleID = 'benchmark/c_transcoder/FIND_THE_LARGEST_SUBARRAY_WITH_0_SUM/FIND_THE_LARGEST_SUBARRAY_WITH_0_SUM_processed.c'
source_filename = "benchmark/c_transcoder/FIND_THE_LARGEST_SUBARRAY_WITH_0_SUM/FIND_THE_LARGEST_SUBARRAY_WITH_0_SUM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %12, %4
  %7 = phi i64 [ 0, %4 ], [ %13, %12 ]
  %8 = phi i32 [ 0, %4 ], [ %28, %12 ]
  %9 = sub nsw i64 1, %7
  br label %15

10:                                               ; preds = %12, %2
  %11 = phi i32 [ 0, %2 ], [ %28, %12 ]
  ret i32 %11

12:                                               ; preds = %27
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %10, label %6, !llvm.loop !5

15:                                               ; preds = %6, %27
  %16 = phi i64 [ %7, %6 ], [ %29, %27 ]
  %17 = phi i32 [ 0, %6 ], [ %21, %27 ]
  %18 = phi i32 [ %8, %6 ], [ %28, %27 ]
  %19 = getelementptr inbounds i32, i32* %0, i64 %16
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = add nsw i32 %20, %17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = add nsw i64 %9, %16
  %25 = trunc i64 %24 to i32
  %26 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %18, i32 noundef %25) #2
  br label %27

27:                                               ; preds = %15, %23
  %28 = phi i32 [ %26, %23 ], [ %18, %15 ]
  %29 = add nuw nsw i64 %16, 1
  %30 = icmp eq i64 %29, %5
  br i1 %30, label %12, label %15, !llvm.loop !11
}

declare i32 @max(...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6}
