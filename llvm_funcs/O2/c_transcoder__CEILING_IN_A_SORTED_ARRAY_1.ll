; ModuleID = 'benchmark/c_transcoder/CEILING_IN_A_SORTED_ARRAY_1/CEILING_IN_A_SORTED_ARRAY_1_processed.c'
source_filename = "benchmark/c_transcoder/CEILING_IN_A_SORTED_ARRAY_1/CEILING_IN_A_SORTED_ARRAY_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %8 = icmp slt i32 %7, %3
  br i1 %8, label %9, label %49

9:                                                ; preds = %4, %26
  %10 = phi i32 [ %17, %26 ], [ %2, %4 ]
  %11 = phi i32 [ %27, %26 ], [ %1, %4 ]
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds i32, i32* %0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = icmp slt i32 %14, %3
  br i1 %15, label %49, label %16

16:                                               ; preds = %9, %44
  %17 = phi i32 [ %37, %44 ], [ %10, %9 ]
  %18 = add nsw i32 %17, %11
  %19 = sdiv i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %0, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = icmp eq i32 %22, %3
  br i1 %23, label %49, label %24

24:                                               ; preds = %16
  %25 = icmp slt i32 %22, %3
  br i1 %25, label %26, label %36

26:                                               ; preds = %24
  %27 = add nsw i32 %19, 1
  %28 = icmp sge i32 %19, %17
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %0, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = icmp slt i32 %31, %3
  %33 = select i1 %28, i1 true, i1 %32
  %34 = icmp slt i32 %31, %3
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %9, label %49

36:                                               ; preds = %24
  %37 = add nsw i32 %19, -1
  %38 = icmp sgt i32 %19, %11
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = sext i32 %37 to i64
  %41 = getelementptr inbounds i32, i32* %0, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %43 = icmp slt i32 %42, %3
  br i1 %43, label %49, label %44

44:                                               ; preds = %36, %39
  %45 = sext i32 %37 to i64
  %46 = getelementptr inbounds i32, i32* %0, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !5
  %48 = icmp slt i32 %47, %3
  br i1 %48, label %49, label %16

49:                                               ; preds = %26, %9, %16, %44, %39, %4
  %50 = phi i32 [ %1, %4 ], [ %19, %39 ], [ -1, %44 ], [ %19, %16 ], [ %27, %26 ], [ -1, %9 ]
  ret i32 %50
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
