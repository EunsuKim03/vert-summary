; ModuleID = 'benchmark/c_transcoder/SMALLEST_OF_THREE_INTEGERS_WITHOUT_COMPARISON_OPERATORS/SMALLEST_OF_THREE_INTEGERS_WITHOUT_COMPARISON_OPERATORS_processed.c'
source_filename = "benchmark/c_transcoder/SMALLEST_OF_THREE_INTEGERS_WITHOUT_COMPARISON_OPERATORS/SMALLEST_OF_THREE_INTEGERS_WITHOUT_COMPARISON_OPERATORS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne i32 %0, 0
  %5 = icmp ne i32 %1, 0
  %6 = and i1 %4, %5
  %7 = icmp ne i32 %2, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = add i32 %0, -1
  %11 = add i32 %1, -1
  %12 = icmp eq i32 %10, 0
  %13 = icmp eq i32 %11, 0
  %14 = or i1 %12, %13
  %15 = add i32 %2, -1
  %16 = call i32 @llvm.umin.i32(i32 %15, i32 %11)
  %17 = call i32 @llvm.umin.i32(i32 %16, i32 %10)
  %18 = add i32 %17, 1
  %19 = select i1 %14, i32 1, i32 %18
  br label %20

20:                                               ; preds = %9, %3
  %21 = phi i32 [ 0, %3 ], [ %19, %9 ]
  ret i32 %21
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
