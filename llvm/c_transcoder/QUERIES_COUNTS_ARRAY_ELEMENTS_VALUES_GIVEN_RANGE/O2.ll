; ModuleID = 'benchmark/c_transcoder/QUERIES_COUNTS_ARRAY_ELEMENTS_VALUES_GIVEN_RANGE/QUERIES_COUNTS_ARRAY_ELEMENTS_VALUES_GIVEN_RANGE_processed.c'
source_filename = "benchmark/c_transcoder/QUERIES_COUNTS_ARRAY_ELEMENTS_VALUES_GIVEN_RANGE/QUERIES_COUNTS_ARRAY_ELEMENTS_VALUES_GIVEN_RANGE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %100

6:                                                ; preds = %4
  %7 = zext i32 %1 to i64
  %8 = icmp ult i32 %1, 8
  br i1 %8, label %97, label %9

9:                                                ; preds = %6
  %10 = and i64 %7, 4294967288
  %11 = insertelement <4 x i32> poison, i32 %2, i64 0
  %12 = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> zeroinitializer
  %13 = insertelement <4 x i32> poison, i32 %2, i64 0
  %14 = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> zeroinitializer
  %15 = insertelement <4 x i32> poison, i32 %3, i64 0
  %16 = shufflevector <4 x i32> %15, <4 x i32> poison, <4 x i32> zeroinitializer
  %17 = insertelement <4 x i32> poison, i32 %3, i64 0
  %18 = shufflevector <4 x i32> %17, <4 x i32> poison, <4 x i32> zeroinitializer
  %19 = add nsw i64 %10, -8
  %20 = lshr exact i64 %19, 3
  %21 = add nuw nsw i64 %20, 1
  %22 = and i64 %21, 1
  %23 = icmp eq i64 %19, 0
  br i1 %23, label %67, label %24

24:                                               ; preds = %9
  %25 = and i64 %21, 4611686018427387902
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi i64 [ 0, %24 ], [ %64, %26 ]
  %28 = phi <4 x i32> [ zeroinitializer, %24 ], [ %62, %26 ]
  %29 = phi <4 x i32> [ zeroinitializer, %24 ], [ %63, %26 ]
  %30 = phi i64 [ 0, %24 ], [ %65, %26 ]
  %31 = getelementptr inbounds i32, i32* %0, i64 %27
  %32 = bitcast i32* %31 to <4 x i32>*
  %33 = load <4 x i32>, <4 x i32>* %32, align 4, !tbaa !5
  %34 = getelementptr inbounds i32, i32* %31, i64 4
  %35 = bitcast i32* %34 to <4 x i32>*
  %36 = load <4 x i32>, <4 x i32>* %35, align 4, !tbaa !5
  %37 = icmp sge <4 x i32> %33, %12
  %38 = icmp sge <4 x i32> %36, %14
  %39 = icmp sle <4 x i32> %33, %16
  %40 = icmp sle <4 x i32> %36, %18
  %41 = and <4 x i1> %37, %39
  %42 = and <4 x i1> %38, %40
  %43 = zext <4 x i1> %41 to <4 x i32>
  %44 = zext <4 x i1> %42 to <4 x i32>
  %45 = add <4 x i32> %28, %43
  %46 = add <4 x i32> %29, %44
  %47 = or i64 %27, 8
  %48 = getelementptr inbounds i32, i32* %0, i64 %47
  %49 = bitcast i32* %48 to <4 x i32>*
  %50 = load <4 x i32>, <4 x i32>* %49, align 4, !tbaa !5
  %51 = getelementptr inbounds i32, i32* %48, i64 4
  %52 = bitcast i32* %51 to <4 x i32>*
  %53 = load <4 x i32>, <4 x i32>* %52, align 4, !tbaa !5
  %54 = icmp sge <4 x i32> %50, %12
  %55 = icmp sge <4 x i32> %53, %14
  %56 = icmp sle <4 x i32> %50, %16
  %57 = icmp sle <4 x i32> %53, %18
  %58 = and <4 x i1> %54, %56
  %59 = and <4 x i1> %55, %57
  %60 = zext <4 x i1> %58 to <4 x i32>
  %61 = zext <4 x i1> %59 to <4 x i32>
  %62 = add <4 x i32> %45, %60
  %63 = add <4 x i32> %46, %61
  %64 = add nuw i64 %27, 16
  %65 = add i64 %30, 2
  %66 = icmp eq i64 %65, %25
  br i1 %66, label %67, label %26, !llvm.loop !9

67:                                               ; preds = %26, %9
  %68 = phi <4 x i32> [ undef, %9 ], [ %62, %26 ]
  %69 = phi <4 x i32> [ undef, %9 ], [ %63, %26 ]
  %70 = phi i64 [ 0, %9 ], [ %64, %26 ]
  %71 = phi <4 x i32> [ zeroinitializer, %9 ], [ %62, %26 ]
  %72 = phi <4 x i32> [ zeroinitializer, %9 ], [ %63, %26 ]
  %73 = icmp eq i64 %22, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds i32, i32* %0, i64 %70
  %76 = bitcast i32* %75 to <4 x i32>*
  %77 = load <4 x i32>, <4 x i32>* %76, align 4, !tbaa !5
  %78 = getelementptr inbounds i32, i32* %75, i64 4
  %79 = bitcast i32* %78 to <4 x i32>*
  %80 = load <4 x i32>, <4 x i32>* %79, align 4, !tbaa !5
  %81 = icmp sge <4 x i32> %77, %12
  %82 = icmp sge <4 x i32> %80, %14
  %83 = icmp sle <4 x i32> %77, %16
  %84 = icmp sle <4 x i32> %80, %18
  %85 = and <4 x i1> %81, %83
  %86 = and <4 x i1> %82, %84
  %87 = zext <4 x i1> %85 to <4 x i32>
  %88 = zext <4 x i1> %86 to <4 x i32>
  %89 = add <4 x i32> %71, %87
  %90 = add <4 x i32> %72, %88
  br label %91

91:                                               ; preds = %67, %74
  %92 = phi <4 x i32> [ %68, %67 ], [ %89, %74 ]
  %93 = phi <4 x i32> [ %69, %67 ], [ %90, %74 ]
  %94 = add <4 x i32> %93, %92
  %95 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %94)
  %96 = icmp eq i64 %10, %7
  br i1 %96, label %100, label %97

97:                                               ; preds = %6, %91
  %98 = phi i64 [ 0, %6 ], [ %10, %91 ]
  %99 = phi i32 [ 0, %6 ], [ %95, %91 ]
  br label %102

100:                                              ; preds = %102, %91, %4
  %101 = phi i32 [ 0, %4 ], [ %95, %91 ], [ %111, %102 ]
  ret i32 %101

102:                                              ; preds = %97, %102
  %103 = phi i64 [ %112, %102 ], [ %98, %97 ]
  %104 = phi i32 [ %111, %102 ], [ %99, %97 ]
  %105 = getelementptr inbounds i32, i32* %0, i64 %103
  %106 = load i32, i32* %105, align 4, !tbaa !5
  %107 = icmp sge i32 %106, %2
  %108 = icmp sle i32 %106, %3
  %109 = and i1 %107, %108
  %110 = zext i1 %109 to i32
  %111 = add nuw nsw i32 %104, %110
  %112 = add nuw nsw i64 %103, 1
  %113 = icmp eq i64 %112, %7
  br i1 %113, label %100, label %102, !llvm.loop !12
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
!12 = distinct !{!12, !10, !13, !11}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
