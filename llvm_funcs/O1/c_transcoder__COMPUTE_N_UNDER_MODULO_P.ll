; ModuleID = 'benchmark/c_transcoder/COMPUTE_N_UNDER_MODULO_P/COMPUTE_N_UNDER_MODULO_P_processed.c'
source_filename = "benchmark/c_transcoder/COMPUTE_N_UNDER_MODULO_P/COMPUTE_N_UNDER_MODULO_P_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, %1
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %13, label %6

6:                                                ; preds = %4, %6
  %7 = phi i32 [ %11, %6 ], [ 1, %4 ]
  %8 = phi i32 [ %10, %6 ], [ 1, %4 ]
  %9 = mul nsw i32 %7, %8
  %10 = srem i32 %9, %1
  %11 = add nuw i32 %7, 1
  %12 = icmp eq i32 %7, %0
  br i1 %12, label %13, label %6, !llvm.loop !5

13:                                               ; preds = %6, %4, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %4 ], [ %10, %6 ]
  ret i32 %14
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
