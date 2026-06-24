; ModuleID = 'benchmark/c_transcoder/EQUILIBRIUM_INDEX_OF_AN_ARRAY/EQUILIBRIUM_INDEX_OF_AN_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/EQUILIBRIUM_INDEX_OF_AN_ARRAY/EQUILIBRIUM_INDEX_OF_AN_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %4 = zext i32 %3 to i64
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %33, %2
  %7 = phi i64 [ %22, %33 ], [ 0, %2 ]
  %8 = phi i64 [ %36, %33 ], [ 1, %2 ]
  %9 = icmp eq i64 %7, %4
  br i1 %9, label %39, label %10

10:                                               ; preds = %6
  %11 = icmp eq i64 %7, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10, %12
  %13 = phi i64 [ %18, %12 ], [ 0, %10 ]
  %14 = phi i32 [ %17, %12 ], [ 0, %10 ]
  %15 = getelementptr inbounds i32, i32* %0, i64 %13
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = add nsw i32 %16, %14
  %18 = add nuw nsw i64 %13, 1
  %19 = icmp eq i64 %18, %7
  br i1 %19, label %20, label %12, !llvm.loop !9

20:                                               ; preds = %12, %10
  %21 = phi i32 [ 0, %10 ], [ %17, %12 ]
  %22 = add nuw nsw i64 %7, 1
  %23 = trunc i64 %22 to i32
  %24 = icmp slt i32 %23, %1
  br i1 %24, label %25, label %33

25:                                               ; preds = %20, %25
  %26 = phi i64 [ %31, %25 ], [ %8, %20 ]
  %27 = phi i32 [ %30, %25 ], [ 0, %20 ]
  %28 = getelementptr inbounds i32, i32* %0, i64 %26
  %29 = load i32, i32* %28, align 4, !tbaa !5
  %30 = add nsw i32 %29, %27
  %31 = add nuw nsw i64 %26, 1
  %32 = icmp eq i64 %31, %5
  br i1 %32, label %33, label %25, !llvm.loop !12

33:                                               ; preds = %25, %20
  %34 = phi i32 [ 0, %20 ], [ %30, %25 ]
  %35 = icmp eq i32 %21, %34
  %36 = add nuw nsw i64 %8, 1
  br i1 %35, label %37, label %6, !llvm.loop !13

37:                                               ; preds = %33
  %38 = trunc i64 %7 to i32
  br label %39

39:                                               ; preds = %6, %37
  %40 = phi i32 [ %38, %37 ], [ -1, %6 ]
  ret i32 %40
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
