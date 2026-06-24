; ModuleID = 'benchmark/c_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %5) #2
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %3, %30
  %9 = phi i32 [ %33, %30 ], [ 0, %3 ]
  %10 = phi i32 [ %32, %30 ], [ 0, %3 ]
  %11 = phi i32 [ %31, %30 ], [ 0, %3 ]
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds i32, i32* %0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = sext i32 %10 to i64
  %16 = getelementptr inbounds i32, i32* %0, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = sub nsw i32 %14, %17
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %20, label %24

20:                                               ; preds = %8
  %21 = add nsw i32 %11, 1
  %22 = add nsw i32 %10, 1
  %23 = add nsw i32 %9, 1
  br label %30

24:                                               ; preds = %8
  %25 = icmp sgt i32 %18, %2
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = add nsw i32 %10, 1
  br label %30

28:                                               ; preds = %24
  %29 = add nsw i32 %9, 1
  br label %30

30:                                               ; preds = %26, %28, %20
  %31 = phi i32 [ %21, %20 ], [ %11, %26 ], [ %11, %28 ]
  %32 = phi i32 [ %22, %20 ], [ %27, %26 ], [ %10, %28 ]
  %33 = phi i32 [ %23, %20 ], [ %9, %26 ], [ %29, %28 ]
  %34 = icmp slt i32 %33, %1
  br i1 %34, label %8, label %35, !llvm.loop !9

35:                                               ; preds = %30, %3
  %36 = phi i32 [ 0, %3 ], [ %31, %30 ]
  ret i32 %36
}

declare i32 @sort(...) local_unnamed_addr #1

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
