; ModuleID = 'benchmark/c_transcoder/HORNERS_METHOD_POLYNOMIAL_EVALUATION/HORNERS_METHOD_POLYNOMIAL_EVALUATION_processed.c'
source_filename = "benchmark/c_transcoder/HORNERS_METHOD_POLYNOMIAL_EVALUATION/HORNERS_METHOD_POLYNOMIAL_EVALUATION_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, i32* %0, align 4, !tbaa !5
  %5 = icmp sgt i32 %1, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = zext i32 %1 to i64
  br label %10

8:                                                ; preds = %10, %3
  %9 = phi i32 [ %4, %3 ], [ %16, %10 ]
  ret i32 %9

10:                                               ; preds = %6, %10
  %11 = phi i64 [ 1, %6 ], [ %17, %10 ]
  %12 = phi i32 [ %4, %6 ], [ %16, %10 ]
  %13 = mul nsw i32 %12, %2
  %14 = getelementptr inbounds i32, i32* %0, i64 %11
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = add nsw i32 %15, %13
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %7
  br i1 %18, label %8, label %10, !llvm.loop !9
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
