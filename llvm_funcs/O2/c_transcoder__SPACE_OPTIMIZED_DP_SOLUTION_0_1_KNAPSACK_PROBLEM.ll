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
  br i1 %11, label %12, label %79

12:                                               ; preds = %4
  %13 = icmp sgt i32 %3, 0
  %14 = getelementptr inbounds i32, i32* %8, i64 %6
  %15 = zext i32 %2 to i64
  br label %16

16:                                               ; preds = %12, %76
  %17 = phi i64 [ 0, %12 ], [ %77, %76 ]
  %18 = and i64 %17, 1
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  br i1 %13, label %21, label %76

21:                                               ; preds = %20
  %22 = getelementptr inbounds i32, i32* %1, i64 %17
  %23 = getelementptr inbounds i32, i32* %0, i64 %17
  br label %28

24:                                               ; preds = %16
  br i1 %13, label %25, label %76

25:                                               ; preds = %24
  %26 = getelementptr inbounds i32, i32* %1, i64 %17
  %27 = getelementptr inbounds i32, i32* %0, i64 %17
  br label %52

28:                                               ; preds = %21, %47
  %29 = phi i64 [ 1, %21 ], [ %50, %47 ]
  %30 = load i32, i32* %22, align 4, !tbaa !5
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %23, align 4, !tbaa !5
  %35 = trunc i64 %29 to i32
  %36 = sub nsw i32 %35, %30
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %8, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = add nsw i32 %39, %34
  %41 = getelementptr inbounds i32, i32* %8, i64 %29
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %43 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %40, i32 noundef %42) #3
  br label %47

44:                                               ; preds = %28
  %45 = getelementptr inbounds i32, i32* %8, i64 %29
  %46 = load i32, i32* %45, align 4, !tbaa !5
  br label %47

47:                                               ; preds = %44, %33
  %48 = phi i32 [ %46, %44 ], [ %43, %33 ]
  %49 = getelementptr inbounds i32, i32* %14, i64 %29
  store i32 %48, i32* %49, align 4, !tbaa !5
  %50 = add nuw nsw i64 %29, 1
  %51 = icmp eq i64 %50, %6
  br i1 %51, label %76, label %28, !llvm.loop !9

52:                                               ; preds = %25, %71
  %53 = phi i64 [ 1, %25 ], [ %74, %71 ]
  %54 = load i32, i32* %26, align 4, !tbaa !5
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %68, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %27, align 4, !tbaa !5
  %59 = trunc i64 %53 to i32
  %60 = sub nsw i32 %59, %54
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %14, i64 %61
  %63 = load i32, i32* %62, align 4, !tbaa !5
  %64 = add nsw i32 %63, %58
  %65 = getelementptr inbounds i32, i32* %14, i64 %53
  %66 = load i32, i32* %65, align 4, !tbaa !5
  %67 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %64, i32 noundef %66) #3
  br label %71

68:                                               ; preds = %52
  %69 = getelementptr inbounds i32, i32* %14, i64 %53
  %70 = load i32, i32* %69, align 4, !tbaa !5
  br label %71

71:                                               ; preds = %68, %57
  %72 = phi i32 [ %70, %68 ], [ %67, %57 ]
  %73 = getelementptr inbounds i32, i32* %8, i64 %53
  store i32 %72, i32* %73, align 4
  %74 = add nuw nsw i64 %53, 1
  %75 = icmp eq i64 %74, %6
  br i1 %75, label %76, label %52, !llvm.loop !11

76:                                               ; preds = %47, %71, %20, %24
  %77 = add nuw nsw i64 %17, 1
  %78 = icmp eq i64 %77, %15
  br i1 %78, label %79, label %16, !llvm.loop !12

79:                                               ; preds = %76, %4
  %80 = and i32 %2, 1
  %81 = icmp eq i32 %80, 0
  %82 = sext i32 %3 to i64
  %83 = select i1 %81, i64 %6, i64 0
  %84 = getelementptr i32, i32* %8, i64 %83
  %85 = getelementptr inbounds i32, i32* %84, i64 %82
  %86 = load i32, i32* %85, align 4, !tbaa !5
  ret i32 %86
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
