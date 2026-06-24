; ModuleID = 'benchmark/c_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %37

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  br label %7

7:                                                ; preds = %34, %5
  %8 = phi i64 [ 0, %5 ], [ %35, %34 ]
  %9 = phi i32 [ 0, %5 ], [ %28, %34 ]
  %10 = getelementptr inbounds i32, i32* %0, i64 %8
  br label %11

11:                                               ; preds = %7, %19
  %12 = phi i64 [ 0, %7 ], [ %20, %19 ]
  %13 = icmp eq i64 %8, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds i32, i32* %0, i64 %12
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = load i32, i32* %10, align 4, !tbaa !5
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11, %14
  %20 = add nuw nsw i64 %12, 1
  %21 = icmp eq i64 %20, %6
  br i1 %21, label %24, label %11, !llvm.loop !9

22:                                               ; preds = %14
  %23 = trunc i64 %12 to i32
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i32 [ %23, %22 ], [ %1, %19 ]
  %26 = icmp eq i32 %25, %1
  %27 = zext i1 %26 to i32
  %28 = add nuw nsw i32 %9, %27
  %29 = icmp eq i32 %28, %2
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = and i64 %8, 4294967295
  %32 = getelementptr inbounds i32, i32* %0, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !5
  br label %37

34:                                               ; preds = %24
  %35 = add nuw nsw i64 %8, 1
  %36 = icmp eq i64 %35, %6
  br i1 %36, label %37, label %7, !llvm.loop !11

37:                                               ; preds = %34, %3, %30
  %38 = phi i32 [ %33, %30 ], [ -1, %3 ], [ -1, %34 ]
  ret i32 %38
}

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
