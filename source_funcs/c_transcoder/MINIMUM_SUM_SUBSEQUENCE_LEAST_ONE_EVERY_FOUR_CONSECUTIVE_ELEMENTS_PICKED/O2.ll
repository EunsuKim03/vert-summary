; ModuleID = 'benchmark/c_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  switch i32 %1, label %31 [
    i32 1, label %5
    i32 2, label %7
    i32 3, label %12
    i32 4, label %20
  ]

5:                                                ; preds = %2
  %6 = load i32, i32* %0, align 4, !tbaa !5
  br label %81

7:                                                ; preds = %2
  %8 = load i32, i32* %0, align 4, !tbaa !5
  %9 = getelementptr inbounds i32, i32* %0, i64 1
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %11 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %8, i32 noundef %10) #2
  br label %81

12:                                               ; preds = %2
  %13 = load i32, i32* %0, align 4, !tbaa !5
  %14 = getelementptr inbounds i32, i32* %0, i64 1
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = getelementptr inbounds i32, i32* %0, i64 2
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %15, i32 noundef %17) #2
  %19 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %13, i32 noundef %18) #2
  br label %81

20:                                               ; preds = %2
  %21 = load i32, i32* %0, align 4, !tbaa !5
  %22 = getelementptr inbounds i32, i32* %0, i64 1
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %21, i32 noundef %23) #2
  %25 = getelementptr inbounds i32, i32* %0, i64 2
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = getelementptr inbounds i32, i32* %0, i64 3
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %26, i32 noundef %28) #2
  %30 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %24, i32 noundef %29) #2
  br label %81

31:                                               ; preds = %2
  %32 = bitcast i32* %0 to <4 x i32>*
  %33 = load <4 x i32>, <4 x i32>* %32, align 4, !tbaa !5
  %34 = bitcast i32* %4 to <4 x i32>*
  store <4 x i32> %33, <4 x i32>* %34, align 16, !tbaa !5
  %35 = icmp sgt i32 %1, 4
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = extractelement <4 x i32> %33, i64 3
  %38 = extractelement <4 x i32> %33, i64 2
  %39 = extractelement <4 x i32> %33, i64 0
  br label %60

40:                                               ; preds = %60, %31
  %41 = add nsw i32 %1, -1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %4, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = add nsw i32 %1, -2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %4, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !5
  %49 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %44, i32 noundef %48) #2
  %50 = add nsw i32 %1, -4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %4, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !5
  %54 = add nsw i32 %1, -3
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %4, i64 %55
  %57 = load i32, i32* %56, align 4, !tbaa !5
  %58 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %53, i32 noundef %57) #2
  %59 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %49, i32 noundef %58) #2
  br label %81

60:                                               ; preds = %36, %77
  %61 = phi i32 [ %70, %77 ], [ %39, %36 ]
  %62 = phi i32 [ %80, %77 ], [ %38, %36 ]
  %63 = phi i32 [ %73, %77 ], [ %37, %36 ]
  %64 = phi i64 [ %75, %77 ], [ 4, %36 ]
  %65 = getelementptr inbounds i32, i32* %0, i64 %64
  %66 = load i32, i32* %65, align 4, !tbaa !5
  %67 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %63, i32 noundef %62) #2
  %68 = add nsw i64 %64, -3
  %69 = getelementptr inbounds i32, i32* %4, i64 %68
  %70 = load i32, i32* %69, align 4, !tbaa !5
  %71 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %70, i32 noundef %61) #2
  %72 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %67, i32 noundef %71) #2
  %73 = add nsw i32 %72, %66
  %74 = getelementptr inbounds i32, i32* %4, i64 %64
  store i32 %73, i32* %74, align 4, !tbaa !5
  %75 = add nuw nsw i64 %64, 1
  %76 = icmp eq i64 %75, %3
  br i1 %76, label %40, label %77, !llvm.loop !9

77:                                               ; preds = %60
  %78 = add nsw i64 %64, -1
  %79 = getelementptr inbounds i32, i32* %4, i64 %78
  %80 = load i32, i32* %79, align 4, !tbaa !5
  br label %60

81:                                               ; preds = %40, %20, %12, %7, %5
  %82 = phi i32 [ %6, %5 ], [ %11, %7 ], [ %19, %12 ], [ %30, %20 ], [ %59, %40 ]
  ret i32 %82
}

declare i32 @min(...) local_unnamed_addr #1

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
