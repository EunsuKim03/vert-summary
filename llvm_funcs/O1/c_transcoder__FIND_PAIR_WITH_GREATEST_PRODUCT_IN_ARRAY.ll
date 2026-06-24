; ModuleID = 'benchmark/c_transcoder/FIND_PAIR_WITH_GREATEST_PRODUCT_IN_ARRAY/FIND_PAIR_WITH_GREATEST_PRODUCT_IN_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/FIND_PAIR_WITH_GREATEST_PRODUCT_IN_ARRAY/FIND_PAIR_WITH_GREATEST_PRODUCT_IN_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  %6 = icmp eq i32 %1, 1
  %7 = sext i32 %1 to i64
  %8 = zext i32 %1 to i64
  %9 = zext i32 %5 to i64
  %10 = zext i32 %1 to i64
  br label %11

11:                                               ; preds = %4, %22
  %12 = phi i64 [ 0, %4 ], [ %24, %22 ]
  %13 = phi i32 [ -1, %4 ], [ %23, %22 ]
  br i1 %6, label %22, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds i32, i32* %0, i64 %12
  br label %26

16:                                               ; preds = %22, %2
  %17 = phi i32 [ -1, %2 ], [ %23, %22 ]
  ret i32 %17

18:                                               ; preds = %45, %26
  %19 = phi i32 [ %29, %26 ], [ %46, %45 ]
  %20 = add nuw nsw i64 %28, 1
  %21 = icmp eq i64 %30, %9
  br i1 %21, label %22, label %26, !llvm.loop !5

22:                                               ; preds = %18, %11
  %23 = phi i32 [ %13, %11 ], [ %19, %18 ]
  %24 = add nuw nsw i64 %12, 1
  %25 = icmp eq i64 %24, %8
  br i1 %25, label %16, label %11, !llvm.loop !8

26:                                               ; preds = %14, %18
  %27 = phi i64 [ 0, %14 ], [ %30, %18 ]
  %28 = phi i64 [ 1, %14 ], [ %20, %18 ]
  %29 = phi i32 [ %13, %14 ], [ %19, %18 ]
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp slt i64 %30, %7
  br i1 %31, label %32, label %18

32:                                               ; preds = %26
  %33 = getelementptr inbounds i32, i32* %0, i64 %27
  br label %34

34:                                               ; preds = %32, %45
  %35 = phi i64 [ %28, %32 ], [ %47, %45 ]
  %36 = phi i32 [ %29, %32 ], [ %46, %45 ]
  %37 = load i32, i32* %33, align 4, !tbaa !9
  %38 = getelementptr inbounds i32, i32* %0, i64 %35
  %39 = load i32, i32* %38, align 4, !tbaa !9
  %40 = mul nsw i32 %39, %37
  %41 = load i32, i32* %15, align 4, !tbaa !9
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %36, i32 noundef %41) #2
  br label %45

45:                                               ; preds = %34, %43
  %46 = phi i32 [ %44, %43 ], [ %36, %34 ]
  %47 = add nuw nsw i64 %35, 1
  %48 = icmp eq i64 %47, %10
  br i1 %48, label %18, label %34, !llvm.loop !13
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = distinct !{!13, !6, !7}
