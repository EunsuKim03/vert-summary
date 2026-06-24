; ModuleID = 'benchmark/c_transcoder/REMOVE_MINIMUM_ELEMENTS_EITHER_SIDE_2MIN_MAX/REMOVE_MINIMUM_ELEMENTS_EITHER_SIDE_2MIN_MAX_processed.c'
source_filename = "benchmark/c_transcoder/REMOVE_MINIMUM_ELEMENTS_EITHER_SIDE_2MIN_MAX/REMOVE_MINIMUM_ELEMENTS_EITHER_SIDE_2MIN_MAX_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %45, %4
  %7 = phi i64 [ 0, %4 ], [ %48, %45 ]
  %8 = phi i32 [ 0, %4 ], [ %47, %45 ]
  %9 = phi i32 [ -1, %4 ], [ %46, %45 ]
  %10 = trunc i64 %7 to i32
  br label %19

11:                                               ; preds = %45
  %12 = icmp eq i32 %46, -1
  %13 = xor i32 %47, -1
  %14 = add i32 %46, %13
  br i1 %12, label %15, label %16

15:                                               ; preds = %2, %11
  br label %16

16:                                               ; preds = %11, %15
  %17 = phi i32 [ 0, %15 ], [ %14, %11 ]
  %18 = add i32 %17, %1
  ret i32 %18

19:                                               ; preds = %6, %33
  %20 = phi i64 [ %7, %6 ], [ %43, %33 ]
  %21 = phi i32 [ -2147483648, %6 ], [ %30, %33 ]
  %22 = phi i32 [ 2147483647, %6 ], [ %28, %33 ]
  %23 = phi i32 [ %8, %6 ], [ %42, %33 ]
  %24 = phi i32 [ %9, %6 ], [ %40, %33 ]
  %25 = getelementptr inbounds i32, i32* %0, i64 %20
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = icmp slt i32 %26, %22
  %28 = select i1 %27, i32 %26, i32 %22
  %29 = icmp sgt i32 %26, %21
  %30 = select i1 %29, i32 %26, i32 %21
  %31 = shl nsw i32 %28, 1
  %32 = icmp sgt i32 %31, %30
  br i1 %32, label %33, label %45

33:                                               ; preds = %19
  %34 = sub nuw nsw i64 %20, %7
  %35 = sub nsw i32 %23, %24
  %36 = sext i32 %35 to i64
  %37 = icmp sgt i64 %34, %36
  %38 = icmp eq i32 %24, -1
  %39 = or i1 %38, %37
  %40 = select i1 %39, i32 %10, i32 %24
  %41 = trunc i64 %20 to i32
  %42 = select i1 %39, i32 %41, i32 %23
  %43 = add nuw nsw i64 %20, 1
  %44 = icmp eq i64 %43, %5
  br i1 %44, label %45, label %19, !llvm.loop !9

45:                                               ; preds = %33, %19
  %46 = phi i32 [ %40, %33 ], [ %24, %19 ]
  %47 = phi i32 [ %42, %33 ], [ %23, %19 ]
  %48 = add nuw nsw i64 %7, 1
  %49 = icmp eq i64 %48, %5
  br i1 %49, label %11, label %6, !llvm.loop !11
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
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
