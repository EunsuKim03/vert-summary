; ModuleID = 'benchmark/c_transcoder/FIND_LAST_DIGIT_FACTORIAL_DIVIDES_FACTORIAL_B/FIND_LAST_DIGIT_FACTORIAL_DIVIDES_FACTORIAL_B_processed.c'
source_filename = "benchmark/c_transcoder/FIND_LAST_DIGIT_FACTORIAL_DIVIDES_FACTORIAL_B/FIND_LAST_DIGIT_FACTORIAL_DIVIDES_FACTORIAL_B_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, %0
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = sub nsw i64 %1, %0
  %6 = icmp sgt i64 %5, 4
  br i1 %6, label %20, label %7

7:                                                ; preds = %4
  %8 = icmp sgt i64 %1, %0
  br i1 %8, label %12, label %20

9:                                                ; preds = %12
  %10 = trunc i64 %18 to i32
  %11 = srem i32 %10, 10
  br label %20

12:                                               ; preds = %7, %12
  %13 = phi i64 [ %15, %12 ], [ %0, %7 ]
  %14 = phi i64 [ %18, %12 ], [ 1, %7 ]
  %15 = add nsw i64 %13, 1
  %16 = srem i64 %15, 10
  %17 = mul nsw i64 %16, %14
  %18 = srem i64 %17, 10
  %19 = icmp eq i64 %15, %1
  br i1 %19, label %9, label %12, !llvm.loop !5

20:                                               ; preds = %7, %9, %4, %2
  %21 = phi i32 [ 1, %2 ], [ 0, %4 ], [ %11, %9 ], [ 1, %7 ]
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
