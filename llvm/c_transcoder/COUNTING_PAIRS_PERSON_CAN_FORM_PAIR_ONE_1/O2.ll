; ModuleID = 'benchmark/c_transcoder/COUNTING_PAIRS_PERSON_CAN_FORM_PAIR_ONE_1/COUNTING_PAIRS_PERSON_CAN_FORM_PAIR_ONE_1_processed.c'
source_filename = "benchmark/c_transcoder/COUNTING_PAIRS_PERSON_CAN_FORM_PAIR_ONE_1/COUNTING_PAIRS_PERSON_CAN_FORM_PAIR_ONE_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 1, i32* %5, align 4, !tbaa !5
  store i32 1, i32* %4, align 16, !tbaa !5
  %6 = icmp slt i32 %0, 2
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 2, i32* %8, align 8, !tbaa !5
  %9 = icmp eq i32 %2, 3
  br i1 %9, label %29, label %10, !llvm.loop !9

10:                                               ; preds = %7
  %11 = add nsw i64 %3, -3
  %12 = and i64 %11, 1
  %13 = icmp eq i32 %2, 4
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = and i64 %11, -2
  br label %33

16:                                               ; preds = %33, %10
  %17 = phi i64 [ 3, %10 ], [ %52, %33 ]
  %18 = phi i32 [ 2, %10 ], [ %50, %33 ]
  %19 = phi i64 [ 1, %10 ], [ %34, %33 ]
  %20 = icmp eq i64 %12, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds i32, i32* %4, i64 %19
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = trunc i64 %17 to i32
  %25 = add i32 %24, -1
  %26 = mul nsw i32 %23, %25
  %27 = add nsw i32 %26, %18
  %28 = getelementptr inbounds i32, i32* %4, i64 %17
  store i32 %27, i32* %28, align 4, !tbaa !5
  br label %29

29:                                               ; preds = %21, %16, %7, %1
  %30 = sext i32 %0 to i64
  %31 = getelementptr inbounds i32, i32* %4, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !5
  ret i32 %32

33:                                               ; preds = %33, %14
  %34 = phi i64 [ 3, %14 ], [ %52, %33 ]
  %35 = phi i32 [ 2, %14 ], [ %50, %33 ]
  %36 = phi i64 [ 1, %14 ], [ %34, %33 ]
  %37 = phi i64 [ 0, %14 ], [ %53, %33 ]
  %38 = getelementptr inbounds i32, i32* %4, i64 %36
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = add nsw i64 %34, -1
  %41 = trunc i64 %40 to i32
  %42 = mul nsw i32 %39, %41
  %43 = add nsw i32 %42, %35
  %44 = getelementptr inbounds i32, i32* %4, i64 %34
  store i32 %43, i32* %44, align 4, !tbaa !5
  %45 = add nuw nsw i64 %34, 1
  %46 = getelementptr inbounds i32, i32* %4, i64 %40
  %47 = load i32, i32* %46, align 4, !tbaa !5
  %48 = trunc i64 %34 to i32
  %49 = mul nsw i32 %47, %48
  %50 = add nsw i32 %49, %43
  %51 = getelementptr inbounds i32, i32* %4, i64 %45
  store i32 %50, i32* %51, align 4, !tbaa !5
  %52 = add nuw nsw i64 %34, 2
  %53 = add i64 %37, 2
  %54 = icmp eq i64 %53, %15
  br i1 %54, label %16, label %33, !llvm.loop !9
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
