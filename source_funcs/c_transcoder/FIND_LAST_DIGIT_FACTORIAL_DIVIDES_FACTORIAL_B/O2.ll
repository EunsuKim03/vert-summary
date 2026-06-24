; ModuleID = 'benchmark/c_transcoder/FIND_LAST_DIGIT_FACTORIAL_DIVIDES_FACTORIAL_B/FIND_LAST_DIGIT_FACTORIAL_DIVIDES_FACTORIAL_B_processed.c'
source_filename = "benchmark/c_transcoder/FIND_LAST_DIGIT_FACTORIAL_DIVIDES_FACTORIAL_B/FIND_LAST_DIGIT_FACTORIAL_DIVIDES_FACTORIAL_B_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, %0
  br i1 %3, label %45, label %4

4:                                                ; preds = %2
  %5 = sub i64 %1, %0
  %6 = icmp sgt i64 %5, 4
  br i1 %6, label %45, label %7

7:                                                ; preds = %4
  %8 = icmp sgt i64 %1, %0
  br i1 %8, label %9, label %45

9:                                                ; preds = %7
  %10 = xor i64 %0, -1
  %11 = and i64 %5, 1
  %12 = sub i64 0, %1
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = and i64 %5, -2
  br label %31

16:                                               ; preds = %31, %9
  %17 = phi i64 [ undef, %9 ], [ %42, %31 ]
  %18 = phi i64 [ %0, %9 ], [ %39, %31 ]
  %19 = phi i64 [ 1, %9 ], [ %42, %31 ]
  %20 = icmp eq i64 %11, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = add nsw i64 %18, 1
  %23 = srem i64 %22, 10
  %24 = mul nsw i64 %23, %19
  %25 = srem i64 %24, 10
  br label %26

26:                                               ; preds = %16, %21
  %27 = phi i64 [ %17, %16 ], [ %25, %21 ]
  %28 = trunc i64 %27 to i8
  %29 = srem i8 %28, 10
  %30 = sext i8 %29 to i32
  br label %45

31:                                               ; preds = %31, %14
  %32 = phi i64 [ %0, %14 ], [ %39, %31 ]
  %33 = phi i64 [ 1, %14 ], [ %42, %31 ]
  %34 = phi i64 [ 0, %14 ], [ %43, %31 ]
  %35 = add nsw i64 %32, 1
  %36 = srem i64 %35, 10
  %37 = mul nsw i64 %36, %33
  %38 = srem i64 %37, 10
  %39 = add nsw i64 %32, 2
  %40 = srem i64 %39, 10
  %41 = mul nsw i64 %40, %38
  %42 = srem i64 %41, 10
  %43 = add i64 %34, 2
  %44 = icmp eq i64 %43, %15
  br i1 %44, label %16, label %31, !llvm.loop !5

45:                                               ; preds = %7, %26, %4, %2
  %46 = phi i32 [ 1, %2 ], [ 0, %4 ], [ %30, %26 ], [ 1, %7 ]
  ret i32 %46
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
