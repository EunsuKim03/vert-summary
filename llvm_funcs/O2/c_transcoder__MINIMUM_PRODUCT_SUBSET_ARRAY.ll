; ModuleID = 'benchmark/c_transcoder/MINIMUM_PRODUCT_SUBSET_ARRAY/MINIMUM_PRODUCT_SUBSET_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_PRODUCT_SUBSET_ARRAY/MINIMUM_PRODUCT_SUBSET_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = zext i32 %1 to i64
  br label %15

8:                                                ; preds = %2
  %9 = load i32, i32* %0, align 4, !tbaa !5
  br label %64

10:                                               ; preds = %46
  %11 = icmp eq i32 %50, %1
  br i1 %11, label %64, label %54

12:                                               ; preds = %4
  %13 = icmp eq i32 %1, 0
  %14 = select i1 %13, i32 0, i32 2147483647
  br label %64

15:                                               ; preds = %6, %46
  %16 = phi i64 [ 0, %6 ], [ %52, %46 ]
  %17 = phi i32 [ 1, %6 ], [ %51, %46 ]
  %18 = phi i32 [ 0, %6 ], [ %50, %46 ]
  %19 = phi i32 [ 0, %6 ], [ %49, %46 ]
  %20 = phi i32 [ 2147483647, %6 ], [ %48, %46 ]
  %21 = phi i32 [ -2147483648, %6 ], [ %47, %46 ]
  %22 = getelementptr inbounds i32, i32* %0, i64 %16
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = add nsw i32 %18, 1
  br label %46

27:                                               ; preds = %15
  %28 = icmp slt i32 %23, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = add nsw i32 %19, 1
  %31 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %21, i32 noundef %23) #2
  %32 = load i32, i32* %22, align 4, !tbaa !5
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27, %29
  %35 = phi i32 [ %30, %29 ], [ %19, %27 ]
  %36 = phi i32 [ %31, %29 ], [ %21, %27 ]
  %37 = phi i32 [ %32, %29 ], [ %23, %27 ]
  %38 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %20, i32 noundef %37) #2
  %39 = load i32, i32* %22, align 4, !tbaa !5
  br label %40

40:                                               ; preds = %34, %29
  %41 = phi i32 [ %39, %34 ], [ %32, %29 ]
  %42 = phi i32 [ %35, %34 ], [ %30, %29 ]
  %43 = phi i32 [ %36, %34 ], [ %31, %29 ]
  %44 = phi i32 [ %38, %34 ], [ %20, %29 ]
  %45 = mul nsw i32 %41, %17
  br label %46

46:                                               ; preds = %40, %25
  %47 = phi i32 [ %21, %25 ], [ %43, %40 ]
  %48 = phi i32 [ %20, %25 ], [ %44, %40 ]
  %49 = phi i32 [ %19, %25 ], [ %42, %40 ]
  %50 = phi i32 [ %26, %25 ], [ %18, %40 ]
  %51 = phi i32 [ %17, %25 ], [ %45, %40 ]
  %52 = add nuw nsw i64 %16, 1
  %53 = icmp eq i64 %52, %7
  br i1 %53, label %10, label %15, !llvm.loop !9

54:                                               ; preds = %10
  %55 = icmp eq i32 %49, 0
  %56 = icmp sgt i32 %50, 0
  %57 = select i1 %55, i1 %56, i1 false
  %58 = select i1 %57, i32 0, i32 %48
  br i1 %55, label %64, label %59

59:                                               ; preds = %54
  %60 = and i32 %49, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = sdiv i32 %51, %47
  br label %64

64:                                               ; preds = %12, %54, %10, %62, %59, %8
  %65 = phi i32 [ %9, %8 ], [ %58, %54 ], [ 0, %10 ], [ %63, %62 ], [ %51, %59 ], [ %14, %12 ]
  ret i32 %65
}

declare i32 @max(...) local_unnamed_addr #1

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
