; ModuleID = 'benchmark/c_transcoder/LONGEST_COMMON_INCREASING_SUBSEQUENCE_LCS_LIS/LONGEST_COMMON_INCREASING_SUBSEQUENCE_LCS_LIS_processed.c'
source_filename = "benchmark/c_transcoder/LONGEST_COMMON_INCREASING_SUBSEQUENCE_LCS_LIS/LONGEST_COMMON_INCREASING_SUBSEQUENCE_LCS_LIS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = zext i32 %3 to i64
  %6 = alloca i32, i64 %5, align 16
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = bitcast i32* %6 to i8*
  %10 = shl nuw nsw i64 %5, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false), !tbaa !5
  br label %11

11:                                               ; preds = %8, %4
  %12 = icmp sgt i32 %1, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = zext i32 %1 to i64
  br label %15

15:                                               ; preds = %13, %89
  %16 = phi i64 [ 0, %13 ], [ %90, %89 ]
  br i1 %7, label %17, label %89

17:                                               ; preds = %15
  %18 = getelementptr inbounds i32, i32* %0, i64 %16
  %19 = load i32, i32* %18, align 4, !tbaa !5
  br label %92

20:                                               ; preds = %89, %11
  br i1 %7, label %21, label %115

21:                                               ; preds = %20
  %22 = icmp ult i32 %3, 8
  br i1 %22, label %86, label %23

23:                                               ; preds = %21
  %24 = and i64 %5, 4294967288
  %25 = add nsw i64 %24, -8
  %26 = lshr exact i64 %25, 3
  %27 = add nuw nsw i64 %26, 1
  %28 = and i64 %27, 1
  %29 = icmp eq i64 %25, 0
  br i1 %29, label %61, label %30

30:                                               ; preds = %23
  %31 = and i64 %27, 4611686018427387902
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %58, %32 ]
  %34 = phi <4 x i32> [ zeroinitializer, %30 ], [ %56, %32 ]
  %35 = phi <4 x i32> [ zeroinitializer, %30 ], [ %57, %32 ]
  %36 = phi i64 [ 0, %30 ], [ %59, %32 ]
  %37 = getelementptr inbounds i32, i32* %6, i64 %33
  %38 = bitcast i32* %37 to <4 x i32>*
  %39 = load <4 x i32>, <4 x i32>* %38, align 16, !tbaa !5
  %40 = getelementptr inbounds i32, i32* %37, i64 4
  %41 = bitcast i32* %40 to <4 x i32>*
  %42 = load <4 x i32>, <4 x i32>* %41, align 16, !tbaa !5
  %43 = icmp sgt <4 x i32> %39, %34
  %44 = icmp sgt <4 x i32> %42, %35
  %45 = select <4 x i1> %43, <4 x i32> %39, <4 x i32> %34
  %46 = select <4 x i1> %44, <4 x i32> %42, <4 x i32> %35
  %47 = or i64 %33, 8
  %48 = getelementptr inbounds i32, i32* %6, i64 %47
  %49 = bitcast i32* %48 to <4 x i32>*
  %50 = load <4 x i32>, <4 x i32>* %49, align 16, !tbaa !5
  %51 = getelementptr inbounds i32, i32* %48, i64 4
  %52 = bitcast i32* %51 to <4 x i32>*
  %53 = load <4 x i32>, <4 x i32>* %52, align 16, !tbaa !5
  %54 = icmp sgt <4 x i32> %50, %45
  %55 = icmp sgt <4 x i32> %53, %46
  %56 = select <4 x i1> %54, <4 x i32> %50, <4 x i32> %45
  %57 = select <4 x i1> %55, <4 x i32> %53, <4 x i32> %46
  %58 = add nuw i64 %33, 16
  %59 = add i64 %36, 2
  %60 = icmp eq i64 %59, %31
  br i1 %60, label %61, label %32, !llvm.loop !9

61:                                               ; preds = %32, %23
  %62 = phi <4 x i32> [ undef, %23 ], [ %56, %32 ]
  %63 = phi <4 x i32> [ undef, %23 ], [ %57, %32 ]
  %64 = phi i64 [ 0, %23 ], [ %58, %32 ]
  %65 = phi <4 x i32> [ zeroinitializer, %23 ], [ %56, %32 ]
  %66 = phi <4 x i32> [ zeroinitializer, %23 ], [ %57, %32 ]
  %67 = icmp eq i64 %28, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds i32, i32* %6, i64 %64
  %70 = bitcast i32* %69 to <4 x i32>*
  %71 = load <4 x i32>, <4 x i32>* %70, align 16, !tbaa !5
  %72 = getelementptr inbounds i32, i32* %69, i64 4
  %73 = bitcast i32* %72 to <4 x i32>*
  %74 = load <4 x i32>, <4 x i32>* %73, align 16, !tbaa !5
  %75 = icmp sgt <4 x i32> %71, %65
  %76 = icmp sgt <4 x i32> %74, %66
  %77 = select <4 x i1> %75, <4 x i32> %71, <4 x i32> %65
  %78 = select <4 x i1> %76, <4 x i32> %74, <4 x i32> %66
  br label %79

79:                                               ; preds = %61, %68
  %80 = phi <4 x i32> [ %62, %61 ], [ %77, %68 ]
  %81 = phi <4 x i32> [ %63, %61 ], [ %78, %68 ]
  %82 = icmp sgt <4 x i32> %80, %81
  %83 = select <4 x i1> %82, <4 x i32> %80, <4 x i32> %81
  %84 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %83)
  %85 = icmp eq i64 %24, %5
  br i1 %85, label %115, label %86

86:                                               ; preds = %21, %79
  %87 = phi i64 [ 0, %21 ], [ %24, %79 ]
  %88 = phi i32 [ 0, %21 ], [ %84, %79 ]
  br label %117

89:                                               ; preds = %111, %15
  %90 = add nuw nsw i64 %16, 1
  %91 = icmp eq i64 %90, %14
  br i1 %91, label %20, label %15, !llvm.loop !12

92:                                               ; preds = %17, %111
  %93 = phi i64 [ 0, %17 ], [ %113, %111 ]
  %94 = phi i32 [ 0, %17 ], [ %112, %111 ]
  %95 = getelementptr inbounds i32, i32* %2, i64 %93
  %96 = load i32, i32* %95, align 4, !tbaa !5
  %97 = icmp eq i32 %19, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = getelementptr inbounds i32, i32* %6, i64 %93
  %100 = load i32, i32* %99, align 4, !tbaa !5
  %101 = icmp slt i32 %94, %100
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = add nsw i32 %94, 1
  store i32 %103, i32* %99, align 4, !tbaa !5
  br label %104

104:                                              ; preds = %98, %102, %92
  %105 = icmp sgt i32 %19, %96
  br i1 %105, label %106, label %111

106:                                              ; preds = %104
  %107 = getelementptr inbounds i32, i32* %6, i64 %93
  %108 = load i32, i32* %107, align 4, !tbaa !5
  %109 = icmp sgt i32 %108, %94
  %110 = select i1 %109, i32 %108, i32 %94
  br label %111

111:                                              ; preds = %106, %104
  %112 = phi i32 [ %94, %104 ], [ %110, %106 ]
  %113 = add nuw nsw i64 %93, 1
  %114 = icmp eq i64 %113, %5
  br i1 %114, label %89, label %92, !llvm.loop !13

115:                                              ; preds = %117, %79, %20
  %116 = phi i32 [ 0, %20 ], [ %84, %79 ], [ %123, %117 ]
  ret i32 %116

117:                                              ; preds = %86, %117
  %118 = phi i64 [ %124, %117 ], [ %87, %86 ]
  %119 = phi i32 [ %123, %117 ], [ %88, %86 ]
  %120 = getelementptr inbounds i32, i32* %6, i64 %118
  %121 = load i32, i32* %120, align 4, !tbaa !5
  %122 = icmp sgt i32 %121, %119
  %123 = select i1 %122, i32 %121, i32 %119
  %124 = add nuw nsw i64 %118, 1
  %125 = icmp eq i64 %124, %5
  br i1 %125, label %115, label %117, !llvm.loop !14
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #2

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
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
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10, !15, !11}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
