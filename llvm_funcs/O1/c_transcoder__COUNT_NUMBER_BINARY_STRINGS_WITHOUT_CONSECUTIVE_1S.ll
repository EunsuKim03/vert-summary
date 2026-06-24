; ModuleID = 'benchmark/c_transcoder/COUNT_NUMBER_BINARY_STRINGS_WITHOUT_CONSECUTIVE_1S/COUNT_NUMBER_BINARY_STRINGS_WITHOUT_CONSECUTIVE_1S_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_NUMBER_BINARY_STRINGS_WITHOUT_CONSECUTIVE_1S/COUNT_NUMBER_BINARY_STRINGS_WITHOUT_CONSECUTIVE_1S_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = zext i32 %0 to i64
  %3 = alloca i32, i64 %2, align 16
  %4 = alloca i32, i64 %2, align 16
  store i32 1, i32* %4, align 16, !tbaa !5
  store i32 1, i32* %3, align 16, !tbaa !5
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = zext i32 %0 to i64
  %8 = load i32, i32* %4, align 16
  %9 = load i32, i32* %3, align 16
  br label %18

10:                                               ; preds = %18, %1
  %11 = add nsw i32 %0, -1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %3, i64 %12
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = getelementptr inbounds i32, i32* %4, i64 %12
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = add nsw i32 %16, %14
  ret i32 %17

18:                                               ; preds = %6, %18
  %19 = phi i32 [ %9, %6 ], [ %22, %18 ]
  %20 = phi i32 [ %8, %6 ], [ %19, %18 ]
  %21 = phi i64 [ 1, %6 ], [ %25, %18 ]
  %22 = add nsw i32 %20, %19
  %23 = getelementptr inbounds i32, i32* %3, i64 %21
  store i32 %22, i32* %23, align 4, !tbaa !5
  %24 = getelementptr inbounds i32, i32* %4, i64 %21
  store i32 %19, i32* %24, align 4, !tbaa !5
  %25 = add nuw nsw i64 %21, 1
  %26 = icmp eq i64 %25, %7
  br i1 %26, label %10, label %18, !llvm.loop !9
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
