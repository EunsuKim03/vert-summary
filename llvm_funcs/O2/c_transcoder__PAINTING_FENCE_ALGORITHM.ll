; ModuleID = 'benchmark/c_transcoder/PAINTING_FENCE_ALGORITHM/PAINTING_FENCE_ALGORITHM_processed.c'
source_filename = "benchmark/c_transcoder/PAINTING_FENCE_ALGORITHM/PAINTING_FENCE_ALGORITHM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i64 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, 2
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -1
  %6 = add i32 %0, -1
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %0, 2
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = and i32 %6, -2
  br label %24

11:                                               ; preds = %24, %4
  %12 = phi i32 [ undef, %4 ], [ %35, %24 ]
  %13 = phi i32 [ %1, %4 ], [ %33, %24 ]
  %14 = phi i32 [ %1, %4 ], [ %35, %24 ]
  %15 = icmp eq i32 %7, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = mul i32 %14, %5
  %18 = srem i32 %17, 1000000007
  %19 = add nsw i32 %18, %13
  %20 = srem i32 %19, 1000000007
  br label %21

21:                                               ; preds = %16, %11, %2
  %22 = phi i32 [ %1, %2 ], [ %12, %11 ], [ %20, %16 ]
  %23 = sext i32 %22 to i64
  ret i64 %23

24:                                               ; preds = %24, %9
  %25 = phi i32 [ %1, %9 ], [ %33, %24 ]
  %26 = phi i32 [ %1, %9 ], [ %35, %24 ]
  %27 = phi i32 [ 0, %9 ], [ %36, %24 ]
  %28 = mul i32 %26, %5
  %29 = srem i32 %28, 1000000007
  %30 = add nsw i32 %29, %25
  %31 = srem i32 %30, 1000000007
  %32 = mul i32 %31, %5
  %33 = srem i32 %32, 1000000007
  %34 = add nsw i32 %33, %29
  %35 = srem i32 %34, 1000000007
  %36 = add i32 %27, 2
  %37 = icmp eq i32 %36, %10
  br i1 %37, label %11, label %24, !llvm.loop !5
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
