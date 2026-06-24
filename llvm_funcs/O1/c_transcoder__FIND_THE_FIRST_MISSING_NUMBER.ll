; ModuleID = 'benchmark/c_transcoder/FIND_THE_FIRST_MISSING_NUMBER/FIND_THE_FIRST_MISSING_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/FIND_THE_FIRST_MISSING_NUMBER/FIND_THE_FIRST_MISSING_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, %2
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = add nsw i32 %2, 1
  br label %24

7:                                                ; preds = %3
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = add nsw i32 %2, %1
  %14 = sdiv i32 %13, 2
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %0, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = icmp eq i32 %17, %14
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = add nsw i32 %14, 1
  %21 = call i32 @f_gold(i32* noundef %0, i32 noundef %20, i32 noundef %2)
  br label %24

22:                                               ; preds = %12
  %23 = call i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %14)
  br label %24

24:                                               ; preds = %19, %22, %7, %5
  %25 = phi i32 [ %6, %5 ], [ %1, %7 ], [ %21, %19 ], [ %23, %22 ]
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
