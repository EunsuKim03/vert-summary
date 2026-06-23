; ModuleID = 'benchmark/c_transcoder/FIND_THE_ELEMENT_BEFORE_WHICH_ALL_THE_ELEMENTS_ARE_SMALLER_THAN_IT_AND_AFTER_WHICH_ALL_ARE_GREATER_THAN_IT/FIND_THE_ELEMENT_BEFORE_WHICH_ALL_THE_ELEMENTS_ARE_SMALLER_THAN_IT_AND_AFTER_WHICH_ALL_ARE_GREATER_THAN_IT_processed.c'
source_filename = "benchmark/c_transcoder/FIND_THE_ELEMENT_BEFORE_WHICH_ALL_THE_ELEMENTS_ARE_SMALLER_THAN_IT_AND_AFTER_WHICH_ALL_ARE_GREATER_THAN_IT/FIND_THE_ELEMENT_BEFORE_WHICH_ALL_THE_ELEMENTS_ARE_SMALLER_THAN_IT_AND_AFTER_WHICH_ALL_ARE_GREATER_THAN_IT_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  store i32 -2147483648, i32* %4, align 16, !tbaa !5
  %5 = icmp sgt i32 %1, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = zext i32 %1 to i64
  br label %12

8:                                                ; preds = %12, %2
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %8
  %11 = sext i32 %1 to i64
  br label %23

12:                                               ; preds = %6, %12
  %13 = phi i64 [ 1, %6 ], [ %21, %12 ]
  %14 = add nsw i64 %13, -1
  %15 = getelementptr inbounds i32, i32* %4, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = getelementptr inbounds i32, i32* %0, i64 %14
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %16, i32 noundef %18) #2
  %20 = getelementptr inbounds i32, i32* %4, i64 %13
  store i32 %19, i32* %20, align 4, !tbaa !5
  %21 = add nuw nsw i64 %13, 1
  %22 = icmp eq i64 %21, %7
  br i1 %22, label %8, label %12, !llvm.loop !9

23:                                               ; preds = %10, %34
  %24 = phi i64 [ %11, %10 ], [ %26, %34 ]
  %25 = phi i32 [ 2147483647, %10 ], [ %35, %34 ]
  %26 = add nsw i64 %24, -1
  %27 = getelementptr inbounds i32, i32* %4, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = getelementptr inbounds i32, i32* %0, i64 %26
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = icmp slt i32 %28, %30
  %32 = icmp sgt i32 %25, %30
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  %35 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %25, i32 noundef %30) #2
  %36 = icmp sgt i64 %24, 1
  br i1 %36, label %23, label %39, !llvm.loop !12

37:                                               ; preds = %23
  %38 = trunc i64 %26 to i32
  br label %39

39:                                               ; preds = %37, %34, %8
  %40 = phi i32 [ -1, %8 ], [ %38, %37 ], [ -1, %34 ]
  ret i32 %40
}

declare i32 @max(...) local_unnamed_addr #1

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
!12 = distinct !{!12, !10, !11}
