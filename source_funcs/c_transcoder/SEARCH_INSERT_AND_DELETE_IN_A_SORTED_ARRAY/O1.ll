; ModuleID = 'benchmark/c_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp slt i32 %2, %1
  br i1 %5, label %20, label %6

6:                                                ; preds = %4
  %7 = add nsw i32 %2, %1
  %8 = sdiv i32 %7, 2
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %0, i64 %9
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = icmp eq i32 %11, %3
  br i1 %12, label %20, label %13

13:                                               ; preds = %6
  %14 = icmp slt i32 %11, %3
  %15 = add nsw i32 %8, 1
  %16 = add nsw i32 %8, -1
  %17 = select i1 %14, i32 %2, i32 %16
  %18 = select i1 %14, i32 %15, i32 %1
  %19 = call i32 @f_gold(i32* noundef %0, i32 noundef %18, i32 noundef %17, i32 noundef %3)
  br label %20

20:                                               ; preds = %13, %6, %4
  %21 = phi i32 [ -1, %4 ], [ %8, %6 ], [ %19, %13 ]
  ret i32 %21
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
