; ModuleID = 'benchmark/c_transcoder/SUM_MATRIX_ELEMENT_ABSOLUTE_DIFFERENCE_ROW_COLUMN_NUMBERS_1/SUM_MATRIX_ELEMENT_ABSOLUTE_DIFFERENCE_ROW_COLUMN_NUMBERS_1_processed.c'
source_filename = "benchmark/c_transcoder/SUM_MATRIX_ELEMENT_ABSOLUTE_DIFFERENCE_ROW_COLUMN_NUMBERS_1/SUM_MATRIX_ELEMENT_ABSOLUTE_DIFFERENCE_ROW_COLUMN_NUMBERS_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %22

3:                                                ; preds = %1
  %4 = add i32 %0, -1
  %5 = add i32 %0, -3
  %6 = zext i32 %4 to i33
  %7 = add i32 %0, -2
  %8 = zext i32 %7 to i33
  %9 = mul i33 %6, %8
  %10 = zext i32 %5 to i33
  %11 = mul i33 %9, %10
  %12 = lshr i33 %11, 1
  %13 = trunc i33 %12 to i32
  %14 = mul i32 %13, -1431655766
  %15 = lshr i33 %9, 1
  %16 = trunc i33 %15 to i32
  %17 = mul i32 %5, %16
  %18 = mul i32 %4, %4
  %19 = add i32 %18, %17
  %20 = add i32 %14, %19
  %21 = shl i32 %20, 1
  br label %22

22:                                               ; preds = %3, %1
  %23 = phi i32 [ 0, %1 ], [ %21, %3 ]
  ret i32 %23
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
