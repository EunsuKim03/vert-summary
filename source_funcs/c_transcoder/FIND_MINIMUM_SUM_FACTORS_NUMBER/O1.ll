; ModuleID = 'benchmark/c_transcoder/FIND_MINIMUM_SUM_FACTORS_NUMBER/FIND_MINIMUM_SUM_FACTORS_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/FIND_MINIMUM_SUM_FACTORS_NUMBER/FIND_MINIMUM_SUM_FACTORS_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 4
  br i1 %2, label %9, label %3

3:                                                ; preds = %1, %20
  %4 = phi i32 [ %23, %20 ], [ 2, %1 ]
  %5 = phi i32 [ %22, %20 ], [ 0, %1 ]
  %6 = phi i32 [ %21, %20 ], [ %0, %1 ]
  %7 = srem i32 %6, %4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %20

9:                                                ; preds = %20, %1
  %10 = phi i32 [ %0, %1 ], [ %21, %20 ]
  %11 = phi i32 [ 0, %1 ], [ %22, %20 ]
  %12 = add nsw i32 %11, %10
  ret i32 %12

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %16, %13 ], [ %5, %3 ]
  %15 = phi i32 [ %17, %13 ], [ %6, %3 ]
  %16 = add nsw i32 %14, %4
  %17 = sdiv i32 %15, %4
  %18 = srem i32 %17, %4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %13, label %20, !llvm.loop !5

20:                                               ; preds = %13, %3
  %21 = phi i32 [ %6, %3 ], [ %17, %13 ]
  %22 = phi i32 [ %5, %3 ], [ %16, %13 ]
  %23 = add nuw nsw i32 %4, 1
  %24 = mul nsw i32 %23, %23
  %25 = icmp sgt i32 %24, %21
  br i1 %25, label %9, label %3, !llvm.loop !8
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = distinct !{!8, !6, !7}
