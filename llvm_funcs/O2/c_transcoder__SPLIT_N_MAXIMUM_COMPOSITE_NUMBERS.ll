; ModuleID = 'benchmark/c_transcoder/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 4
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = and i32 %0, 3
  switch i32 %4, label %17 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %13
  ]

5:                                                ; preds = %3
  %6 = lshr i32 %0, 2
  br label %23

7:                                                ; preds = %3
  %8 = icmp ult i32 %0, 9
  br i1 %8, label %23, label %9

9:                                                ; preds = %7
  %10 = add nsw i32 %0, -9
  %11 = lshr i32 %10, 2
  %12 = add nuw nsw i32 %11, 1
  br label %23

13:                                               ; preds = %3
  %14 = add nsw i32 %0, -6
  %15 = sdiv i32 %14, 4
  %16 = add nuw nsw i32 %15, 1
  br label %23

17:                                               ; preds = %3
  %18 = icmp ult i32 %0, 15
  br i1 %18, label %23, label %19

19:                                               ; preds = %17
  %20 = add nsw i32 %0, -15
  %21 = lshr i32 %20, 2
  %22 = add nuw nsw i32 %21, 2
  br label %23

23:                                               ; preds = %5, %9, %13, %19, %7, %17, %1
  %24 = phi i32 [ -1, %1 ], [ %6, %5 ], [ %12, %9 ], [ %16, %13 ], [ %22, %19 ], [ -1, %7 ], [ -1, %17 ]
  ret i32 %24
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
