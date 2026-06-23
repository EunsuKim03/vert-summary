; ModuleID = 'benchmark/c_transcoder/MAXIMUM_GAMES_PLAYED_WINNER/MAXIMUM_GAMES_PLAYED_WINNER_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_GAMES_PLAYED_WINNER/MAXIMUM_GAMES_PLAYED_WINNER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = zext i32 %0 to i64
  %3 = alloca i32, i64 %2, align 16
  store i32 1, i32* %3, align 16, !tbaa !5
  %4 = getelementptr inbounds i32, i32* %3, i64 1
  store i32 2, i32* %4, align 4, !tbaa !5
  %5 = getelementptr inbounds i32, i32* %3, i64 2
  store i32 3, i32* %5, align 8, !tbaa !5
  %6 = icmp slt i32 %0, 3
  br i1 %6, label %17, label %7, !llvm.loop !9

7:                                                ; preds = %1, %7
  %8 = phi i64 [ %10, %7 ], [ 1, %1 ]
  %9 = phi i32 [ %14, %7 ], [ 3, %1 ]
  %10 = phi i64 [ %11, %7 ], [ 2, %1 ]
  %11 = add nuw i64 %10, 1
  %12 = getelementptr inbounds i32, i32* %3, i64 %8
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = add nsw i32 %13, %9
  %15 = getelementptr inbounds i32, i32* %3, i64 %11
  store i32 %14, i32* %15, align 4, !tbaa !5
  %16 = icmp sgt i32 %14, %0
  br i1 %16, label %17, label %7, !llvm.loop !9

17:                                               ; preds = %7, %1
  %18 = phi i64 [ 1, %1 ], [ %10, %7 ]
  %19 = trunc i64 %18 to i32
  ret i32 %19
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
