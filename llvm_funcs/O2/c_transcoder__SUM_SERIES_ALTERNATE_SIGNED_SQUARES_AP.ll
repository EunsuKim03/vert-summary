; ModuleID = 'benchmark/c_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_processed.c'
source_filename = "benchmark/c_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %44

4:                                                ; preds = %2
  %5 = shl nuw i32 %0, 1
  %6 = call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = zext i32 %6 to i64
  %8 = icmp ult i32 %6, 8
  br i1 %8, label %41, label %9

9:                                                ; preds = %4
  %10 = and i64 %7, 2147483640
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %34, %11 ]
  %13 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %9 ], [ %35, %11 ]
  %14 = phi <4 x i32> [ zeroinitializer, %9 ], [ %32, %11 ]
  %15 = phi <4 x i32> [ zeroinitializer, %9 ], [ %33, %11 ]
  %16 = and <4 x i64> %13, <i64 1, i64 1, i64 1, i64 1>
  %17 = and <4 x i64> %13, <i64 1, i64 1, i64 1, i64 1>
  %18 = icmp eq <4 x i64> %16, zeroinitializer
  %19 = icmp eq <4 x i64> %17, zeroinitializer
  %20 = getelementptr inbounds i32, i32* %1, i64 %12
  %21 = bitcast i32* %20 to <4 x i32>*
  %22 = load <4 x i32>, <4 x i32>* %21, align 4, !tbaa !5
  %23 = getelementptr inbounds i32, i32* %20, i64 4
  %24 = bitcast i32* %23 to <4 x i32>*
  %25 = load <4 x i32>, <4 x i32>* %24, align 4, !tbaa !5
  %26 = mul nsw <4 x i32> %22, %22
  %27 = mul nsw <4 x i32> %25, %25
  %28 = sub nsw <4 x i32> zeroinitializer, %26
  %29 = sub nsw <4 x i32> zeroinitializer, %27
  %30 = select <4 x i1> %18, <4 x i32> %26, <4 x i32> %28
  %31 = select <4 x i1> %19, <4 x i32> %27, <4 x i32> %29
  %32 = add <4 x i32> %14, %30
  %33 = add <4 x i32> %15, %31
  %34 = add nuw i64 %12, 8
  %35 = add <4 x i64> %13, <i64 8, i64 8, i64 8, i64 8>
  %36 = icmp eq i64 %34, %10
  br i1 %36, label %37, label %11, !llvm.loop !9

37:                                               ; preds = %11
  %38 = add <4 x i32> %33, %32
  %39 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %38)
  %40 = icmp eq i64 %10, %7
  br i1 %40, label %44, label %41

41:                                               ; preds = %4, %37
  %42 = phi i64 [ 0, %4 ], [ %10, %37 ]
  %43 = phi i32 [ 0, %4 ], [ %39, %37 ]
  br label %46

44:                                               ; preds = %46, %37, %2
  %45 = phi i32 [ 0, %2 ], [ %39, %37 ], [ %56, %46 ]
  ret i32 %45

46:                                               ; preds = %41, %46
  %47 = phi i64 [ %57, %46 ], [ %42, %41 ]
  %48 = phi i32 [ %56, %46 ], [ %43, %41 ]
  %49 = and i64 %47, 1
  %50 = icmp eq i64 %49, 0
  %51 = getelementptr inbounds i32, i32* %1, i64 %47
  %52 = load i32, i32* %51, align 4, !tbaa !5
  %53 = mul nsw i32 %52, %52
  %54 = sub nsw i32 0, %53
  %55 = select i1 %50, i32 %53, i32 %54
  %56 = add i32 %48, %55
  %57 = add nuw nsw i64 %47, 1
  %58 = icmp eq i64 %57, %7
  br i1 %58, label %44, label %46, !llvm.loop !12
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind readnone willreturn }

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
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !10, !13, !11}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
