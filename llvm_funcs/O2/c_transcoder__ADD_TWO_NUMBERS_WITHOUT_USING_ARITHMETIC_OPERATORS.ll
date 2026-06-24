; ModuleID = 'benchmark/c_transcoder/ADD_TWO_NUMBERS_WITHOUT_USING_ARITHMETIC_OPERATORS/ADD_TWO_NUMBERS_WITHOUT_USING_ARITHMETIC_OPERATORS_processed.c'
source_filename = "benchmark/c_transcoder/ADD_TWO_NUMBERS_WITHOUT_USING_ARITHMETIC_OPERATORS/ADD_TWO_NUMBERS_WITHOUT_USING_ARITHMETIC_OPERATORS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %8, %4 ], [ %0, %2 ]
  %6 = phi i32 [ %9, %4 ], [ %1, %2 ]
  %7 = and i32 %5, %6
  %8 = xor i32 %5, %6
  %9 = shl i32 %7, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %4, !llvm.loop !5

11:                                               ; preds = %4, %2
  %12 = phi i32 [ %0, %2 ], [ %8, %4 ]
  ret i32 %12
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
