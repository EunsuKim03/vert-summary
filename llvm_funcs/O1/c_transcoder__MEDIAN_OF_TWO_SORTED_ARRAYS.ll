; ModuleID = 'benchmark/c_transcoder/MEDIAN_OF_TWO_SORTED_ARRAYS/MEDIAN_OF_TWO_SORTED_ARRAYS_processed.c'
source_filename = "benchmark/c_transcoder/MEDIAN_OF_TWO_SORTED_ARRAYS/MEDIAN_OF_TWO_SORTED_ARRAYS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %26, %13 ], [ -1, %3 ]
  %7 = phi i32 [ %27, %13 ], [ 0, %3 ]
  %8 = phi i32 [ %25, %13 ], [ 0, %3 ]
  %9 = phi i32 [ %22, %13 ], [ 0, %3 ]
  %10 = icmp eq i32 %9, %2
  br i1 %10, label %29, label %11

11:                                               ; preds = %5
  %12 = icmp eq i32 %8, %2
  br i1 %12, label %29, label %13

13:                                               ; preds = %11
  %14 = zext i32 %9 to i64
  %15 = getelementptr inbounds i32, i32* %0, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = zext i32 %8 to i64
  %18 = getelementptr inbounds i32, i32* %1, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = icmp slt i32 %16, %19
  %21 = zext i1 %20 to i32
  %22 = add nuw nsw i32 %9, %21
  %23 = xor i1 %20, true
  %24 = zext i1 %23 to i32
  %25 = add nuw nsw i32 %8, %24
  %26 = select i1 %20, i32 %16, i32 %19
  %27 = add nuw i32 %7, 1
  %28 = icmp eq i32 %7, %2
  br i1 %28, label %32, label %5, !llvm.loop !9

29:                                               ; preds = %11, %5
  %30 = phi i32* [ %1, %5 ], [ %0, %11 ]
  %31 = load i32, i32* %30, align 4, !tbaa !5
  br label %32

32:                                               ; preds = %13, %29, %3
  %33 = phi i32 [ -1, %3 ], [ %6, %29 ], [ %6, %13 ]
  %34 = phi i32 [ -1, %3 ], [ %31, %29 ], [ %26, %13 ]
  %35 = add nsw i32 %34, %33
  %36 = sdiv i32 %35, 2
  ret i32 %36
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
