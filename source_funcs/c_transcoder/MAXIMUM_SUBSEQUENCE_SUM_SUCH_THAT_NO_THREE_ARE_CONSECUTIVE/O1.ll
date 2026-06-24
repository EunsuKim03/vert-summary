; ModuleID = 'benchmark/c_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load i32, i32* %0, align 4, !tbaa !5
  store i32 %7, i32* %4, align 16, !tbaa !5
  br label %8

8:                                                ; preds = %6, %2
  %9 = icmp sgt i32 %1, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = load i32, i32* %0, align 4, !tbaa !5
  %12 = getelementptr inbounds i32, i32* %0, i64 1
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = add nsw i32 %13, %11
  %15 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 %14, i32* %15, align 4, !tbaa !5
  br label %16

16:                                               ; preds = %10, %8
  %17 = icmp sgt i32 %1, 2
  br i1 %17, label %18, label %31

18:                                               ; preds = %16
  %19 = getelementptr inbounds i32, i32* %4, i64 1
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = getelementptr inbounds i32, i32* %0, i64 1
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = getelementptr inbounds i32, i32* %0, i64 2
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = add nsw i32 %24, %22
  %26 = load i32, i32* %0, align 4, !tbaa !5
  %27 = add nsw i32 %26, %24
  %28 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %25, i32 noundef %27) #2
  %29 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %20, i32 noundef %28) #2
  %30 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 %29, i32* %30, align 8, !tbaa !5
  br label %31

31:                                               ; preds = %18, %16
  %32 = icmp sgt i32 %1, 3
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = zext i32 %1 to i64
  br label %40

35:                                               ; preds = %40, %31
  %36 = add nsw i32 %1, -1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %4, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !5
  ret i32 %39

40:                                               ; preds = %33, %40
  %41 = phi i64 [ 3, %33 ], [ %62, %40 ]
  %42 = add nsw i64 %41, -1
  %43 = getelementptr inbounds i32, i32* %4, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = add nsw i64 %41, -2
  %46 = getelementptr inbounds i32, i32* %4, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !5
  %48 = getelementptr inbounds i32, i32* %0, i64 %41
  %49 = load i32, i32* %48, align 4, !tbaa !5
  %50 = add nsw i32 %49, %47
  %51 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %44, i32 noundef %50) #2
  %52 = load i32, i32* %48, align 4, !tbaa !5
  %53 = getelementptr inbounds i32, i32* %0, i64 %42
  %54 = load i32, i32* %53, align 4, !tbaa !5
  %55 = add nsw i32 %54, %52
  %56 = add nsw i64 %41, -3
  %57 = getelementptr inbounds i32, i32* %4, i64 %56
  %58 = load i32, i32* %57, align 4, !tbaa !5
  %59 = add nsw i32 %55, %58
  %60 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %51, i32 noundef %59) #2
  %61 = getelementptr inbounds i32, i32* %4, i64 %41
  store i32 %60, i32* %61, align 4, !tbaa !5
  %62 = add nuw nsw i64 %41, 1
  %63 = icmp eq i64 %62, %34
  br i1 %63, label %35, label %40, !llvm.loop !9
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
