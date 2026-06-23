; ModuleID = 'benchmark/c_transcoder/FIND_PAIR_WITH_GREATEST_PRODUCT_IN_ARRAY/FIND_PAIR_WITH_GREATEST_PRODUCT_IN_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/FIND_PAIR_WITH_GREATEST_PRODUCT_IN_ARRAY/FIND_PAIR_WITH_GREATEST_PRODUCT_IN_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -1
  %6 = icmp eq i32 %1, 1
  %7 = zext i32 %1 to i64
  %8 = zext i32 %1 to i64
  %9 = zext i32 %5 to i64
  br label %10

10:                                               ; preds = %4, %21
  %11 = phi i64 [ 0, %4 ], [ %23, %21 ]
  %12 = phi i32 [ -1, %4 ], [ %22, %21 ]
  br i1 %6, label %21, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds i32, i32* %0, i64 %11
  br label %25

15:                                               ; preds = %21, %2
  %16 = phi i32 [ -1, %2 ], [ %22, %21 ]
  ret i32 %16

17:                                               ; preds = %44, %25
  %18 = phi i32 [ %28, %25 ], [ %45, %44 ]
  %19 = add nuw nsw i64 %27, 1
  %20 = icmp eq i64 %29, %9
  br i1 %20, label %21, label %25, !llvm.loop !5

21:                                               ; preds = %17, %10
  %22 = phi i32 [ %12, %10 ], [ %18, %17 ]
  %23 = add nuw nsw i64 %11, 1
  %24 = icmp eq i64 %23, %8
  br i1 %24, label %15, label %10, !llvm.loop !7

25:                                               ; preds = %13, %17
  %26 = phi i64 [ 0, %13 ], [ %29, %17 ]
  %27 = phi i64 [ 1, %13 ], [ %19, %17 ]
  %28 = phi i32 [ %12, %13 ], [ %18, %17 ]
  %29 = add nuw nsw i64 %26, 1
  %30 = icmp ult i64 %29, %7
  br i1 %30, label %31, label %17

31:                                               ; preds = %25
  %32 = getelementptr inbounds i32, i32* %0, i64 %26
  br label %33

33:                                               ; preds = %31, %44
  %34 = phi i64 [ %27, %31 ], [ %46, %44 ]
  %35 = phi i32 [ %28, %31 ], [ %45, %44 ]
  %36 = load i32, i32* %32, align 4, !tbaa !8
  %37 = getelementptr inbounds i32, i32* %0, i64 %34
  %38 = load i32, i32* %37, align 4, !tbaa !8
  %39 = mul nsw i32 %38, %36
  %40 = load i32, i32* %14, align 4, !tbaa !8
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %35, i32 noundef %39) #2
  br label %44

44:                                               ; preds = %33, %42
  %45 = phi i32 [ %43, %42 ], [ %35, %33 ]
  %46 = add nuw nsw i64 %34, 1
  %47 = icmp eq i64 %46, %8
  br i1 %47, label %17, label %33, !llvm.loop !12
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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !6}
