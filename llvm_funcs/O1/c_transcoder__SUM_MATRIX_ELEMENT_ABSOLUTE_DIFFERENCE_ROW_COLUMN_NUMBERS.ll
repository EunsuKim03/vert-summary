; ModuleID = 'benchmark/c_transcoder/SUM_MATRIX_ELEMENT_ABSOLUTE_DIFFERENCE_ROW_COLUMN_NUMBERS/SUM_MATRIX_ELEMENT_ABSOLUTE_DIFFERENCE_ROW_COLUMN_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/SUM_MATRIX_ELEMENT_ABSOLUTE_DIFFERENCE_ROW_COLUMN_NUMBERS/SUM_MATRIX_ELEMENT_ABSOLUTE_DIFFERENCE_ROW_COLUMN_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = zext i32 %0 to i64
  %3 = mul nuw i64 %2, %2
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp sgt i32 %0, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = zext i32 %0 to i64
  %8 = zext i32 %0 to i64
  br label %9

9:                                                ; preds = %6, %18
  %10 = phi i64 [ 0, %6 ], [ %19, %18 ]
  %11 = mul nuw nsw i64 %10, %2
  %12 = getelementptr inbounds i32, i32* %4, i64 %11
  br label %21

13:                                               ; preds = %18, %1
  %14 = icmp sgt i32 %0, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %13
  %16 = zext i32 %0 to i64
  %17 = zext i32 %0 to i64
  br label %29

18:                                               ; preds = %21
  %19 = add nuw nsw i64 %10, 1
  %20 = icmp eq i64 %19, %7
  br i1 %20, label %13, label %9, !llvm.loop !5

21:                                               ; preds = %9, %21
  %22 = phi i64 [ 0, %9 ], [ %27, %21 ]
  %23 = sub nsw i64 %10, %22
  %24 = trunc i64 %23 to i32
  %25 = call i32 @llvm.abs.i32(i32 %24, i1 true)
  %26 = getelementptr inbounds i32, i32* %12, i64 %22
  store i32 %25, i32* %26, align 4, !tbaa !8
  %27 = add nuw nsw i64 %22, 1
  %28 = icmp eq i64 %27, %8
  br i1 %28, label %18, label %21, !llvm.loop !12

29:                                               ; preds = %15, %36
  %30 = phi i64 [ 0, %15 ], [ %37, %36 ]
  %31 = phi i32 [ 0, %15 ], [ %44, %36 ]
  %32 = mul nuw nsw i64 %30, %2
  %33 = getelementptr inbounds i32, i32* %4, i64 %32
  br label %39

34:                                               ; preds = %36, %13
  %35 = phi i32 [ 0, %13 ], [ %44, %36 ]
  ret i32 %35

36:                                               ; preds = %39
  %37 = add nuw nsw i64 %30, 1
  %38 = icmp eq i64 %37, %16
  br i1 %38, label %34, label %29, !llvm.loop !13

39:                                               ; preds = %29, %39
  %40 = phi i64 [ 0, %29 ], [ %45, %39 ]
  %41 = phi i32 [ %31, %29 ], [ %44, %39 ]
  %42 = getelementptr inbounds i32, i32* %33, i64 %40
  %43 = load i32, i32* %42, align 4, !tbaa !8
  %44 = add nsw i32 %43, %41
  %45 = add nuw nsw i64 %40, 1
  %46 = icmp eq i64 %45, %17
  br i1 %46, label %36, label %39, !llvm.loop !14
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

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
!14 = distinct !{!14, !6, !7}
