; ModuleID = 'benchmark/c_transcoder/COUNT_NUMBER_OF_WAYS_TO_COVER_A_DISTANCE_1/COUNT_NUMBER_OF_WAYS_TO_COVER_A_DISTANCE_1_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_NUMBER_OF_WAYS_TO_COVER_A_DISTANCE_1/COUNT_NUMBER_OF_WAYS_TO_COVER_A_DISTANCE_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  store i32 1, i32* %4, align 16, !tbaa !5
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 1, i32* %5, align 4, !tbaa !5
  %6 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 2, i32* %6, align 8, !tbaa !5
  %7 = icmp slt i32 %0, 3
  br i1 %7, label %29, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds i32, i32* %4, i64 3
  store i32 4, i32* %9, align 4, !tbaa !5
  %10 = icmp eq i32 %2, 4
  br i1 %10, label %29, label %11, !llvm.loop !9

11:                                               ; preds = %8
  %12 = and i64 %3, 1
  %13 = icmp eq i32 %2, 5
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = add nsw i64 %3, -4
  %16 = and i64 %15, -2
  br label %33

17:                                               ; preds = %33, %11
  %18 = phi i64 [ 4, %11 ], [ %52, %33 ]
  %19 = phi i32 [ 4, %11 ], [ %50, %33 ]
  %20 = phi i64 [ 2, %11 ], [ %34, %33 ]
  %21 = phi i32 [ 1, %11 ], [ %48, %33 ]
  %22 = icmp eq i64 %12, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds i32, i32* %4, i64 %20
  %25 = load i32, i32* %24, align 8, !tbaa !5
  %26 = add nsw i32 %25, %19
  %27 = add nsw i32 %26, %21
  %28 = getelementptr inbounds i32, i32* %4, i64 %18
  store i32 %27, i32* %28, align 4, !tbaa !5
  br label %29

29:                                               ; preds = %23, %17, %8, %1
  %30 = sext i32 %0 to i64
  %31 = getelementptr inbounds i32, i32* %4, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !5
  ret i32 %32

33:                                               ; preds = %33, %14
  %34 = phi i64 [ 4, %14 ], [ %52, %33 ]
  %35 = phi i32 [ 4, %14 ], [ %50, %33 ]
  %36 = phi i64 [ 3, %14 ], [ %45, %33 ]
  %37 = phi i32 [ 1, %14 ], [ %48, %33 ]
  %38 = phi i64 [ 0, %14 ], [ %53, %33 ]
  %39 = add nsw i64 %36, -1
  %40 = getelementptr inbounds i32, i32* %4, i64 %39
  %41 = load i32, i32* %40, align 8, !tbaa !5
  %42 = add nsw i32 %41, %35
  %43 = add nsw i32 %42, %37
  %44 = getelementptr inbounds i32, i32* %4, i64 %34
  store i32 %43, i32* %44, align 8, !tbaa !5
  %45 = or i64 %34, 1
  %46 = add nsw i64 %34, -1
  %47 = getelementptr inbounds i32, i32* %4, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !5
  %49 = add nsw i32 %48, %43
  %50 = add nsw i32 %49, %41
  %51 = getelementptr inbounds i32, i32* %4, i64 %45
  store i32 %50, i32* %51, align 4, !tbaa !5
  %52 = add nuw nsw i64 %34, 2
  %53 = add i64 %38, 2
  %54 = icmp eq i64 %53, %16
  br i1 %54, label %17, label %33, !llvm.loop !9
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
