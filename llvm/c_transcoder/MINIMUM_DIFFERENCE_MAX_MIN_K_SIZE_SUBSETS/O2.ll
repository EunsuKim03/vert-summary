; ModuleID = 'benchmark/c_transcoder/MINIMUM_DIFFERENCE_MAX_MIN_K_SIZE_SUBSETS/MINIMUM_DIFFERENCE_MAX_MIN_K_SIZE_SUBSETS_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_DIFFERENCE_MAX_MIN_K_SIZE_SUBSETS/MINIMUM_DIFFERENCE_MAX_MIN_K_SIZE_SUBSETS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %5) #2
  %7 = icmp slt i32 %1, %2
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = add i32 %2, -1
  %10 = add i32 %1, 1
  %11 = sub i32 %10, %2
  %12 = zext i32 %11 to i64
  br label %15

13:                                               ; preds = %15, %3
  %14 = phi i32 [ 2147483647, %3 ], [ %26, %15 ]
  ret i32 %14

15:                                               ; preds = %8, %15
  %16 = phi i64 [ 0, %8 ], [ %27, %15 ]
  %17 = phi i32 [ 2147483647, %8 ], [ %26, %15 ]
  %18 = trunc i64 %16 to i32
  %19 = add i32 %9, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %0, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = getelementptr inbounds i32, i32* %0, i64 %16
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = sub nsw i32 %22, %24
  %26 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %17, i32 noundef %25) #2
  %27 = add nuw nsw i64 %16, 1
  %28 = icmp eq i64 %27, %12
  br i1 %28, label %13, label %15, !llvm.loop !9
}

declare i32 @sort(...) local_unnamed_addr #1

declare i32 @min(...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
