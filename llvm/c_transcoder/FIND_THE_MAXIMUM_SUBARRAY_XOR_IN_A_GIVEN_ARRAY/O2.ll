; ModuleID = 'benchmark/c_transcoder/FIND_THE_MAXIMUM_SUBARRAY_XOR_IN_A_GIVEN_ARRAY/FIND_THE_MAXIMUM_SUBARRAY_XOR_IN_A_GIVEN_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/FIND_THE_MAXIMUM_SUBARRAY_XOR_IN_A_GIVEN_ARRAY/FIND_THE_MAXIMUM_SUBARRAY_XOR_IN_A_GIVEN_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %11, %4
  %7 = phi i64 [ 0, %4 ], [ %12, %11 ]
  %8 = phi i32 [ -2147483648, %4 ], [ %21, %11 ]
  br label %14

9:                                                ; preds = %11, %2
  %10 = phi i32 [ -2147483648, %2 ], [ %21, %11 ]
  ret i32 %10

11:                                               ; preds = %14
  %12 = add nuw nsw i64 %7, 1
  %13 = icmp eq i64 %12, %5
  br i1 %13, label %9, label %6, !llvm.loop !5

14:                                               ; preds = %6, %14
  %15 = phi i64 [ %7, %6 ], [ %22, %14 ]
  %16 = phi i32 [ 0, %6 ], [ %20, %14 ]
  %17 = phi i32 [ %8, %6 ], [ %21, %14 ]
  %18 = getelementptr inbounds i32, i32* %0, i64 %15
  %19 = load i32, i32* %18, align 4, !tbaa !7
  %20 = xor i32 %19, %16
  %21 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %17, i32 noundef %20) #2
  %22 = add nuw nsw i64 %15, 1
  %23 = icmp eq i64 %22, %5
  br i1 %23, label %11, label %14, !llvm.loop !11
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
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6}
