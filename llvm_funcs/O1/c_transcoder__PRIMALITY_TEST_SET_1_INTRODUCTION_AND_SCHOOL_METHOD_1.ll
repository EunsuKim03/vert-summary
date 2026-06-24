; ModuleID = 'benchmark/c_transcoder/PRIMALITY_TEST_SET_1_INTRODUCTION_AND_SCHOOL_METHOD_1/PRIMALITY_TEST_SET_1_INTRODUCTION_AND_SCHOOL_METHOD_1_processed.c'
source_filename = "benchmark/c_transcoder/PRIMALITY_TEST_SET_1_INTRODUCTION_AND_SCHOOL_METHOD_1/PRIMALITY_TEST_SET_1_INTRODUCTION_AND_SCHOOL_METHOD_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 2
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 4
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = and i32 %0, 1
  %7 = icmp eq i32 %6, 0
  %8 = srem i32 %0, 3
  %9 = icmp eq i32 %8, 0
  %10 = or i1 %7, %9
  br i1 %10, label %25, label %11

11:                                               ; preds = %5
  %12 = icmp slt i32 %0, 25
  br i1 %12, label %25, label %16

13:                                               ; preds = %20
  %14 = mul nsw i32 %24, %24
  %15 = icmp sgt i32 %14, %0
  br i1 %15, label %25, label %16, !llvm.loop !5

16:                                               ; preds = %11, %13
  %17 = phi i32 [ %24, %13 ], [ 5, %11 ]
  %18 = srem i32 %0, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = add nuw nsw i32 %17, 2
  %22 = srem i32 %0, %21
  %23 = icmp eq i32 %22, 0
  %24 = add nuw nsw i32 %17, 6
  br i1 %23, label %25, label %13

25:                                               ; preds = %16, %20, %13, %11, %5, %3, %1
  %26 = phi i32 [ 0, %1 ], [ 1, %3 ], [ 0, %5 ], [ 1, %11 ], [ 1, %13 ], [ 0, %20 ], [ 0, %16 ]
  ret i32 %26
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
