; ModuleID = 'benchmark/c_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %2, %1
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = load i32, i32* %0, align 4, !tbaa !5
  br label %52

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, %1
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds i32, i32* %0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !5
  br label %52

13:                                               ; preds = %7
  %14 = sub nsw i32 %2, %1
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %15, %1
  %17 = icmp slt i32 %16, %2
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = add nsw i32 %16, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %0, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = sext i32 %16 to i64
  %24 = getelementptr inbounds i32, i32* %0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %52, label %27

27:                                               ; preds = %18, %13
  %28 = icmp sgt i32 %14, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %27
  %30 = sext i32 %16 to i64
  %31 = getelementptr inbounds i32, i32* %0, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = add nsw i32 %16, -1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %0, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !5
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %52, label %38

38:                                               ; preds = %29, %27
  %39 = sext i32 %2 to i64
  %40 = getelementptr inbounds i32, i32* %0, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = sext i32 %16 to i64
  %43 = getelementptr inbounds i32, i32* %0, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = add nsw i32 %16, -1
  %48 = call i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %47)
  br label %52

49:                                               ; preds = %38
  %50 = add nsw i32 %16, 1
  %51 = call i32 @f_gold(i32* noundef %0, i32 noundef %50, i32 noundef %2)
  br label %52

52:                                               ; preds = %46, %49, %18, %29, %9, %5
  %53 = phi i32 [ %6, %5 ], [ %12, %9 ], [ %48, %46 ], [ %51, %49 ], [ %22, %18 ], [ %32, %29 ]
  ret i32 %53
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
