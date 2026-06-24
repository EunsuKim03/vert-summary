; ModuleID = 'benchmark/c_transcoder/WRITE_AN_EFFICIENT_METHOD_TO_CHECK_IF_A_NUMBER_IS_MULTIPLE_OF_3/WRITE_AN_EFFICIENT_METHOD_TO_CHECK_IF_A_NUMBER_IS_MULTIPLE_OF_3_processed.c'
source_filename = "benchmark/c_transcoder/WRITE_AN_EFFICIENT_METHOD_TO_CHECK_IF_A_NUMBER_IS_MULTIPLE_OF_3/WRITE_AN_EFFICIENT_METHOD_TO_CHECK_IF_A_NUMBER_IS_MULTIPLE_OF_3_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = call i32 @llvm.abs.i32(i32 %0, i1 true)
  switch i32 %2, label %4 [
    i32 0, label %19
    i32 1, label %3
  ]

3:                                                ; preds = %1
  br label %19

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %12, %4 ], [ 0, %1 ]
  %6 = phi i32 [ %9, %4 ], [ 0, %1 ]
  %7 = phi i32 [ %13, %4 ], [ %2, %1 ]
  %8 = and i32 %7, 1
  %9 = add nuw nsw i32 %6, %8
  %10 = lshr i32 %7, 1
  %11 = and i32 %10, 1
  %12 = add nuw nsw i32 %5, %11
  %13 = lshr i32 %7, 2
  %14 = icmp ult i32 %7, 4
  br i1 %14, label %15, label %4, !llvm.loop !5

15:                                               ; preds = %4
  %16 = sub nsw i32 %9, %12
  %17 = call i32 @llvm.abs.i32(i32 %16, i1 true)
  %18 = call i32 @f_gold(i32 noundef %17)
  br label %19

19:                                               ; preds = %1, %15, %3
  %20 = phi i32 [ 0, %3 ], [ %18, %15 ], [ 1, %1 ]
  ret i32 %20
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
