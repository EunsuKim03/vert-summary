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
  br i1 %23, label %57, label %24

24:                                               ; preds = %19, %52
  %25 = phi i32 [ %55, %52 ], [ 0, %19 ]
  %26 = phi i32 [ %54, %52 ], [ %20, %19 ]
  %27 = phi i32 [ %53, %52 ], [ %22, %19 ]
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %0, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = sext i32 %26 to i64
  %32 = getelementptr inbounds i32, i32* %0, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %34 = add nsw i32 %33, %30
  %35 = icmp eq i32 %34, %2
  br i1 %35, label %36, label %44

36:                                               ; preds = %24
  %37 = add nsw i32 %25, 1
  %38 = add i32 %4, %26
  %39 = srem i32 %38, %1
  %40 = icmp eq i32 %27, %39
  br i1 %40, label %57, label %41

41:                                               ; preds = %36
  %42 = add nsw i32 %27, 1
  %43 = srem i32 %42, %1
  br label %52

44:                                               ; preds = %24
  %45 = icmp slt i32 %34, %2
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = add nsw i32 %27, 1
  %48 = srem i32 %47, %1
  br label %52

49:                                               ; preds = %44
  %50 = add i32 %4, %26
  %51 = srem i32 %50, %1
  br label %52

52:                                               ; preds = %46, %49, %41
  %53 = phi i32 [ %43, %41 ], [ %48, %46 ], [ %27, %49 ]
  %54 = phi i32 [ %39, %41 ], [ %26, %46 ], [ %51, %49 ]
  %55 = phi i32 [ %37, %41 ], [ %25, %46 ], [ %25, %49 ]
  %56 = icmp eq i32 %53, %54
  br i1 %56, label %57, label %24, !llvm.loop !11

57:                                               ; preds = %36, %52, %19
  %58 = phi i32 [ 0, %19 ], [ %55, %52 ], [ %37, %36 ]
  ret i32 %58
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
