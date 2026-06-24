; ModuleID = 'benchmark/c_transcoder/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_1/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_1_processed.c'
source_filename = "benchmark/c_transcoder/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_1/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %2, %1
  br i1 %4, label %50, label %5

5:                                                ; preds = %3, %48
  %6 = phi i32 [ %10, %48 ], [ %2, %3 ]
  %7 = phi i32 [ %49, %48 ], [ %1, %3 ]
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %50, label %9

9:                                                ; preds = %5, %45
  %10 = phi i32 [ %46, %45 ], [ %6, %5 ]
  %11 = sub nsw i32 %10, %7
  %12 = sdiv i32 %11, 2
  %13 = add nsw i32 %12, %7
  %14 = icmp slt i32 %13, %10
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = add nsw i32 %13, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = sext i32 %13 to i64
  %21 = getelementptr inbounds i32, i32* %0, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %50, label %24

24:                                               ; preds = %15, %9
  %25 = icmp sgt i32 %11, 1
  %26 = sext i32 %13 to i64
  %27 = getelementptr inbounds i32, i32* %0, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !5
  br i1 %25, label %29, label %40

29:                                               ; preds = %24
  %30 = add nsw i32 %13, -1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %0, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %34 = icmp slt i32 %28, %33
  br i1 %34, label %50, label %35

35:                                               ; preds = %29
  %36 = sext i32 %10 to i64
  %37 = getelementptr inbounds i32, i32* %0, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !5
  %39 = icmp sgt i32 %38, %28
  br i1 %39, label %45, label %48

40:                                               ; preds = %24
  %41 = sext i32 %10 to i64
  %42 = getelementptr inbounds i32, i32* %0, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !5
  %44 = icmp sgt i32 %43, %28
  br i1 %44, label %50, label %48

45:                                               ; preds = %35
  %46 = add nsw i32 %13, -1
  %47 = icmp eq i32 %46, %7
  br i1 %47, label %50, label %9

48:                                               ; preds = %35, %40
  %49 = add nsw i32 %13, 1
  br i1 %14, label %5, label %50

50:                                               ; preds = %40, %48, %5, %15, %29, %45, %3
  %51 = phi i32 [ 0, %3 ], [ %7, %45 ], [ %13, %29 ], [ %16, %15 ], [ 0, %40 ], [ 0, %48 ], [ %7, %5 ]
  ret i32 %51
}

attributes #0 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
