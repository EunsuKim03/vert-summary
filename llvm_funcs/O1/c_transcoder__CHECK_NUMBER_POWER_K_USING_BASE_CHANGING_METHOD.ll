; ModuleID = 'benchmark/c_transcoder/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %18, %2
  %4 = phi i32 [ %0, %2 ], [ %19, %18 ]
  %5 = phi i8 [ 0, %2 ], [ %20, %18 ]
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = urem i32 %4, %1
  %9 = udiv i32 %4, %1
  %10 = icmp sgt i32 %8, 1
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %8, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = and i8 %5, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %11
  %17 = phi i8 [ %5, %11 ], [ 1, %13 ]
  br label %18

18:                                               ; preds = %13, %7, %16
  %19 = phi i32 [ %9, %16 ], [ %4, %7 ], [ %4, %13 ]
  %20 = phi i8 [ %17, %16 ], [ %5, %7 ], [ %5, %13 ]
  %21 = phi i1 [ true, %16 ], [ false, %7 ], [ false, %13 ]
  br i1 %21, label %3, label %22, !llvm.loop !5

22:                                               ; preds = %3, %18
  %23 = phi i32 [ 0, %18 ], [ 1, %3 ]
  ret i32 %23
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
