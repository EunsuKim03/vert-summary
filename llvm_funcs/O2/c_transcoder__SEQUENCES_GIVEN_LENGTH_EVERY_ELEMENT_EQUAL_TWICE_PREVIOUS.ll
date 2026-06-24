; ModuleID = 'benchmark/c_transcoder/SEQUENCES_GIVEN_LENGTH_EVERY_ELEMENT_EQUAL_TWICE_PREVIOUS/SEQUENCES_GIVEN_LENGTH_EVERY_ELEMENT_EQUAL_TWICE_PREVIOUS_processed.c'
source_filename = "benchmark/c_transcoder/SEQUENCES_GIVEN_LENGTH_EVERY_ELEMENT_EQUAL_TWICE_PREVIOUS/SEQUENCES_GIVEN_LENGTH_EVERY_ELEMENT_EQUAL_TWICE_PREVIOUS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, %1
  br i1 %3, label %20, label %4

4:                                                ; preds = %2, %9
  %5 = phi i32 [ %13, %9 ], [ %1, %2 ]
  %6 = phi i32 [ %12, %9 ], [ %0, %2 ]
  %7 = phi i32 [ %14, %9 ], [ 0, %2 ]
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %6, -1
  %11 = tail call i32 @f_gold(i32 noundef %10, i32 noundef %5)
  %12 = sdiv i32 %6, 2
  %13 = add nsw i32 %5, -1
  %14 = add nsw i32 %11, %7
  %15 = icmp slt i32 %12, %13
  br i1 %15, label %16, label %4

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %14, %9 ], [ %7, %4 ]
  %18 = phi i32 [ 0, %9 ], [ 1, %4 ]
  %19 = add nsw i32 %18, %17
  br label %20

20:                                               ; preds = %16, %2
  %21 = phi i32 [ %19, %16 ], [ 0, %2 ]
  ret i32 %21
}

attributes #0 = { nofree nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
