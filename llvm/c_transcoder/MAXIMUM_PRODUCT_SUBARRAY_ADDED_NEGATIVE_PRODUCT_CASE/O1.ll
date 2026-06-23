; ModuleID = 'benchmark/c_transcoder/MAXIMUM_PRODUCT_SUBARRAY_ADDED_NEGATIVE_PRODUCT_CASE/MAXIMUM_PRODUCT_SUBARRAY_ADDED_NEGATIVE_PRODUCT_CASE_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_PRODUCT_SUBARRAY_ADDED_NEGATIVE_PRODUCT_CASE/MAXIMUM_PRODUCT_SUBARRAY_ADDED_NEGATIVE_PRODUCT_CASE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %31

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %23
  %7 = phi i64 [ 0, %4 ], [ %29, %23 ]
  %8 = phi i32 [ 1, %4 ], [ %25, %23 ]
  %9 = phi i32 [ 1, %4 ], [ %28, %23 ]
  %10 = phi i32 [ -2147483648, %4 ], [ %26, %23 ]
  %11 = getelementptr inbounds i32, i32* %0, i64 %7
  %12 = load i32, i32* %11, align 4, !tbaa !5
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = mul nsw i32 %12, %9
  %16 = mul nsw i32 %12, %8
  %17 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef 1, i32 noundef %16) #2
  br label %23

18:                                               ; preds = %6
  %19 = icmp eq i32 %12, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = mul nsw i32 %12, %8
  %22 = mul nsw i32 %12, %9
  br label %23

23:                                               ; preds = %18, %20, %14
  %24 = phi i32 [ %15, %14 ], [ %21, %20 ], [ 0, %18 ]
  %25 = phi i32 [ %17, %14 ], [ %22, %20 ], [ 1, %18 ]
  %26 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %10, i32 noundef %24) #2
  %27 = icmp sgt i32 %24, 1
  %28 = select i1 %27, i32 %24, i32 1
  %29 = add nuw nsw i64 %7, 1
  %30 = icmp eq i64 %29, %5
  br i1 %30, label %31, label %6, !llvm.loop !9

31:                                               ; preds = %23, %2
  %32 = phi i32 [ -2147483648, %2 ], [ %26, %23 ]
  ret i32 %32
}

declare i32 @min(...) local_unnamed_addr #1

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
