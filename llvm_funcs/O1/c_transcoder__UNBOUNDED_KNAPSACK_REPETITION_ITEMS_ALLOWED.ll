; ModuleID = 'benchmark/c_transcoder/UNBOUNDED_KNAPSACK_REPETITION_ITEMS_ALLOWED/UNBOUNDED_KNAPSACK_REPETITION_ITEMS_ALLOWED_processed.c'
source_filename = "benchmark/c_transcoder/UNBOUNDED_KNAPSACK_REPETITION_ITEMS_ALLOWED/UNBOUNDED_KNAPSACK_REPETITION_ITEMS_ALLOWED_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32* nocapture noundef readonly %2, i32* nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = add nsw i32 %0, 1
  %6 = zext i32 %5 to i64
  %7 = alloca i32, i64 %6, align 16
  %8 = bitcast i32* %7 to i8*
  %9 = shl nuw nsw i64 %6, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 %9, i1 false)
  %10 = icmp slt i32 %0, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %4
  %12 = icmp sgt i32 %1, 0
  %13 = add i32 %0, 1
  %14 = zext i32 %13 to i64
  %15 = zext i32 %1 to i64
  br label %16

16:                                               ; preds = %11, %25
  %17 = phi i64 [ 0, %11 ], [ %26, %25 ]
  br i1 %12, label %18, label %25

18:                                               ; preds = %16
  %19 = getelementptr inbounds i32, i32* %7, i64 %17
  %20 = trunc i64 %17 to i32
  br label %28

21:                                               ; preds = %25, %4
  %22 = sext i32 %0 to i64
  %23 = getelementptr inbounds i32, i32* %7, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !5
  ret i32 %24

25:                                               ; preds = %44, %16
  %26 = add nuw nsw i64 %17, 1
  %27 = icmp eq i64 %26, %14
  br i1 %27, label %21, label %16, !llvm.loop !9

28:                                               ; preds = %18, %44
  %29 = phi i64 [ 0, %18 ], [ %45, %44 ]
  %30 = getelementptr inbounds i32, i32* %3, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %17, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %19, align 4, !tbaa !5
  %36 = sub nsw i32 %20, %31
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %7, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = getelementptr inbounds i32, i32* %2, i64 %29
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = add nsw i32 %41, %39
  %43 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %35, i32 noundef %42) #3
  store i32 %43, i32* %19, align 4, !tbaa !5
  br label %44

44:                                               ; preds = %28, %34
  %45 = add nuw nsw i64 %29, 1
  %46 = icmp eq i64 %45, %15
  br i1 %46, label %25, label %28, !llvm.loop !12
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
