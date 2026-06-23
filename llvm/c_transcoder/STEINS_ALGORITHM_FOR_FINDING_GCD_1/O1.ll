; ModuleID = 'benchmark/c_transcoder/STEINS_ALGORITHM_FOR_FINDING_GCD_1/STEINS_ALGORITHM_FOR_FINDING_GCD_1_processed.c'
source_filename = "benchmark/c_transcoder/STEINS_ALGORITHM_FOR_FINDING_GCD_1/STEINS_ALGORITHM_FOR_FINDING_GCD_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, %1
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %6
  %9 = and i32 %0, 1
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %1, 1
  %12 = icmp eq i32 %11, 0
  br i1 %10, label %13, label %21

13:                                               ; preds = %8
  %14 = ashr i32 %0, 1
  br i1 %12, label %17, label %15

15:                                               ; preds = %13
  %16 = call i32 @f_gold(i32 noundef %14, i32 noundef %1)
  br label %35

17:                                               ; preds = %13
  %18 = ashr i32 %1, 1
  %19 = call i32 @f_gold(i32 noundef %14, i32 noundef %18)
  %20 = shl i32 %19, 1
  br label %35

21:                                               ; preds = %8
  br i1 %12, label %22, label %25

22:                                               ; preds = %21
  %23 = ashr i32 %1, 1
  %24 = call i32 @f_gold(i32 noundef %0, i32 noundef %23)
  br label %35

25:                                               ; preds = %21
  %26 = icmp sgt i32 %0, %1
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = sub nsw i32 %0, %1
  %29 = ashr i32 %28, 1
  %30 = call i32 @f_gold(i32 noundef %29, i32 noundef %1)
  br label %35

31:                                               ; preds = %25
  %32 = sub nsw i32 %1, %0
  %33 = ashr i32 %32, 1
  %34 = call i32 @f_gold(i32 noundef %33, i32 noundef %0)
  br label %35

35:                                               ; preds = %6, %4, %2, %31, %27, %22, %17, %15
  %36 = phi i32 [ %16, %15 ], [ %20, %17 ], [ %24, %22 ], [ %30, %27 ], [ %34, %31 ], [ %0, %2 ], [ %1, %4 ], [ %0, %6 ]
  ret i32 %36
}

attributes #0 = { nofree nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
