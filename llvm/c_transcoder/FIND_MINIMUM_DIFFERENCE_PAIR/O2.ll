; ModuleID = 'benchmark/c_transcoder/FIND_MINIMUM_DIFFERENCE_PAIR/FIND_MINIMUM_DIFFERENCE_PAIR_processed.c'
source_filename = "benchmark/c_transcoder/FIND_MINIMUM_DIFFERENCE_PAIR/FIND_MINIMUM_DIFFERENCE_PAIR_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -1
  %6 = zext i32 %1 to i64
  %7 = zext i32 %5 to i64
  %8 = zext i32 %1 to i64
  br label %15

9:                                                ; preds = %65, %57, %15
  %10 = phi i32 [ %18, %15 ], [ %60, %57 ], [ %73, %65 ]
  %11 = add nuw nsw i64 %17, 1
  %12 = icmp eq i64 %21, %7
  br i1 %12, label %13, label %15, !llvm.loop !5

13:                                               ; preds = %9, %2
  %14 = phi i32 [ 2147483647, %2 ], [ %10, %9 ]
  ret i32 %14

15:                                               ; preds = %4, %9
  %16 = phi i64 [ 0, %4 ], [ %21, %9 ]
  %17 = phi i64 [ 1, %4 ], [ %11, %9 ]
  %18 = phi i32 [ 2147483647, %4 ], [ %10, %9 ]
  %19 = xor i64 %16, -1
  %20 = add nsw i64 %19, %8
  %21 = add nuw nsw i64 %16, 1
  %22 = icmp ult i64 %21, %6
  br i1 %22, label %23, label %9

23:                                               ; preds = %15
  %24 = getelementptr inbounds i32, i32* %0, i64 %16
  %25 = load i32, i32* %24, align 4, !tbaa !7
  %26 = icmp ult i64 %20, 8
  br i1 %26, label %62, label %27

27:                                               ; preds = %23
  %28 = and i64 %20, -8
  %29 = add i64 %17, %28
  %30 = insertelement <4 x i32> poison, i32 %18, i64 0
  %31 = shufflevector <4 x i32> %30, <4 x i32> poison, <4 x i32> zeroinitializer
  %32 = insertelement <4 x i32> poison, i32 %25, i64 0
  %33 = shufflevector <4 x i32> %32, <4 x i32> poison, <4 x i32> zeroinitializer
  %34 = insertelement <4 x i32> poison, i32 %25, i64 0
  %35 = shufflevector <4 x i32> %34, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %36

36:                                               ; preds = %36, %27
  %37 = phi i64 [ 0, %27 ], [ %55, %36 ]
  %38 = phi <4 x i32> [ %31, %27 ], [ %53, %36 ]
  %39 = phi <4 x i32> [ %31, %27 ], [ %54, %36 ]
  %40 = add i64 %17, %37
  %41 = getelementptr inbounds i32, i32* %0, i64 %40
  %42 = bitcast i32* %41 to <4 x i32>*
  %43 = load <4 x i32>, <4 x i32>* %42, align 4, !tbaa !7
  %44 = getelementptr inbounds i32, i32* %41, i64 4
  %45 = bitcast i32* %44 to <4 x i32>*
  %46 = load <4 x i32>, <4 x i32>* %45, align 4, !tbaa !7
  %47 = sub nsw <4 x i32> %33, %43
  %48 = sub nsw <4 x i32> %35, %46
  %49 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %47, i1 true)
  %50 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %48, i1 true)
  %51 = icmp slt <4 x i32> %49, %38
  %52 = icmp slt <4 x i32> %50, %39
  %53 = select <4 x i1> %51, <4 x i32> %49, <4 x i32> %38
  %54 = select <4 x i1> %52, <4 x i32> %50, <4 x i32> %39
  %55 = add nuw i64 %37, 8
  %56 = icmp eq i64 %55, %28
  br i1 %56, label %57, label %36, !llvm.loop !11

57:                                               ; preds = %36
  %58 = icmp slt <4 x i32> %53, %54
  %59 = select <4 x i1> %58, <4 x i32> %53, <4 x i32> %54
  %60 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %59)
  %61 = icmp eq i64 %20, %28
  br i1 %61, label %9, label %62

62:                                               ; preds = %23, %57
  %63 = phi i64 [ %17, %23 ], [ %29, %57 ]
  %64 = phi i32 [ %18, %23 ], [ %60, %57 ]
  br label %65

65:                                               ; preds = %62, %65
  %66 = phi i64 [ %74, %65 ], [ %63, %62 ]
  %67 = phi i32 [ %73, %65 ], [ %64, %62 ]
  %68 = getelementptr inbounds i32, i32* %0, i64 %66
  %69 = load i32, i32* %68, align 4, !tbaa !7
  %70 = sub nsw i32 %25, %69
  %71 = tail call i32 @llvm.abs.i32(i32 %70, i1 true)
  %72 = icmp slt i32 %71, %67
  %73 = select i1 %72, i32 %71, i32 %67
  %74 = add nuw nsw i64 %66, 1
  %75 = icmp eq i64 %74, %8
  br i1 %75, label %9, label %65, !llvm.loop !13
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #2

attributes #0 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6, !12}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !6, !14, !12}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
