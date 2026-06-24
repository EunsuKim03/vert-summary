; ModuleID = 'benchmark/c_transcoder/PAINTING_FENCE_ALGORITHM/PAINTING_FENCE_ALGORITHM_processed.c'
source_filename = "benchmark/c_transcoder/PAINTING_FENCE_ALGORITHM/PAINTING_FENCE_ALGORITHM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i64 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, 2
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -1
  br label %9

6:                                                ; preds = %9, %2
  %7 = phi i32 [ %1, %2 ], [ %16, %9 ]
  %8 = sext i32 %7 to i64
  ret i64 %8

9:                                                ; preds = %4, %9
  %10 = phi i32 [ 2, %4 ], [ %17, %9 ]
  %11 = phi i32 [ %1, %4 ], [ %14, %9 ]
  %12 = phi i32 [ %1, %4 ], [ %16, %9 ]
  %13 = mul i32 %12, %5
  %14 = srem i32 %13, 1000000007
  %15 = add nsw i32 %14, %11
  %16 = srem i32 %15, 1000000007
  %17 = add nuw i32 %10, 1
  %18 = icmp eq i32 %10, %0
  br i1 %18, label %6, label %9, !llvm.loop !5
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
