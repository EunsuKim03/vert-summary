; ModuleID = 'benchmark/c_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM_processed.c'
source_filename = "benchmark/c_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  %5 = icmp eq i32 %1, 0
  %6 = or i1 %5, %4
  br i1 %6, label %45, label %7

7:                                                ; preds = %3
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  %10 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %9) #2
  %11 = icmp slt i32 %1, %2
  br i1 %11, label %45, label %12

12:                                               ; preds = %7
  %13 = sext i32 %2 to i64
  %14 = sext i32 %1 to i64
  br label %23

15:                                               ; preds = %23
  %16 = sext i32 %40 to i64
  %17 = getelementptr inbounds i32, i32* %0, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = sext i32 %39 to i64
  %20 = getelementptr inbounds i32, i32* %0, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = sub nsw i32 %18, %21
  br label %45

23:                                               ; preds = %12, %23
  %24 = phi i64 [ 0, %12 ], [ %41, %23 ]
  %25 = phi i32 [ %2, %12 ], [ %44, %23 ]
  %26 = phi i32 [ 0, %12 ], [ %40, %23 ]
  %27 = phi i32 [ 0, %12 ], [ %39, %23 ]
  %28 = phi i32 [ 2147483647, %12 ], [ %37, %23 ]
  %29 = add nsw i32 %25, -1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %0, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = getelementptr inbounds i32, i32* %0, i64 %24
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = sub nsw i32 %32, %34
  %36 = icmp slt i32 %35, %28
  %37 = select i1 %36, i32 %35, i32 %28
  %38 = trunc i64 %24 to i32
  %39 = select i1 %36, i32 %38, i32 %27
  %40 = select i1 %36, i32 %29, i32 %26
  %41 = add nuw nsw i64 %24, 1
  %42 = add nsw i64 %41, %13
  %43 = icmp sgt i64 %42, %14
  %44 = trunc i64 %42 to i32
  br i1 %43, label %15, label %23, !llvm.loop !9

45:                                               ; preds = %7, %3, %15
  %46 = phi i32 [ %22, %15 ], [ 0, %3 ], [ -1, %7 ]
  ret i32 %46
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
