; ModuleID = 'benchmark/c_transcoder/RECURSIVE_C_PROGRAM_LINEARLY_SEARCH_ELEMENT_GIVEN_ARRAY/RECURSIVE_C_PROGRAM_LINEARLY_SEARCH_ELEMENT_GIVEN_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/RECURSIVE_C_PROGRAM_LINEARLY_SEARCH_ELEMENT_GIVEN_ARRAY/RECURSIVE_C_PROGRAM_LINEARLY_SEARCH_ELEMENT_GIVEN_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp slt i32 %2, %1
  br i1 %5, label %27, label %6

6:                                                ; preds = %4
  %7 = sext i32 %2 to i64
  %8 = sext i32 %1 to i64
  br label %9

9:                                                ; preds = %6, %19
  %10 = phi i64 [ %8, %6 ], [ %20, %19 ]
  %11 = phi i64 [ %7, %6 ], [ %21, %19 ]
  %12 = getelementptr inbounds i32, i32* %0, i64 %10
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = icmp eq i32 %13, %3
  br i1 %14, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds i32, i32* %0, i64 %11
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = add i64 %10, 1
  %21 = add i64 %11, -1
  %22 = icmp sgt i64 %11, %20
  br i1 %22, label %9, label %27

23:                                               ; preds = %15
  %24 = trunc i64 %11 to i32
  br label %27

25:                                               ; preds = %9
  %26 = trunc i64 %10 to i32
  br label %27

27:                                               ; preds = %19, %23, %25, %4
  %28 = phi i32 [ -1, %4 ], [ %24, %23 ], [ %26, %25 ], [ -1, %19 ]
  ret i32 %28
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
