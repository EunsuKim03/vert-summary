; ModuleID = 'benchmark/c_transcoder/LONGEST_SUBSEQUENCE_SUCH_THAT_DIFFERENCE_BETWEEN_ADJACENTS_IS_ONE/LONGEST_SUBSEQUENCE_SUCH_THAT_DIFFERENCE_BETWEEN_ADJACENTS_IS_ONE_processed.c'
source_filename = "benchmark/c_transcoder/LONGEST_SUBSEQUENCE_SUCH_THAT_DIFFERENCE_BETWEEN_ADJACENTS_IS_ONE/LONGEST_SUBSEQUENCE_SUCH_THAT_DIFFERENCE_BETWEEN_ADJACENTS_IS_ONE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = zext i32 %1 to i64
  br label %12

8:                                                ; preds = %12, %2
  %9 = icmp sgt i32 %1, 1
  br i1 %9, label %10, label %21

10:                                               ; preds = %8
  %11 = zext i32 %1 to i64
  br label %17

12:                                               ; preds = %6, %12
  %13 = phi i64 [ 0, %6 ], [ %15, %12 ]
  %14 = getelementptr inbounds i32, i32* %4, i64 %13
  store i32 1, i32* %14, align 4, !tbaa !5
  %15 = add nuw nsw i64 %13, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %8, label %12, !llvm.loop !9

17:                                               ; preds = %10, %25
  %18 = phi i64 [ 1, %10 ], [ %26, %25 ]
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = getelementptr inbounds i32, i32* %4, i64 %18
  br label %28

21:                                               ; preds = %25, %8
  %22 = icmp sgt i32 %1, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %21
  %24 = zext i32 %1 to i64
  br label %49

25:                                               ; preds = %44
  %26 = add nuw nsw i64 %18, 1
  %27 = icmp eq i64 %26, %11
  br i1 %27, label %21, label %17, !llvm.loop !12

28:                                               ; preds = %17, %44
  %29 = phi i64 [ 0, %17 ], [ %45, %44 ]
  %30 = load i32, i32* %19, align 4, !tbaa !5
  %31 = getelementptr inbounds i32, i32* %0, i64 %29
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = add nsw i32 %32, 1
  %34 = icmp eq i32 %30, %33
  %35 = add nsw i32 %32, -1
  %36 = icmp eq i32 %30, %35
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load i32, i32* %20, align 4, !tbaa !5
  %40 = getelementptr inbounds i32, i32* %4, i64 %29
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = add nsw i32 %41, 1
  %43 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %39, i32 noundef %42) #2
  store i32 %43, i32* %20, align 4, !tbaa !5
  br label %44

44:                                               ; preds = %28, %38
  %45 = add nuw nsw i64 %29, 1
  %46 = icmp eq i64 %45, %18
  br i1 %46, label %25, label %28, !llvm.loop !13

47:                                               ; preds = %49, %21
  %48 = phi i32 [ 1, %21 ], [ %55, %49 ]
  ret i32 %48

49:                                               ; preds = %23, %49
  %50 = phi i64 [ 0, %23 ], [ %56, %49 ]
  %51 = phi i32 [ 1, %23 ], [ %55, %49 ]
  %52 = getelementptr inbounds i32, i32* %4, i64 %50
  %53 = load i32, i32* %52, align 4, !tbaa !5
  %54 = icmp slt i32 %51, %53
  %55 = select i1 %54, i32 %53, i32 %51
  %56 = add nuw nsw i64 %50, 1
  %57 = icmp eq i64 %56, %24
  br i1 %57, label %47, label %49, !llvm.loop !14
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
