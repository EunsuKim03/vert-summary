; ModuleID = 'benchmark/c_transcoder/TRIANGULAR_NUMBERS/TRIANGULAR_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/TRIANGULAR_NUMBERS/TRIANGULAR_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 1
  br i1 %4, label %16, label %5

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %10, %5 ], [ 1, %3 ]
  %7 = phi i32 [ %8, %5 ], [ 1, %3 ]
  %8 = add nuw nsw i32 %7, 1
  %9 = icmp sgt i32 %6, %0
  %10 = add nuw nsw i32 %8, %6
  %11 = icmp eq i32 %10, %0
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %13, label %5, !llvm.loop !5

13:                                               ; preds = %5
  %14 = xor i1 %9, true
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %3, %13, %1
  %17 = phi i32 [ 0, %1 ], [ 1, %3 ], [ %15, %13 ]
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
