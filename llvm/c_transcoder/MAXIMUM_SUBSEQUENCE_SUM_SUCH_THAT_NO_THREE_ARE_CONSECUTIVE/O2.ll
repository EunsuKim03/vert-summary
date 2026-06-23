; ModuleID = 'benchmark/c_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = load i32, i32* %0, align 4, !tbaa !5
  store i32 %7, i32* %4, align 16, !tbaa !5
  %8 = icmp eq i32 %1, 1
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds i32, i32* %0, i64 1
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = add nsw i32 %11, %7
  %13 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 %12, i32* %13, align 4, !tbaa !5
  %14 = icmp ugt i32 %1, 2
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = getelementptr inbounds i32, i32* %0, i64 2
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = add nsw i32 %17, %11
  %19 = add nsw i32 %7, %17
  %20 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %18, i32 noundef %19) #2
  %21 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %12, i32 noundef %20) #2
  %22 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 %21, i32* %22, align 8, !tbaa !5
  %23 = icmp eq i32 %1, 3
  br i1 %23, label %24, label %29

24:                                               ; preds = %29, %9, %6, %2, %15
  %25 = add nsw i32 %1, -1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %4, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !5
  ret i32 %28

29:                                               ; preds = %15, %50
  %30 = phi i32 [ %52, %50 ], [ %12, %15 ]
  %31 = phi i32 [ %46, %50 ], [ %21, %15 ]
  %32 = phi i64 [ %48, %50 ], [ 3, %15 ]
  %33 = add nsw i64 %32, -1
  %34 = getelementptr inbounds i32, i32* %0, i64 %32
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = add nsw i32 %35, %30
  %37 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %31, i32 noundef %36) #2
  %38 = load i32, i32* %34, align 4, !tbaa !5
  %39 = getelementptr inbounds i32, i32* %0, i64 %33
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = add nsw i32 %40, %38
  %42 = add nsw i64 %32, -3
  %43 = getelementptr inbounds i32, i32* %4, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = add nsw i32 %41, %44
  %46 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %37, i32 noundef %45) #2
  %47 = getelementptr inbounds i32, i32* %4, i64 %32
  store i32 %46, i32* %47, align 4, !tbaa !5
  %48 = add nuw nsw i64 %32, 1
  %49 = icmp eq i64 %48, %3
  br i1 %49, label %24, label %50, !llvm.loop !9

50:                                               ; preds = %29
  %51 = getelementptr inbounds i32, i32* %4, i64 %33
  %52 = load i32, i32* %51, align 4, !tbaa !5
  br label %29
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
