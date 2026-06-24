; ModuleID = 'benchmark/c_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %2, %1
  br i1 %4, label %53, label %5

5:                                                ; preds = %3, %51
  %6 = phi i32 [ %13, %51 ], [ %2, %3 ]
  %7 = phi i32 [ %52, %51 ], [ %1, %3 ]
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %5, %48
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds i32, i32* %0, i64 %10
  br label %53

12:                                               ; preds = %5, %48
  %13 = phi i32 [ %49, %48 ], [ %6, %5 ]
  %14 = sub nsw i32 %13, %7
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %15, %7
  %17 = icmp slt i32 %16, %13
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = add nsw i32 %16, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %0, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = sext i32 %16 to i64
  %24 = getelementptr inbounds i32, i32* %0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %56, label %27

27:                                               ; preds = %18, %12
  %28 = icmp sgt i32 %14, 1
  %29 = sext i32 %16 to i64
  %30 = getelementptr inbounds i32, i32* %0, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !5
  br i1 %28, label %32, label %43

32:                                               ; preds = %27
  %33 = add nsw i32 %16, -1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %0, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !5
  %37 = icmp slt i32 %31, %36
  br i1 %37, label %56, label %38

38:                                               ; preds = %32
  %39 = sext i32 %13 to i64
  %40 = getelementptr inbounds i32, i32* %0, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = icmp sgt i32 %41, %31
  br i1 %42, label %48, label %51

43:                                               ; preds = %27
  %44 = sext i32 %13 to i64
  %45 = getelementptr inbounds i32, i32* %0, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !5
  %47 = icmp sgt i32 %46, %31
  br i1 %47, label %53, label %51

48:                                               ; preds = %38
  %49 = add nsw i32 %16, -1
  %50 = icmp eq i32 %49, %7
  br i1 %50, label %9, label %12

51:                                               ; preds = %38, %43
  %52 = add nsw i32 %16, 1
  br i1 %17, label %5, label %53

53:                                               ; preds = %51, %43, %3, %9
  %54 = phi i32* [ %11, %9 ], [ %0, %3 ], [ %0, %43 ], [ %0, %51 ]
  %55 = load i32, i32* %54, align 4, !tbaa !5
  br label %56

56:                                               ; preds = %18, %32, %53
  %57 = phi i32 [ %55, %53 ], [ %31, %32 ], [ %22, %18 ]
  ret i32 %57
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
