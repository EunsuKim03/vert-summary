; ModuleID = 'benchmark/c_transcoder/MAXIMUM_PRODUCT_SUBSET_ARRAY/MAXIMUM_PRODUCT_SUBSET_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_PRODUCT_SUBSET_ARRAY/MAXIMUM_PRODUCT_SUBSET_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = zext i32 %1 to i64
  br label %16

8:                                                ; preds = %2
  %9 = load i32, i32* %0, align 4, !tbaa !5
  br label %57

10:                                               ; preds = %38, %4
  %11 = phi i32 [ -2147483648, %4 ], [ %39, %38 ]
  %12 = phi i32 [ 0, %4 ], [ %40, %38 ]
  %13 = phi i32 [ 0, %4 ], [ %41, %38 ]
  %14 = phi i32 [ 1, %4 ], [ %42, %38 ]
  %15 = icmp eq i32 %13, %1
  br i1 %15, label %57, label %45

16:                                               ; preds = %6, %38
  %17 = phi i64 [ 0, %6 ], [ %43, %38 ]
  %18 = phi i32 [ 1, %6 ], [ %42, %38 ]
  %19 = phi i32 [ 0, %6 ], [ %41, %38 ]
  %20 = phi i32 [ 0, %6 ], [ %40, %38 ]
  %21 = phi i32 [ -2147483648, %6 ], [ %39, %38 ]
  %22 = getelementptr inbounds i32, i32* %0, i64 %17
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = add nsw i32 %19, 1
  br label %38

27:                                               ; preds = %16
  %28 = icmp slt i32 %23, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = add nsw i32 %20, 1
  %31 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %21, i32 noundef %23) #2
  %32 = load i32, i32* %22, align 4, !tbaa !5
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi i32 [ %32, %29 ], [ %23, %27 ]
  %35 = phi i32 [ %31, %29 ], [ %21, %27 ]
  %36 = phi i32 [ %30, %29 ], [ %20, %27 ]
  %37 = mul nsw i32 %34, %18
  br label %38

38:                                               ; preds = %33, %25
  %39 = phi i32 [ %21, %25 ], [ %35, %33 ]
  %40 = phi i32 [ %20, %25 ], [ %36, %33 ]
  %41 = phi i32 [ %26, %25 ], [ %19, %33 ]
  %42 = phi i32 [ %18, %25 ], [ %37, %33 ]
  %43 = add nuw nsw i64 %17, 1
  %44 = icmp eq i64 %43, %7
  br i1 %44, label %10, label %16, !llvm.loop !9

45:                                               ; preds = %10
  %46 = and i32 %12, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %45
  %49 = icmp eq i32 %12, 1
  %50 = icmp sgt i32 %13, 0
  %51 = select i1 %49, i1 %50, i1 false
  %52 = add nsw i32 %13, 1
  %53 = icmp eq i32 %52, %1
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %57, label %55

55:                                               ; preds = %48
  %56 = sdiv i32 %14, %11
  br label %57

57:                                               ; preds = %10, %48, %55, %45, %8
  %58 = phi i32 [ %9, %8 ], [ 0, %10 ], [ 0, %48 ], [ %56, %55 ], [ %14, %45 ]
  ret i32 %58
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
