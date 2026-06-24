; ModuleID = 'benchmark/c_transcoder/SMALLEST_OF_THREE_INTEGERS_WITHOUT_COMPARISON_OPERATORS_1/SMALLEST_OF_THREE_INTEGERS_WITHOUT_COMPARISON_OPERATORS_1_processed.c'
source_filename = "benchmark/c_transcoder/SMALLEST_OF_THREE_INTEGERS_WITHOUT_COMPARISON_OPERATORS_1/SMALLEST_OF_THREE_INTEGERS_WITHOUT_COMPARISON_OPERATORS_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sdiv i32 %1, %0
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 %1, i32 %0
  %7 = sdiv i32 %6, %2
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 %6, i32 %2
  ret i32 %9
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
