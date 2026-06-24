; ModuleID = 'benchmark/c_transcoder/EVEN_FIBONACCI_NUMBERS_SUM/EVEN_FIBONACCI_NUMBERS_SUM_processed.c'
source_filename = "benchmark/c_transcoder/EVEN_FIBONACCI_NUMBERS_SUM/EVEN_FIBONACCI_NUMBERS_SUM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 2
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = sext i32 %0 to i64
  br label %5

5:                                                ; preds = %3, %10
  %6 = phi i64 [ %14, %10 ], [ 0, %3 ]
  %7 = phi i64 [ %15, %10 ], [ 2, %3 ]
  %8 = phi i64 [ %17, %10 ], [ 2, %3 ]
  %9 = icmp sgt i64 %7, %4
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = shl nsw i64 %7, 2
  %12 = add nsw i64 %11, %6
  %13 = icmp sgt i64 %12, %4
  %14 = select i1 %13, i64 %6, i64 %7
  %15 = select i1 %13, i64 %7, i64 %12
  %16 = select i1 %13, i64 0, i64 %12
  %17 = add nsw i64 %8, %16
  br i1 %13, label %18, label %5

18:                                               ; preds = %10, %5
  %19 = phi i64 [ %17, %10 ], [ %8, %5 ]
  %20 = trunc i64 %19 to i32
  br label %21

21:                                               ; preds = %1, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %1 ]
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
