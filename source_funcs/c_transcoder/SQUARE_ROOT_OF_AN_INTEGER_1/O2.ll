; ModuleID = 'benchmark/c_transcoder/SQUARE_ROOT_OF_AN_INTEGER_1/SQUARE_ROOT_OF_AN_INTEGER_1_processed.c'
source_filename = "benchmark/c_transcoder/SQUARE_ROOT_OF_AN_INTEGER_1/SQUARE_ROOT_OF_AN_INTEGER_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 1
  br i1 %4, label %21, label %5

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %19, %13 ], [ undef, %3 ]
  %7 = phi i32 [ %18, %13 ], [ %0, %3 ]
  %8 = phi i32 [ %17, %13 ], [ 1, %3 ]
  %9 = add nsw i32 %7, %8
  %10 = sdiv i32 %9, 2
  %11 = mul nsw i32 %10, %10
  %12 = icmp eq i32 %11, %0
  br i1 %12, label %21, label %13

13:                                               ; preds = %5
  %14 = icmp slt i32 %11, %0
  %15 = add nsw i32 %10, 1
  %16 = add nsw i32 %10, -1
  %17 = select i1 %14, i32 %15, i32 %8
  %18 = select i1 %14, i32 %7, i32 %16
  %19 = select i1 %14, i32 %10, i32 %6
  %20 = icmp sgt i32 %17, %18
  br i1 %20, label %21, label %5

21:                                               ; preds = %13, %5, %3, %1
  %22 = phi i32 [ %0, %1 ], [ undef, %3 ], [ %19, %13 ], [ %10, %5 ]
  ret i32 %22
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
