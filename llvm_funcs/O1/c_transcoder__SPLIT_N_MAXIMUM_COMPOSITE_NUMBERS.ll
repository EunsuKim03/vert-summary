; ModuleID = 'benchmark/c_transcoder/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 4
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = srem i32 %0, 4
  %5 = sdiv i32 %0, 4
  switch i32 %4, label %16 [
    i32 0, label %22
    i32 1, label %6
    i32 2, label %12
  ]

6:                                                ; preds = %3
  %7 = icmp slt i32 %0, 9
  br i1 %7, label %22, label %8

8:                                                ; preds = %6
  %9 = add nsw i32 %0, -9
  %10 = sdiv i32 %9, 4
  %11 = add nsw i32 %10, 1
  br label %22

12:                                               ; preds = %3
  %13 = add nsw i32 %0, -6
  %14 = sdiv i32 %13, 4
  %15 = add nsw i32 %14, 1
  br label %22

16:                                               ; preds = %3
  %17 = icmp slt i32 %0, 15
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = add nsw i32 %0, -15
  %20 = sdiv i32 %19, 4
  %21 = add nsw i32 %20, 2
  br label %22

22:                                               ; preds = %3, %8, %12, %18, %6, %16, %1
  %23 = phi i32 [ -1, %1 ], [ %11, %8 ], [ %15, %12 ], [ %21, %18 ], [ -1, %6 ], [ -1, %16 ], [ %5, %3 ]
  ret i32 %23
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
