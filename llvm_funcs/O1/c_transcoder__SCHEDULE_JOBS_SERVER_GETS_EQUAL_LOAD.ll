; ModuleID = 'benchmark/c_transcoder/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD_processed.c'
source_filename = "benchmark/c_transcoder/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef %0, i32* nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %17, %7 ]
  %9 = phi i64 [ 0, %5 ], [ %16, %7 ]
  %10 = getelementptr inbounds i32, i32* %0, i64 %8
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = getelementptr inbounds i32, i32* %1, i64 %8
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = add nsw i32 %13, %11
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %9, %15
  %17 = add nuw nsw i64 %8, 1
  %18 = icmp eq i64 %17, %6
  br i1 %18, label %19, label %7, !llvm.loop !9

19:                                               ; preds = %7, %3
  %20 = phi i64 [ 0, %3 ], [ %16, %7 ]
  %21 = icmp eq i32 %2, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %0, align 4, !tbaa !5
  %24 = load i32, i32* %1, align 4, !tbaa !5
  %25 = add nsw i32 %24, %23
  br label %95

26:                                               ; preds = %19
  %27 = sext i32 %2 to i64
  %28 = srem i64 %20, %27
  %29 = sdiv i64 %20, %27
  %30 = icmp eq i64 %28, 0
  br i1 %30, label %31, label %95

31:                                               ; preds = %26
  %32 = trunc i64 %29 to i32
  %33 = icmp sgt i32 %2, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = sext i32 %2 to i64
  %36 = zext i32 %2 to i64
  br label %41

37:                                               ; preds = %84, %31
  %38 = icmp sgt i32 %2, 0
  br i1 %38, label %39, label %95

39:                                               ; preds = %37
  %40 = zext i32 %2 to i64
  br label %89

41:                                               ; preds = %34, %84
  %42 = phi i64 [ 0, %34 ], [ %85, %84 ]
  %43 = getelementptr inbounds i32, i32* %0, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = icmp sgt i32 %44, %32
  br i1 %45, label %95, label %46

46:                                               ; preds = %41
  %47 = icmp eq i64 %42, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %46
  %49 = add nuw i64 %42, 4294967295
  %50 = and i64 %49, 4294967295
  %51 = getelementptr inbounds i32, i32* %1, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !5
  %53 = add nsw i32 %52, %44
  store i32 %53, i32* %43, align 4, !tbaa !5
  store i32 0, i32* %51, align 4, !tbaa !5
  br label %54

54:                                               ; preds = %48, %46
  %55 = load i32, i32* %43, align 4, !tbaa !5
  %56 = icmp eq i32 %55, %32
  br i1 %56, label %84, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds i32, i32* %1, i64 %42
  %59 = load i32, i32* %58, align 4, !tbaa !5
  %60 = add nsw i32 %59, %55
  %61 = add nuw nsw i64 %42, 1
  %62 = icmp slt i64 %61, %35
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = getelementptr inbounds i32, i32* %1, i64 %61
  %65 = load i32, i32* %64, align 4, !tbaa !5
  %66 = add nsw i32 %65, %60
  br label %67

67:                                               ; preds = %63, %57
  %68 = phi i32 [ %66, %63 ], [ %60, %57 ]
  %69 = icmp eq i32 %68, %32
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  store i32 %68, i32* %43, align 4, !tbaa !5
  %71 = getelementptr inbounds i32, i32* %1, i64 %61
  store i32 0, i32* %71, align 4, !tbaa !5
  br label %82

72:                                               ; preds = %67
  %73 = icmp eq i32 %60, %32
  br i1 %73, label %74, label %75

74:                                               ; preds = %72
  store i32 %60, i32* %43, align 4, !tbaa !5
  br label %82

75:                                               ; preds = %72
  br i1 %62, label %76, label %95

76:                                               ; preds = %75
  %77 = getelementptr inbounds i32, i32* %1, i64 %61
  %78 = load i32, i32* %77, align 4, !tbaa !5
  %79 = add nsw i32 %78, %55
  %80 = icmp eq i32 %79, %32
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  store i32 %79, i32* %43, align 4, !tbaa !5
  br label %82

82:                                               ; preds = %81, %74, %70
  %83 = phi i32* [ %58, %70 ], [ %58, %74 ], [ %77, %81 ]
  store i32 0, i32* %83, align 4, !tbaa !5
  br label %84

84:                                               ; preds = %82, %54
  %85 = add nuw nsw i64 %42, 1
  %86 = icmp eq i64 %85, %36
  br i1 %86, label %37, label %41, !llvm.loop !12

87:                                               ; preds = %89
  %88 = icmp eq i64 %94, %40
  br i1 %88, label %95, label %89, !llvm.loop !13

89:                                               ; preds = %39, %87
  %90 = phi i64 [ 0, %39 ], [ %94, %87 ]
  %91 = getelementptr inbounds i32, i32* %1, i64 %90
  %92 = load i32, i32* %91, align 4, !tbaa !5
  %93 = icmp eq i32 %92, 0
  %94 = add nuw nsw i64 %90, 1
  br i1 %93, label %87, label %95

95:                                               ; preds = %41, %75, %76, %87, %89, %37, %26, %22
  %96 = phi i32 [ %25, %22 ], [ -1, %26 ], [ %32, %37 ], [ -1, %89 ], [ %32, %87 ], [ -1, %76 ], [ -1, %75 ], [ -1, %41 ]
  ret i32 %96
}

attributes #0 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
