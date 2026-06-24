; ModuleID = 'benchmark/c_transcoder/FIND_N_TH_ELEMENT_FROM_STERNS_DIATOMIC_SERIES/FIND_N_TH_ELEMENT_FROM_STERNS_DIATOMIC_SERIES_processed.c'
source_filename = "benchmark/c_transcoder/FIND_N_TH_ELEMENT_FROM_STERNS_DIATOMIC_SERIES/FIND_N_TH_ELEMENT_FROM_STERNS_DIATOMIC_SERIES_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  store i32 0, i32* %4, align 16, !tbaa !5
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 1, i32* %5, align 4, !tbaa !5
  %6 = icmp slt i32 %0, 2
  br i1 %6, label %7, label %11

7:                                                ; preds = %33, %1
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds i32, i32* %4, i64 %8
  %10 = load i32, i32* %9, align 4, !tbaa !5
  ret i32 %10

11:                                               ; preds = %1, %33
  %12 = phi i64 [ %34, %33 ], [ 2, %1 ]
  %13 = and i64 %12, 1
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = lshr i64 %12, 1
  %17 = and i64 %16, 2147483647
  %18 = getelementptr inbounds i32, i32* %4, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = add nuw nsw i64 %12, 1
  br label %33

21:                                               ; preds = %11
  %22 = add i64 %12, 4294967295
  %23 = lshr i64 %22, 1
  %24 = and i64 %23, 2147483647
  %25 = getelementptr inbounds i32, i32* %4, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = add nuw nsw i64 %12, 1
  %28 = lshr i64 %27, 1
  %29 = and i64 %28, 2147483647
  %30 = getelementptr inbounds i32, i32* %4, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = add nsw i32 %31, %26
  br label %33

33:                                               ; preds = %15, %21
  %34 = phi i64 [ %20, %15 ], [ %27, %21 ]
  %35 = phi i32 [ %19, %15 ], [ %32, %21 ]
  %36 = getelementptr inbounds i32, i32* %4, i64 %12
  store i32 %35, i32* %36, align 4
  %37 = icmp eq i64 %34, %3
  br i1 %37, label %7, label %11, !llvm.loop !9
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
