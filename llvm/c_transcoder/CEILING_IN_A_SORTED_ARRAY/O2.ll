; ModuleID = 'benchmark/c_transcoder/CEILING_IN_A_SORTED_ARRAY/CEILING_IN_A_SORTED_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/CEILING_IN_A_SORTED_ARRAY/CEILING_IN_A_SORTED_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %8 = icmp slt i32 %7, %3
  br i1 %8, label %9, label %35

9:                                                ; preds = %4
  %10 = icmp slt i32 %1, %2
  br i1 %10, label %11, label %35

11:                                               ; preds = %9
  %12 = sext i32 %2 to i64
  %13 = icmp eq i32 %7, %3
  br i1 %13, label %32, label %14

14:                                               ; preds = %11, %25
  %15 = phi i64 [ %18, %25 ], [ %5, %11 ]
  %16 = phi i32 [ %27, %25 ], [ %7, %11 ]
  %17 = icmp slt i32 %16, %3
  %18 = add nsw i64 %15, 1
  br i1 %17, label %19, label %23

19:                                               ; preds = %14
  %20 = getelementptr inbounds i32, i32* %0, i64 %18
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = icmp slt i32 %21, %3
  br i1 %22, label %23, label %29

23:                                               ; preds = %14, %19
  %24 = icmp eq i64 %18, %12
  br i1 %24, label %35, label %25, !llvm.loop !9

25:                                               ; preds = %23
  %26 = getelementptr inbounds i32, i32* %0, i64 %18
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = icmp eq i32 %27, %3
  br i1 %28, label %32, label %14

29:                                               ; preds = %19
  %30 = trunc i64 %15 to i32
  %31 = add nsw i32 %30, 1
  br label %35

32:                                               ; preds = %25, %11
  %33 = phi i64 [ %5, %11 ], [ %18, %25 ]
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %23, %29, %32, %9, %4
  %36 = phi i32 [ %1, %4 ], [ -1, %9 ], [ %31, %29 ], [ %34, %32 ], [ -1, %23 ]
  ret i32 %36
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
