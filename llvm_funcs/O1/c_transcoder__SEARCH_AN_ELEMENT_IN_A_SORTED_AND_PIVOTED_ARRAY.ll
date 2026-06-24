; ModuleID = 'benchmark/c_transcoder/SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY/SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY/SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %1, %2
  br i1 %5, label %41, label %6

6:                                                ; preds = %4
  %7 = add nsw i32 %2, %1
  %8 = sdiv i32 %7, 2
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %0, i64 %9
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = icmp eq i32 %11, %3
  br i1 %12, label %41, label %13

13:                                               ; preds = %6
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds i32, i32* %0, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = icmp sgt i32 %16, %11
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = icmp sgt i32 %16, %3
  %20 = icmp slt i32 %11, %3
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = add nsw i32 %8, -1
  br label %37

24:                                               ; preds = %18
  %25 = add nsw i32 %8, 1
  br label %37

26:                                               ; preds = %13
  %27 = icmp sgt i32 %11, %3
  br i1 %27, label %35, label %28

28:                                               ; preds = %26
  %29 = sext i32 %2 to i64
  %30 = getelementptr inbounds i32, i32* %0, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = icmp slt i32 %31, %3
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = add nsw i32 %8, 1
  br label %37

35:                                               ; preds = %28, %26
  %36 = add nsw i32 %8, -1
  br label %37

37:                                               ; preds = %35, %33, %24, %22
  %38 = phi i32 [ %23, %22 ], [ %2, %24 ], [ %2, %33 ], [ %36, %35 ]
  %39 = phi i32 [ %1, %22 ], [ %25, %24 ], [ %34, %33 ], [ %1, %35 ]
  %40 = call i32 @f_gold(i32* noundef %0, i32 noundef %39, i32 noundef %38, i32 noundef %3)
  br label %41

41:                                               ; preds = %37, %6, %4
  %42 = phi i32 [ -1, %4 ], [ %8, %6 ], [ %40, %37 ]
  ret i32 %42
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
