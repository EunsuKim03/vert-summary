; ModuleID = 'benchmark/c_transcoder/MODULAR_EXPONENTIATION_POWER_IN_MODULAR_ARITHMETIC/MODULAR_EXPONENTIATION_POWER_IN_MODULAR_ARITHMETIC_processed.c'
source_filename = "benchmark/c_transcoder/MODULAR_EXPONENTIATION_POWER_IN_MODULAR_ARITHMETIC/MODULAR_EXPONENTIATION_POWER_IN_MODULAR_ARITHMETIC_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %3, %15
  %6 = phi i32 [ %18, %15 ], [ %0, %3 ]
  %7 = phi i32 [ %16, %15 ], [ 1, %3 ]
  %8 = phi i32 [ %17, %15 ], [ %1, %3 ]
  %9 = srem i32 %6, %2
  %10 = and i32 %8, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = mul nsw i32 %9, %7
  %14 = srem i32 %13, %2
  br label %15

15:                                               ; preds = %12, %5
  %16 = phi i32 [ %14, %12 ], [ %7, %5 ]
  %17 = lshr i32 %8, 1
  %18 = mul nsw i32 %9, %9
  %19 = icmp ult i32 %8, 2
  br i1 %19, label %20, label %5, !llvm.loop !5

20:                                               ; preds = %15, %3
  %21 = phi i32 [ 1, %3 ], [ %16, %15 ]
  ret i32 %21
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
