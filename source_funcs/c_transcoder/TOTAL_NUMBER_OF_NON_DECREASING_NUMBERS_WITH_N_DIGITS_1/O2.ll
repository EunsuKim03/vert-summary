; ModuleID = 'benchmark/c_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1_processed.c'
source_filename = "benchmark/c_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = zext i32 %0 to i64
  %5 = and i64 %4, 1
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = and i64 %4, 4294967294
  br label %23

9:                                                ; preds = %23, %3
  %10 = phi i64 [ undef, %3 ], [ %33, %23 ]
  %11 = phi i64 [ 1, %3 ], [ %34, %23 ]
  %12 = phi i64 [ 1, %3 ], [ %33, %23 ]
  %13 = icmp eq i64 %5, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = add nuw nsw i64 %11, 9
  %16 = mul nsw i64 %12, %15
  %17 = sdiv i64 %16, %11
  br label %18

18:                                               ; preds = %9, %14
  %19 = phi i64 [ %10, %9 ], [ %17, %14 ]
  %20 = trunc i64 %19 to i32
  br label %21

21:                                               ; preds = %18, %1
  %22 = phi i32 [ 1, %1 ], [ %20, %18 ]
  ret i32 %22

23:                                               ; preds = %23, %7
  %24 = phi i64 [ 1, %7 ], [ %34, %23 ]
  %25 = phi i64 [ 1, %7 ], [ %33, %23 ]
  %26 = phi i64 [ 0, %7 ], [ %35, %23 ]
  %27 = add nuw nsw i64 %24, 9
  %28 = mul nsw i64 %25, %27
  %29 = sdiv i64 %28, %24
  %30 = add nuw nsw i64 %24, 1
  %31 = add nuw nsw i64 %24, 10
  %32 = mul nsw i64 %29, %31
  %33 = sdiv i64 %32, %30
  %34 = add nuw nsw i64 %24, 2
  %35 = add i64 %26, 2
  %36 = icmp eq i64 %35, %8
  br i1 %36, label %9, label %23, !llvm.loop !5
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
