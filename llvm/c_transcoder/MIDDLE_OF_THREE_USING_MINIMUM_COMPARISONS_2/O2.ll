; ModuleID = 'benchmark/c_transcoder/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_2/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_2_processed.c'
source_filename = "benchmark/c_transcoder/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_2/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_2_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sub nsw i32 %0, %1
  %5 = sub nsw i32 %1, %2
  %6 = mul nsw i32 %5, %4
  %7 = icmp sgt i32 %6, 0
  %8 = sub nsw i32 %0, %2
  %9 = mul nsw i32 %8, %4
  %10 = icmp sgt i32 %9, 0
  %11 = select i1 %10, i32 %2, i32 %0
  %12 = select i1 %7, i32 %1, i32 %11
  ret i32 %12
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
