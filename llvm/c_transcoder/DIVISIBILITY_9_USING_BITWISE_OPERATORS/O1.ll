; ModuleID = 'benchmark/c_transcoder/DIVISIBILITY_9_USING_BITWISE_OPERATORS/DIVISIBILITY_9_USING_BITWISE_OPERATORS_processed.c'
source_filename = "benchmark/c_transcoder/DIVISIBILITY_9_USING_BITWISE_OPERATORS/DIVISIBILITY_9_USING_BITWISE_OPERATORS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  switch i32 %0, label %2 [
    i32 9, label %9
    i32 0, label %9
  ]

2:                                                ; preds = %1
  %3 = icmp slt i32 %0, 9
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = ashr i32 %0, 3
  %6 = and i32 %0, 7
  %7 = sub nsw i32 %5, %6
  %8 = call i32 @f_gold(i32 noundef %7)
  br label %9

9:                                                ; preds = %2, %1, %1, %4
  %10 = phi i32 [ %8, %4 ], [ 1, %1 ], [ 1, %1 ], [ 0, %2 ]
  ret i32 %10
}

attributes #0 = { nofree nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
