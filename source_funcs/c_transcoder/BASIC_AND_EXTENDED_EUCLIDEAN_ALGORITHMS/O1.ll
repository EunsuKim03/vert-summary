; ModuleID = 'benchmark/c_transcoder/BASIC_AND_EXTENDED_EUCLIDEAN_ALGORITHMS/BASIC_AND_EXTENDED_EUCLIDEAN_ALGORITHMS_processed.c'
source_filename = "benchmark/c_transcoder/BASIC_AND_EXTENDED_EUCLIDEAN_ALGORITHMS/BASIC_AND_EXTENDED_EUCLIDEAN_ALGORITHMS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = srem i32 %1, %0
  %6 = call i32 @f_gold(i32 noundef %5, i32 noundef %0)
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi i32 [ %6, %4 ], [ %1, %2 ]
  ret i32 %8
}

attributes #0 = { nofree nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
