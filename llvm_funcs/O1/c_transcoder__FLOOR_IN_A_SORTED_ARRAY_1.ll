; ModuleID = 'benchmark/c_transcoder/FLOOR_IN_A_SORTED_ARRAY_1/FLOOR_IN_A_SORTED_ARRAY_1_processed.c'
source_filename = "benchmark/c_transcoder/FLOOR_IN_A_SORTED_ARRAY_1/FLOOR_IN_A_SORTED_ARRAY_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %1, %2
  br i1 %5, label %35, label %6

6:                                                ; preds = %4
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !5
  %10 = icmp sgt i32 %9, %3
  br i1 %10, label %11, label %35

11:                                               ; preds = %6
  %12 = add nsw i32 %2, %1
  %13 = sdiv i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %0, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = icmp eq i32 %16, %3
  br i1 %17, label %35, label %18

18:                                               ; preds = %11
  %19 = icmp sgt i32 %12, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %18
  %21 = add nsw i32 %13, -1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %0, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = icmp sle i32 %24, %3
  %26 = icmp sgt i32 %16, %3
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %35, label %28

28:                                               ; preds = %20, %18
  %29 = icmp sgt i32 %16, %3
  %30 = add nsw i32 %13, -1
  %31 = add nsw i32 %13, 1
  %32 = select i1 %29, i32 %30, i32 %2
  %33 = select i1 %29, i32 %1, i32 %31
  %34 = call i32 @f_gold(i32* noundef %0, i32 noundef %33, i32 noundef %32, i32 noundef %3)
  br label %35

35:                                               ; preds = %28, %11, %20, %6, %4
  %36 = phi i32 [ -1, %4 ], [ %2, %6 ], [ %13, %11 ], [ %21, %20 ], [ %34, %28 ]
  ret i32 %36
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
