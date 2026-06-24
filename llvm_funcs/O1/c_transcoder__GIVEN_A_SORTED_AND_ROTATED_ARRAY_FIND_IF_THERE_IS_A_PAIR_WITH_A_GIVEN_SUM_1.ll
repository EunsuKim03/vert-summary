; ModuleID = 'benchmark/c_transcoder/GIVEN_A_SORTED_AND_ROTATED_ARRAY_FIND_IF_THERE_IS_A_PAIR_WITH_A_GIVEN_SUM_1/GIVEN_A_SORTED_AND_ROTATED_ARRAY_FIND_IF_THERE_IS_A_PAIR_WITH_A_GIVEN_SUM_1_processed.c'
source_filename = "benchmark/c_transcoder/GIVEN_A_SORTED_AND_ROTATED_ARRAY_FIND_IF_THERE_IS_A_PAIR_WITH_A_GIVEN_SUM_1/GIVEN_A_SORTED_AND_ROTATED_ARRAY_FIND_IF_THERE_IS_A_PAIR_WITH_A_GIVEN_SUM_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %1, -1
  %5 = call i32 @llvm.smax.i32(i32 %4, i32 0)
  %6 = zext i32 %5 to i64
  br label %7

7:                                                ; preds = %10, %3
  %8 = phi i64 [ %13, %10 ], [ 0, %3 ]
  %9 = icmp eq i64 %8, %6
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds i32, i32* %0, i64 %8
  %12 = load i32, i32* %11, align 4, !tbaa !5
  %13 = add nuw nsw i64 %8, 1
  %14 = getelementptr inbounds i32, i32* %0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %7, !llvm.loop !9

17:                                               ; preds = %10
  %18 = trunc i64 %8 to i32
  br label %19

19:                                               ; preds = %7, %17
  %20 = phi i32 [ %18, %17 ], [ %5, %7 ]
  %21 = add nuw nsw i32 %20, 1
  %22 = srem i32 %21, %1
  %23 = icmp eq i32 %22, %20
  br i1 %23, label %60, label %24

24:                                               ; preds = %19
  %25 = add i32 %1, -1
  %26 = add i32 %1, -1
  br label %27

27:                                               ; preds = %24, %55
  %28 = phi i32 [ 0, %24 ], [ %58, %55 ]
  %29 = phi i32 [ %20, %24 ], [ %57, %55 ]
  %30 = phi i32 [ %22, %24 ], [ %56, %55 ]
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %0, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %34 = sext i32 %29 to i64
  %35 = getelementptr inbounds i32, i32* %0, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !5
  %37 = add nsw i32 %36, %33
  %38 = icmp eq i32 %37, %2
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = add nsw i32 %28, 1
  %41 = add i32 %26, %29
  %42 = srem i32 %41, %1
  %43 = icmp eq i32 %30, %42
  br i1 %43, label %60, label %44

44:                                               ; preds = %39
  %45 = add nsw i32 %30, 1
  %46 = srem i32 %45, %1
  br label %55

47:                                               ; preds = %27
  %48 = icmp slt i32 %37, %2
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = add nsw i32 %30, 1
  %51 = srem i32 %50, %1
  br label %55

52:                                               ; preds = %47
  %53 = add i32 %25, %29
  %54 = srem i32 %53, %1
  br label %55

55:                                               ; preds = %49, %52, %44
  %56 = phi i32 [ %46, %44 ], [ %51, %49 ], [ %30, %52 ]
  %57 = phi i32 [ %42, %44 ], [ %29, %49 ], [ %54, %52 ]
  %58 = phi i32 [ %40, %44 ], [ %28, %49 ], [ %28, %52 ]
  %59 = icmp eq i32 %56, %57
  br i1 %59, label %60, label %27, !llvm.loop !12

60:                                               ; preds = %39, %55, %19
  %61 = phi i32 [ 0, %19 ], [ %40, %39 ], [ %58, %55 ]
  ret i32 %61
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

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
