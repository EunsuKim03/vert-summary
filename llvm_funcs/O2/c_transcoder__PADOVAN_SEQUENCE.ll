; ModuleID = 'benchmark/c_transcoder/PADOVAN_SEQUENCE/PADOVAN_SEQUENCE_processed.c'
source_filename = "benchmark/c_transcoder/PADOVAN_SEQUENCE/PADOVAN_SEQUENCE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 3
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = add i32 %0, -2
  %5 = add i32 %0, -3
  %6 = and i32 %4, 7
  %7 = icmp ult i32 %5, 7
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = and i32 %4, -8
  br label %26

10:                                               ; preds = %26, %3
  %11 = phi i32 [ undef, %3 ], [ %38, %26 ]
  %12 = phi i32 [ 1, %3 ], [ %38, %26 ]
  %13 = phi i32 [ 1, %3 ], [ %37, %26 ]
  %14 = phi i32 [ 1, %3 ], [ %36, %26 ]
  %15 = icmp eq i32 %6, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %10, %16
  %17 = phi i32 [ %21, %16 ], [ %12, %10 ]
  %18 = phi i32 [ %17, %16 ], [ %13, %10 ]
  %19 = phi i32 [ %18, %16 ], [ %14, %10 ]
  %20 = phi i32 [ %22, %16 ], [ 0, %10 ]
  %21 = add nsw i32 %18, %19
  %22 = add i32 %20, 1
  %23 = icmp eq i32 %22, %6
  br i1 %23, label %24, label %16, !llvm.loop !5

24:                                               ; preds = %10, %16, %1
  %25 = phi i32 [ 1, %1 ], [ %11, %10 ], [ %21, %16 ]
  ret i32 %25

26:                                               ; preds = %26, %8
  %27 = phi i32 [ 1, %8 ], [ %38, %26 ]
  %28 = phi i32 [ 1, %8 ], [ %37, %26 ]
  %29 = phi i32 [ 1, %8 ], [ %36, %26 ]
  %30 = phi i32 [ 0, %8 ], [ %39, %26 ]
  %31 = add nsw i32 %28, %29
  %32 = add nsw i32 %27, %28
  %33 = add nsw i32 %31, %27
  %34 = add nsw i32 %32, %31
  %35 = add nsw i32 %33, %32
  %36 = add nsw i32 %34, %33
  %37 = add nsw i32 %35, %34
  %38 = add nsw i32 %36, %35
  %39 = add i32 %30, 8
  %40 = icmp eq i32 %39, %9
  br i1 %40, label %10, label %26, !llvm.loop !7
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
