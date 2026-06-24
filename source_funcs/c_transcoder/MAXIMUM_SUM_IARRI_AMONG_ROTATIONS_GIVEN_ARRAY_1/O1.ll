; ModuleID = 'benchmark/c_transcoder/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %11

6:                                                ; preds = %11, %2
  %7 = phi i32 [ 0, %2 ], [ %16, %11 ]
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = zext i32 %1 to i64
  br label %25

11:                                               ; preds = %4, %11
  %12 = phi i64 [ 0, %4 ], [ %17, %11 ]
  %13 = phi i32 [ 0, %4 ], [ %16, %11 ]
  %14 = getelementptr inbounds i32, i32* %0, i64 %12
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = add nsw i32 %15, %13
  %17 = add nuw nsw i64 %12, 1
  %18 = icmp eq i64 %17, %5
  br i1 %18, label %6, label %11, !llvm.loop !9

19:                                               ; preds = %25, %6
  %20 = phi i32 [ 0, %6 ], [ %32, %25 ]
  %21 = icmp sgt i32 %1, 1
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = add nsw i32 %1, -1
  %24 = zext i32 %1 to i64
  br label %37

25:                                               ; preds = %9, %25
  %26 = phi i64 [ 0, %9 ], [ %33, %25 ]
  %27 = phi i32 [ 0, %9 ], [ %32, %25 ]
  %28 = getelementptr inbounds i32, i32* %0, i64 %26
  %29 = load i32, i32* %28, align 4, !tbaa !5
  %30 = trunc i64 %26 to i32
  %31 = mul nsw i32 %29, %30
  %32 = add nsw i32 %31, %27
  %33 = add nuw nsw i64 %26, 1
  %34 = icmp eq i64 %33, %10
  br i1 %34, label %19, label %25, !llvm.loop !12

35:                                               ; preds = %37, %19
  %36 = phi i32 [ %20, %19 ], [ %48, %37 ]
  ret i32 %36

37:                                               ; preds = %22, %37
  %38 = phi i64 [ 1, %22 ], [ %49, %37 ]
  %39 = phi i32 [ %20, %22 ], [ %48, %37 ]
  %40 = phi i32 [ %20, %22 ], [ %47, %37 ]
  %41 = add nsw i64 %38, -1
  %42 = getelementptr inbounds i32, i32* %0, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !5
  %44 = mul nsw i32 %43, %23
  %45 = sub i32 %40, %7
  %46 = add i32 %45, %43
  %47 = add i32 %46, %44
  %48 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %39, i32 noundef %47) #2
  %49 = add nuw nsw i64 %38, 1
  %50 = icmp eq i64 %49, %24
  br i1 %50, label %35, label %37, !llvm.loop !13
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
