; ModuleID = 'benchmark/c_transcoder/MAXIMUM_SUM_PAIRS_SPECIFIC_DIFFERENCE/MAXIMUM_SUM_PAIRS_SPECIFIC_DIFFERENCE_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_SUM_PAIRS_SPECIFIC_DIFFERENCE/MAXIMUM_SUM_PAIRS_SPECIFIC_DIFFERENCE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %5) #2
  %7 = zext i32 %1 to i64
  %8 = alloca i32, i64 %7, align 16
  store i32 0, i32* %8, align 16, !tbaa !5
  %9 = icmp sgt i32 %1, 1
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 0, i32* %11, align 4, !tbaa !5
  %12 = getelementptr inbounds i32, i32* %0, i64 1
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = load i32, i32* %0, align 4, !tbaa !5
  %15 = sub nsw i32 %13, %14
  %16 = icmp slt i32 %15, %2
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = add nsw i32 %14, %13
  %19 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef 0, i32 noundef %18) #2
  store i32 %19, i32* %11, align 4, !tbaa !5
  br label %20

20:                                               ; preds = %17, %10
  %21 = phi i32 [ %19, %17 ], [ 0, %10 ]
  %22 = icmp eq i32 %1, 2
  br i1 %22, label %23, label %28

23:                                               ; preds = %47, %20, %3
  %24 = add nsw i32 %1, -1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %8, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !5
  ret i32 %27

28:                                               ; preds = %20, %47
  %29 = phi i32 [ %48, %47 ], [ %21, %20 ]
  %30 = phi i64 [ %49, %47 ], [ 2, %20 ]
  %31 = add nsw i64 %30, -1
  %32 = getelementptr inbounds i32, i32* %8, i64 %30
  store i32 %29, i32* %32, align 4, !tbaa !5
  %33 = getelementptr inbounds i32, i32* %0, i64 %30
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = getelementptr inbounds i32, i32* %0, i64 %31
  %36 = load i32, i32* %35, align 4, !tbaa !5
  %37 = sub nsw i32 %34, %36
  %38 = icmp slt i32 %37, %2
  br i1 %38, label %39, label %47

39:                                               ; preds = %28
  %40 = add nuw i64 %30, 4294967294
  %41 = and i64 %40, 4294967295
  %42 = getelementptr inbounds i32, i32* %8, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !5
  %44 = add i32 %36, %34
  %45 = add i32 %44, %43
  %46 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %29, i32 noundef %45) #2
  store i32 %46, i32* %32, align 4, !tbaa !5
  br label %47

47:                                               ; preds = %28, %39
  %48 = phi i32 [ %29, %28 ], [ %46, %39 ]
  %49 = add nuw nsw i64 %30, 1
  %50 = icmp eq i64 %49, %7
  br i1 %50, label %23, label %28, !llvm.loop !9
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
!11 = !{!"llvm.loop.peeled.count", i32 1}
