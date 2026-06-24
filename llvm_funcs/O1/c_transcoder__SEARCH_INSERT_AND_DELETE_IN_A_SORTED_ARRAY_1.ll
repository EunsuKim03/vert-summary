; ModuleID = 'benchmark/c_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1_processed.c'
source_filename = "benchmark/c_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp slt i32 %1, %3
  br i1 %5, label %6, label %26

6:                                                ; preds = %4
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %6
  %9 = sext i32 %1 to i64
  br label %10

10:                                               ; preds = %8, %16
  %11 = phi i64 [ %9, %8 ], [ %12, %16 ]
  %12 = add nsw i64 %11, -1
  %13 = getelementptr inbounds i32, i32* %0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = icmp sgt i32 %14, %2
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds i32, i32* %0, i64 %11
  store i32 %14, i32* %17, align 4, !tbaa !5
  %18 = icmp sgt i64 %11, 1
  br i1 %18, label %10, label %21, !llvm.loop !9

19:                                               ; preds = %10
  %20 = trunc i64 %11 to i32
  br label %21

21:                                               ; preds = %19, %16, %6
  %22 = phi i32 [ %1, %6 ], [ %20, %19 ], [ 0, %16 ]
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %0, i64 %23
  store i32 %2, i32* %24, align 4, !tbaa !5
  %25 = add nsw i32 %1, 1
  br label %26

26:                                               ; preds = %4, %21
  %27 = phi i32 [ %25, %21 ], [ %1, %4 ]
  ret i32 %27
}

attributes #0 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
