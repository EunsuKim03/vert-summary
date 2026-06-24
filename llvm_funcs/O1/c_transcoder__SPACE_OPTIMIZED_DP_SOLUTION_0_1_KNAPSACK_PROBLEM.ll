; ModuleID = 'benchmark/c_transcoder/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_processed.c'
source_filename = "benchmark/c_transcoder/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = add i32 %3, 1
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 1
  %8 = alloca i32, i64 %7, align 16
  %9 = bitcast i32* %8 to i8*
  %10 = shl nuw nsw i64 %6, 3
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false)
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %84

12:                                               ; preds = %4
  %13 = icmp sgt i32 %3, 0
  %14 = icmp sgt i32 %3, 0
  %15 = getelementptr inbounds i32, i32* %8, i64 %6
  %16 = getelementptr inbounds i32, i32* %8, i64 %6
  %17 = zext i32 %2 to i64
  %18 = zext i32 %5 to i64
  %19 = getelementptr inbounds i32, i32* %8, i64 %6
  %20 = zext i32 %5 to i64
  br label %21

21:                                               ; preds = %12, %81
  %22 = phi i64 [ 0, %12 ], [ %82, %81 ]
  %23 = and i64 %22, 1
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  br i1 %13, label %26, label %81

26:                                               ; preds = %25
  %27 = getelementptr inbounds i32, i32* %1, i64 %22
  %28 = getelementptr inbounds i32, i32* %0, i64 %22
  br label %33

29:                                               ; preds = %21
  br i1 %14, label %30, label %81

30:                                               ; preds = %29
  %31 = getelementptr inbounds i32, i32* %1, i64 %22
  %32 = getelementptr inbounds i32, i32* %0, i64 %22
  br label %57

33:                                               ; preds = %26, %52
  %34 = phi i64 [ 1, %26 ], [ %55, %52 ]
  %35 = load i32, i32* %27, align 4, !tbaa !5
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %28, align 4, !tbaa !5
  %40 = trunc i64 %34 to i32
  %41 = sub nsw i32 %40, %35
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %8, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = add nsw i32 %44, %39
  %46 = getelementptr inbounds i32, i32* %8, i64 %34
  %47 = load i32, i32* %46, align 4, !tbaa !5
  %48 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %45, i32 noundef %47) #3
  br label %52

49:                                               ; preds = %33
  %50 = getelementptr inbounds i32, i32* %8, i64 %34
  %51 = load i32, i32* %50, align 4, !tbaa !5
  br label %52

52:                                               ; preds = %49, %38
  %53 = phi i32 [ %51, %49 ], [ %48, %38 ]
  %54 = getelementptr inbounds i32, i32* %19, i64 %34
  store i32 %53, i32* %54, align 4, !tbaa !5
  %55 = add nuw nsw i64 %34, 1
  %56 = icmp eq i64 %55, %18
  br i1 %56, label %81, label %33, !llvm.loop !9

57:                                               ; preds = %30, %76
  %58 = phi i64 [ 1, %30 ], [ %79, %76 ]
  %59 = load i32, i32* %31, align 4, !tbaa !5
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %73, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %32, align 4, !tbaa !5
  %64 = trunc i64 %58 to i32
  %65 = sub nsw i32 %64, %59
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %15, i64 %66
  %68 = load i32, i32* %67, align 4, !tbaa !5
  %69 = add nsw i32 %68, %63
  %70 = getelementptr inbounds i32, i32* %15, i64 %58
  %71 = load i32, i32* %70, align 4, !tbaa !5
  %72 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %69, i32 noundef %71) #3
  br label %76

73:                                               ; preds = %57
  %74 = getelementptr inbounds i32, i32* %16, i64 %58
  %75 = load i32, i32* %74, align 4, !tbaa !5
  br label %76

76:                                               ; preds = %73, %62
  %77 = phi i32 [ %75, %73 ], [ %72, %62 ]
  %78 = getelementptr inbounds i32, i32* %8, i64 %58
  store i32 %77, i32* %78, align 4, !tbaa !5
  %79 = add nuw nsw i64 %58, 1
  %80 = icmp eq i64 %79, %20
  br i1 %80, label %81, label %57, !llvm.loop !12

81:                                               ; preds = %52, %76, %25, %29
  %82 = add nuw nsw i64 %22, 1
  %83 = icmp eq i64 %82, %17
  br i1 %83, label %84, label %21, !llvm.loop !13

84:                                               ; preds = %81, %4
  %85 = and i32 %2, 1
  %86 = icmp eq i32 %85, 0
  %87 = sext i32 %3 to i64
  %88 = select i1 %86, i64 %6, i64 0
  %89 = getelementptr i32, i32* %8, i64 %88
  %90 = getelementptr inbounds i32, i32* %89, i64 %87
  %91 = load i32, i32* %90, align 4, !tbaa !5
  ret i32 %91
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare i32 @max(...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
