; ModuleID = 'benchmark/c_transcoder/MINIMUM_NUMBER_SUBSETS_DISTINCT_ELEMENTS/MINIMUM_NUMBER_SUBSETS_DISTINCT_ELEMENTS_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_NUMBER_SUBSETS_DISTINCT_ELEMENTS/MINIMUM_NUMBER_SUBSETS_DISTINCT_ELEMENTS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = add i32 %1, -1
  %9 = sext i32 %8 to i64
  br label %10

10:                                               ; preds = %7, %33
  %11 = phi i32 [ 0, %7 ], [ %37, %33 ]
  %12 = phi i32 [ 0, %7 ], [ %36, %33 ]
  %13 = icmp slt i32 %11, %8
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = sext i32 %11 to i64
  %16 = sub i32 %1, %11
  br label %19

17:                                               ; preds = %33, %2
  %18 = phi i32 [ 0, %2 ], [ %36, %33 ]
  ret i32 %18

19:                                               ; preds = %14, %28
  %20 = phi i64 [ %15, %14 ], [ %24, %28 ]
  %21 = phi i32 [ 1, %14 ], [ %29, %28 ]
  %22 = getelementptr inbounds i32, i32* %0, i64 %20
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = add nsw i64 %20, 1
  %25 = getelementptr inbounds i32, i32* %0, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = add nuw nsw i32 %21, 1
  %30 = icmp eq i64 %24, %9
  br i1 %30, label %33, label %19, !llvm.loop !9

31:                                               ; preds = %19
  %32 = trunc i64 %20 to i32
  br label %33

33:                                               ; preds = %31, %28, %10
  %34 = phi i32 [ %11, %10 ], [ %32, %31 ], [ %8, %28 ]
  %35 = phi i32 [ 1, %10 ], [ %21, %31 ], [ %16, %28 ]
  %36 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %12, i32 noundef %35) #2
  %37 = add nsw i32 %34, 1
  %38 = icmp slt i32 %37, %1
  br i1 %38, label %10, label %17, !llvm.loop !12
}

declare i32 @sort(...) local_unnamed_addr #1

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
