; ModuleID = 'benchmark/c_transcoder/CHECK_IF_A_NUMBER_IS_JUMBLED_OR_NOT/CHECK_IF_A_NUMBER_IS_JUMBLED_OR_NOT_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_IF_A_NUMBER_IS_JUMBLED_OR_NOT/CHECK_IF_A_NUMBER_IS_JUMBLED_OR_NOT_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 9
  %3 = icmp ult i32 %2, 19
  br i1 %3, label %18, label %4

4:                                                ; preds = %1, %12
  %5 = phi i32 [ %17, %12 ], [ %0, %1 ]
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = sdiv i32 %5, 10
  %9 = srem i32 %5, 10
  %10 = add i32 %5, 9
  %11 = icmp ult i32 %10, 19
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = srem i32 %8, 10
  %14 = sub nsw i32 %13, %9
  %15 = call i32 @llvm.abs.i32(i32 %14, i1 true)
  %16 = icmp ugt i32 %15, 1
  %17 = select i1 %16, i32 %5, i32 %8
  br i1 %16, label %18, label %4

18:                                               ; preds = %12, %4, %7, %1
  %19 = phi i32 [ 1, %1 ], [ 0, %12 ], [ 1, %7 ], [ 1, %4 ]
  ret i32 %19
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
