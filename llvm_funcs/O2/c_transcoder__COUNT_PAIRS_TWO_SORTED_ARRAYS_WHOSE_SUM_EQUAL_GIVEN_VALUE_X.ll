; ModuleID = 'benchmark/c_transcoder/COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X/COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X/COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %104

7:                                                ; preds = %5
  %8 = icmp sgt i32 %3, 0
  %9 = zext i32 %2 to i64
  %10 = zext i32 %3 to i64
  %11 = and i64 %10, 4294967288
  %12 = add nsw i64 %11, -8
  %13 = lshr exact i64 %12, 3
  %14 = add nuw nsw i64 %13, 1
  %15 = icmp ult i32 %3, 8
  %16 = and i64 %10, 4294967288
  %17 = insertelement <4 x i32> poison, i32 %4, i64 0
  %18 = shufflevector <4 x i32> %17, <4 x i32> poison, <4 x i32> zeroinitializer
  %19 = insertelement <4 x i32> poison, i32 %4, i64 0
  %20 = shufflevector <4 x i32> %19, <4 x i32> poison, <4 x i32> zeroinitializer
  %21 = and i64 %14, 1
  %22 = icmp eq i64 %12, 0
  %23 = and i64 %14, 4611686018427387902
  %24 = icmp eq i64 %21, 0
  %25 = icmp eq i64 %16, %10
  br label %26

26:                                               ; preds = %7, %106
  %27 = phi i64 [ 0, %7 ], [ %108, %106 ]
  %28 = phi i32 [ 0, %7 ], [ %107, %106 ]
  br i1 %8, label %29, label %106

29:                                               ; preds = %26
  %30 = getelementptr inbounds i32, i32* %0, i64 %27
  %31 = load i32, i32* %30, align 4, !tbaa !5
  br i1 %15, label %101, label %32

32:                                               ; preds = %29
  %33 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %28, i64 0
  %34 = insertelement <4 x i32> poison, i32 %31, i64 0
  %35 = shufflevector <4 x i32> %34, <4 x i32> poison, <4 x i32> zeroinitializer
  %36 = insertelement <4 x i32> poison, i32 %31, i64 0
  %37 = shufflevector <4 x i32> %36, <4 x i32> poison, <4 x i32> zeroinitializer
  br i1 %22, label %75, label %38

38:                                               ; preds = %32, %38
  %39 = phi i64 [ %72, %38 ], [ 0, %32 ]
  %40 = phi <4 x i32> [ %70, %38 ], [ %33, %32 ]
  %41 = phi <4 x i32> [ %71, %38 ], [ zeroinitializer, %32 ]
  %42 = phi i64 [ %73, %38 ], [ 0, %32 ]
  %43 = getelementptr inbounds i32, i32* %1, i64 %39
  %44 = bitcast i32* %43 to <4 x i32>*
  %45 = load <4 x i32>, <4 x i32>* %44, align 4, !tbaa !5
  %46 = getelementptr inbounds i32, i32* %43, i64 4
  %47 = bitcast i32* %46 to <4 x i32>*
  %48 = load <4 x i32>, <4 x i32>* %47, align 4, !tbaa !5
  %49 = add nsw <4 x i32> %45, %35
  %50 = add nsw <4 x i32> %48, %37
  %51 = icmp eq <4 x i32> %49, %18
  %52 = icmp eq <4 x i32> %50, %20
  %53 = zext <4 x i1> %51 to <4 x i32>
  %54 = zext <4 x i1> %52 to <4 x i32>
  %55 = add <4 x i32> %40, %53
  %56 = add <4 x i32> %41, %54
  %57 = or i64 %39, 8
  %58 = getelementptr inbounds i32, i32* %1, i64 %57
  %59 = bitcast i32* %58 to <4 x i32>*
  %60 = load <4 x i32>, <4 x i32>* %59, align 4, !tbaa !5
  %61 = getelementptr inbounds i32, i32* %58, i64 4
  %62 = bitcast i32* %61 to <4 x i32>*
  %63 = load <4 x i32>, <4 x i32>* %62, align 4, !tbaa !5
  %64 = add nsw <4 x i32> %60, %35
  %65 = add nsw <4 x i32> %63, %37
  %66 = icmp eq <4 x i32> %64, %18
  %67 = icmp eq <4 x i32> %65, %20
  %68 = zext <4 x i1> %66 to <4 x i32>
  %69 = zext <4 x i1> %67 to <4 x i32>
  %70 = add <4 x i32> %55, %68
  %71 = add <4 x i32> %56, %69
  %72 = add nuw i64 %39, 16
  %73 = add i64 %42, 2
  %74 = icmp eq i64 %73, %23
  br i1 %74, label %75, label %38, !llvm.loop !9

75:                                               ; preds = %38, %32
  %76 = phi <4 x i32> [ undef, %32 ], [ %70, %38 ]
  %77 = phi <4 x i32> [ undef, %32 ], [ %71, %38 ]
  %78 = phi i64 [ 0, %32 ], [ %72, %38 ]
  %79 = phi <4 x i32> [ %33, %32 ], [ %70, %38 ]
  %80 = phi <4 x i32> [ zeroinitializer, %32 ], [ %71, %38 ]
  br i1 %24, label %96, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds i32, i32* %1, i64 %78
  %83 = bitcast i32* %82 to <4 x i32>*
  %84 = load <4 x i32>, <4 x i32>* %83, align 4, !tbaa !5
  %85 = getelementptr inbounds i32, i32* %82, i64 4
  %86 = bitcast i32* %85 to <4 x i32>*
  %87 = load <4 x i32>, <4 x i32>* %86, align 4, !tbaa !5
  %88 = add nsw <4 x i32> %84, %35
  %89 = add nsw <4 x i32> %87, %37
  %90 = icmp eq <4 x i32> %88, %18
  %91 = icmp eq <4 x i32> %89, %20
  %92 = zext <4 x i1> %90 to <4 x i32>
  %93 = zext <4 x i1> %91 to <4 x i32>
  %94 = add <4 x i32> %79, %92
  %95 = add <4 x i32> %80, %93
  br label %96

96:                                               ; preds = %75, %81
  %97 = phi <4 x i32> [ %76, %75 ], [ %94, %81 ]
  %98 = phi <4 x i32> [ %77, %75 ], [ %95, %81 ]
  %99 = add <4 x i32> %98, %97
  %100 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %99)
  br i1 %25, label %106, label %101

101:                                              ; preds = %29, %96
  %102 = phi i64 [ 0, %29 ], [ %16, %96 ]
  %103 = phi i32 [ %28, %29 ], [ %100, %96 ]
  br label %110

104:                                              ; preds = %106, %5
  %105 = phi i32 [ 0, %5 ], [ %107, %106 ]
  ret i32 %105

106:                                              ; preds = %110, %96, %26
  %107 = phi i32 [ %28, %26 ], [ %100, %96 ], [ %118, %110 ]
  %108 = add nuw nsw i64 %27, 1
  %109 = icmp eq i64 %108, %9
  br i1 %109, label %104, label %26, !llvm.loop !12

110:                                              ; preds = %101, %110
  %111 = phi i64 [ %119, %110 ], [ %102, %101 ]
  %112 = phi i32 [ %118, %110 ], [ %103, %101 ]
  %113 = getelementptr inbounds i32, i32* %1, i64 %111
  %114 = load i32, i32* %113, align 4, !tbaa !5
  %115 = add nsw i32 %114, %31
  %116 = icmp eq i32 %115, %4
  %117 = zext i1 %116 to i32
  %118 = add nsw i32 %112, %117
  %119 = add nuw nsw i64 %111, 1
  %120 = icmp eq i64 %119, %10
  br i1 %120, label %106, label %110, !llvm.loop !13
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #1

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone willreturn }

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
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10, !14, !11}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
