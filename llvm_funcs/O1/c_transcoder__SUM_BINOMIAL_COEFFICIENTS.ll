; ModuleID = 'benchmark/c_transcoder/SUM_BINOMIAL_COEFFICIENTS/SUM_BINOMIAL_COEFFICIENTS_processed.c'
source_filename = "benchmark/c_transcoder/SUM_BINOMIAL_COEFFICIENTS/SUM_BINOMIAL_COEFFICIENTS_processed.c"
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

9:                                                ; preds = %7, %28
  %10 = phi i64 [ 0, %7 ], [ %29, %28 ]
  %11 = trunc i64 %10 to i32
  %12 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %11, i32 noundef %0) #2
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %9
  %15 = add nsw i64 %10, -1
  %16 = mul nsw i64 %15, %3
  %17 = getelementptr inbounds i32, i32* %5, i64 %16
  %18 = mul nuw nsw i64 %10, %3
  %19 = getelementptr inbounds i32, i32* %5, i64 %18
  %20 = trunc i64 %10 to i32
  br label %31

21:                                               ; preds = %28, %1
  %22 = icmp slt i32 %0, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %21
  %24 = sext i32 %0 to i64
  %25 = mul nsw i64 %3, %24
  %26 = getelementptr inbounds i32, i32* %5, i64 %25
  %27 = zext i32 %2 to i64
  br label %52

28:                                               ; preds = %43, %9
  %29 = add nuw nsw i64 %10, 1
  %30 = icmp eq i64 %29, %8
  br i1 %30, label %21, label %9, !llvm.loop !5

31:                                               ; preds = %14, %43
  %32 = phi i64 [ 0, %14 ], [ %46, %43 ]
  %33 = icmp eq i64 %32, 0
  %34 = icmp eq i64 %32, %10
  %35 = or i1 %33, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = add nsw i64 %32, -1
  %38 = getelementptr inbounds i32, i32* %17, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !8
  %40 = getelementptr inbounds i32, i32* %17, i64 %32
  %41 = load i32, i32* %40, align 4, !tbaa !8
  %42 = add nsw i32 %41, %39
  br label %43

43:                                               ; preds = %31, %36
  %44 = phi i32 [ %42, %36 ], [ 1, %31 ]
  %45 = getelementptr inbounds i32, i32* %19, i64 %32
  store i32 %44, i32* %45, align 4, !tbaa !8
  %46 = add nuw nsw i64 %32, 1
  %47 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %20, i32 noundef %0) #2
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %32, %48
  br i1 %49, label %31, label %28, !llvm.loop !12

50:                                               ; preds = %52, %21
  %51 = phi i32 [ 0, %21 ], [ %57, %52 ]
  ret i32 %51

52:                                               ; preds = %23, %52
  %53 = phi i64 [ 0, %23 ], [ %58, %52 ]
  %54 = phi i32 [ 0, %23 ], [ %57, %52 ]
  %55 = getelementptr inbounds i32, i32* %26, i64 %53
  %56 = load i32, i32* %55, align 4, !tbaa !8
  %57 = add nsw i32 %56, %54
  %58 = add nuw nsw i64 %53, 1
  %59 = icmp eq i64 %58, %27
  br i1 %59, label %50, label %52, !llvm.loop !13
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !6, !7}
!13 = distinct !{!13, !6, !7}
