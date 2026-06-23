; ModuleID = 'benchmark/c_transcoder/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, 1
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = add i32 %0, -1
  %6 = and i32 %0, 3
  %7 = icmp ult i32 %5, 3
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = and i32 %0, -4
  br label %26

10:                                               ; preds = %26, %4
  %11 = phi i32 [ undef, %4 ], [ %40, %26 ]
  %12 = phi i32 [ 1, %4 ], [ %41, %26 ]
  %13 = phi i32 [ 0, %4 ], [ %40, %26 ]
  %14 = icmp eq i32 %6, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %10, %15
  %16 = phi i32 [ %21, %15 ], [ %12, %10 ]
  %17 = phi i32 [ %20, %15 ], [ %13, %10 ]
  %18 = phi i32 [ %22, %15 ], [ 0, %10 ]
  %19 = srem i32 %16, %1
  %20 = add nuw nsw i32 %19, %17
  %21 = add nuw i32 %16, 1
  %22 = add i32 %18, 1
  %23 = icmp eq i32 %22, %6
  br i1 %23, label %24, label %15, !llvm.loop !5

24:                                               ; preds = %10, %15, %2
  %25 = phi i32 [ 0, %2 ], [ %11, %10 ], [ %20, %15 ]
  ret i32 %25

26:                                               ; preds = %26, %8
  %27 = phi i32 [ 1, %8 ], [ %41, %26 ]
  %28 = phi i32 [ 0, %8 ], [ %40, %26 ]
  %29 = phi i32 [ 0, %8 ], [ %42, %26 ]
  %30 = srem i32 %27, %1
  %31 = add nuw nsw i32 %30, %28
  %32 = add nuw nsw i32 %27, 1
  %33 = srem i32 %32, %1
  %34 = add nuw nsw i32 %33, %31
  %35 = add nuw nsw i32 %27, 2
  %36 = srem i32 %35, %1
  %37 = add nuw nsw i32 %36, %34
  %38 = add nuw i32 %27, 3
  %39 = srem i32 %38, %1
  %40 = add nuw nsw i32 %39, %37
  %41 = add nuw i32 %27, 4
  %42 = add i32 %29, 4
  %43 = icmp eq i32 %42, %9
  br i1 %43, label %10, label %26, !llvm.loop !7
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
