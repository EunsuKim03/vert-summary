; ModuleID = 'benchmark/c_transcoder/SIZE_SUBARRAY_MAXIMUM_SUM/SIZE_SUBARRAY_MAXIMUM_SUM_processed.c'
source_filename = "benchmark/c_transcoder/SIZE_SUBARRAY_MAXIMUM_SUM/SIZE_SUBARRAY_MAXIMUM_SUM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %11

6:                                                ; preds = %11
  %7 = sub i32 1, %23
  %8 = add i32 %7, %25
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %8, %6 ], [ 1, %2 ]
  ret i32 %10

11:                                               ; preds = %4, %11
  %12 = phi i64 [ 0, %4 ], [ %27, %11 ]
  %13 = phi i32 [ 0, %4 ], [ %30, %11 ]
  %14 = phi i32 [ 0, %4 ], [ %25, %11 ]
  %15 = phi i32 [ 0, %4 ], [ %23, %11 ]
  %16 = phi i32 [ 0, %4 ], [ %28, %11 ]
  %17 = phi i32 [ -2147483648, %4 ], [ %22, %11 ]
  %18 = getelementptr inbounds i32, i32* %0, i64 %12
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = add nsw i32 %19, %16
  %21 = icmp slt i32 %17, %20
  %22 = select i1 %21, i32 %20, i32 %17
  %23 = select i1 %21, i32 %13, i32 %15
  %24 = trunc i64 %12 to i32
  %25 = select i1 %21, i32 %24, i32 %14
  %26 = icmp slt i32 %20, 0
  %27 = add nuw nsw i64 %12, 1
  %28 = select i1 %26, i32 0, i32 %20
  %29 = trunc i64 %27 to i32
  %30 = select i1 %26, i32 %29, i32 %13
  %31 = icmp eq i64 %27, %5
  br i1 %31, label %6, label %11, !llvm.loop !9
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
