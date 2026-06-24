; ModuleID = 'benchmark/c_transcoder/STEINS_ALGORITHM_FOR_FINDING_GCD_1/STEINS_ALGORITHM_FOR_FINDING_GCD_1_processed.c'
source_filename = "benchmark/c_transcoder/STEINS_ALGORITHM_FOR_FINDING_GCD_1/STEINS_ALGORITHM_FOR_FINDING_GCD_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, %1
  br i1 %3, label %23, label %4

4:                                                ; preds = %2, %18
  %5 = phi i32 [ %20, %18 ], [ %1, %2 ]
  %6 = phi i32 [ %21, %18 ], [ %0, %2 ]
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %6, 1
  %9 = icmp eq i32 %8, 0
  br label %10

10:                                               ; preds = %4, %33
  %11 = phi i32 [ %5, %4 ], [ %34, %33 ]
  br i1 %7, label %23, label %12

12:                                               ; preds = %10
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %12
  br i1 %9, label %15, label %30

15:                                               ; preds = %14
  %16 = and i32 %5, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15, %38, %40
  %19 = phi i32 [ %41, %40 ], [ %39, %38 ], [ %6, %15 ]
  %20 = phi i32 [ %6, %40 ], [ %11, %38 ], [ %5, %15 ]
  %21 = ashr i32 %19, 1
  %22 = icmp eq i32 %21, %20
  br i1 %22, label %23, label %4

23:                                               ; preds = %18, %12, %10, %33, %2, %25
  %24 = phi i32 [ %29, %25 ], [ %0, %2 ], [ %6, %12 ], [ %5, %10 ], [ %6, %33 ], [ %20, %18 ]
  ret i32 %24

25:                                               ; preds = %15
  %26 = ashr i32 %6, 1
  %27 = ashr i32 %5, 1
  %28 = tail call i32 @f_gold(i32 noundef %26, i32 noundef %27)
  %29 = shl i32 %28, 1
  br label %23

30:                                               ; preds = %14
  %31 = and i32 %11, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = ashr i32 %11, 1
  %35 = icmp eq i32 %6, %34
  br i1 %35, label %23, label %10

36:                                               ; preds = %30
  %37 = icmp sgt i32 %6, %11
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  %39 = sub nsw i32 %6, %11
  br label %18

40:                                               ; preds = %36
  %41 = sub nsw i32 %11, %6
  br label %18
}

attributes #0 = { nofree nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
