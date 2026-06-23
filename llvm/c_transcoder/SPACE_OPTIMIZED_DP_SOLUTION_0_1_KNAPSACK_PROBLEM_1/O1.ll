; ModuleID = 'benchmark/c_transcoder/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_1/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_1_processed.c'
source_filename = "benchmark/c_transcoder/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_1/SPACE_OPTIMIZED_DP_SOLUTION_0_1_KNAPSACK_PROBLEM_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = add nsw i32 %3, 1
  %6 = zext i32 %5 to i64
  %7 = alloca i32, i64 %6, align 16
  %8 = bitcast i32* %7 to i8*
  %9 = shl nuw nsw i64 %6, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 %9, i1 false)
  %10 = icmp sgt i32 %2, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %4
  %12 = sext i32 %3 to i64
  %13 = zext i32 %2 to i64
  br label %14

14:                                               ; preds = %11, %25
  %15 = phi i64 [ 0, %11 ], [ %26, %25 ]
  %16 = getelementptr inbounds i32, i32* %1, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = icmp sgt i32 %17, %3
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds i32, i32* %0, i64 %15
  br label %28

21:                                               ; preds = %25, %4
  %22 = sext i32 %3 to i64
  %23 = getelementptr inbounds i32, i32* %7, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !5
  ret i32 %24

25:                                               ; preds = %28, %14
  %26 = add nuw nsw i64 %15, 1
  %27 = icmp eq i64 %26, %13
  br i1 %27, label %21, label %14, !llvm.loop !9

28:                                               ; preds = %19, %28
  %29 = phi i64 [ %12, %19 ], [ %40, %28 ]
  %30 = phi i32 [ %17, %19 ], [ %41, %28 ]
  %31 = getelementptr inbounds i32, i32* %7, i64 %29
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = load i32, i32* %20, align 4, !tbaa !5
  %34 = sext i32 %30 to i64
  %35 = sub nsw i64 %29, %34
  %36 = getelementptr inbounds i32, i32* %7, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !5
  %38 = add nsw i32 %37, %33
  %39 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %32, i32 noundef %38) #3
  store i32 %39, i32* %31, align 4, !tbaa !5
  %40 = add i64 %29, -1
  %41 = load i32, i32* %16, align 4, !tbaa !5
  %42 = sext i32 %41 to i64
  %43 = icmp sgt i64 %29, %42
  br i1 %43, label %28, label %25, !llvm.loop !12
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
