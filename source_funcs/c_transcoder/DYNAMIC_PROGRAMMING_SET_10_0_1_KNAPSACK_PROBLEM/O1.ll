; ModuleID = 'benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM_processed.c'
source_filename = "benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %3, 0
  %6 = icmp eq i32 %0, 0
  %7 = or i1 %6, %5
  br i1 %7, label %24, label %8

8:                                                ; preds = %4
  %9 = add nsw i32 %3, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %1, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !5
  %13 = icmp sgt i32 %12, %0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call i32 @f_gold(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %9)
  br label %24

16:                                               ; preds = %8
  %17 = getelementptr inbounds i32, i32* %2, i64 %10
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = sub nsw i32 %0, %12
  %20 = call i32 @f_gold(i32 noundef %19, i32* noundef %1, i32* noundef %2, i32 noundef %9)
  %21 = add nsw i32 %20, %18
  %22 = call i32 @f_gold(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %9)
  %23 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %21, i32 noundef %22) #2
  br label %24

24:                                               ; preds = %4, %16, %14
  %25 = phi i32 [ %15, %14 ], [ %23, %16 ], [ 0, %4 ]
  ret i32 %25
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
