; ModuleID = 'benchmark/c_transcoder/SUM_DIVISORS_1_N_1/SUM_DIVISORS_1_N_1_processed.c'
source_filename = "benchmark/c_transcoder/SUM_DIVISORS_1_N_1/SUM_DIVISORS_1_N_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = and i32 %0, 1
  %5 = icmp eq i32 %0, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = and i32 %0, -2
  %8 = shl i32 %0, 1
  br label %20

9:                                                ; preds = %20, %3
  %10 = phi i32 [ undef, %3 ], [ %29, %20 ]
  %11 = phi i32 [ 1, %3 ], [ %30, %20 ]
  %12 = phi i32 [ 0, %3 ], [ %29, %20 ]
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = srem i32 %0, %11
  %16 = add i32 %12, %0
  %17 = sub i32 %16, %15
  br label %18

18:                                               ; preds = %14, %9, %1
  %19 = phi i32 [ 0, %1 ], [ %10, %9 ], [ %17, %14 ]
  ret i32 %19

20:                                               ; preds = %20, %6
  %21 = phi i32 [ 1, %6 ], [ %30, %20 ]
  %22 = phi i32 [ 0, %6 ], [ %29, %20 ]
  %23 = phi i32 [ 0, %6 ], [ %31, %20 ]
  %24 = srem i32 %0, %21
  %25 = add nuw i32 %21, 1
  %26 = srem i32 %0, %25
  %27 = add i32 %22, %8
  %28 = add i32 %24, %26
  %29 = sub i32 %27, %28
  %30 = add nuw i32 %21, 2
  %31 = add i32 %23, 2
  %32 = icmp eq i32 %31, %7
  br i1 %32, label %9, label %20, !llvm.loop !5
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
