; ModuleID = 'benchmark/c_transcoder/NON_REPEATING_ELEMENT/NON_REPEATING_ELEMENT_processed.c'
source_filename = "benchmark/c_transcoder/NON_REPEATING_ELEMENT/NON_REPEATING_ELEMENT_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %30

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %27, %4
  %7 = phi i64 [ 0, %4 ], [ %28, %27 ]
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi i64 [ 0, %6 ], [ %18, %17 ]
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %8, align 4, !tbaa !5
  %14 = getelementptr inbounds i32, i32* %0, i64 %10
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %9, %12
  %18 = add nuw nsw i64 %10, 1
  %19 = icmp eq i64 %18, %5
  br i1 %19, label %23, label %9, !llvm.loop !9

20:                                               ; preds = %12
  %21 = trunc i64 %10 to i32
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20, %17
  %24 = and i64 %7, 4294967295
  %25 = getelementptr inbounds i32, i32* %0, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  br label %30

27:                                               ; preds = %20
  %28 = add nuw nsw i64 %7, 1
  %29 = icmp eq i64 %28, %5
  br i1 %29, label %30, label %6, !llvm.loop !11

30:                                               ; preds = %27, %2, %23
  %31 = phi i32 [ %26, %23 ], [ -1, %2 ], [ -1, %27 ]
  ret i32 %31
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
