; ModuleID = 'benchmark/c_transcoder/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N_processed.c'
source_filename = "benchmark/c_transcoder/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, %2
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = add nsw i32 %2, %1
  %7 = sdiv i32 %6, 2
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %11 = add nsw i32 %7, 1
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %24, label %13

13:                                               ; preds = %5
  %14 = icmp sgt i32 %6, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = add nsw i32 %7, -1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = icmp eq i32 %10, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %15, %13
  %22 = add nsw i32 %7, -1
  %23 = call i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %22)
  br label %26

24:                                               ; preds = %5
  %25 = call i32 @f_gold(i32* noundef %0, i32 noundef %11, i32 noundef %2)
  br label %26

26:                                               ; preds = %21, %24, %15, %3
  %27 = phi i32 [ -1, %3 ], [ %23, %21 ], [ %25, %24 ], [ %7, %15 ]
  ret i32 %27
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
