; ModuleID = 'benchmark/c_transcoder/COUNT_NUMBER_OF_WAYS_TO_COVER_A_DISTANCE_1/COUNT_NUMBER_OF_WAYS_TO_COVER_A_DISTANCE_1_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_NUMBER_OF_WAYS_TO_COVER_A_DISTANCE_1/COUNT_NUMBER_OF_WAYS_TO_COVER_A_DISTANCE_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  store i32 1, i32* %4, align 16, !tbaa !5
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 1, i32* %5, align 4, !tbaa !5
  %6 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 2, i32* %6, align 8, !tbaa !5
  %7 = icmp slt i32 %0, 3
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = add i32 %0, 1
  %10 = zext i32 %9 to i64
  %11 = getelementptr i32, i32* %4, i64 2
  %12 = load i32, i32* %11, align 8
  br label %17

13:                                               ; preds = %17, %1
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds i32, i32* %4, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !5
  ret i32 %16

17:                                               ; preds = %8, %17
  %18 = phi i32 [ %12, %8 ], [ %27, %17 ]
  %19 = phi i64 [ 3, %8 ], [ %29, %17 ]
  %20 = add nsw i64 %19, -2
  %21 = getelementptr inbounds i32, i32* %4, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = add nsw i32 %22, %18
  %24 = add nsw i64 %19, -3
  %25 = getelementptr inbounds i32, i32* %4, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = add nsw i32 %23, %26
  %28 = getelementptr inbounds i32, i32* %4, i64 %19
  store i32 %27, i32* %28, align 4, !tbaa !5
  %29 = add nuw nsw i64 %19, 1
  %30 = icmp eq i64 %29, %10
  br i1 %30, label %13, label %17, !llvm.loop !9
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
