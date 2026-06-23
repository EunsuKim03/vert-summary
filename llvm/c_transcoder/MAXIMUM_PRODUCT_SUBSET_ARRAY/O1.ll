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
  br label %56

10:                                               ; preds = %37, %4
  %11 = phi i32 [ -2147483648, %4 ], [ %38, %37 ]
  %12 = phi i32 [ 0, %4 ], [ %39, %37 ]
  %13 = phi i32 [ 0, %4 ], [ %40, %37 ]
  %14 = phi i32 [ 1, %4 ], [ %41, %37 ]
  %15 = icmp eq i32 %13, %1
  br i1 %15, label %56, label %44

16:                                               ; preds = %6, %37
  %17 = phi i64 [ 0, %6 ], [ %42, %37 ]
  %18 = phi i32 [ 1, %6 ], [ %41, %37 ]
  %19 = phi i32 [ 0, %6 ], [ %40, %37 ]
  %20 = phi i32 [ 0, %6 ], [ %39, %37 ]
  %21 = phi i32 [ -2147483648, %6 ], [ %38, %37 ]
  %22 = getelementptr inbounds i32, i32* %0, i64 %17
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = add nsw i32 %19, 1
  br label %37

27:                                               ; preds = %16
  %28 = icmp slt i32 %23, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = add nsw i32 %20, 1
  %31 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %21, i32 noundef %23) #2
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %31, %29 ], [ %21, %27 ]
  %34 = phi i32 [ %30, %29 ], [ %20, %27 ]
  %35 = load i32, i32* %22, align 4, !tbaa !5
  %36 = mul nsw i32 %35, %18
  br label %37

37:                                               ; preds = %32, %25
  %38 = phi i32 [ %21, %25 ], [ %33, %32 ]
  %39 = phi i32 [ %20, %25 ], [ %34, %32 ]
  %40 = phi i32 [ %26, %25 ], [ %19, %32 ]
  %41 = phi i32 [ %18, %25 ], [ %36, %32 ]
  %42 = add nuw nsw i64 %17, 1
  %43 = icmp eq i64 %42, %7
  br i1 %43, label %10, label %16, !llvm.loop !9

44:                                               ; preds = %10
  %45 = and i32 %12, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = icmp eq i32 %12, 1
  %49 = icmp sgt i32 %13, 0
  %50 = select i1 %48, i1 %49, i1 false
  %51 = add nsw i32 %13, 1
  %52 = icmp eq i32 %51, %1
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = sdiv i32 %14, %11
  br label %56

56:                                               ; preds = %10, %47, %54, %44, %8
  %57 = phi i32 [ %9, %8 ], [ 0, %10 ], [ 0, %47 ], [ %55, %54 ], [ %14, %44 ]
  ret i32 %57
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
