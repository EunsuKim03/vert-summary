; ModuleID = 'benchmark/c_transcoder/SUM_K_TH_GROUP_ODD_POSITIVE_NUMBERS/SUM_K_TH_GROUP_ODD_POSITIVE_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/SUM_K_TH_GROUP_ODD_POSITIVE_NUMBERS/SUM_K_TH_GROUP_ODD_POSITIVE_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, -1
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = mul i32 %0, %0
  %6 = add i32 %5, 3
  %7 = mul i32 %2, %6
  %8 = add i32 %0, -2
  %9 = mul i32 %2, %8
  %10 = and i32 %9, -2
  %11 = add i32 %7, %10
  %12 = add i32 %11, 1
  br label %13

13:                                               ; preds = %4, %1
  %14 = phi i32 [ 0, %1 ], [ %12, %4 ]
  ret i32 %14
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
