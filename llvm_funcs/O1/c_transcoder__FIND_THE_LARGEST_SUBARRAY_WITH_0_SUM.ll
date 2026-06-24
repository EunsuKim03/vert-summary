; ModuleID = 'benchmark/c_transcoder/FIND_THE_LARGEST_SUBARRAY_WITH_0_SUM/FIND_THE_LARGEST_SUBARRAY_WITH_0_SUM_processed.c'
source_filename = "benchmark/c_transcoder/FIND_THE_LARGEST_SUBARRAY_WITH_0_SUM/FIND_THE_LARGEST_SUBARRAY_WITH_0_SUM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = zext i32 %1 to i64
  br label %7

7:                                                ; preds = %4, %13
  %8 = phi i64 [ 0, %4 ], [ %14, %13 ]
  %9 = phi i32 [ 0, %4 ], [ %29, %13 ]
  %10 = sub nsw i64 1, %8
  br label %16

11:                                               ; preds = %13, %2
  %12 = phi i32 [ 0, %2 ], [ %29, %13 ]
  ret i32 %12

13:                                               ; preds = %28
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %11, label %7, !llvm.loop !5

16:                                               ; preds = %7, %28
  %17 = phi i64 [ %8, %7 ], [ %30, %28 ]
  %18 = phi i32 [ 0, %7 ], [ %22, %28 ]
  %19 = phi i32 [ %9, %7 ], [ %29, %28 ]
  %20 = getelementptr inbounds i32, i32* %0, i64 %17
  %21 = load i32, i32* %20, align 4, !tbaa !8
  %22 = add nsw i32 %21, %18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = add nsw i64 %10, %17
  %26 = trunc i64 %25 to i32
  %27 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %19, i32 noundef %26) #2
  br label %28

28:                                               ; preds = %16, %24
  %29 = phi i32 [ %27, %24 ], [ %19, %16 ]
  %30 = add nuw nsw i64 %17, 1
  %31 = icmp eq i64 %30, %6
  br i1 %31, label %13, label %16, !llvm.loop !12
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !6, !7}
