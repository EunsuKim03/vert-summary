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
  br i1 %8, label %9, label %43

9:                                                ; preds = %4
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds i32, i32* %0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !5
  %13 = icmp slt i32 %12, %3
  br i1 %13, label %43, label %14

14:                                               ; preds = %9
  %15 = add nsw i32 %2, %1
  %16 = sdiv i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = icmp eq i32 %19, %3
  br i1 %20, label %43, label %21

21:                                               ; preds = %14
  %22 = icmp slt i32 %19, %3
  br i1 %22, label %23, label %33

23:                                               ; preds = %21
  %24 = add nsw i32 %16, 1
  %25 = icmp slt i32 %16, %2
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds i32, i32* %0, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !5
  %30 = icmp slt i32 %29, %3
  br i1 %30, label %31, label %43

31:                                               ; preds = %26, %23
  %32 = call i32 @f_gold(i32* noundef %0, i32 noundef %24, i32 noundef %2, i32 noundef %3)
  br label %43

33:                                               ; preds = %21
  %34 = add nsw i32 %16, -1
  %35 = icmp sgt i32 %16, %1
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds i32, i32* %0, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = icmp slt i32 %39, %3
  br i1 %40, label %43, label %41

41:                                               ; preds = %36, %33
  %42 = call i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %34, i32 noundef %3)
  br label %43

43:                                               ; preds = %36, %26, %14, %9, %4, %41, %31
  %44 = phi i32 [ %32, %31 ], [ %42, %41 ], [ %1, %4 ], [ -1, %9 ], [ %16, %14 ], [ %24, %26 ], [ %16, %36 ]
  ret i32 %44
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
