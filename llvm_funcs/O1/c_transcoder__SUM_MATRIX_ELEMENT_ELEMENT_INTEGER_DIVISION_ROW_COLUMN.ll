; ModuleID = 'benchmark/c_transcoder/SUM_MATRIX_ELEMENT_ELEMENT_INTEGER_DIVISION_ROW_COLUMN/SUM_MATRIX_ELEMENT_ELEMENT_INTEGER_DIVISION_ROW_COLUMN_processed.c'
source_filename = "benchmark/c_transcoder/SUM_MATRIX_ELEMENT_ELEMENT_INTEGER_DIVISION_ROW_COLUMN/SUM_MATRIX_ELEMENT_ELEMENT_INTEGER_DIVISION_ROW_COLUMN_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %6, label %3

3:                                                ; preds = %1, %8
  %4 = phi i32 [ %9, %8 ], [ 1, %1 ]
  %5 = phi i32 [ %15, %8 ], [ 0, %1 ]
  br label %11

6:                                                ; preds = %8, %1
  %7 = phi i32 [ 0, %1 ], [ %15, %8 ]
  ret i32 %7

8:                                                ; preds = %11
  %9 = add nuw i32 %4, 1
  %10 = icmp eq i32 %4, %0
  br i1 %10, label %6, label %3, !llvm.loop !5

11:                                               ; preds = %3, %11
  %12 = phi i32 [ %16, %11 ], [ 1, %3 ]
  %13 = phi i32 [ %15, %11 ], [ %5, %3 ]
  %14 = udiv i32 %4, %12
  %15 = add nsw i32 %14, %13
  %16 = add nuw i32 %12, 1
  %17 = icmp eq i32 %12, %0
  br i1 %17, label %8, label %11, !llvm.loop !8
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
