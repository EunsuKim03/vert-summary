; ModuleID = 'benchmark/c_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1_processed.c'
source_filename = "benchmark/c_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = call i32 @llvm.ctpop.i32(i32 %0), !range !5
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = icmp ugt i32 %0, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %4, %6
  %7 = phi i32 [ %10, %6 ], [ 0, %4 ]
  %8 = phi i32 [ %9, %6 ], [ %0, %4 ]
  %9 = lshr i32 %8, 1
  %10 = add nuw nsw i32 %7, 1
  %11 = icmp ugt i32 %8, 3
  br i1 %11, label %6, label %12, !llvm.loop !6

12:                                               ; preds = %6
  %13 = and i32 %10, 1
  %14 = xor i32 %13, 1
  br label %15

15:                                               ; preds = %4, %12, %1
  %16 = phi i32 [ 0, %1 ], [ 1, %4 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #1

attributes #0 = { nofree nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{i32 0, i32 33}
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.unroll.disable"}
