; ModuleID = 'benchmark/c_transcoder/FIND_POSITION_GIVEN_NUMBER_AMONG_NUMBERS_MADE_4_7/FIND_POSITION_GIVEN_NUMBER_AMONG_NUMBERS_MADE_4_7_processed.c'
source_filename = "benchmark/c_transcoder/FIND_POSITION_GIVEN_NUMBER_AMONG_NUMBERS_MADE_4_7/FIND_POSITION_GIVEN_NUMBER_AMONG_NUMBERS_MADE_4_7_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, i8* %0, align 1, !tbaa !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %21, label %4

4:                                                ; preds = %1, %15
  %5 = phi i64 [ %17, %15 ], [ 0, %1 ]
  %6 = phi i8 [ %19, %15 ], [ %2, %1 ]
  %7 = phi i32 [ %16, %15 ], [ 0, %1 ]
  %8 = sext i8 %6 to i32
  switch i32 %8, label %15 [
    i32 52, label %9
    i32 55, label %12
  ]

9:                                                ; preds = %4
  %10 = shl nsw i32 %7, 1
  %11 = or i32 %10, 1
  br label %15

12:                                               ; preds = %4
  %13 = shl nsw i32 %7, 1
  %14 = add nsw i32 %13, 2
  br label %15

15:                                               ; preds = %4, %12, %9
  %16 = phi i32 [ %7, %4 ], [ %14, %12 ], [ %11, %9 ]
  %17 = add nuw i64 %5, 1
  %18 = getelementptr inbounds i8, i8* %0, i64 %17
  %19 = load i8, i8* %18, align 1, !tbaa !5
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %4, !llvm.loop !8

21:                                               ; preds = %15, %1
  %22 = phi i32 [ 0, %1 ], [ %16, %15 ]
  ret i32 %22
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
