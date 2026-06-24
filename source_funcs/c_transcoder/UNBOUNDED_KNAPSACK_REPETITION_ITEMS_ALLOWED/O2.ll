; ModuleID = 'benchmark/c_transcoder/UNBOUNDED_KNAPSACK_REPETITION_ITEMS_ALLOWED/UNBOUNDED_KNAPSACK_REPETITION_ITEMS_ALLOWED_processed.c'
source_filename = "benchmark/c_transcoder/UNBOUNDED_KNAPSACK_REPETITION_ITEMS_ALLOWED/UNBOUNDED_KNAPSACK_REPETITION_ITEMS_ALLOWED_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32* nocapture noundef readonly %2, i32* nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = add i32 %0, 1
  %6 = zext i32 %5 to i64
  %7 = alloca i32, i64 %6, align 16
  %8 = bitcast i32* %7 to i8*
  %9 = shl nuw nsw i64 %6, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 %9, i1 false)
  %10 = icmp slt i32 %0, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %4
  %12 = icmp sgt i32 %1, 0
  %13 = zext i32 %1 to i64
  br label %14

14:                                               ; preds = %11, %23
  %15 = phi i64 [ 0, %11 ], [ %24, %23 ]
  br i1 %12, label %16, label %23

16:                                               ; preds = %14
  %17 = getelementptr inbounds i32, i32* %7, i64 %15
  %18 = trunc i64 %15 to i32
  br label %26

19:                                               ; preds = %23, %4
  %20 = sext i32 %0 to i64
  %21 = getelementptr inbounds i32, i32* %7, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !5
  ret i32 %22

23:                                               ; preds = %42, %14
  %24 = add nuw nsw i64 %15, 1
  %25 = icmp eq i64 %24, %6
  br i1 %25, label %19, label %14, !llvm.loop !9

26:                                               ; preds = %16, %42
  %27 = phi i64 [ 0, %16 ], [ %43, %42 ]
  %28 = getelementptr inbounds i32, i32* %3, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !5
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %15, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %17, align 4, !tbaa !5
  %34 = sub nsw i32 %18, %29
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %7, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !5
  %38 = getelementptr inbounds i32, i32* %2, i64 %27
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = add nsw i32 %39, %37
  %41 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %33, i32 noundef %40) #3
  store i32 %41, i32* %17, align 4, !tbaa !5
  br label %42

42:                                               ; preds = %26, %32
  %43 = add nuw nsw i64 %27, 1
  %44 = icmp eq i64 %43, %13
  br i1 %44, label %23, label %26, !llvm.loop !11
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
