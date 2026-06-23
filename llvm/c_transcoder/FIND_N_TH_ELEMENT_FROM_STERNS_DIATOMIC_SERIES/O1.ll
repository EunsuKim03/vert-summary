; ModuleID = 'benchmark/c_transcoder/FIND_N_TH_ELEMENT_FROM_STERNS_DIATOMIC_SERIES/FIND_N_TH_ELEMENT_FROM_STERNS_DIATOMIC_SERIES_processed.c'
source_filename = "benchmark/c_transcoder/FIND_N_TH_ELEMENT_FROM_STERNS_DIATOMIC_SERIES/FIND_N_TH_ELEMENT_FROM_STERNS_DIATOMIC_SERIES_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  store i32 0, i32* %4, align 16, !tbaa !5
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 1, i32* %5, align 4, !tbaa !5
  %6 = icmp slt i32 %0, 2
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = add i32 %0, 1
  %9 = zext i32 %8 to i64
  br label %14

10:                                               ; preds = %35, %1
  %11 = sext i32 %0 to i64
  %12 = getelementptr inbounds i32, i32* %4, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !5
  ret i32 %13

14:                                               ; preds = %7, %35
  %15 = phi i64 [ 2, %7 ], [ %38, %35 ]
  %16 = and i64 %15, 1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = lshr i64 %15, 1
  %20 = and i64 %19, 2147483647
  %21 = getelementptr inbounds i32, i32* %4, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !5
  br label %35

23:                                               ; preds = %14
  %24 = add nuw i64 %15, 4294967295
  %25 = lshr i64 %24, 1
  %26 = and i64 %25, 2147483647
  %27 = getelementptr inbounds i32, i32* %4, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = add nuw i64 %15, 1
  %30 = lshr i64 %29, 1
  %31 = and i64 %30, 2147483647
  %32 = getelementptr inbounds i32, i32* %4, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %34 = add nsw i32 %33, %28
  br label %35

35:                                               ; preds = %18, %23
  %36 = phi i32 [ %22, %18 ], [ %34, %23 ]
  %37 = getelementptr inbounds i32, i32* %4, i64 %15
  store i32 %36, i32* %37, align 4, !tbaa !5
  %38 = add nuw nsw i64 %15, 1
  %39 = icmp eq i64 %38, %9
  br i1 %39, label %10, label %14, !llvm.loop !9
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
