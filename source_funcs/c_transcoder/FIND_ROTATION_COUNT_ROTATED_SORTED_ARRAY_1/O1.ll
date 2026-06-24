; ModuleID = 'benchmark/c_transcoder/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_1/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_1_processed.c'
source_filename = "benchmark/c_transcoder/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_1/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %2, %1
  br i1 %4, label %45, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %2, %1
  br i1 %6, label %45, label %7

7:                                                ; preds = %5
  %8 = sub nsw i32 %2, %1
  %9 = sdiv i32 %8, 2
  %10 = add nsw i32 %9, %1
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = add nsw i32 %10, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %0, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = sext i32 %10 to i64
  %18 = getelementptr inbounds i32, i32* %0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %45, label %21

21:                                               ; preds = %12, %7
  %22 = icmp sgt i32 %8, 1
  br i1 %22, label %23, label %32

23:                                               ; preds = %21
  %24 = sext i32 %10 to i64
  %25 = getelementptr inbounds i32, i32* %0, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = add nsw i32 %10, -1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %0, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %45, label %32

32:                                               ; preds = %23, %21
  %33 = sext i32 %2 to i64
  %34 = getelementptr inbounds i32, i32* %0, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = sext i32 %10 to i64
  %37 = getelementptr inbounds i32, i32* %0, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !5
  %39 = icmp sgt i32 %35, %38
  %40 = add nsw i32 %10, -1
  %41 = add nsw i32 %10, 1
  %42 = select i1 %39, i32 %40, i32 %2
  %43 = select i1 %39, i32 %1, i32 %41
  %44 = call i32 @f_gold(i32* noundef %0, i32 noundef %43, i32 noundef %42)
  br label %45

45:                                               ; preds = %32, %12, %23, %5, %3
  %46 = phi i32 [ 0, %3 ], [ %1, %5 ], [ %13, %12 ], [ %10, %23 ], [ %44, %32 ]
  ret i32 %46
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
