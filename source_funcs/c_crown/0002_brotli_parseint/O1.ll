; ModuleID = 'llvm/c_crown/0002_brotli_parseint/brotli_reprocessed.c'
source_filename = "llvm/c_crown/0002_brotli_parseint/brotli_reprocessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @ParseInt(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32* nocapture noundef readnone %3) local_unnamed_addr #0 {
  br label %5

5:                                                ; preds = %4, %22
  %6 = phi i64 [ 0, %4 ], [ %23, %22 ]
  %7 = phi i32 [ 0, %4 ], [ %20, %22 ]
  %8 = getelementptr inbounds i8, i8* %0, i64 %6
  %9 = load i8, i8* %8, align 1, !tbaa !5
  %10 = sext i8 %9 to i32
  %11 = icmp eq i8 %9, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %5
  %13 = add i8 %9, -58
  %14 = icmp ult i8 %13, -10
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = mul nsw i32 %7, 10
  %17 = add i32 %16, -48
  %18 = add i32 %17, %10
  br label %19

19:                                               ; preds = %12, %5, %15
  %20 = phi i32 [ %18, %15 ], [ %7, %5 ], [ %7, %12 ]
  %21 = phi i32 [ 0, %15 ], [ 2, %5 ], [ 1, %12 ]
  switch i32 %21, label %42 [
    i32 0, label %22
    i32 2, label %25
  ]

22:                                               ; preds = %19
  %23 = add nuw nsw i64 %6, 1
  %24 = icmp eq i64 %23, 5
  br i1 %24, label %27, label %5, !llvm.loop !8

25:                                               ; preds = %19
  %26 = trunc i64 %6 to i32
  br label %27

27:                                               ; preds = %22, %25
  %28 = phi i32 [ %26, %25 ], [ 5, %22 ]
  switch i32 %28, label %29 [
    i32 0, label %42
    i32 1, label %32
  ]

29:                                               ; preds = %27
  %30 = load i8, i8* %0, align 1, !tbaa !5
  %31 = icmp eq i8 %30, 48
  br i1 %31, label %42, label %32

32:                                               ; preds = %27, %29
  %33 = zext i32 %28 to i64
  %34 = getelementptr inbounds i8, i8* %0, i64 %33
  %35 = load i8, i8* %34, align 1, !tbaa !5
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = icmp sge i32 %20, %1
  %39 = icmp sle i32 %20, %2
  %40 = and i1 %38, %39
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %19, %37, %32, %29, %27
  %43 = phi i32 [ %28, %27 ], [ 0, %29 ], [ 0, %32 ], [ %41, %37 ], [ 0, %19 ]
  ret i32 %43
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
