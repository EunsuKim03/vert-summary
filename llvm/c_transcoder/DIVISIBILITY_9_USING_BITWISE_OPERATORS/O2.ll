; ModuleID = 'benchmark/c_transcoder/DIVISIBILITY_9_USING_BITWISE_OPERATORS/DIVISIBILITY_9_USING_BITWISE_OPERATORS_processed.c'
source_filename = "benchmark/c_transcoder/DIVISIBILITY_9_USING_BITWISE_OPERATORS/DIVISIBILITY_9_USING_BITWISE_OPERATORS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi i32 [ %0, %1 ], [ %9, %6 ]
  switch i32 %3, label %4 [
    i32 9, label %10
    i32 0, label %10
  ]

4:                                                ; preds = %2
  %5 = icmp slt i32 %3, 9
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = lshr i32 %3, 3
  %8 = and i32 %3, 7
  %9 = sub nsw i32 %7, %8
  br label %2

10:                                               ; preds = %4, %2, %2
  %11 = phi i32 [ 1, %2 ], [ 1, %2 ], [ 0, %4 ]
  ret i32 %11
}

attributes #0 = { nofree nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
