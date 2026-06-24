; ModuleID = 'benchmark/c_transcoder/COUNT_EVEN_LENGTH_BINARY_SEQUENCES_WITH_SAME_SUM_OF_FIRST_AND_SECOND_HALF_BITS_1/COUNT_EVEN_LENGTH_BINARY_SEQUENCES_WITH_SAME_SUM_OF_FIRST_AND_SECOND_HALF_BITS_1_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_EVEN_LENGTH_BINARY_SEQUENCES_WITH_SAME_SUM_OF_FIRST_AND_SECOND_HALF_BITS_1/COUNT_EVEN_LENGTH_BINARY_SEQUENCES_WITH_SAME_SUM_OF_FIRST_AND_SECOND_HALF_BITS_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = add i32 %0, 1
  br label %7

5:                                                ; preds = %7, %1
  %6 = phi i32 [ 1, %1 ], [ %15, %7 ]
  ret i32 %6

7:                                                ; preds = %3, %7
  %8 = phi i32 [ 1, %3 ], [ %16, %7 ]
  %9 = phi i32 [ 1, %3 ], [ %15, %7 ]
  %10 = phi i32 [ 1, %3 ], [ %13, %7 ]
  %11 = sub i32 %4, %8
  %12 = mul nsw i32 %11, %10
  %13 = sdiv i32 %12, %8
  %14 = mul nsw i32 %13, %13
  %15 = add nuw nsw i32 %14, %9
  %16 = add nuw i32 %8, 1
  %17 = icmp eq i32 %8, %0
  br i1 %17, label %5, label %7, !llvm.loop !5
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
