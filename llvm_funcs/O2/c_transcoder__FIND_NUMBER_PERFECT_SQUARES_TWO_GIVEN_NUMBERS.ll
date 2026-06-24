; ModuleID = 'benchmark/c_transcoder/FIND_NUMBER_PERFECT_SQUARES_TWO_GIVEN_NUMBERS/FIND_NUMBER_PERFECT_SQUARES_TWO_GIVEN_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/FIND_NUMBER_PERFECT_SQUARES_TWO_GIVEN_NUMBERS/FIND_NUMBER_PERFECT_SQUARES_TWO_GIVEN_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, %0
  br i1 %3, label %33, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, 1
  %6 = sub i32 %5, %0
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %1, %0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = and i32 %6, -2
  br label %11

11:                                               ; preds = %49, %9
  %12 = phi i32 [ %0, %9 ], [ %51, %49 ]
  %13 = phi i32 [ 0, %9 ], [ %50, %49 ]
  %14 = phi i32 [ 0, %9 ], [ %52, %49 ]
  %15 = icmp slt i32 %12, 1
  br i1 %15, label %35, label %54

16:                                               ; preds = %49, %4
  %17 = phi i32 [ undef, %4 ], [ %50, %49 ]
  %18 = phi i32 [ %0, %4 ], [ %51, %49 ]
  %19 = phi i32 [ 0, %4 ], [ %50, %49 ]
  %20 = icmp eq i32 %7, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %16
  %22 = icmp slt i32 %18, 1
  br i1 %22, label %33, label %23

23:                                               ; preds = %21, %23
  %24 = phi i32 [ %31, %23 ], [ 1, %21 ]
  %25 = phi i32 [ %30, %23 ], [ 1, %21 ]
  %26 = phi i32 [ %29, %23 ], [ %19, %21 ]
  %27 = icmp eq i32 %24, %18
  %28 = zext i1 %27 to i32
  %29 = add nsw i32 %26, %28
  %30 = add nuw nsw i32 %25, 1
  %31 = mul nsw i32 %30, %30
  %32 = icmp sgt i32 %31, %18
  br i1 %32, label %33, label %23, !llvm.loop !5

33:                                               ; preds = %16, %23, %21, %2
  %34 = phi i32 [ 0, %2 ], [ %17, %16 ], [ %19, %21 ], [ %29, %23 ]
  ret i32 %34

35:                                               ; preds = %54, %11
  %36 = phi i32 [ %13, %11 ], [ %60, %54 ]
  %37 = add nsw i32 %12, 1
  %38 = icmp slt i32 %12, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %35, %39
  %40 = phi i32 [ %47, %39 ], [ 1, %35 ]
  %41 = phi i32 [ %46, %39 ], [ 1, %35 ]
  %42 = phi i32 [ %45, %39 ], [ %36, %35 ]
  %43 = icmp eq i32 %40, %37
  %44 = zext i1 %43 to i32
  %45 = add nsw i32 %42, %44
  %46 = add nuw nsw i32 %41, 1
  %47 = mul nsw i32 %46, %46
  %48 = icmp sgt i32 %47, %37
  br i1 %48, label %49, label %39, !llvm.loop !5

49:                                               ; preds = %39, %35
  %50 = phi i32 [ %36, %35 ], [ %45, %39 ]
  %51 = add nsw i32 %12, 2
  %52 = add i32 %14, 2
  %53 = icmp eq i32 %52, %10
  br i1 %53, label %16, label %11, !llvm.loop !7

54:                                               ; preds = %11, %54
  %55 = phi i32 [ %62, %54 ], [ 1, %11 ]
  %56 = phi i32 [ %61, %54 ], [ 1, %11 ]
  %57 = phi i32 [ %60, %54 ], [ %13, %11 ]
  %58 = icmp eq i32 %55, %12
  %59 = zext i1 %58 to i32
  %60 = add nsw i32 %57, %59
  %61 = add nuw nsw i32 %56, 1
  %62 = mul nsw i32 %61, %61
  %63 = icmp sgt i32 %62, %12
  br i1 %63, label %35, label %54, !llvm.loop !5
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
