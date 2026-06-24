; ModuleID = 'benchmark/c_transcoder/COUNTING_PAIRS_PERSON_CAN_FORM_PAIR_ONE_1/COUNTING_PAIRS_PERSON_CAN_FORM_PAIR_ONE_1_processed.c'
source_filename = "benchmark/c_transcoder/COUNTING_PAIRS_PERSON_CAN_FORM_PAIR_ONE_1/COUNTING_PAIRS_PERSON_CAN_FORM_PAIR_ONE_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 1, i32* %5, align 4, !tbaa !5
  store i32 1, i32* %4, align 16, !tbaa !5
  %6 = icmp slt i32 %0, 2
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = add i32 %0, 1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %4, i64 1
  %11 = load i32, i32* %10, align 4
  br label %16

12:                                               ; preds = %16, %1
  %13 = sext i32 %0 to i64
  %14 = getelementptr inbounds i32, i32* %4, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !5
  ret i32 %15

16:                                               ; preds = %7, %16
  %17 = phi i32 [ %11, %7 ], [ %25, %16 ]
  %18 = phi i64 [ 2, %7 ], [ %27, %16 ]
  %19 = add nsw i64 %18, -2
  %20 = getelementptr inbounds i32, i32* %4, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = trunc i64 %18 to i32
  %23 = add i32 %22, -1
  %24 = mul nsw i32 %21, %23
  %25 = add nsw i32 %24, %17
  %26 = getelementptr inbounds i32, i32* %4, i64 %18
  store i32 %25, i32* %26, align 4, !tbaa !5
  %27 = add nuw nsw i64 %18, 1
  %28 = icmp eq i64 %27, %9
  br i1 %28, label %12, label %16, !llvm.loop !9
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
