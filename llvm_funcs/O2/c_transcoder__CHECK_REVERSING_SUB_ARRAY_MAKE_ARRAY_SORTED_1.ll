; ModuleID = 'benchmark/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %79, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 1
  br i1 %5, label %6, label %20

6:                                                ; preds = %4
  %7 = zext i32 %1 to i64
  %8 = load i32, i32* %0, align 4, !tbaa !5
  br label %9

9:                                                ; preds = %6, %15
  %10 = phi i32 [ %8, %6 ], [ %13, %15 ]
  %11 = phi i64 [ 1, %6 ], [ %16, %15 ]
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, %7
  br i1 %17, label %79, label %9, !llvm.loop !9

18:                                               ; preds = %9
  %19 = trunc i64 %11 to i32
  br label %20

20:                                               ; preds = %18, %4
  %21 = phi i32 [ 1, %4 ], [ %19, %18 ]
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %79, label %23

23:                                               ; preds = %20
  %24 = zext i32 %21 to i64
  %25 = getelementptr inbounds i32, i32* %0, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = add nsw i32 %21, -1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %0, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %23
  %33 = icmp ugt i32 %21, 1
  %34 = add nsw i32 %21, -2
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %0, i64 %35
  %37 = sext i32 %21 to i64
  br label %38

38:                                               ; preds = %32, %44
  %39 = phi i64 [ %37, %32 ], [ %45, %44 ]
  %40 = phi i32 [ %26, %32 ], [ %48, %44 ]
  br i1 %33, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %36, align 4, !tbaa !5
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %79, label %44

44:                                               ; preds = %41, %38
  %45 = add i64 %39, 1
  %46 = and i64 %45, 4294967295
  %47 = getelementptr inbounds i32, i32* %0, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !5
  %49 = getelementptr inbounds i32, i32* %0, i64 %39
  %50 = load i32, i32* %49, align 4, !tbaa !5
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %38, label %52, !llvm.loop !11

52:                                               ; preds = %44
  %53 = trunc i64 %45 to i32
  br label %54

54:                                               ; preds = %52, %23
  %55 = phi i32 [ %21, %23 ], [ %53, %52 ]
  %56 = phi i32 [ %26, %23 ], [ %48, %52 ]
  %57 = icmp eq i32 %55, %1
  br i1 %57, label %79, label %58

58:                                               ; preds = %54
  %59 = icmp slt i32 %56, %30
  br i1 %59, label %79, label %60

60:                                               ; preds = %58
  %61 = icmp ugt i32 %55, 1
  %62 = icmp slt i32 %55, %1
  %63 = and i1 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = sext i32 %55 to i64
  br label %69

66:                                               ; preds = %69
  %67 = trunc i64 %78 to i32
  %68 = icmp eq i32 %67, %1
  br i1 %68, label %79, label %69, !llvm.loop !12

69:                                               ; preds = %64, %66
  %70 = phi i64 [ %65, %64 ], [ %78, %66 ]
  %71 = and i64 %70, 4294967295
  %72 = getelementptr inbounds i32, i32* %0, i64 %71
  %73 = load i32, i32* %72, align 4, !tbaa !5
  %74 = add nsw i64 %70, -1
  %75 = getelementptr inbounds i32, i32* %0, i64 %74
  %76 = load i32, i32* %75, align 4, !tbaa !5
  %77 = icmp slt i32 %73, %76
  %78 = add nsw i64 %70, 1
  br i1 %77, label %79, label %66

79:                                               ; preds = %15, %41, %66, %69, %60, %20, %58, %54, %2
  %80 = phi i32 [ 1, %2 ], [ 1, %20 ], [ 1, %54 ], [ 0, %58 ], [ 1, %60 ], [ 1, %66 ], [ 0, %69 ], [ 0, %41 ], [ 1, %15 ]
  ret i32 %80
}

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
