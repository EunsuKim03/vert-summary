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
  br label %88

7:                                                ; preds = %2
  %8 = load i32, i32* %0, align 4, !tbaa !5
  %9 = getelementptr inbounds i32, i32* %0, i64 1
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %11 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %8, i32 noundef %10) #2
  br label %88

12:                                               ; preds = %2
  %13 = load i32, i32* %0, align 4, !tbaa !5
  %14 = getelementptr inbounds i32, i32* %0, i64 1
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = getelementptr inbounds i32, i32* %0, i64 2
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %15, i32 noundef %17) #2
  %19 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %13, i32 noundef %18) #2
  br label %88

20:                                               ; preds = %2
  %21 = load i32, i32* %0, align 4, !tbaa !5
  %22 = getelementptr inbounds i32, i32* %0, i64 1
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %21, i32 noundef %23) #2
  %25 = getelementptr inbounds i32, i32* %0, i64 2
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = getelementptr inbounds i32, i32* %0, i64 3
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %26, i32 noundef %28) #2
  %30 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %24, i32 noundef %29) #2
  br label %88

31:                                               ; preds = %2
  %32 = load i32, i32* %0, align 4, !tbaa !5
  store i32 %32, i32* %4, align 16, !tbaa !5
  %33 = getelementptr inbounds i32, i32* %0, i64 1
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 %34, i32* %35, align 4, !tbaa !5
  %36 = getelementptr inbounds i32, i32* %0, i64 2
  %37 = load i32, i32* %36, align 4, !tbaa !5
  %38 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 %37, i32* %38, align 8, !tbaa !5
  %39 = getelementptr inbounds i32, i32* %0, i64 3
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = getelementptr inbounds i32, i32* %4, i64 3
  store i32 %40, i32* %41, align 4, !tbaa !5
  %42 = icmp sgt i32 %1, 4
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = zext i32 %1 to i64
  br label %65

45:                                               ; preds = %65, %31
  %46 = add nsw i32 %1, -1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %4, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !5
  %50 = add nsw i32 %1, -2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %4, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !5
  %54 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %49, i32 noundef %53) #2
  %55 = add nsw i32 %1, -4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %4, i64 %56
  %58 = load i32, i32* %57, align 4, !tbaa !5
  %59 = add nsw i32 %1, -3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %4, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !5
  %63 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %58, i32 noundef %62) #2
  %64 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %54, i32 noundef %63) #2
  br label %88

65:                                               ; preds = %43, %65
  %66 = phi i64 [ 4, %43 ], [ %86, %65 ]
  %67 = getelementptr inbounds i32, i32* %0, i64 %66
  %68 = load i32, i32* %67, align 4, !tbaa !5
  %69 = add nsw i64 %66, -1
  %70 = getelementptr inbounds i32, i32* %4, i64 %69
  %71 = load i32, i32* %70, align 4, !tbaa !5
  %72 = add nsw i64 %66, -2
  %73 = getelementptr inbounds i32, i32* %4, i64 %72
  %74 = load i32, i32* %73, align 4, !tbaa !5
  %75 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %71, i32 noundef %74) #2
  %76 = add nsw i64 %66, -3
  %77 = getelementptr inbounds i32, i32* %4, i64 %76
  %78 = load i32, i32* %77, align 4, !tbaa !5
  %79 = add nsw i64 %66, -4
  %80 = getelementptr inbounds i32, i32* %4, i64 %79
  %81 = load i32, i32* %80, align 4, !tbaa !5
  %82 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %78, i32 noundef %81) #2
  %83 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %75, i32 noundef %82) #2
  %84 = add nsw i32 %83, %68
  %85 = getelementptr inbounds i32, i32* %4, i64 %66
  store i32 %84, i32* %85, align 4, !tbaa !5
  %86 = add nuw nsw i64 %66, 1
  %87 = icmp eq i64 %86, %44
  br i1 %87, label %45, label %65, !llvm.loop !9

88:                                               ; preds = %45, %20, %12, %7, %5
  %89 = phi i32 [ %6, %5 ], [ %11, %7 ], [ %19, %12 ], [ %30, %20 ], [ %64, %45 ]
  ret i32 %89
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
