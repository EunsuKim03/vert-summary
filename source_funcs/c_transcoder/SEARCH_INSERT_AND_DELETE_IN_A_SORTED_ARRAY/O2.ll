; ModuleID = 'benchmark/c_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp slt i32 %2, %1
  br i1 %5, label %25, label %6

6:                                                ; preds = %4, %19
  %7 = phi i32 [ %10, %19 ], [ %2, %4 ]
  %8 = phi i32 [ %20, %19 ], [ %1, %4 ]
  br label %9

9:                                                ; preds = %6, %22
  %10 = phi i32 [ %7, %6 ], [ %23, %22 ]
  %11 = add nsw i32 %10, %8
  %12 = sdiv i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = icmp eq i32 %15, %3
  br i1 %16, label %25, label %17

17:                                               ; preds = %9
  %18 = icmp slt i32 %15, %3
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = add nsw i32 %12, 1
  %21 = icmp sgt i32 %10, %12
  br i1 %21, label %6, label %25

22:                                               ; preds = %17
  %23 = add nsw i32 %12, -1
  %24 = icmp sgt i32 %12, %8
  br i1 %24, label %9, label %25

25:                                               ; preds = %19, %22, %9, %4
  %26 = phi i32 [ -1, %4 ], [ %12, %9 ], [ -1, %22 ], [ -1, %19 ]
  ret i32 %26
}

attributes #0 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
