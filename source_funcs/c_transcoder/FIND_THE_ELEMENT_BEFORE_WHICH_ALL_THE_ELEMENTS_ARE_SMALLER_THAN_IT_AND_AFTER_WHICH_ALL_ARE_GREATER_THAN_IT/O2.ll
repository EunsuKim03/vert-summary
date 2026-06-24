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
  br i1 %5, label %8, label %6

6:                                                ; preds = %8, %2
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %18, label %35

8:                                                ; preds = %2, %8
  %9 = phi i32 [ %14, %8 ], [ -2147483648, %2 ]
  %10 = phi i64 [ %16, %8 ], [ 1, %2 ]
  %11 = add nsw i64 %10, -1
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %9, i32 noundef %13) #2
  %15 = getelementptr inbounds i32, i32* %4, i64 %10
  store i32 %14, i32* %15, align 4, !tbaa !5
  %16 = add nuw nsw i64 %10, 1
  %17 = icmp eq i64 %16, %3
  br i1 %17, label %6, label %8, !llvm.loop !9

18:                                               ; preds = %6, %30
  %19 = phi i64 [ %21, %30 ], [ %3, %6 ]
  %20 = phi i32 [ %31, %30 ], [ 2147483647, %6 ]
  %21 = add nsw i64 %19, -1
  %22 = and i64 %21, 4294967295
  %23 = getelementptr inbounds i32, i32* %4, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = getelementptr inbounds i32, i32* %0, i64 %22
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = icmp slt i32 %24, %26
  %28 = icmp sgt i32 %20, %26
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %33, label %30

30:                                               ; preds = %18
  %31 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %20, i32 noundef %26) #2
  %32 = icmp sgt i64 %19, 1
  br i1 %32, label %18, label %35, !llvm.loop !11

33:                                               ; preds = %18
  %34 = trunc i64 %21 to i32
  br label %35

35:                                               ; preds = %30, %33, %6
  %36 = phi i32 [ -1, %6 ], [ %34, %33 ], [ -1, %30 ]
  ret i32 %36
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
