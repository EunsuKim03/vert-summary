; ModuleID = 'benchmark/c_transcoder/HORNERS_METHOD_POLYNOMIAL_EVALUATION/HORNERS_METHOD_POLYNOMIAL_EVALUATION_processed.c'
source_filename = "benchmark/c_transcoder/HORNERS_METHOD_POLYNOMIAL_EVALUATION/HORNERS_METHOD_POLYNOMIAL_EVALUATION_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, i32* %0, align 4, !tbaa !5
  %5 = icmp sgt i32 %1, 1
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = zext i32 %1 to i64
  %8 = add nsw i64 %7, -1
  %9 = add nsw i64 %7, -2
  %10 = and i64 %8, 3
  %11 = icmp ult i64 %9, 3
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = and i64 %8, -4
  br label %32

14:                                               ; preds = %32, %6
  %15 = phi i32 [ undef, %6 ], [ %54, %32 ]
  %16 = phi i64 [ 1, %6 ], [ %55, %32 ]
  %17 = phi i32 [ %4, %6 ], [ %54, %32 ]
  %18 = icmp eq i64 %10, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %14, %19
  %20 = phi i64 [ %27, %19 ], [ %16, %14 ]
  %21 = phi i32 [ %26, %19 ], [ %17, %14 ]
  %22 = phi i64 [ %28, %19 ], [ 0, %14 ]
  %23 = mul nsw i32 %21, %2
  %24 = getelementptr inbounds i32, i32* %0, i64 %20
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = add nsw i32 %25, %23
  %27 = add nuw nsw i64 %20, 1
  %28 = add i64 %22, 1
  %29 = icmp eq i64 %28, %10
  br i1 %29, label %30, label %19, !llvm.loop !9

30:                                               ; preds = %14, %19, %3
  %31 = phi i32 [ %4, %3 ], [ %15, %14 ], [ %26, %19 ]
  ret i32 %31

32:                                               ; preds = %32, %12
  %33 = phi i64 [ 1, %12 ], [ %55, %32 ]
  %34 = phi i32 [ %4, %12 ], [ %54, %32 ]
  %35 = phi i64 [ 0, %12 ], [ %56, %32 ]
  %36 = mul nsw i32 %34, %2
  %37 = getelementptr inbounds i32, i32* %0, i64 %33
  %38 = load i32, i32* %37, align 4, !tbaa !5
  %39 = add nsw i32 %38, %36
  %40 = add nuw nsw i64 %33, 1
  %41 = mul nsw i32 %39, %2
  %42 = getelementptr inbounds i32, i32* %0, i64 %40
  %43 = load i32, i32* %42, align 4, !tbaa !5
  %44 = add nsw i32 %43, %41
  %45 = add nuw nsw i64 %33, 2
  %46 = mul nsw i32 %44, %2
  %47 = getelementptr inbounds i32, i32* %0, i64 %45
  %48 = load i32, i32* %47, align 4, !tbaa !5
  %49 = add nsw i32 %48, %46
  %50 = add nuw nsw i64 %33, 3
  %51 = mul nsw i32 %49, %2
  %52 = getelementptr inbounds i32, i32* %0, i64 %50
  %53 = load i32, i32* %52, align 4, !tbaa !5
  %54 = add nsw i32 %53, %51
  %55 = add nuw nsw i64 %33, 4
  %56 = add i64 %35, 4
  %57 = icmp eq i64 %56, %13
  br i1 %57, label %14, label %32, !llvm.loop !11
}

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
