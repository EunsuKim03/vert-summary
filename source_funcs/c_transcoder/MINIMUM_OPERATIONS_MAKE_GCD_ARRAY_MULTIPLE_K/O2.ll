; ModuleID = 'benchmark/c_transcoder/MINIMUM_OPERATIONS_MAKE_GCD_ARRAY_MULTIPLE_K/MINIMUM_OPERATIONS_MAKE_GCD_ARRAY_MULTIPLE_K_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_OPERATIONS_MAKE_GCD_ARRAY_MULTIPLE_K/MINIMUM_OPERATIONS_MAKE_GCD_ARRAY_MULTIPLE_K_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  br label %9

7:                                                ; preds = %25, %3
  %8 = phi i32 [ 0, %3 ], [ %26, %25 ]
  ret i32 %8

9:                                                ; preds = %5, %25
  %10 = phi i64 [ 0, %5 ], [ %27, %25 ]
  %11 = phi i32 [ 0, %5 ], [ %26, %25 ]
  %12 = getelementptr inbounds i32, i32* %0, i64 %10
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = icmp ne i32 %13, 1
  %15 = icmp sgt i32 %13, %2
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = srem i32 %13, %2
  %19 = sub nsw i32 %2, %18
  %20 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %18, i32 noundef %19) #2
  %21 = add nsw i32 %20, %11
  br label %25

22:                                               ; preds = %9
  %23 = add nsw i32 %11, %2
  %24 = sub i32 %23, %13
  br label %25

25:                                               ; preds = %17, %22
  %26 = phi i32 [ %21, %17 ], [ %24, %22 ]
  %27 = add nuw nsw i64 %10, 1
  %28 = icmp eq i64 %27, %6
  br i1 %28, label %7, label %9, !llvm.loop !9
}

declare i32 @min(...) local_unnamed_addr #1

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
