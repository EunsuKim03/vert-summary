; ModuleID = 'benchmark/c_transcoder/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = and i32 %1, 1
  %6 = icmp eq i32 %1, 1
  %7 = and i32 %1, -2
  %8 = icmp eq i32 %5, 0
  br label %9

9:                                                ; preds = %4, %26
  %10 = phi i32 [ %28, %26 ], [ -2147483648, %4 ]
  %11 = phi i32 [ %29, %26 ], [ 0, %4 ]
  br i1 %6, label %14, label %31

12:                                               ; preds = %26, %2
  %13 = phi i32 [ -2147483648, %2 ], [ %28, %26 ]
  ret i32 %13

14:                                               ; preds = %31, %9
  %15 = phi i32 [ undef, %9 ], [ %49, %31 ]
  %16 = phi i32 [ 0, %9 ], [ %50, %31 ]
  %17 = phi i32 [ 0, %9 ], [ %49, %31 ]
  br i1 %8, label %26, label %18

18:                                               ; preds = %14
  %19 = add nuw nsw i32 %16, %11
  %20 = srem i32 %19, %1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %0, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = mul nsw i32 %23, %16
  %25 = add nsw i32 %24, %17
  br label %26

26:                                               ; preds = %14, %18
  %27 = phi i32 [ %15, %14 ], [ %25, %18 ]
  %28 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %10, i32 noundef %27) #2
  %29 = add nuw nsw i32 %11, 1
  %30 = icmp eq i32 %29, %1
  br i1 %30, label %12, label %9, !llvm.loop !9

31:                                               ; preds = %9, %31
  %32 = phi i32 [ %50, %31 ], [ 0, %9 ]
  %33 = phi i32 [ %49, %31 ], [ 0, %9 ]
  %34 = phi i32 [ %51, %31 ], [ 0, %9 ]
  %35 = add nuw nsw i32 %32, %11
  %36 = srem i32 %35, %1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %0, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = mul nsw i32 %39, %32
  %41 = add nsw i32 %40, %33
  %42 = or i32 %32, 1
  %43 = add nuw nsw i32 %42, %11
  %44 = srem i32 %43, %1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %0, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !5
  %48 = mul nsw i32 %47, %42
  %49 = add nsw i32 %48, %41
  %50 = add nuw nsw i32 %32, 2
  %51 = add i32 %34, 2
  %52 = icmp eq i32 %51, %7
  br i1 %52, label %14, label %31, !llvm.loop !11
}

declare i32 @max(...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
