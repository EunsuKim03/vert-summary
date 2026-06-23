; ModuleID = 'benchmark/c_transcoder/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT_processed.c'
source_filename = "benchmark/c_transcoder/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i64 noundef %0) local_unnamed_addr #0 {
  %2 = add i64 %0, 99
  %3 = icmp ult i64 %2, 199
  br i1 %3, label %12, label %4

4:                                                ; preds = %1, %4
  %5 = phi i64 [ %9, %4 ], [ %0, %1 ]
  %6 = srem i64 %5, 10
  %7 = sdiv i64 %5, 10
  %8 = mul nsw i64 %6, 3
  %9 = add nsw i64 %8, %7
  %10 = add nsw i64 %9, 99
  %11 = icmp ult i64 %10, 199
  br i1 %11, label %12, label %4, !llvm.loop !5

12:                                               ; preds = %4, %1
  %13 = phi i64 [ %0, %1 ], [ %9, %4 ]
  %14 = trunc i64 %13 to i8
  %15 = srem i8 %14, 29
  %16 = icmp eq i8 %15, 0
  %17 = zext i1 %16 to i32
  ret i32 %17
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
