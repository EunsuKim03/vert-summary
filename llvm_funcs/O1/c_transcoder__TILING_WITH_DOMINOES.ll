; ModuleID = 'benchmark/c_transcoder/TILING_WITH_DOMINOES/TILING_WITH_DOMINOES_processed.c'
source_filename = "benchmark/c_transcoder/TILING_WITH_DOMINOES/TILING_WITH_DOMINOES_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = alloca i32, i64 %3, align 16
  store i32 1, i32* %4, align 16, !tbaa !5
  %6 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 0, i32* %6, align 4, !tbaa !5
  store i32 0, i32* %5, align 16, !tbaa !5
  %7 = getelementptr inbounds i32, i32* %5, i64 1
  store i32 1, i32* %7, align 4, !tbaa !5
  %8 = icmp slt i32 %0, 2
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = add i32 %0, 1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %5, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %4, i64 1
  %15 = load i32, i32* %14, align 4
  br label %20

16:                                               ; preds = %20, %1
  %17 = sext i32 %0 to i64
  %18 = getelementptr inbounds i32, i32* %4, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !5
  ret i32 %19

20:                                               ; preds = %9, %20
  %21 = phi i32 [ %15, %9 ], [ %28, %20 ]
  %22 = phi i32 [ %13, %9 ], [ %32, %20 ]
  %23 = phi i64 [ 2, %9 ], [ %34, %20 ]
  %24 = add nsw i64 %23, -2
  %25 = getelementptr inbounds i32, i32* %4, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = shl nsw i32 %22, 1
  %28 = add nsw i32 %27, %26
  %29 = getelementptr inbounds i32, i32* %4, i64 %23
  store i32 %28, i32* %29, align 4, !tbaa !5
  %30 = getelementptr inbounds i32, i32* %5, i64 %24
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = add nsw i32 %31, %21
  %33 = getelementptr inbounds i32, i32* %5, i64 %23
  store i32 %32, i32* %33, align 4, !tbaa !5
  %34 = add nuw nsw i64 %23, 1
  %35 = icmp eq i64 %34, %11
  br i1 %35, label %16, label %20, !llvm.loop !9
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
