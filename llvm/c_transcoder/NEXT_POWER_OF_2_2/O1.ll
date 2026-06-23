; ModuleID = 'benchmark/c_transcoder/NEXT_POWER_OF_2_2/NEXT_POWER_OF_2_2_processed.c'
source_filename = "benchmark/c_transcoder/NEXT_POWER_OF_2_2/NEXT_POWER_OF_2_2_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, -1
  %3 = lshr i32 %2, 1
  %4 = or i32 %3, %2
  %5 = lshr i32 %4, 2
  %6 = or i32 %5, %4
  %7 = lshr i32 %6, 4
  %8 = or i32 %7, %6
  %9 = lshr i32 %8, 8
  %10 = or i32 %9, %8
  %11 = lshr i32 %10, 16
  %12 = or i32 %11, %10
  %13 = add i32 %12, 1
  ret i32 %13
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
