; ModuleID = 'benchmark/c_transcoder/MAXIMUM_SUM_SUBSEQUENCE_LEAST_K_DISTANT_ELEMENTS/MAXIMUM_SUM_SUBSEQUENCE_LEAST_K_DISTANT_ELEMENTS_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_SUM_SUBSEQUENCE_LEAST_K_DISTANT_ELEMENTS/MAXIMUM_SUM_SUBSEQUENCE_LEAST_K_DISTANT_ELEMENTS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = zext i32 %1 to i64
  %5 = alloca i32, i64 %4, align 16
  %6 = add nsw i32 %1, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !5
  %10 = getelementptr inbounds i32, i32* %5, i64 %7
  store i32 %9, i32* %10, align 4, !tbaa !5
  %11 = icmp sgt i32 %1, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = add nsw i32 %1, -2
  %14 = zext i32 %13 to i64
  br label %17

15:                                               ; preds = %30, %3
  %16 = load i32, i32* %5, align 16, !tbaa !5
  ret i32 %16

17:                                               ; preds = %12, %30
  %18 = phi i64 [ %14, %12 ], [ %37, %30 ]
  %19 = trunc i64 %18 to i32
  %20 = add i32 %19, 1
  %21 = add i32 %20, %2
  %22 = icmp slt i32 %21, %1
  %23 = getelementptr inbounds i32, i32* %0, i64 %18
  %24 = load i32, i32* %23, align 4, !tbaa !5
  br i1 %22, label %25, label %30

25:                                               ; preds = %17
  %26 = sext i32 %21 to i64
  %27 = getelementptr inbounds i32, i32* %5, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = add nsw i32 %28, %24
  br label %30

30:                                               ; preds = %17, %25
  %31 = phi i32 [ %29, %25 ], [ %24, %17 ]
  %32 = add nuw nsw i64 %18, 1
  %33 = getelementptr inbounds i32, i32* %5, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %31, i32 noundef %34) #2
  %36 = getelementptr inbounds i32, i32* %5, i64 %18
  store i32 %35, i32* %36, align 4
  %37 = add nsw i64 %18, -1
  %38 = icmp sgt i64 %18, 0
  br i1 %38, label %17, label %15, !llvm.loop !9
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
