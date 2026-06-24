; ModuleID = 'benchmark/c_transcoder/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K_processed.c'
source_filename = "benchmark/c_transcoder/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp sgt i32 %3, 0
  br i1 %8, label %9, label %54

9:                                                ; preds = %7
  %10 = icmp sgt i32 %4, 0
  %11 = icmp sgt i32 %5, 0
  %12 = sext i32 %5 to i64
  %13 = zext i32 %3 to i64
  %14 = zext i32 %4 to i64
  %15 = zext i32 %5 to i64
  br label %18

16:                                               ; preds = %50
  %17 = icmp eq i64 %53, %13
  br i1 %17, label %54, label %18, !llvm.loop !5

18:                                               ; preds = %9, %16
  %19 = phi i64 [ 0, %9 ], [ %53, %16 ]
  br i1 %10, label %20, label %50

20:                                               ; preds = %18
  %21 = getelementptr inbounds i32, i32* %0, i64 %19
  br label %24

22:                                               ; preds = %46
  %23 = icmp eq i64 %49, %14
  br i1 %23, label %50, label %24, !llvm.loop !8

24:                                               ; preds = %20, %22
  %25 = phi i64 [ 0, %20 ], [ %49, %22 ]
  br i1 %11, label %26, label %46

26:                                               ; preds = %24
  %27 = load i32, i32* %21, align 4, !tbaa !9
  %28 = getelementptr inbounds i32, i32* %1, i64 %25
  %29 = load i32, i32* %28, align 4, !tbaa !9
  %30 = add nsw i32 %29, %27
  %31 = load i32, i32* %2, align 4, !tbaa !9
  %32 = add nsw i32 %30, %31
  %33 = icmp eq i32 %32, %6
  br i1 %33, label %46, label %34

34:                                               ; preds = %26, %37
  %35 = phi i64 [ %42, %37 ], [ 1, %26 ]
  %36 = icmp eq i64 %35, %15
  br i1 %36, label %43, label %37, !llvm.loop !13

37:                                               ; preds = %34
  %38 = getelementptr inbounds i32, i32* %2, i64 %35
  %39 = load i32, i32* %38, align 4, !tbaa !9
  %40 = add nsw i32 %30, %39
  %41 = icmp eq i32 %40, %6
  %42 = add nuw nsw i64 %35, 1
  br i1 %41, label %43, label %34, !llvm.loop !13

43:                                               ; preds = %34, %37
  %44 = phi i32 [ 8, %34 ], [ 1, %37 ]
  %45 = icmp slt i64 %35, %12
  br label %46

46:                                               ; preds = %43, %26, %24
  %47 = phi i1 [ %11, %24 ], [ %11, %26 ], [ %45, %43 ]
  %48 = phi i32 [ 8, %24 ], [ 1, %26 ], [ %44, %43 ]
  %49 = add nuw nsw i64 %25, 1
  br i1 %47, label %50, label %22

50:                                               ; preds = %46, %22, %18
  %51 = phi i32 [ 5, %18 ], [ %48, %46 ], [ 5, %22 ]
  %52 = icmp eq i32 %51, 5
  %53 = add nuw nsw i64 %19, 1
  br i1 %52, label %16, label %54

54:                                               ; preds = %50, %16, %7
  %55 = phi i32 [ 2, %7 ], [ %51, %50 ], [ 2, %16 ]
  %56 = icmp ne i32 %55, 2
  %57 = zext i1 %56 to i32
  ret i32 %57
}

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
