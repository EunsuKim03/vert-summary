; ModuleID = 'benchmark/c_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1_processed.c'
source_filename = "benchmark/c_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %2, %1
  br i1 %4, label %24, label %5

5:                                                ; preds = %3, %18
  %6 = phi i32 [ %9, %18 ], [ %2, %3 ]
  %7 = phi i32 [ %19, %18 ], [ %1, %3 ]
  br label %8

8:                                                ; preds = %5, %21
  %9 = phi i32 [ %6, %5 ], [ %22, %21 ]
  %10 = add nsw i32 %9, %7
  %11 = sdiv i32 %10, 2
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %0, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %8
  %17 = icmp sgt i32 %11, %14
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = add nsw i32 %11, 1
  %20 = icmp sgt i32 %9, %11
  br i1 %20, label %5, label %24

21:                                               ; preds = %16
  %22 = add nsw i32 %11, -1
  %23 = icmp sgt i32 %11, %7
  br i1 %23, label %8, label %24

24:                                               ; preds = %18, %8, %21, %3
  %25 = phi i32 [ -1, %3 ], [ -1, %21 ], [ %11, %8 ], [ -1, %18 ]
  ret i32 %25
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
