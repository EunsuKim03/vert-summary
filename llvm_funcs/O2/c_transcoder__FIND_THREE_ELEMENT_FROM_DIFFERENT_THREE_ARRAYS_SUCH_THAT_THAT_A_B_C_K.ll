; ModuleID = 'benchmark/c_transcoder/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K_processed.c'
source_filename = "benchmark/c_transcoder/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp sgt i32 %3, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %7
  %10 = icmp sgt i32 %4, 0
  %11 = icmp sgt i32 %5, 0
  %12 = zext i32 %3 to i64
  %13 = zext i32 %3 to i64
  %14 = zext i32 %4 to i64
  %15 = zext i32 %5 to i64
  br label %16

16:                                               ; preds = %9, %40
  %17 = phi i64 [ 0, %9 ], [ %41, %40 ]
  %18 = phi i1 [ true, %9 ], [ %42, %40 ]
  br i1 %10, label %19, label %40

19:                                               ; preds = %16
  %20 = getelementptr inbounds i32, i32* %0, i64 %17
  br label %21

21:                                               ; preds = %19, %37
  %22 = phi i64 [ 0, %19 ], [ %38, %37 ]
  br i1 %11, label %23, label %37

23:                                               ; preds = %21
  %24 = load i32, i32* %20, align 4, !tbaa !5
  %25 = getelementptr inbounds i32, i32* %1, i64 %22
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = add nsw i32 %26, %24
  br label %30

28:                                               ; preds = %30
  %29 = icmp eq i64 %36, %15
  br i1 %29, label %37, label %30, !llvm.loop !9

30:                                               ; preds = %23, %28
  %31 = phi i64 [ 0, %23 ], [ %36, %28 ]
  %32 = getelementptr inbounds i32, i32* %2, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %34 = add nsw i32 %27, %33
  %35 = icmp eq i32 %34, %6
  %36 = add nuw nsw i64 %31, 1
  br i1 %35, label %44, label %28

37:                                               ; preds = %28, %21
  %38 = add nuw nsw i64 %22, 1
  %39 = icmp eq i64 %38, %14
  br i1 %39, label %40, label %21, !llvm.loop !11

40:                                               ; preds = %37, %16
  %41 = add nuw nsw i64 %17, 1
  %42 = icmp ult i64 %41, %12
  %43 = icmp eq i64 %41, %13
  br i1 %43, label %44, label %16, !llvm.loop !12

44:                                               ; preds = %40, %30, %7
  %45 = phi i1 [ false, %7 ], [ %18, %30 ], [ %42, %40 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
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
!12 = distinct !{!12, !10}
