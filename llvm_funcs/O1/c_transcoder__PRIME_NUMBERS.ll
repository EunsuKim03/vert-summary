; ModuleID = 'benchmark/c_transcoder/PRIME_NUMBERS/PRIME_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/PRIME_NUMBERS/PRIME_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 2
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = icmp ne i32 %0, 2
  %5 = and i32 %0, 1
  %6 = icmp ne i32 %5, 0
  %7 = and i1 %4, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %3, %11
  %9 = phi i32 [ %14, %11 ], [ 3, %3 ]
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %15, label %11, !llvm.loop !5

11:                                               ; preds = %8
  %12 = srem i32 %0, %9
  %13 = icmp eq i32 %12, 0
  %14 = add nuw nsw i32 %9, 1
  br i1 %13, label %15, label %8, !llvm.loop !5

15:                                               ; preds = %8, %11
  %16 = icmp slt i32 %9, %0
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi i1 [ %4, %3 ], [ %16, %15 ]
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %17, %1
  %22 = phi i32 [ 0, %1 ], [ %20, %17 ]
  ret i32 %22
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
