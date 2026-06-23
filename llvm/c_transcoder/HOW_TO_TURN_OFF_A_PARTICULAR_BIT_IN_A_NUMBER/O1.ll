; ModuleID = 'benchmark/c_transcoder/HOW_TO_TURN_OFF_A_PARTICULAR_BIT_IN_A_NUMBER/HOW_TO_TURN_OFF_A_PARTICULAR_BIT_IN_A_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/HOW_TO_TURN_OFF_A_PARTICULAR_BIT_IN_A_NUMBER/HOW_TO_TURN_OFF_A_PARTICULAR_BIT_IN_A_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 1
  %4 = add nsw i32 %1, -1
  %5 = shl i32 1, %4
  %6 = xor i32 %5, -1
  %7 = select i1 %3, i32 -1, i32 %6
  %8 = and i32 %7, %0
  ret i32 %8
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
