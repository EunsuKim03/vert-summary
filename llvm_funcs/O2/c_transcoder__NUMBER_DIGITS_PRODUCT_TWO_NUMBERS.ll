; ModuleID = 'benchmark/c_transcoder/NUMBER_DIGITS_PRODUCT_TWO_NUMBERS/NUMBER_DIGITS_PRODUCT_TWO_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/NUMBER_DIGITS_PRODUCT_TWO_NUMBERS/NUMBER_DIGITS_PRODUCT_TWO_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = mul nsw i32 %1, %0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i32 [ %11, %7 ], [ %6, %5 ]
  %9 = phi i32 [ %10, %7 ], [ 0, %5 ]
  %10 = add nuw nsw i32 %9, 1
  %11 = udiv i32 %8, 10
  %12 = icmp ult i32 %8, 10
  br i1 %12, label %13, label %7, !llvm.loop !5

13:                                               ; preds = %7, %2
  %14 = phi i32 [ 1, %2 ], [ %10, %7 ]
  ret i32 %14
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
