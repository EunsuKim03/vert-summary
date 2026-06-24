; ModuleID = 'benchmark/c_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM_processed.c'
source_filename = "benchmark/c_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  %5 = icmp eq i32 %1, 0
  %6 = or i1 %5, %4
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  %10 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %9) #2
  %11 = icmp slt i32 %1, %2
  br i1 %11, label %44, label %12

12:                                               ; preds = %7
  %13 = sext i32 %2 to i64
  br label %22

14:                                               ; preds = %22
  %15 = sext i32 %39 to i64
  %16 = getelementptr inbounds i32, i32* %0, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = sext i32 %38 to i64
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = sub nsw i32 %17, %20
  br label %44

22:                                               ; preds = %12, %22
  %23 = phi i64 [ 0, %12 ], [ %40, %22 ]
  %24 = phi i32 [ %2, %12 ], [ %43, %22 ]
  %25 = phi i32 [ 0, %12 ], [ %39, %22 ]
  %26 = phi i32 [ 0, %12 ], [ %38, %22 ]
  %27 = phi i32 [ 2147483647, %12 ], [ %36, %22 ]
  %28 = add nsw i32 %24, -1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %0, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = getelementptr inbounds i32, i32* %0, i64 %23
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %34 = sub nsw i32 %31, %33
  %35 = icmp slt i32 %34, %27
  %36 = select i1 %35, i32 %34, i32 %27
  %37 = trunc i64 %23 to i32
  %38 = select i1 %35, i32 %37, i32 %26
  %39 = select i1 %35, i32 %28, i32 %25
  %40 = add nuw nsw i64 %23, 1
  %41 = add nsw i64 %40, %13
  %42 = icmp sgt i64 %41, %8
  %43 = trunc i64 %41 to i32
  br i1 %42, label %14, label %22, !llvm.loop !9

44:                                               ; preds = %7, %3, %14
  %45 = phi i32 [ %21, %14 ], [ 0, %3 ], [ -1, %7 ]
  ret i32 %45
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
