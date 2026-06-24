; ModuleID = 'benchmark/c_transcoder/FIND_MINIMUM_NUMBER_OF_COINS_THAT_MAKE_A_CHANGE_1/FIND_MINIMUM_NUMBER_OF_COINS_THAT_MAKE_A_CHANGE_1_processed.c'
source_filename = "benchmark/c_transcoder/FIND_MINIMUM_NUMBER_OF_COINS_THAT_MAKE_A_CHANGE_1/FIND_MINIMUM_NUMBER_OF_COINS_THAT_MAKE_A_CHANGE_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add nsw i32 %2, 1
  %5 = zext i32 %4 to i64
  %6 = alloca i32, i64 %5, align 16
  store i32 0, i32* %6, align 16, !tbaa !5
  %7 = icmp slt i32 %2, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = add i32 %2, 1
  %10 = zext i32 %9 to i64
  br label %18

11:                                               ; preds = %18, %3
  %12 = icmp slt i32 %2, 1
  br i1 %12, label %28, label %13

13:                                               ; preds = %11
  %14 = icmp sgt i32 %1, 0
  %15 = add i32 %2, 1
  %16 = zext i32 %15 to i64
  %17 = zext i32 %1 to i64
  br label %23

18:                                               ; preds = %8, %18
  %19 = phi i64 [ 1, %8 ], [ %21, %18 ]
  %20 = getelementptr inbounds i32, i32* %6, i64 %19
  store i32 2147483647, i32* %20, align 4, !tbaa !5
  %21 = add nuw nsw i64 %19, 1
  %22 = icmp eq i64 %21, %10
  br i1 %22, label %11, label %18, !llvm.loop !9

23:                                               ; preds = %13, %32
  %24 = phi i64 [ 1, %13 ], [ %33, %32 ]
  br i1 %14, label %25, label %32

25:                                               ; preds = %23
  %26 = getelementptr inbounds i32, i32* %6, i64 %24
  %27 = trunc i64 %24 to i32
  br label %35

28:                                               ; preds = %32, %11
  %29 = sext i32 %2 to i64
  %30 = getelementptr inbounds i32, i32* %6, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !5
  ret i32 %31

32:                                               ; preds = %52, %23
  %33 = add nuw nsw i64 %24, 1
  %34 = icmp eq i64 %33, %16
  br i1 %34, label %28, label %23, !llvm.loop !12

35:                                               ; preds = %25, %52
  %36 = phi i64 [ 0, %25 ], [ %53, %52 ]
  %37 = getelementptr inbounds i32, i32* %0, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !5
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %24, %39
  br i1 %40, label %52, label %41

41:                                               ; preds = %35
  %42 = sub nsw i32 %27, %38
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %6, i64 %43
  %45 = load i32, i32* %44, align 4, !tbaa !5
  %46 = icmp eq i32 %45, 2147483647
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = add nsw i32 %45, 1
  %49 = load i32, i32* %26, align 4, !tbaa !5
  %50 = icmp slt i32 %48, %49
  %51 = select i1 %50, i32 %48, i32 %49
  store i32 %51, i32* %26, align 4
  br label %52

52:                                               ; preds = %47, %41, %35
  %53 = add nuw nsw i64 %36, 1
  %54 = icmp eq i64 %53, %17
  br i1 %54, label %32, label %35, !llvm.loop !13
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
