; ModuleID = 'benchmark/c_transcoder/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2, %9
  %5 = phi i32 [ %10, %9 ], [ -2147483648, %2 ]
  %6 = phi i32 [ %11, %9 ], [ 0, %2 ]
  br label %13

7:                                                ; preds = %9, %2
  %8 = phi i32 [ -2147483648, %2 ], [ %10, %9 ]
  ret i32 %8

9:                                                ; preds = %13
  %10 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %5, i32 noundef %22) #2
  %11 = add nuw nsw i32 %6, 1
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %7, label %4, !llvm.loop !5

13:                                               ; preds = %4, %13
  %14 = phi i32 [ %23, %13 ], [ 0, %4 ]
  %15 = phi i32 [ %22, %13 ], [ 0, %4 ]
  %16 = add nuw nsw i32 %14, %6
  %17 = srem i32 %16, %1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !8
  %21 = mul nsw i32 %20, %14
  %22 = add nsw i32 %21, %15
  %23 = add nuw nsw i32 %14, 1
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %9, label %13, !llvm.loop !12
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
