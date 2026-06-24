; ModuleID = 'benchmark/c_transcoder/FIND_REPETITIVE_ELEMENT_1_N_1_2/FIND_REPETITIVE_ELEMENT_1_N_1_2_processed.c'
source_filename = "benchmark/c_transcoder/FIND_REPETITIVE_ELEMENT_1_N_1_2/FIND_REPETITIVE_ELEMENT_1_N_1_2_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, -1
  %4 = icmp sgt i32 %1, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = zext i32 %3 to i64
  br label %13

7:                                                ; preds = %13, %2
  %8 = phi i32 [ 0, %2 ], [ %21, %13 ]
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds i32, i32* %0, i64 %9
  %11 = load i32, i32* %10, align 4, !tbaa !5
  %12 = xor i32 %11, %8
  ret i32 %12

13:                                               ; preds = %5, %13
  %14 = phi i64 [ 0, %5 ], [ %16, %13 ]
  %15 = phi i32 [ 0, %5 ], [ %21, %13 ]
  %16 = add nuw nsw i64 %14, 1
  %17 = trunc i64 %16 to i32
  %18 = xor i32 %15, %17
  %19 = getelementptr inbounds i32, i32* %0, i64 %14
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = xor i32 %18, %20
  %22 = icmp eq i64 %16, %6
  br i1 %22, label %7, label %13, !llvm.loop !9
}

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
