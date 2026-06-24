; ModuleID = 'benchmark/c_transcoder/FIND_THE_MAXIMUM_SUBARRAY_XOR_IN_A_GIVEN_ARRAY/FIND_THE_MAXIMUM_SUBARRAY_XOR_IN_A_GIVEN_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/FIND_THE_MAXIMUM_SUBARRAY_XOR_IN_A_GIVEN_ARRAY/FIND_THE_MAXIMUM_SUBARRAY_XOR_IN_A_GIVEN_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = zext i32 %1 to i64
  br label %7

7:                                                ; preds = %4, %12
  %8 = phi i64 [ 0, %4 ], [ %13, %12 ]
  %9 = phi i32 [ -2147483648, %4 ], [ %22, %12 ]
  br label %15

10:                                               ; preds = %12, %2
  %11 = phi i32 [ -2147483648, %2 ], [ %22, %12 ]
  ret i32 %11

12:                                               ; preds = %15
  %13 = add nuw nsw i64 %8, 1
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %10, label %7, !llvm.loop !5

15:                                               ; preds = %7, %15
  %16 = phi i64 [ %8, %7 ], [ %23, %15 ]
  %17 = phi i32 [ 0, %7 ], [ %21, %15 ]
  %18 = phi i32 [ %9, %7 ], [ %22, %15 ]
  %19 = getelementptr inbounds i32, i32* %0, i64 %16
  %20 = load i32, i32* %19, align 4, !tbaa !8
  %21 = xor i32 %20, %17
  %22 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %18, i32 noundef %21) #2
  %23 = add nuw nsw i64 %16, 1
  %24 = icmp eq i64 %23, %6
  br i1 %24, label %12, label %15, !llvm.loop !12
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !6, !7}
