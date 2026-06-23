; ModuleID = 'benchmark/c_transcoder/BELL_NUMBERS_NUMBER_OF_WAYS_TO_PARTITION_A_SET/BELL_NUMBERS_NUMBER_OF_WAYS_TO_PARTITION_A_SET_processed.c'
source_filename = "benchmark/c_transcoder/BELL_NUMBERS_NUMBER_OF_WAYS_TO_PARTITION_A_SET/BELL_NUMBERS_NUMBER_OF_WAYS_TO_PARTITION_A_SET_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = mul nuw i64 %3, %3
  %5 = alloca i32, i64 %4, align 16
  store i32 1, i32* %5, align 16, !tbaa !5
  %6 = icmp slt i32 %0, 1
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = zext i32 %2 to i64
  br label %14

9:                                                ; preds = %29, %1
  %10 = sext i32 %0 to i64
  %11 = mul nsw i64 %3, %10
  %12 = getelementptr inbounds i32, i32* %5, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !5
  ret i32 %13

14:                                               ; preds = %7, %29
  %15 = phi i64 [ 0, %7 ], [ %33, %29 ]
  %16 = phi i64 [ 1, %7 ], [ %30, %29 ]
  %17 = phi i64 [ 2, %7 ], [ %31, %29 ]
  %18 = mul i64 %15, %8
  %19 = add i64 %18, %8
  %20 = getelementptr i32, i32* %5, i64 %19
  %21 = add nsw i64 %16, -1
  %22 = mul nuw nsw i64 %21, %3
  %23 = getelementptr inbounds i32, i32* %5, i64 %22
  %24 = getelementptr inbounds i32, i32* %23, i64 %21
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = mul nuw nsw i64 %16, %3
  %27 = getelementptr inbounds i32, i32* %5, i64 %26
  store i32 %25, i32* %27, align 4, !tbaa !5
  %28 = load i32, i32* %20, align 4
  br label %34

29:                                               ; preds = %34
  %30 = add nuw nsw i64 %16, 1
  %31 = add nuw nsw i64 %17, 1
  %32 = icmp eq i64 %30, %8
  %33 = add i64 %15, 1
  br i1 %32, label %9, label %14, !llvm.loop !9

34:                                               ; preds = %14, %34
  %35 = phi i32 [ %28, %14 ], [ %40, %34 ]
  %36 = phi i64 [ 1, %14 ], [ %42, %34 ]
  %37 = add nsw i64 %36, -1
  %38 = getelementptr inbounds i32, i32* %23, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = add nsw i32 %35, %39
  %41 = getelementptr inbounds i32, i32* %27, i64 %36
  store i32 %40, i32* %41, align 4, !tbaa !5
  %42 = add nuw nsw i64 %36, 1
  %43 = icmp eq i64 %42, %17
  br i1 %43, label %29, label %34, !llvm.loop !12
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
