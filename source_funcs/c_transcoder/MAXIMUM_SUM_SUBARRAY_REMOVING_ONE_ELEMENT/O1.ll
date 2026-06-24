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
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = zext i32 %1 to i64
  br label %20

10:                                               ; preds = %20, %2
  %11 = add nsw i32 %1, -1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = getelementptr inbounds i32, i32* %5, i64 %12
  store i32 %14, i32* %15, align 4, !tbaa !5
  %16 = icmp sgt i32 %1, 1
  br i1 %16, label %17, label %32

17:                                               ; preds = %10
  %18 = add i32 %1, -2
  %19 = sext i32 %18 to i64
  br label %37

20:                                               ; preds = %8, %20
  %21 = phi i64 [ 1, %8 ], [ %30, %20 ]
  %22 = phi i32 [ %6, %8 ], [ %28, %20 ]
  %23 = phi i32 [ %6, %8 ], [ %27, %20 ]
  %24 = getelementptr inbounds i32, i32* %0, i64 %21
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = add nsw i32 %25, %23
  %27 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %25, i32 noundef %26) #2
  %28 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %22, i32 noundef %27) #2
  %29 = getelementptr inbounds i32, i32* %4, i64 %21
  store i32 %27, i32* %29, align 4, !tbaa !5
  %30 = add nuw nsw i64 %21, 1
  %31 = icmp eq i64 %30, %9
  br i1 %31, label %10, label %20, !llvm.loop !9

32:                                               ; preds = %37, %10
  %33 = phi i32 [ %14, %10 ], [ %45, %37 ]
  %34 = icmp sgt i32 %1, 2
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = zext i32 %11 to i64
  br label %51

37:                                               ; preds = %17, %37
  %38 = phi i64 [ %19, %17 ], [ %47, %37 ]
  %39 = phi i32 [ %14, %17 ], [ %45, %37 ]
  %40 = phi i32 [ %14, %17 ], [ %44, %37 ]
  %41 = getelementptr inbounds i32, i32* %0, i64 %38
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %43 = add nsw i32 %42, %40
  %44 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %42, i32 noundef %43) #2
  %45 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %39, i32 noundef %44) #2
  %46 = getelementptr inbounds i32, i32* %5, i64 %38
  store i32 %44, i32* %46, align 4, !tbaa !5
  %47 = add nsw i64 %38, -1
  %48 = icmp sgt i64 %38, 0
  br i1 %48, label %37, label %32, !llvm.loop !12

49:                                               ; preds = %51, %32
  %50 = phi i32 [ %33, %32 ], [ %61, %51 ]
  ret i32 %50

51:                                               ; preds = %35, %51
  %52 = phi i64 [ 1, %35 ], [ %57, %51 ]
  %53 = phi i32 [ %33, %35 ], [ %61, %51 ]
  %54 = add nsw i64 %52, -1
  %55 = getelementptr inbounds i32, i32* %4, i64 %54
  %56 = load i32, i32* %55, align 4, !tbaa !5
  %57 = add nuw nsw i64 %52, 1
  %58 = getelementptr inbounds i32, i32* %5, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !5
  %60 = add nsw i32 %59, %56
  %61 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %53, i32 noundef %60) #2
  %62 = icmp eq i64 %57, %36
  br i1 %62, label %49, label %51, !llvm.loop !13
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
