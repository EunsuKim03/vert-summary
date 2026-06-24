; ModuleID = 'benchmark/c_transcoder/MAXIMUM_SUM_PAIRS_SPECIFIC_DIFFERENCE/MAXIMUM_SUM_PAIRS_SPECIFIC_DIFFERENCE_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_SUM_PAIRS_SPECIFIC_DIFFERENCE/MAXIMUM_SUM_PAIRS_SPECIFIC_DIFFERENCE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %5) #2
  %7 = zext i32 %1 to i64
  %8 = alloca i32, i64 %7, align 16
  store i32 0, i32* %8, align 16, !tbaa !5
  %9 = icmp sgt i32 %1, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = zext i32 %1 to i64
  br label %17

12:                                               ; preds = %43, %3
  %13 = add nsw i32 %1, -1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %8, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !5
  ret i32 %16

17:                                               ; preds = %10, %43
  %18 = phi i64 [ 1, %10 ], [ %44, %43 ]
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds i32, i32* %8, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = getelementptr inbounds i32, i32* %8, i64 %18
  store i32 %21, i32* %22, align 4, !tbaa !5
  %23 = getelementptr inbounds i32, i32* %0, i64 %18
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = getelementptr inbounds i32, i32* %0, i64 %19
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = sub nsw i32 %24, %26
  %28 = icmp slt i32 %27, %2
  br i1 %28, label %29, label %43

29:                                               ; preds = %17
  %30 = icmp ugt i64 %18, 1
  br i1 %30, label %31, label %38

31:                                               ; preds = %29
  %32 = add nuw i64 %18, 4294967294
  %33 = and i64 %32, 4294967295
  %34 = getelementptr inbounds i32, i32* %8, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = add i32 %26, %24
  %37 = add i32 %36, %35
  br label %40

38:                                               ; preds = %29
  %39 = add nsw i32 %26, %24
  br label %40

40:                                               ; preds = %31, %38
  %41 = phi i32 [ %39, %38 ], [ %37, %31 ]
  %42 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %21, i32 noundef %41) #2
  store i32 %42, i32* %22, align 4, !tbaa !5
  br label %43

43:                                               ; preds = %40, %17
  %44 = add nuw nsw i64 %18, 1
  %45 = icmp eq i64 %44, %11
  br i1 %45, label %12, label %17, !llvm.loop !9
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
