; ModuleID = 'benchmark/c_transcoder/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_processed.c'
source_filename = "benchmark/c_transcoder/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %0, %1
  %5 = icmp slt i32 %1, %2
  %6 = and i1 %4, %5
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = icmp slt i32 %2, %1
  %9 = icmp slt i32 %1, %0
  %10 = and i1 %9, %8
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = icmp slt i32 %0, %2
  %13 = and i1 %9, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = icmp slt i32 %2, %0
  %16 = and i1 %4, %15
  %17 = select i1 %16, i32 %0, i32 %2
  br label %18

18:                                               ; preds = %14, %11, %3, %7
  %19 = phi i32 [ %1, %7 ], [ %1, %3 ], [ %0, %11 ], [ %17, %14 ]
  ret i32 %19
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
