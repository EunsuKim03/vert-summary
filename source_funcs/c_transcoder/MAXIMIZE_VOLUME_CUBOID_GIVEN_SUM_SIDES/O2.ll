; ModuleID = 'benchmark/c_transcoder/MAXIMIZE_VOLUME_CUBOID_GIVEN_SUM_SIDES/MAXIMIZE_VOLUME_CUBOID_GIVEN_SUM_SIDES_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMIZE_VOLUME_CUBOID_GIVEN_SUM_SIDES/MAXIMIZE_VOLUME_CUBOID_GIVEN_SUM_SIDES_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 3
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = add nsw i32 %0, -1
  br label %5

5:                                                ; preds = %10, %3
  %6 = phi i32 [ 0, %3 ], [ %20, %10 ]
  %7 = phi i32 [ 1, %3 ], [ %11, %10 ]
  br label %13

8:                                                ; preds = %10, %1
  %9 = phi i32 [ 0, %1 ], [ %20, %10 ]
  ret i32 %9

10:                                               ; preds = %13
  %11 = add nuw i32 %7, 1
  %12 = icmp eq i32 %11, %4
  br i1 %12, label %8, label %5, !llvm.loop !5

13:                                               ; preds = %5, %13
  %14 = phi i32 [ %6, %5 ], [ %20, %13 ]
  %15 = phi i32 [ 1, %5 ], [ %21, %13 ]
  %16 = add nuw i32 %7, %15
  %17 = sub i32 %0, %16
  %18 = mul nuw nsw i32 %15, %7
  %19 = mul nsw i32 %18, %17
  %20 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %14, i32 noundef %19) #2
  %21 = add nuw nsw i32 %15, 1
  %22 = icmp eq i32 %21, %0
  br i1 %22, label %10, label %13, !llvm.loop !7
}

declare i32 @max(...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
