; ModuleID = 'benchmark/c_transcoder/COUNT_POSSIBLE_PATHS_TOP_LEFT_BOTTOM_RIGHT_NXM_MATRIX_1/COUNT_POSSIBLE_PATHS_TOP_LEFT_BOTTOM_RIGHT_NXM_MATRIX_1_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_POSSIBLE_PATHS_TOP_LEFT_BOTTOM_RIGHT_NXM_MATRIX_1/COUNT_POSSIBLE_PATHS_TOP_LEFT_BOTTOM_RIGHT_NXM_MATRIX_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %0 to i64
  %4 = zext i32 %1 to i64
  %5 = mul nuw i64 %4, %3
  %6 = alloca i32, i64 %5, align 16
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = zext i32 %0 to i64
  br label %14

10:                                               ; preds = %14, %2
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %10
  %13 = zext i32 %1 to i64
  br label %26

14:                                               ; preds = %8, %14
  %15 = phi i64 [ 0, %8 ], [ %18, %14 ]
  %16 = mul nuw nsw i64 %15, %4
  %17 = getelementptr inbounds i32, i32* %6, i64 %16
  store i32 1, i32* %17, align 4, !tbaa !5
  %18 = add nuw nsw i64 %15, 1
  %19 = icmp eq i64 %18, %9
  br i1 %19, label %10, label %14, !llvm.loop !9

20:                                               ; preds = %26, %10
  %21 = icmp sgt i32 %0, 1
  br i1 %21, label %22, label %44

22:                                               ; preds = %20
  %23 = icmp sgt i32 %1, 1
  %24 = zext i32 %0 to i64
  %25 = zext i32 %1 to i64
  br label %31

26:                                               ; preds = %12, %26
  %27 = phi i64 [ 0, %12 ], [ %29, %26 ]
  %28 = getelementptr inbounds i32, i32* %6, i64 %27
  store i32 1, i32* %28, align 4, !tbaa !5
  %29 = add nuw nsw i64 %27, 1
  %30 = icmp eq i64 %29, %13
  br i1 %30, label %20, label %26, !llvm.loop !12

31:                                               ; preds = %22, %53
  %32 = phi i64 [ 0, %22 ], [ %56, %53 ]
  %33 = phi i64 [ 1, %22 ], [ %54, %53 ]
  br i1 %23, label %34, label %53

34:                                               ; preds = %31
  %35 = mul i64 %32, %4
  %36 = add i64 %35, %4
  %37 = getelementptr i32, i32* %6, i64 %36
  %38 = add nsw i64 %33, -1
  %39 = mul nuw nsw i64 %38, %4
  %40 = getelementptr inbounds i32, i32* %6, i64 %39
  %41 = mul nuw nsw i64 %33, %4
  %42 = getelementptr inbounds i32, i32* %6, i64 %41
  %43 = load i32, i32* %37, align 4
  br label %57

44:                                               ; preds = %53, %20
  %45 = add nsw i32 %0, -1
  %46 = sext i32 %45 to i64
  %47 = mul nsw i64 %46, %4
  %48 = getelementptr inbounds i32, i32* %6, i64 %47
  %49 = add nsw i32 %1, -1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !5
  ret i32 %52

53:                                               ; preds = %57, %31
  %54 = add nuw nsw i64 %33, 1
  %55 = icmp eq i64 %54, %24
  %56 = add i64 %32, 1
  br i1 %55, label %44, label %31, !llvm.loop !13

57:                                               ; preds = %34, %57
  %58 = phi i32 [ %43, %34 ], [ %62, %57 ]
  %59 = phi i64 [ 1, %34 ], [ %64, %57 ]
  %60 = getelementptr inbounds i32, i32* %40, i64 %59
  %61 = load i32, i32* %60, align 4, !tbaa !5
  %62 = add nsw i32 %58, %61
  %63 = getelementptr inbounds i32, i32* %42, i64 %59
  store i32 %62, i32* %63, align 4, !tbaa !5
  %64 = add nuw nsw i64 %59, 1
  %65 = icmp eq i64 %64, %25
  br i1 %65, label %53, label %57, !llvm.loop !14
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!14 = distinct !{!14, !10, !11}
