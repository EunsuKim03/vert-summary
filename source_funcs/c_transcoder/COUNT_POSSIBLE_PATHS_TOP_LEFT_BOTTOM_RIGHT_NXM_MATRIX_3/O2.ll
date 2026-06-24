; ModuleID = 'benchmark/c_transcoder/COUNT_POSSIBLE_PATHS_TOP_LEFT_BOTTOM_RIGHT_NXM_MATRIX_3/COUNT_POSSIBLE_PATHS_TOP_LEFT_BOTTOM_RIGHT_NXM_MATRIX_3_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_POSSIBLE_PATHS_TOP_LEFT_BOTTOM_RIGHT_NXM_MATRIX_3/COUNT_POSSIBLE_PATHS_TOP_LEFT_BOTTOM_RIGHT_NXM_MATRIX_3_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %0, -1
  %4 = add i32 %3, %1
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = sub i32 1, %1
  %8 = add i32 %0, -1
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %0, 2
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = and i32 %8, -2
  br label %24

13:                                               ; preds = %24, %6
  %14 = phi i32 [ undef, %6 ], [ %34, %24 ]
  %15 = phi i32 [ %1, %6 ], [ %35, %24 ]
  %16 = phi i32 [ 1, %6 ], [ %34, %24 ]
  %17 = icmp eq i32 %9, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = mul nsw i32 %15, %16
  %20 = add i32 %7, %15
  %21 = sdiv i32 %19, %20
  br label %22

22:                                               ; preds = %18, %13, %2
  %23 = phi i32 [ 1, %2 ], [ %14, %13 ], [ %21, %18 ]
  ret i32 %23

24:                                               ; preds = %24, %11
  %25 = phi i32 [ %1, %11 ], [ %35, %24 ]
  %26 = phi i32 [ 1, %11 ], [ %34, %24 ]
  %27 = phi i32 [ 0, %11 ], [ %36, %24 ]
  %28 = mul nsw i32 %25, %26
  %29 = add i32 %7, %25
  %30 = sdiv i32 %28, %29
  %31 = add nsw i32 %25, 1
  %32 = mul nsw i32 %31, %30
  %33 = add i32 %7, %31
  %34 = sdiv i32 %32, %33
  %35 = add nsw i32 %25, 2
  %36 = add i32 %27, 2
  %37 = icmp eq i32 %36, %12
  br i1 %37, label %13, label %24, !llvm.loop !5
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
