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
  br label %5

5:                                                ; preds = %5, %1
  %6 = phi i64 [ %15, %5 ], [ 2, %1 ]
  %7 = add nsw i64 %6, -1
  %8 = getelementptr inbounds i32, i32* %3, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !5
  %10 = add nsw i64 %6, -2
  %11 = getelementptr inbounds i32, i32* %3, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !5
  %13 = add nsw i32 %12, %9
  %14 = getelementptr inbounds i32, i32* %3, i64 %6
  store i32 %13, i32* %14, align 4, !tbaa !5
  %15 = add nuw i64 %6, 1
  %16 = icmp sgt i32 %13, %0
  br i1 %16, label %17, label %5, !llvm.loop !9

17:                                               ; preds = %5
  %18 = trunc i64 %7 to i32
  ret i32 %18
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
