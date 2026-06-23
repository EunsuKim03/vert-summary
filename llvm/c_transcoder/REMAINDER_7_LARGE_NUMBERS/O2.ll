; ModuleID = 'benchmark/c_transcoder/REMAINDER_7_LARGE_NUMBERS/REMAINDER_7_LARGE_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/REMAINDER_7_LARGE_NUMBERS/REMAINDER_7_LARGE_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.f_gold.series = private unnamed_addr constant [6 x i32] [i32 1, i32 3, i32 2, i32 -1, i32 -3, i32 -2], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #2
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %32

4:                                                ; preds = %1
  %5 = zext i32 %2 to i64
  br label %8

6:                                                ; preds = %8
  %7 = icmp slt i32 %25, 0
  br i1 %7, label %27, label %32

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %5, %4 ], [ %12, %8 ]
  %10 = phi i32 [ 0, %4 ], [ %24, %8 ]
  %11 = phi i32 [ 0, %4 ], [ %25, %8 ]
  %12 = add nsw i64 %9, -1
  %13 = and i64 %12, 4294967295
  %14 = getelementptr inbounds i8, i8* %0, i64 %13
  %15 = load i8, i8* %14, align 1, !tbaa !5
  %16 = sext i8 %15 to i32
  %17 = add nsw i32 %16, -48
  %18 = sext i32 %10 to i64
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* @__const.f_gold.series, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !8
  %21 = mul nsw i32 %17, %20
  %22 = add nsw i32 %21, %11
  %23 = add nsw i32 %10, 1
  %24 = srem i32 %23, 6
  %25 = srem i32 %22, 7
  %26 = icmp ugt i64 %9, 1
  br i1 %26, label %8, label %6, !llvm.loop !10

27:                                               ; preds = %6
  %28 = trunc i32 %25 to i8
  %29 = add nsw i8 %28, 7
  %30 = urem i8 %29, 7
  %31 = zext i8 %30 to i32
  br label %32

32:                                               ; preds = %1, %27, %6
  %33 = phi i32 [ %31, %27 ], [ %25, %6 ], [ 0, %1 ]
  ret i32 %33
}

declare i32 @len(...) local_unnamed_addr #1

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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
