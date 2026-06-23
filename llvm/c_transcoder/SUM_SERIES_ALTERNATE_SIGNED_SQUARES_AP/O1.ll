; ModuleID = 'benchmark/c_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_processed.c'
source_filename = "benchmark/c_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = shl i32 %0, 1
  %6 = call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = zext i32 %6 to i64
  br label %10

8:                                                ; preds = %10, %2
  %9 = phi i32 [ 0, %2 ], [ %20, %10 ]
  ret i32 %9

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 0, %4 ], [ %21, %10 ]
  %12 = phi i32 [ 0, %4 ], [ %20, %10 ]
  %13 = and i64 %11, 1
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds i32, i32* %1, i64 %11
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = mul nsw i32 %16, %16
  %18 = sub nsw i32 0, %17
  %19 = select i1 %14, i32 %17, i32 %18
  %20 = add i32 %12, %19
  %21 = add nuw nsw i64 %11, 1
  %22 = icmp eq i64 %21, %7
  br i1 %22, label %8, label %10, !llvm.loop !9
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

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
