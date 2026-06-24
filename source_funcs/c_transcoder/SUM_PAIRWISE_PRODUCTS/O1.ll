; ModuleID = 'benchmark/c_transcoder/SUM_PAIRWISE_PRODUCTS/SUM_PAIRWISE_PRODUCTS_processed.c'
source_filename = "benchmark/c_transcoder/SUM_PAIRWISE_PRODUCTS/SUM_PAIRWISE_PRODUCTS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = add i32 %0, 1
  %5 = zext i32 %4 to i64
  %6 = zext i32 %4 to i64
  br label %7

7:                                                ; preds = %3, %14
  %8 = phi i64 [ 1, %3 ], [ %15, %14 ]
  %9 = phi i64 [ 0, %3 ], [ %22, %14 ]
  br label %17

10:                                               ; preds = %14
  %11 = trunc i64 %22 to i32
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %10 ]
  ret i32 %13

14:                                               ; preds = %17
  %15 = add nuw nsw i64 %8, 1
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %10, label %7, !llvm.loop !5

17:                                               ; preds = %7, %17
  %18 = phi i64 [ %8, %7 ], [ %23, %17 ]
  %19 = phi i64 [ %9, %7 ], [ %22, %17 ]
  %20 = mul i64 %18, %8
  %21 = and i64 %20, 4294967295
  %22 = add nsw i64 %19, %21
  %23 = add nuw nsw i64 %18, 1
  %24 = icmp eq i64 %23, %6
  br i1 %24, label %14, label %17, !llvm.loop !8
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
