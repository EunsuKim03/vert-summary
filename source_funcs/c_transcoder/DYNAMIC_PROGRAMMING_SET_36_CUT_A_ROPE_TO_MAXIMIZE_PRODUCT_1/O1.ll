; ModuleID = 'benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SET_36_CUT_A_ROPE_TO_MAXIMIZE_PRODUCT_1/DYNAMIC_PROGRAMMING_SET_36_CUT_A_ROPE_TO_MAXIMIZE_PRODUCT_1_processed.c'
source_filename = "benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SET_36_CUT_A_ROPE_TO_MAXIMIZE_PRODUCT_1/DYNAMIC_PROGRAMMING_SET_36_CUT_A_ROPE_TO_MAXIMIZE_PRODUCT_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, -2
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = icmp sgt i32 %0, 4
  br i1 %5, label %8, label %14

6:                                                ; preds = %1
  %7 = add nsw i32 %0, -1
  br label %18

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %12, %8 ], [ 1, %4 ]
  %10 = phi i32 [ %11, %8 ], [ %0, %4 ]
  %11 = add nsw i32 %10, -3
  %12 = mul nsw i32 %9, 3
  %13 = icmp sgt i32 %10, 7
  br i1 %13, label %8, label %14, !llvm.loop !5

14:                                               ; preds = %8, %4
  %15 = phi i32 [ %0, %4 ], [ %11, %8 ]
  %16 = phi i32 [ 1, %4 ], [ %12, %8 ]
  %17 = mul nsw i32 %16, %15
  br label %18

18:                                               ; preds = %14, %6
  %19 = phi i32 [ %7, %6 ], [ %17, %14 ]
  ret i32 %19
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
