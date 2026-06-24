; ModuleID = 'benchmark/c_transcoder/MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY/MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY/MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = zext i32 %1 to i64
  br label %13

9:                                                ; preds = %29
  %10 = add nsw i32 %31, %30
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ %10, %9 ], [ 0, %2 ]
  ret i32 %12

13:                                               ; preds = %7, %29
  %14 = phi i64 [ 0, %7 ], [ %32, %29 ]
  %15 = phi i32 [ 0, %7 ], [ %31, %29 ]
  %16 = phi i32 [ 0, %7 ], [ %30, %29 ]
  %17 = and i64 %14, 1
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = mul nsw i32 %16, 10
  %21 = getelementptr inbounds i32, i32* %0, i64 %14
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = add nsw i32 %22, %20
  br label %29

24:                                               ; preds = %13
  %25 = mul nsw i32 %15, 10
  %26 = getelementptr inbounds i32, i32* %0, i64 %14
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = add nsw i32 %27, %25
  br label %29

29:                                               ; preds = %19, %24
  %30 = phi i32 [ %23, %19 ], [ %16, %24 ]
  %31 = phi i32 [ %15, %19 ], [ %28, %24 ]
  %32 = add nuw nsw i64 %14, 1
  %33 = icmp eq i64 %32, %8
  br i1 %33, label %9, label %13, !llvm.loop !9
}

declare i32 @sort(...) local_unnamed_addr #1

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
