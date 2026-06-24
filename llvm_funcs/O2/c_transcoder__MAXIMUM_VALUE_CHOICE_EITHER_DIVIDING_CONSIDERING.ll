; ModuleID = 'benchmark/c_transcoder/MAXIMUM_VALUE_CHOICE_EITHER_DIVIDING_CONSIDERING/MAXIMUM_VALUE_CHOICE_EITHER_DIVIDING_CONSIDERING_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_VALUE_CHOICE_EITHER_DIVIDING_CONSIDERING/MAXIMUM_VALUE_CHOICE_EITHER_DIVIDING_CONSIDERING_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  store i32 0, i32* %4, align 16, !tbaa !5
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 1, i32* %5, align 4, !tbaa !5
  %6 = icmp slt i32 %0, 2
  br i1 %6, label %7, label %11

7:                                                ; preds = %11, %1
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds i32, i32* %4, i64 %8
  %10 = load i32, i32* %9, align 4, !tbaa !5
  ret i32 %10

11:                                               ; preds = %1, %11
  %12 = phi i64 [ %35, %11 ], [ 2, %1 ]
  %13 = trunc i64 %12 to i32
  %14 = lshr i64 %12, 1
  %15 = and i64 %14, 2147483647
  %16 = getelementptr inbounds i32, i32* %4, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = udiv i32 %13, 3
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %4, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = add nsw i32 %21, %17
  %23 = lshr i64 %12, 2
  %24 = and i64 %23, 1073741823
  %25 = getelementptr inbounds i32, i32* %4, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = add nsw i32 %22, %26
  %28 = udiv i32 %13, 5
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %4, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = add nsw i32 %27, %31
  %33 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %13, i32 noundef %32) #2
  %34 = getelementptr inbounds i32, i32* %4, i64 %12
  store i32 %33, i32* %34, align 4, !tbaa !5
  %35 = add nuw nsw i64 %12, 1
  %36 = icmp eq i64 %35, %3
  br i1 %36, label %7, label %11, !llvm.loop !9
}

declare i32 @max(...) local_unnamed_addr #1

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
