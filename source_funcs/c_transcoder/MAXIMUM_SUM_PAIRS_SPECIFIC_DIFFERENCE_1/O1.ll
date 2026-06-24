; ModuleID = 'benchmark/c_transcoder/MAXIMUM_SUM_PAIRS_SPECIFIC_DIFFERENCE_1/MAXIMUM_SUM_PAIRS_SPECIFIC_DIFFERENCE_1_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_SUM_PAIRS_SPECIFIC_DIFFERENCE_1/MAXIMUM_SUM_PAIRS_SPECIFIC_DIFFERENCE_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %5) #2
  %7 = icmp sgt i32 %1, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %10, %3
  %9 = phi i32 [ 0, %3 ], [ %25, %10 ]
  ret i32 %9

10:                                               ; preds = %3, %10
  %11 = phi i32 [ %26, %10 ], [ %1, %3 ]
  %12 = phi i32 [ %25, %10 ], [ 0, %3 ]
  %13 = add nsw i32 %11, -1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %0, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = add nsw i32 %11, -2
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = sub nsw i32 %16, %20
  %22 = icmp slt i32 %21, %2
  %23 = add nsw i32 %16, %12
  %24 = add nsw i32 %23, %20
  %25 = select i1 %22, i32 %24, i32 %12
  %26 = select i1 %22, i32 %17, i32 %13
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %10, label %8, !llvm.loop !9
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
