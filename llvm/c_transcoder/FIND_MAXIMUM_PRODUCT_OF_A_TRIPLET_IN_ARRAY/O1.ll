; ModuleID = 'benchmark/c_transcoder/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 3
  br i1 %3, label %50, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, -2
  %6 = add i32 %1, -1
  %7 = sext i32 %6 to i64
  %8 = zext i32 %5 to i64
  %9 = zext i32 %6 to i64
  br label %15

10:                                               ; preds = %24, %15
  %11 = phi i32 [ %19, %15 ], [ %25, %24 ]
  %12 = add nuw nsw i64 %18, 1
  %13 = add nuw nsw i64 %17, 1
  %14 = icmp eq i64 %20, %8
  br i1 %14, label %50, label %15, !llvm.loop !5

15:                                               ; preds = %4, %10
  %16 = phi i64 [ 0, %4 ], [ %20, %10 ]
  %17 = phi i64 [ 1, %4 ], [ %13, %10 ]
  %18 = phi i64 [ 2, %4 ], [ %12, %10 ]
  %19 = phi i32 [ -2147483648, %4 ], [ %11, %10 ]
  %20 = add nuw nsw i64 %16, 1
  %21 = icmp slt i64 %20, %7
  br i1 %21, label %22, label %10

22:                                               ; preds = %15
  %23 = getelementptr inbounds i32, i32* %0, i64 %16
  br label %28

24:                                               ; preds = %37, %28
  %25 = phi i32 [ %31, %28 ], [ %46, %37 ]
  %26 = add nuw nsw i64 %30, 1
  %27 = icmp eq i64 %32, %9
  br i1 %27, label %10, label %28, !llvm.loop !8

28:                                               ; preds = %22, %24
  %29 = phi i64 [ %17, %22 ], [ %32, %24 ]
  %30 = phi i64 [ %18, %22 ], [ %26, %24 ]
  %31 = phi i32 [ %19, %22 ], [ %25, %24 ]
  %32 = add nuw nsw i64 %29, 1
  %33 = trunc i64 %32 to i32
  %34 = icmp slt i32 %33, %1
  br i1 %34, label %35, label %24

35:                                               ; preds = %28
  %36 = getelementptr inbounds i32, i32* %0, i64 %29
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i64 [ %30, %35 ], [ %47, %37 ]
  %39 = phi i32 [ %31, %35 ], [ %46, %37 ]
  %40 = load i32, i32* %23, align 4, !tbaa !9
  %41 = load i32, i32* %36, align 4, !tbaa !9
  %42 = mul nsw i32 %41, %40
  %43 = getelementptr inbounds i32, i32* %0, i64 %38
  %44 = load i32, i32* %43, align 4, !tbaa !9
  %45 = mul nsw i32 %42, %44
  %46 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %39, i32 noundef %45) #2
  %47 = add nuw nsw i64 %38, 1
  %48 = trunc i64 %47 to i32
  %49 = icmp slt i32 %48, %1
  br i1 %49, label %37, label %24, !llvm.loop !13

50:                                               ; preds = %10, %2
  %51 = phi i32 [ -1, %2 ], [ %11, %10 ]
  ret i32 %51
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
!8 = distinct !{!8, !6, !7}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = distinct !{!13, !6, !7}
