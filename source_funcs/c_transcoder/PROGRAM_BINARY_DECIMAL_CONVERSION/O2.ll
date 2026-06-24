; ModuleID = 'benchmark/c_transcoder/PROGRAM_BINARY_DECIMAL_CONVERSION/PROGRAM_BINARY_DECIMAL_CONVERSION_processed.c'
source_filename = "benchmark/c_transcoder/PROGRAM_BINARY_DECIMAL_CONVERSION/PROGRAM_BINARY_DECIMAL_CONVERSION_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %14, label %3

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %10, %3 ], [ 0, %1 ]
  %5 = phi i32 [ %8, %3 ], [ %0, %1 ]
  %6 = phi i32 [ %11, %3 ], [ 1, %1 ]
  %7 = srem i32 %5, 10
  %8 = sdiv i32 %5, 10
  %9 = mul nsw i32 %7, %6
  %10 = add nsw i32 %9, %4
  %11 = shl nsw i32 %6, 1
  %12 = add i32 %5, 9
  %13 = icmp ult i32 %12, 19
  br i1 %13, label %14, label %3, !llvm.loop !5

14:                                               ; preds = %3, %1
  %15 = phi i32 [ 0, %1 ], [ %10, %3 ]
  ret i32 %15
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
