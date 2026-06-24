; ModuleID = 'benchmark/c_transcoder/MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE/MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE/MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = mul nuw i64 %3, %3
  %5 = alloca i32, i64 %4, align 16
  %6 = icmp slt i32 %0, 0
  br i1 %6, label %45, label %7

7:                                                ; preds = %1, %23
  %8 = phi i64 [ %24, %23 ], [ 0, %1 ]
  %9 = trunc i64 %8 to i32
  %10 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %9, i32 noundef %0) #2
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = add nsw i64 %8, -1
  %14 = mul nsw i64 %13, %3
  %15 = getelementptr inbounds i32, i32* %5, i64 %14
  %16 = mul nuw nsw i64 %8, %3
  %17 = getelementptr inbounds i32, i32* %5, i64 %16
  br label %26

18:                                               ; preds = %23
  br i1 %6, label %45, label %19

19:                                               ; preds = %18
  %20 = zext i32 %0 to i64
  %21 = mul nuw nsw i64 %3, %20
  %22 = getelementptr inbounds i32, i32* %5, i64 %21
  br label %47

23:                                               ; preds = %38, %7
  %24 = add nuw nsw i64 %8, 1
  %25 = icmp eq i64 %24, %3
  br i1 %25, label %18, label %7, !llvm.loop !5

26:                                               ; preds = %12, %38
  %27 = phi i64 [ 0, %12 ], [ %41, %38 ]
  %28 = icmp eq i64 %27, 0
  %29 = icmp eq i64 %27, %8
  %30 = or i1 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = add nsw i64 %27, -1
  %33 = getelementptr inbounds i32, i32* %15, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !7
  %35 = getelementptr inbounds i32, i32* %15, i64 %27
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %37 = add nsw i32 %36, %34
  br label %38

38:                                               ; preds = %26, %31
  %39 = phi i32 [ %37, %31 ], [ 1, %26 ]
  %40 = getelementptr inbounds i32, i32* %17, i64 %27
  store i32 %39, i32* %40, align 4, !tbaa !7
  %41 = add nuw nsw i64 %27, 1
  %42 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %9, i32 noundef %0) #2
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %27, %43
  br i1 %44, label %26, label %23, !llvm.loop !11

45:                                               ; preds = %47, %1, %18
  %46 = phi i32 [ 0, %18 ], [ 0, %1 ], [ %52, %47 ]
  ret i32 %46

47:                                               ; preds = %19, %47
  %48 = phi i64 [ 0, %19 ], [ %53, %47 ]
  %49 = phi i32 [ 0, %19 ], [ %52, %47 ]
  %50 = getelementptr inbounds i32, i32* %22, i64 %48
  %51 = load i32, i32* %50, align 4, !tbaa !7
  %52 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %49, i32 noundef %51) #2
  %53 = add nuw nsw i64 %48, 1
  %54 = icmp eq i64 %53, %3
  br i1 %54, label %45, label %47, !llvm.loop !12
}

declare i32 @min(...) local_unnamed_addr #1

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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
