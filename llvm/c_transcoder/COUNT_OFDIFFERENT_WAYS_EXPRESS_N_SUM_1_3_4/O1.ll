; ModuleID = 'benchmark/c_transcoder/COUNT_OFDIFFERENT_WAYS_EXPRESS_N_SUM_1_3_4/COUNT_OFDIFFERENT_WAYS_EXPRESS_N_SUM_1_3_4_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_OFDIFFERENT_WAYS_EXPRESS_N_SUM_1_3_4/COUNT_OFDIFFERENT_WAYS_EXPRESS_N_SUM_1_3_4_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 1, i32* %5, align 8, !tbaa !5
  %6 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 1, i32* %6, align 4, !tbaa !5
  store i32 1, i32* %4, align 16, !tbaa !5
  %7 = getelementptr inbounds i32, i32* %4, i64 3
  store i32 2, i32* %7, align 4, !tbaa !5
  %8 = icmp slt i32 %0, 4
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = add i32 %0, 1
  %11 = zext i32 %10 to i64
  %12 = getelementptr i32, i32* %4, i64 3
  %13 = load i32, i32* %12, align 4
  br label %18

14:                                               ; preds = %18, %1
  %15 = sext i32 %0 to i64
  %16 = getelementptr inbounds i32, i32* %4, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !5
  ret i32 %17

18:                                               ; preds = %9, %18
  %19 = phi i32 [ %13, %9 ], [ %28, %18 ]
  %20 = phi i64 [ 4, %9 ], [ %30, %18 ]
  %21 = add nsw i64 %20, -3
  %22 = getelementptr inbounds i32, i32* %4, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = add nsw i32 %23, %19
  %25 = add nsw i64 %20, -4
  %26 = getelementptr inbounds i32, i32* %4, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = add nsw i32 %24, %27
  %29 = getelementptr inbounds i32, i32* %4, i64 %20
  store i32 %28, i32* %29, align 4, !tbaa !5
  %30 = add nuw nsw i64 %20, 1
  %31 = icmp eq i64 %30, %11
  br i1 %31, label %14, label %18, !llvm.loop !9
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
