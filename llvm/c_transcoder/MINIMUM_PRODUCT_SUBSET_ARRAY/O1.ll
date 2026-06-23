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
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = zext i32 %1 to i64
  br label %17

8:                                                ; preds = %2
  %9 = load i32, i32* %0, align 4, !tbaa !5
  br label %63

10:                                               ; preds = %45, %4
  %11 = phi i32 [ -2147483648, %4 ], [ %46, %45 ]
  %12 = phi i32 [ 2147483647, %4 ], [ %47, %45 ]
  %13 = phi i32 [ 0, %4 ], [ %48, %45 ]
  %14 = phi i32 [ 0, %4 ], [ %49, %45 ]
  %15 = phi i32 [ 1, %4 ], [ %50, %45 ]
  %16 = icmp eq i32 %14, %1
  br i1 %16, label %63, label %53

17:                                               ; preds = %6, %45
  %18 = phi i64 [ 0, %6 ], [ %51, %45 ]
  %19 = phi i32 [ 1, %6 ], [ %50, %45 ]
  %20 = phi i32 [ 0, %6 ], [ %49, %45 ]
  %21 = phi i32 [ 0, %6 ], [ %48, %45 ]
  %22 = phi i32 [ 2147483647, %6 ], [ %47, %45 ]
  %23 = phi i32 [ -2147483648, %6 ], [ %46, %45 ]
  %24 = getelementptr inbounds i32, i32* %0, i64 %18
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = add nsw i32 %20, 1
  br label %45

29:                                               ; preds = %17
  %30 = icmp slt i32 %25, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = add nsw i32 %21, 1
  %33 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %23, i32 noundef %25) #2
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %33, %31 ], [ %23, %29 ]
  %36 = phi i32 [ %32, %31 ], [ %21, %29 ]
  %37 = load i32, i32* %24, align 4, !tbaa !5
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %22, i32 noundef %37) #2
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi i32 [ %40, %39 ], [ %22, %34 ]
  %43 = load i32, i32* %24, align 4, !tbaa !5
  %44 = mul nsw i32 %43, %19
  br label %45

45:                                               ; preds = %41, %27
  %46 = phi i32 [ %23, %27 ], [ %35, %41 ]
  %47 = phi i32 [ %22, %27 ], [ %42, %41 ]
  %48 = phi i32 [ %21, %27 ], [ %36, %41 ]
  %49 = phi i32 [ %28, %27 ], [ %20, %41 ]
  %50 = phi i32 [ %19, %27 ], [ %44, %41 ]
  %51 = add nuw nsw i64 %18, 1
  %52 = icmp eq i64 %51, %7
  br i1 %52, label %10, label %17, !llvm.loop !9

53:                                               ; preds = %10
  %54 = icmp eq i32 %13, 0
  %55 = icmp sgt i32 %14, 0
  %56 = select i1 %54, i1 %55, i1 false
  %57 = select i1 %56, i32 0, i32 %12
  br i1 %54, label %63, label %58

58:                                               ; preds = %53
  %59 = and i32 %13, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = sdiv i32 %15, %11
  br label %63

63:                                               ; preds = %53, %10, %61, %58, %8
  %64 = phi i32 [ %9, %8 ], [ %57, %53 ], [ 0, %10 ], [ %62, %61 ], [ %15, %58 ]
  ret i32 %64
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
