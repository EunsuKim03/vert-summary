; ModuleID = 'benchmark/c_transcoder/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE_processed.c'
source_filename = "benchmark/c_transcoder/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, %2
  br i1 %4, label %31, label %5

5:                                                ; preds = %3, %24
  %6 = phi i32 [ %29, %24 ], [ %2, %3 ]
  %7 = phi i32 [ %28, %24 ], [ %1, %3 ]
  %8 = add nsw i32 %6, %7
  %9 = sdiv i32 %8, 2
  %10 = add nsw i32 %9, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = sext i32 %9 to i64
  %15 = getelementptr inbounds i32, i32* %0, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = icmp slt i32 %13, %16
  %18 = add nsw i32 %9, 1
  %19 = sext i32 %18 to i64
  br i1 %17, label %20, label %24

20:                                               ; preds = %5
  %21 = getelementptr inbounds i32, i32* %0, i64 %19
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = icmp sgt i32 %16, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %5, %20
  %25 = getelementptr inbounds i32, i32* %0, i64 %19
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = icmp slt i32 %16, %26
  %28 = select i1 %27, i32 %18, i32 %7
  %29 = select i1 %27, i32 %6, i32 %10
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %5

31:                                               ; preds = %20, %24, %3
  %32 = phi i32 [ -1, %3 ], [ -1, %24 ], [ %9, %20 ]
  ret i32 %32
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
