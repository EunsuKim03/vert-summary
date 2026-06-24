; ModuleID = 'benchmark/c_transcoder/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %2, %15
  %5 = phi i8 [ %16, %15 ], [ 0, %2 ]
  %6 = phi i32 [ %8, %15 ], [ %0, %2 ]
  %7 = urem i32 %6, %1
  %8 = udiv i32 %6, %1
  %9 = icmp sgt i32 %7, 1
  br i1 %9, label %18, label %10

10:                                               ; preds = %4
  %11 = icmp eq i32 %7, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = and i8 %5, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10, %12
  %16 = phi i8 [ %5, %10 ], [ 1, %12 ]
  %17 = icmp ult i32 %6, %1
  br i1 %17, label %18, label %4, !llvm.loop !5

18:                                               ; preds = %15, %4, %12, %2
  %19 = phi i32 [ 1, %2 ], [ 0, %12 ], [ 0, %4 ], [ 1, %15 ]
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
