; ModuleID = 'benchmark/c_transcoder/COUNT_NUMBERS_THAT_DONT_CONTAIN_3/COUNT_NUMBERS_THAT_DONT_CONTAIN_3_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_NUMBERS_THAT_DONT_CONTAIN_3/COUNT_NUMBERS_THAT_DONT_CONTAIN_3_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 3
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 10
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = add nsw i32 %0, -1
  br label %27

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %9, %7 ], [ 1, %3 ]
  %9 = mul nuw nsw i32 %8, 10
  %10 = sdiv i32 %0, %9
  %11 = srem i32 %0, %9
  %12 = icmp sgt i32 %10, 9
  br i1 %12, label %7, label %13, !llvm.loop !5

13:                                               ; preds = %7
  %14 = icmp eq i32 %10, 3
  br i1 %14, label %23, label %15

15:                                               ; preds = %13
  %16 = call i32 @f_gold(i32 noundef %10)
  %17 = add nsw i32 %9, -1
  %18 = call i32 @f_gold(i32 noundef %17)
  %19 = mul nsw i32 %18, %16
  %20 = add nsw i32 %19, %16
  %21 = call i32 @f_gold(i32 noundef %11)
  %22 = add nsw i32 %20, %21
  br label %27

23:                                               ; preds = %13
  %24 = mul i32 %8, 30
  %25 = add nsw i32 %24, -1
  %26 = call i32 @f_gold(i32 noundef %25)
  br label %27

27:                                               ; preds = %15, %23, %1, %5
  %28 = phi i32 [ %6, %5 ], [ %0, %1 ], [ %22, %15 ], [ %26, %23 ]
  ret i32 %28
}

attributes #0 = { nofree nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
