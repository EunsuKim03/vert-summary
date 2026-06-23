; ModuleID = 'benchmark/c_transcoder/HOW_TO_CHECK_IF_A_GIVEN_ARRAY_REPRESENTS_A_BINARY_HEAP_1/HOW_TO_CHECK_IF_A_GIVEN_ARRAY_REPRESENTS_A_BINARY_HEAP_1_processed.c'
source_filename = "benchmark/c_transcoder/HOW_TO_CHECK_IF_A_GIVEN_ARRAY_REPRESENTS_A_BINARY_HEAP_1/HOW_TO_CHECK_IF_A_GIVEN_ARRAY_REPRESENTS_A_BINARY_HEAP_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %31, label %4

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -2
  %6 = sdiv i32 %5, 2
  %7 = sext i32 %1 to i64
  %8 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %9 = add nuw nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  br label %11

11:                                               ; preds = %4, %28
  %12 = phi i64 [ 0, %4 ], [ %29, %28 ]
  %13 = shl nuw nsw i64 %12, 1
  %14 = or i64 %13, 1
  %15 = getelementptr inbounds i32, i32* %0, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = getelementptr inbounds i32, i32* %0, i64 %12
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %11
  %21 = add nuw nsw i64 %13, 2
  %22 = icmp slt i64 %21, %7
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = and i64 %21, 4294967294
  %25 = getelementptr inbounds i32, i32* %0, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = icmp sgt i32 %26, %18
  br i1 %27, label %31, label %28

28:                                               ; preds = %20, %23
  %29 = add nuw nsw i64 %12, 1
  %30 = icmp eq i64 %29, %10
  br i1 %30, label %31, label %11, !llvm.loop !9

31:                                               ; preds = %28, %11, %23, %2
  %32 = phi i32 [ 1, %2 ], [ 1, %28 ], [ 0, %11 ], [ 0, %23 ]
  ret i32 %32
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

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
