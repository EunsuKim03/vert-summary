; ModuleID = 'benchmark/c_transcoder/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = alloca i32, i64 %3, align 16
  %6 = load i32, i32* %0, align 4, !tbaa !5
  store i32 %6, i32* %4, align 16, !tbaa !5
  %7 = icmp sgt i32 %1, 1
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = add nsw i32 %1, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !5
  %13 = getelementptr inbounds i32, i32* %5, i64 %10
  store i32 %12, i32* %13, align 4, !tbaa !5
  br label %56

14:                                               ; preds = %23
  %15 = add nsw i32 %1, -1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %0, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = getelementptr inbounds i32, i32* %5, i64 %16
  store i32 %18, i32* %19, align 4, !tbaa !5
  br i1 %7, label %20, label %56

20:                                               ; preds = %14
  %21 = add nsw i32 %1, -2
  %22 = zext i32 %21 to i64
  br label %44

23:                                               ; preds = %2, %23
  %24 = phi i64 [ %33, %23 ], [ 1, %2 ]
  %25 = phi i32 [ %31, %23 ], [ %6, %2 ]
  %26 = phi i32 [ %30, %23 ], [ %6, %2 ]
  %27 = getelementptr inbounds i32, i32* %0, i64 %24
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = add nsw i32 %28, %26
  %30 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %28, i32 noundef %29) #2
  %31 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %25, i32 noundef %30) #2
  %32 = getelementptr inbounds i32, i32* %4, i64 %24
  store i32 %30, i32* %32, align 4, !tbaa !5
  %33 = add nuw nsw i64 %24, 1
  %34 = icmp eq i64 %33, %3
  br i1 %34, label %14, label %23, !llvm.loop !9

35:                                               ; preds = %44
  %36 = icmp sgt i32 %1, 2
  br i1 %36, label %37, label %56

37:                                               ; preds = %35
  %38 = zext i32 %15 to i64
  %39 = getelementptr inbounds i32, i32* %5, i64 2
  %40 = load i32, i32* %39, align 8, !tbaa !5
  %41 = add nsw i32 %40, %6
  %42 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %52, i32 noundef %41) #2
  %43 = icmp eq i32 %15, 2
  br i1 %43, label %56, label %58, !llvm.loop !11

44:                                               ; preds = %20, %44
  %45 = phi i64 [ %22, %20 ], [ %54, %44 ]
  %46 = phi i32 [ %18, %20 ], [ %52, %44 ]
  %47 = phi i32 [ %18, %20 ], [ %51, %44 ]
  %48 = getelementptr inbounds i32, i32* %0, i64 %45
  %49 = load i32, i32* %48, align 4, !tbaa !5
  %50 = add nsw i32 %49, %47
  %51 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %49, i32 noundef %50) #2
  %52 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %46, i32 noundef %51) #2
  %53 = getelementptr inbounds i32, i32* %5, i64 %45
  store i32 %51, i32* %53, align 4, !tbaa !5
  %54 = add nsw i64 %45, -1
  %55 = icmp eq i64 %45, 0
  br i1 %55, label %35, label %44, !llvm.loop !12

56:                                               ; preds = %58, %37, %14, %8, %35
  %57 = phi i32 [ %52, %35 ], [ %12, %8 ], [ %18, %14 ], [ %42, %37 ], [ %68, %58 ]
  ret i32 %57

58:                                               ; preds = %37, %58
  %59 = phi i32 [ %68, %58 ], [ %42, %37 ]
  %60 = phi i64 [ %64, %58 ], [ 2, %37 ]
  %61 = phi i64 [ %60, %58 ], [ 1, %37 ]
  %62 = getelementptr inbounds i32, i32* %4, i64 %61
  %63 = load i32, i32* %62, align 4, !tbaa !5
  %64 = add nuw nsw i64 %60, 1
  %65 = getelementptr inbounds i32, i32* %5, i64 %64
  %66 = load i32, i32* %65, align 4, !tbaa !5
  %67 = add nsw i32 %66, %63
  %68 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %59, i32 noundef %67) #2
  %69 = icmp eq i64 %64, %38
  br i1 %69, label %56, label %58, !llvm.loop !11
}

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
