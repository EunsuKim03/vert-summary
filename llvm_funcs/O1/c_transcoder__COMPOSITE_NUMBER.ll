; ModuleID = 'benchmark/c_transcoder/COMPOSITE_NUMBER/COMPOSITE_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/COMPOSITE_NUMBER/COMPOSITE_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 4
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = and i32 %0, 1
  %5 = icmp eq i32 %4, 0
  %6 = srem i32 %0, 3
  %7 = icmp eq i32 %6, 0
  %8 = or i1 %5, %7
  br i1 %8, label %23, label %9

9:                                                ; preds = %3
  %10 = icmp slt i32 %0, 25
  br i1 %10, label %23, label %14

11:                                               ; preds = %18
  %12 = mul nsw i32 %22, %22
  %13 = icmp sgt i32 %12, %0
  br i1 %13, label %23, label %14, !llvm.loop !5

14:                                               ; preds = %9, %11
  %15 = phi i32 [ %22, %11 ], [ 5, %9 ]
  %16 = srem i32 %0, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = add nuw nsw i32 %15, 2
  %20 = srem i32 %0, %19
  %21 = icmp eq i32 %20, 0
  %22 = add nuw nsw i32 %15, 6
  br i1 %21, label %23, label %11

23:                                               ; preds = %14, %18, %11, %9, %3, %1
  %24 = phi i32 [ 0, %1 ], [ 1, %3 ], [ 0, %9 ], [ 0, %11 ], [ 1, %18 ], [ 1, %14 ]
  ret i32 %24
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
