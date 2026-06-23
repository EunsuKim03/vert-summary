; ModuleID = 'benchmark/c_transcoder/COUNT_NUMBERS_THAT_DONT_CONTAIN_3/COUNT_NUMBERS_THAT_DONT_CONTAIN_3_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_NUMBERS_THAT_DONT_CONTAIN_3/COUNT_NUMBERS_THAT_DONT_CONTAIN_3_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 3
  br i1 %2, label %35, label %3

3:                                                ; preds = %1, %20
  %4 = phi i32 [ %27, %20 ], [ %0, %1 ]
  %5 = phi i32 [ %29, %20 ], [ 0, %1 ]
  br label %6

6:                                                ; preds = %3, %31
  %7 = phi i32 [ %4, %3 ], [ %33, %31 ]
  %8 = icmp ult i32 %7, 10
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = icmp sgt i32 %7, 9
  br i1 %10, label %13, label %20

11:                                               ; preds = %6
  %12 = add nsw i32 %7, -1
  br label %35

13:                                               ; preds = %9, %13
  %14 = phi i32 [ %15, %13 ], [ 1, %9 ]
  %15 = mul nuw nsw i32 %14, 10
  %16 = sdiv i32 %7, %15
  %17 = icmp sgt i32 %16, 9
  br i1 %17, label %13, label %18, !llvm.loop !5

18:                                               ; preds = %13
  %19 = icmp eq i32 %16, 3
  br i1 %19, label %31, label %20

20:                                               ; preds = %9, %18
  %21 = phi i32 [ %16, %18 ], [ %7, %9 ]
  %22 = phi i32 [ %15, %18 ], [ 1, %9 ]
  %23 = tail call i32 @f_gold(i32 noundef %21)
  %24 = add nsw i32 %22, -1
  %25 = tail call i32 @f_gold(i32 noundef %24)
  %26 = mul nsw i32 %25, %23
  %27 = srem i32 %7, %22
  %28 = add i32 %23, %5
  %29 = add i32 %28, %26
  %30 = icmp slt i32 %27, 3
  br i1 %30, label %35, label %3

31:                                               ; preds = %18
  %32 = mul i32 %14, 30
  %33 = add nsw i32 %32, -1
  %34 = icmp slt i32 %32, 4
  br i1 %34, label %35, label %6

35:                                               ; preds = %20, %31, %1, %11
  %36 = phi i32 [ %5, %11 ], [ 0, %1 ], [ %5, %31 ], [ %29, %20 ]
  %37 = phi i32 [ %12, %11 ], [ %0, %1 ], [ %33, %31 ], [ %27, %20 ]
  %38 = add nsw i32 %37, %36
  ret i32 %38
}

attributes #0 = { nofree nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
