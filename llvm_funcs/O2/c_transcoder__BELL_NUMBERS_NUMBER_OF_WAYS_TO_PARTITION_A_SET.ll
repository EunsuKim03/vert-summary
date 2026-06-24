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
  br i1 %6, label %7, label %12

7:                                                ; preds = %42, %1
  %8 = sext i32 %0 to i64
  %9 = mul nsw i64 %3, %8
  %10 = getelementptr inbounds i32, i32* %5, i64 %9
  %11 = load i32, i32* %10, align 4, !tbaa !5
  ret i32 %11

12:                                               ; preds = %1, %42
  %13 = phi i64 [ %45, %42 ], [ 0, %1 ]
  %14 = phi i64 [ %43, %42 ], [ 1, %1 ]
  %15 = add nsw i64 %14, -1
  %16 = mul nuw nsw i64 %15, %3
  %17 = getelementptr inbounds i32, i32* %5, i64 %16
  %18 = getelementptr inbounds i32, i32* %17, i64 %15
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = mul nuw nsw i64 %14, %3
  %21 = getelementptr inbounds i32, i32* %5, i64 %20
  store i32 %19, i32* %21, align 4, !tbaa !5
  %22 = and i64 %14, 3
  %23 = icmp ult i64 %13, 3
  br i1 %23, label %26, label %24

24:                                               ; preds = %12
  %25 = and i64 %14, 9223372036854775804
  br label %46

26:                                               ; preds = %46, %12
  %27 = phi i32 [ %19, %12 ], [ %68, %46 ]
  %28 = phi i64 [ 1, %12 ], [ %70, %46 ]
  %29 = icmp eq i64 %22, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %26, %30
  %31 = phi i32 [ %37, %30 ], [ %27, %26 ]
  %32 = phi i64 [ %39, %30 ], [ %28, %26 ]
  %33 = phi i64 [ %40, %30 ], [ 0, %26 ]
  %34 = add nsw i64 %32, -1
  %35 = getelementptr inbounds i32, i32* %17, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !5
  %37 = add nsw i32 %31, %36
  %38 = getelementptr inbounds i32, i32* %21, i64 %32
  store i32 %37, i32* %38, align 4, !tbaa !5
  %39 = add nuw nsw i64 %32, 1
  %40 = add i64 %33, 1
  %41 = icmp eq i64 %40, %22
  br i1 %41, label %42, label %30, !llvm.loop !9

42:                                               ; preds = %30, %26
  %43 = add nuw nsw i64 %14, 1
  %44 = icmp eq i64 %43, %3
  %45 = add i64 %13, 1
  br i1 %44, label %7, label %12, !llvm.loop !11

46:                                               ; preds = %46, %24
  %47 = phi i32 [ %19, %24 ], [ %68, %46 ]
  %48 = phi i64 [ 1, %24 ], [ %70, %46 ]
  %49 = phi i64 [ 0, %24 ], [ %71, %46 ]
  %50 = add nsw i64 %48, -1
  %51 = getelementptr inbounds i32, i32* %17, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !5
  %53 = add nsw i32 %47, %52
  %54 = getelementptr inbounds i32, i32* %21, i64 %48
  store i32 %53, i32* %54, align 4, !tbaa !5
  %55 = add nuw nsw i64 %48, 1
  %56 = getelementptr inbounds i32, i32* %17, i64 %48
  %57 = load i32, i32* %56, align 4, !tbaa !5
  %58 = add nsw i32 %53, %57
  %59 = getelementptr inbounds i32, i32* %21, i64 %55
  store i32 %58, i32* %59, align 4, !tbaa !5
  %60 = add nuw nsw i64 %48, 2
  %61 = getelementptr inbounds i32, i32* %17, i64 %55
  %62 = load i32, i32* %61, align 4, !tbaa !5
  %63 = add nsw i32 %58, %62
  %64 = getelementptr inbounds i32, i32* %21, i64 %60
  store i32 %63, i32* %64, align 4, !tbaa !5
  %65 = add nuw nsw i64 %48, 3
  %66 = getelementptr inbounds i32, i32* %17, i64 %60
  %67 = load i32, i32* %66, align 4, !tbaa !5
  %68 = add nsw i32 %63, %67
  %69 = getelementptr inbounds i32, i32* %21, i64 %65
  store i32 %68, i32* %69, align 4, !tbaa !5
  %70 = add nuw nsw i64 %48, 4
  %71 = add nuw i64 %49, 4
  %72 = icmp eq i64 %71, %25
  br i1 %72, label %26, label %46, !llvm.loop !13
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
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
