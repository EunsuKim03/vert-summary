; ModuleID = 'benchmark/c_transcoder/FIND_THE_FIRST_MISSING_NUMBER/FIND_THE_FIRST_MISSING_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/FIND_THE_FIRST_MISSING_NUMBER/FIND_THE_FIRST_MISSING_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, %2
  br i1 %4, label %5, label %8

5:                                                ; preds = %15, %3
  %6 = phi i32 [ %2, %3 ], [ %24, %15 ]
  %7 = add nsw i32 %6, 1
  br label %26

8:                                                ; preds = %3, %15
  %9 = phi i32 [ %24, %15 ], [ %2, %3 ]
  %10 = phi i32 [ %23, %15 ], [ %1, %3 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = icmp eq i32 %13, %10
  br i1 %14, label %15, label %26

15:                                               ; preds = %8
  %16 = add nsw i32 %9, %10
  %17 = sdiv i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = icmp eq i32 %20, %17
  %22 = add nsw i32 %17, 1
  %23 = select i1 %21, i32 %22, i32 %10
  %24 = select i1 %21, i32 %9, i32 %17
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %5, label %8

26:                                               ; preds = %8, %5
  %27 = phi i32 [ %7, %5 ], [ %10, %8 ]
  ret i32 %27
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
