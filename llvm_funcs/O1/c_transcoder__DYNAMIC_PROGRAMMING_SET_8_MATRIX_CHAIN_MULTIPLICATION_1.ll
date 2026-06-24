; ModuleID = 'benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_1/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_1_processed.c'
source_filename = "benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_1/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = mul nuw i64 %3, %3
  %5 = alloca i32, i64 %4, align 16
  %6 = icmp sgt i32 %1, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = zext i32 %1 to i64
  br label %15

9:                                                ; preds = %15, %2
  %10 = icmp sgt i32 %1, 2
  br i1 %10, label %11, label %64

11:                                               ; preds = %9
  %12 = sext i32 %1 to i64
  %13 = zext i32 %1 to i64
  %14 = zext i32 %1 to i64
  br label %22

15:                                               ; preds = %7, %15
  %16 = phi i64 [ 1, %7 ], [ %20, %15 ]
  %17 = mul nuw nsw i64 %16, %3
  %18 = getelementptr inbounds i32, i32* %5, i64 %17
  %19 = getelementptr inbounds i32, i32* %18, i64 %16
  store i32 0, i32* %19, align 4, !tbaa !5
  %20 = add nuw nsw i64 %16, 1
  %21 = icmp eq i64 %20, %8
  br i1 %21, label %9, label %15, !llvm.loop !9

22:                                               ; preds = %11, %61
  %23 = phi i64 [ 2, %11 ], [ %62, %61 ]
  %24 = icmp slt i64 %23, %12
  br i1 %24, label %25, label %61

25:                                               ; preds = %22, %57
  %26 = phi i64 [ %59, %57 ], [ %23, %22 ]
  %27 = phi i64 [ %58, %57 ], [ 1, %22 ]
  %28 = add nuw nsw i64 %27, %23
  %29 = add nsw i64 %28, -1
  %30 = mul nuw nsw i64 %27, %3
  %31 = getelementptr inbounds i32, i32* %5, i64 %30
  %32 = getelementptr inbounds i32, i32* %31, i64 %29
  store i32 2147483647, i32* %32, align 4
  %33 = add nsw i64 %27, -1
  %34 = getelementptr inbounds i32, i32* %0, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = getelementptr inbounds i32, i32* %0, i64 %29
  %37 = load i32, i32* %36, align 4, !tbaa !5
  %38 = getelementptr inbounds i32, i32* %5, i64 %29
  br label %39

39:                                               ; preds = %25, %39
  %40 = phi i64 [ %27, %25 ], [ %43, %39 ]
  %41 = getelementptr inbounds i32, i32* %31, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %43 = add nuw nsw i64 %40, 1
  %44 = mul nuw nsw i64 %43, %3
  %45 = getelementptr inbounds i32, i32* %38, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !5
  %47 = add nsw i32 %46, %42
  %48 = getelementptr inbounds i32, i32* %0, i64 %40
  %49 = load i32, i32* %48, align 4, !tbaa !5
  %50 = mul nsw i32 %49, %35
  %51 = mul nsw i32 %50, %37
  %52 = add nsw i32 %47, %51
  %53 = load i32, i32* %32, align 4, !tbaa !5
  %54 = icmp slt i32 %52, %53
  %55 = select i1 %54, i32 %52, i32 %53
  store i32 %55, i32* %32, align 4
  %56 = icmp eq i64 %43, %26
  br i1 %56, label %57, label %39, !llvm.loop !12

57:                                               ; preds = %39
  %58 = add nuw nsw i64 %27, 1
  %59 = add nuw nsw i64 %26, 1
  %60 = icmp eq i64 %59, %14
  br i1 %60, label %61, label %25, !llvm.loop !13

61:                                               ; preds = %57, %22
  %62 = add nuw nsw i64 %23, 1
  %63 = icmp eq i64 %62, %13
  br i1 %63, label %64, label %22, !llvm.loop !14

64:                                               ; preds = %61, %9
  %65 = getelementptr inbounds i32, i32* %5, i64 %3
  %66 = add nsw i32 %1, -1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4, !tbaa !5
  ret i32 %69
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
