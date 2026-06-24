; ModuleID = 'benchmark/c_transcoder/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N_processed.c'
source_filename = "benchmark/c_transcoder/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, %2
  br i1 %4, label %29, label %7

5:                                                ; preds = %10
  %6 = icmp slt i32 %13, %11
  br i1 %6, label %7, label %29

7:                                                ; preds = %3, %5
  %8 = phi i32 [ %11, %5 ], [ %2, %3 ]
  %9 = phi i32 [ %16, %5 ], [ %1, %3 ]
  br label %10

10:                                               ; preds = %7, %27
  %11 = phi i32 [ %8, %7 ], [ %21, %27 ]
  %12 = add nsw i32 %11, %9
  %13 = sdiv i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %0, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = add nsw i32 %13, 1
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %5, label %19

19:                                               ; preds = %10
  %20 = icmp sgt i32 %12, 1
  %21 = add nsw i32 %13, -1
  br i1 %20, label %22, label %27

22:                                               ; preds = %19
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = icmp eq i32 %16, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %19, %22
  %28 = icmp slt i32 %9, %13
  br i1 %28, label %10, label %29

29:                                               ; preds = %5, %27, %22, %3
  %30 = phi i32 [ -1, %3 ], [ %13, %22 ], [ -1, %27 ], [ -1, %5 ]
  ret i32 %30
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
