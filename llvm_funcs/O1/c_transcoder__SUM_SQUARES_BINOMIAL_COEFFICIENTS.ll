; ModuleID = 'benchmark/c_transcoder/SUM_SQUARES_BINOMIAL_COEFFICIENTS/SUM_SQUARES_BINOMIAL_COEFFICIENTS_processed.c'
source_filename = "benchmark/c_transcoder/SUM_SQUARES_BINOMIAL_COEFFICIENTS/SUM_SQUARES_BINOMIAL_COEFFICIENTS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = mul nuw i64 %3, %3
  %5 = alloca i32, i64 %4, align 16
  %6 = icmp slt i32 %0, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = zext i32 %2 to i64
  br label %9

9:                                                ; preds = %7, %47
  %10 = phi i64 [ 0, %7 ], [ %48, %47 ]
  %11 = trunc i64 %10 to i32
  %12 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %11, i32 noundef %0) #2
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %47, label %14

14:                                               ; preds = %9
  %15 = add nsw i64 %10, -1
  %16 = mul nsw i64 %15, %3
  %17 = getelementptr inbounds i32, i32* %5, i64 %16
  %18 = mul nuw nsw i64 %10, %3
  %19 = getelementptr inbounds i32, i32* %5, i64 %18
  %20 = trunc i64 %10 to i32
  br label %28

21:                                               ; preds = %47, %1
  %22 = icmp slt i32 %0, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %21
  %24 = sext i32 %0 to i64
  %25 = mul nsw i64 %3, %24
  %26 = getelementptr inbounds i32, i32* %5, i64 %25
  %27 = zext i32 %2 to i64
  br label %52

28:                                               ; preds = %14, %40
  %29 = phi i64 [ 0, %14 ], [ %43, %40 ]
  %30 = icmp eq i64 %29, 0
  %31 = icmp eq i64 %29, %10
  %32 = or i1 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = add nsw i64 %29, -1
  %35 = getelementptr inbounds i32, i32* %17, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !5
  %37 = getelementptr inbounds i32, i32* %17, i64 %29
  %38 = load i32, i32* %37, align 4, !tbaa !5
  %39 = add nsw i32 %38, %36
  br label %40

40:                                               ; preds = %28, %33
  %41 = phi i32 [ %39, %33 ], [ 1, %28 ]
  %42 = getelementptr inbounds i32, i32* %19, i64 %29
  store i32 %41, i32* %42, align 4, !tbaa !5
  %43 = add nuw nsw i64 %29, 1
  %44 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %20, i32 noundef %0) #2
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %29, %45
  br i1 %46, label %28, label %47, !llvm.loop !9

47:                                               ; preds = %40, %9
  %48 = add nuw nsw i64 %10, 1
  %49 = icmp eq i64 %48, %8
  br i1 %49, label %21, label %9, !llvm.loop !12

50:                                               ; preds = %52, %21
  %51 = phi i32 [ 0, %21 ], [ %58, %52 ]
  ret i32 %51

52:                                               ; preds = %23, %52
  %53 = phi i64 [ 0, %23 ], [ %59, %52 ]
  %54 = phi i32 [ 0, %23 ], [ %58, %52 ]
  %55 = getelementptr inbounds i32, i32* %26, i64 %53
  %56 = load i32, i32* %55, align 4, !tbaa !5
  %57 = mul nsw i32 %56, %56
  %58 = add nuw nsw i32 %57, %54
  %59 = add nuw nsw i64 %53, 1
  %60 = icmp eq i64 %59, %27
  br i1 %60, label %50, label %52, !llvm.loop !13
}

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
