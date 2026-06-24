; ModuleID = 'benchmark/c_transcoder/CHECK_WHETHER_ARITHMETIC_PROGRESSION_CAN_FORMED_GIVEN_ARRAY/CHECK_WHETHER_ARITHMETIC_PROGRESSION_CAN_FORMED_GIVEN_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_WHETHER_ARITHMETIC_PROGRESSION_CAN_FORMED_GIVEN_ARRAY/CHECK_WHETHER_ARITHMETIC_PROGRESSION_CAN_FORMED_GIVEN_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %40, label %4

4:                                                ; preds = %2
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  %7 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %6) #2
  %8 = getelementptr inbounds i32, i32* %0, i64 1
  %9 = load i32, i32* %8, align 4, !tbaa !5
  %10 = load i32, i32* %0, align 4, !tbaa !5
  %11 = sub nsw i32 %9, %10
  %12 = icmp sgt i32 %1, 2
  br i1 %12, label %13, label %36

13:                                               ; preds = %4
  %14 = sext i32 %1 to i64
  %15 = zext i32 %1 to i64
  %16 = getelementptr inbounds i32, i32* %0, i64 2
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = getelementptr inbounds i32, i32* %0, i64 1
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = sub nsw i32 %17, %19
  %21 = icmp eq i32 %20, %11
  br i1 %21, label %22, label %36

22:                                               ; preds = %13, %25
  %23 = phi i64 [ %33, %25 ], [ 3, %13 ]
  %24 = icmp eq i64 %23, %15
  br i1 %24, label %34, label %25, !llvm.loop !9

25:                                               ; preds = %22
  %26 = getelementptr inbounds i32, i32* %0, i64 %23
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = add nsw i64 %23, -1
  %29 = getelementptr inbounds i32, i32* %0, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = sub nsw i32 %27, %30
  %32 = icmp eq i32 %31, %11
  %33 = add nuw nsw i64 %23, 1
  br i1 %32, label %22, label %34, !llvm.loop !9

34:                                               ; preds = %22, %25
  %35 = icmp slt i64 %23, %14
  br label %36

36:                                               ; preds = %34, %13, %4
  %37 = phi i1 [ %12, %4 ], [ %12, %13 ], [ %35, %34 ]
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  br label %40

40:                                               ; preds = %2, %36
  %41 = phi i32 [ %39, %36 ], [ 1, %2 ]
  ret i32 %41
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
