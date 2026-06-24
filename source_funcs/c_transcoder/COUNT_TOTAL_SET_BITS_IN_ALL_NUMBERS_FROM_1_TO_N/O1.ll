; ModuleID = 'benchmark/c_transcoder/COUNT_TOTAL_SET_BITS_IN_ALL_NUMBERS_FROM_1_TO_N/COUNT_TOTAL_SET_BITS_IN_ALL_NUMBERS_FROM_1_TO_N_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_TOTAL_SET_BITS_IN_ALL_NUMBERS_FROM_1_TO_N/COUNT_TOTAL_SET_BITS_IN_ALL_NUMBERS_FROM_1_TO_N_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %26, label %3

3:                                                ; preds = %1, %7
  %4 = phi i32 [ %9, %7 ], [ 1, %1 ]
  %5 = phi i32 [ %18, %7 ], [ 0, %1 ]
  %6 = phi i32 [ %8, %7 ], [ 0, %1 ]
  br label %11

7:                                                ; preds = %11
  %8 = add nuw nsw i32 %6, 1
  %9 = shl i32 2, %6
  %10 = icmp sgt i32 %9, %0
  br i1 %10, label %26, label %3, !llvm.loop !5

11:                                               ; preds = %3, %11
  %12 = phi i32 [ %24, %11 ], [ 0, %3 ]
  %13 = phi i32 [ %23, %11 ], [ %4, %3 ]
  %14 = phi i8 [ %22, %11 ], [ 0, %3 ]
  %15 = phi i32 [ %18, %11 ], [ %5, %3 ]
  %16 = and i8 %14, 1
  %17 = zext i8 %16 to i32
  %18 = add nsw i32 %15, %17
  %19 = icmp eq i32 %13, 1
  %20 = xor i8 %16, 1
  %21 = add nsw i32 %13, -1
  %22 = select i1 %19, i8 %20, i8 %14
  %23 = select i1 %19, i32 %4, i32 %21
  %24 = add nuw i32 %12, 1
  %25 = icmp eq i32 %12, %0
  br i1 %25, label %7, label %11, !llvm.loop !8

26:                                               ; preds = %7, %1
  %27 = phi i32 [ 0, %1 ], [ %18, %7 ]
  ret i32 %27
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
!8 = distinct !{!8, !6, !7}
