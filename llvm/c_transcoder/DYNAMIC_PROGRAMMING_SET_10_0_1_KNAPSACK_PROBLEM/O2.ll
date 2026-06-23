; ModuleID = 'benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM_processed.c'
source_filename = "benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %4
  %7 = sext i32 %3 to i64
  br label %8

8:                                                ; preds = %6, %11
  %9 = phi i64 [ %7, %6 ], [ %12, %11 ]
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = add nsw i64 %9, -1
  %13 = getelementptr inbounds i32, i32* %1, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = icmp sgt i32 %14, %0
  br i1 %15, label %8, label %18

16:                                               ; preds = %8, %4, %18
  %17 = phi i32 [ %26, %18 ], [ 0, %4 ], [ 0, %8 ]
  ret i32 %17

18:                                               ; preds = %11
  %19 = trunc i64 %12 to i32
  %20 = getelementptr inbounds i32, i32* %2, i64 %12
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = sub nsw i32 %0, %14
  %23 = tail call i32 @f_gold(i32 noundef %22, i32* noundef nonnull %1, i32* noundef %2, i32 noundef %19)
  %24 = add nsw i32 %23, %21
  %25 = tail call i32 @f_gold(i32 noundef %0, i32* noundef nonnull %1, i32* noundef %2, i32 noundef %19)
  %26 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %24, i32 noundef %25) #2
  br label %16
}

declare i32 @max(...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
