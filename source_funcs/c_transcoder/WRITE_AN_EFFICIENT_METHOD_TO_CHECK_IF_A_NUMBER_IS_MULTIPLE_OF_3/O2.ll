; ModuleID = 'benchmark/c_transcoder/WRITE_AN_EFFICIENT_METHOD_TO_CHECK_IF_A_NUMBER_IS_MULTIPLE_OF_3/WRITE_AN_EFFICIENT_METHOD_TO_CHECK_IF_A_NUMBER_IS_MULTIPLE_OF_3_processed.c'
source_filename = "benchmark/c_transcoder/WRITE_AN_EFFICIENT_METHOD_TO_CHECK_IF_A_NUMBER_IS_MULTIPLE_OF_3/WRITE_AN_EFFICIENT_METHOD_TO_CHECK_IF_A_NUMBER_IS_MULTIPLE_OF_3_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %16, %1
  %3 = phi i32 [ %0, %1 ], [ %18, %16 ]
  %4 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  switch i32 %4, label %5 [
    i32 0, label %19
    i32 1, label %20
  ]

5:                                                ; preds = %2, %5
  %6 = phi i32 [ %13, %5 ], [ 0, %2 ]
  %7 = phi i32 [ %10, %5 ], [ 0, %2 ]
  %8 = phi i32 [ %14, %5 ], [ %4, %2 ]
  %9 = and i32 %8, 1
  %10 = add nuw nsw i32 %7, %9
  %11 = lshr i32 %8, 1
  %12 = and i32 %11, 1
  %13 = add nuw nsw i32 %6, %12
  %14 = lshr i32 %8, 2
  %15 = icmp ult i32 %8, 4
  br i1 %15, label %16, label %5, !llvm.loop !5

16:                                               ; preds = %5
  %17 = sub nsw i32 %10, %13
  %18 = tail call i32 @llvm.abs.i32(i32 %17, i1 true)
  br label %2

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %2, %19
  %21 = phi i32 [ 1, %19 ], [ 0, %2 ]
  ret i32 %21
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
