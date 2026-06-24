; ModuleID = 'benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SET_14_MAXIMUM_SUM_INCREASING_SUBSEQUENCE/DYNAMIC_PROGRAMMING_SET_14_MAXIMUM_SUM_INCREASING_SUBSEQUENCE_processed.c'
source_filename = "benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SET_14_MAXIMUM_SUM_INCREASING_SUBSEQUENCE/DYNAMIC_PROGRAMMING_SET_14_MAXIMUM_SUM_INCREASING_SUBSEQUENCE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %146

6:                                                ; preds = %2
  %7 = bitcast i32* %4 to i8*
  %8 = bitcast i32* %0 to i8*
  %9 = shl nuw nsw i64 %3, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %7, i8* align 4 %8, i64 %9, i1 false), !tbaa !5
  %10 = icmp eq i32 %1, 1
  br i1 %10, label %22, label %11

11:                                               ; preds = %6, %133
  %12 = phi i64 [ %136, %133 ], [ 0, %6 ]
  %13 = phi i64 [ %134, %133 ], [ 1, %6 ]
  %14 = getelementptr inbounds i32, i32* %0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = getelementptr inbounds i32, i32* %4, i64 %13
  %17 = and i64 %13, 1
  %18 = icmp eq i64 %12, 0
  br i1 %18, label %119, label %19

19:                                               ; preds = %11
  %20 = and i64 %13, 9223372036854775806
  br label %90

21:                                               ; preds = %133
  br i1 %5, label %22, label %146

22:                                               ; preds = %6, %21
  %23 = icmp ult i32 %1, 8
  br i1 %23, label %87, label %24

24:                                               ; preds = %22
  %25 = and i64 %3, 4294967288
  %26 = add nsw i64 %25, -8
  %27 = lshr exact i64 %26, 3
  %28 = add nuw nsw i64 %27, 1
  %29 = and i64 %28, 1
  %30 = icmp eq i64 %26, 0
  br i1 %30, label %62, label %31

31:                                               ; preds = %24
  %32 = and i64 %28, 4611686018427387902
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 0, %31 ], [ %59, %33 ]
  %35 = phi <4 x i32> [ zeroinitializer, %31 ], [ %57, %33 ]
  %36 = phi <4 x i32> [ zeroinitializer, %31 ], [ %58, %33 ]
  %37 = phi i64 [ 0, %31 ], [ %60, %33 ]
  %38 = getelementptr inbounds i32, i32* %4, i64 %34
  %39 = bitcast i32* %38 to <4 x i32>*
  %40 = load <4 x i32>, <4 x i32>* %39, align 16, !tbaa !5
  %41 = getelementptr inbounds i32, i32* %38, i64 4
  %42 = bitcast i32* %41 to <4 x i32>*
  %43 = load <4 x i32>, <4 x i32>* %42, align 16, !tbaa !5
  %44 = icmp slt <4 x i32> %35, %40
  %45 = icmp slt <4 x i32> %36, %43
  %46 = select <4 x i1> %44, <4 x i32> %40, <4 x i32> %35
  %47 = select <4 x i1> %45, <4 x i32> %43, <4 x i32> %36
  %48 = or i64 %34, 8
  %49 = getelementptr inbounds i32, i32* %4, i64 %48
  %50 = bitcast i32* %49 to <4 x i32>*
  %51 = load <4 x i32>, <4 x i32>* %50, align 16, !tbaa !5
  %52 = getelementptr inbounds i32, i32* %49, i64 4
  %53 = bitcast i32* %52 to <4 x i32>*
  %54 = load <4 x i32>, <4 x i32>* %53, align 16, !tbaa !5
  %55 = icmp slt <4 x i32> %46, %51
  %56 = icmp slt <4 x i32> %47, %54
  %57 = select <4 x i1> %55, <4 x i32> %51, <4 x i32> %46
  %58 = select <4 x i1> %56, <4 x i32> %54, <4 x i32> %47
  %59 = add nuw i64 %34, 16
  %60 = add i64 %37, 2
  %61 = icmp eq i64 %60, %32
  br i1 %61, label %62, label %33, !llvm.loop !9

62:                                               ; preds = %33, %24
  %63 = phi <4 x i32> [ undef, %24 ], [ %57, %33 ]
  %64 = phi <4 x i32> [ undef, %24 ], [ %58, %33 ]
  %65 = phi i64 [ 0, %24 ], [ %59, %33 ]
  %66 = phi <4 x i32> [ zeroinitializer, %24 ], [ %57, %33 ]
  %67 = phi <4 x i32> [ zeroinitializer, %24 ], [ %58, %33 ]
  %68 = icmp eq i64 %29, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds i32, i32* %4, i64 %65
  %71 = bitcast i32* %70 to <4 x i32>*
  %72 = load <4 x i32>, <4 x i32>* %71, align 16, !tbaa !5
  %73 = getelementptr inbounds i32, i32* %70, i64 4
  %74 = bitcast i32* %73 to <4 x i32>*
  %75 = load <4 x i32>, <4 x i32>* %74, align 16, !tbaa !5
  %76 = icmp slt <4 x i32> %66, %72
  %77 = icmp slt <4 x i32> %67, %75
  %78 = select <4 x i1> %76, <4 x i32> %72, <4 x i32> %66
  %79 = select <4 x i1> %77, <4 x i32> %75, <4 x i32> %67
  br label %80

80:                                               ; preds = %62, %69
  %81 = phi <4 x i32> [ %63, %62 ], [ %78, %69 ]
  %82 = phi <4 x i32> [ %64, %62 ], [ %79, %69 ]
  %83 = icmp sgt <4 x i32> %81, %82
  %84 = select <4 x i1> %83, <4 x i32> %81, <4 x i32> %82
  %85 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %84)
  %86 = icmp eq i64 %25, %3
  br i1 %86, label %146, label %87

87:                                               ; preds = %22, %80
  %88 = phi i64 [ 0, %22 ], [ %25, %80 ]
  %89 = phi i32 [ 0, %22 ], [ %85, %80 ]
  br label %137

90:                                               ; preds = %115, %19
  %91 = phi i64 [ 0, %19 ], [ %116, %115 ]
  %92 = phi i64 [ 0, %19 ], [ %117, %115 ]
  %93 = getelementptr inbounds i32, i32* %0, i64 %91
  %94 = load i32, i32* %93, align 4, !tbaa !5
  %95 = icmp sgt i32 %15, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i32, i32* %16, align 4, !tbaa !5
  %98 = getelementptr inbounds i32, i32* %4, i64 %91
  %99 = load i32, i32* %98, align 8, !tbaa !5
  %100 = add nsw i32 %99, %15
  %101 = icmp slt i32 %97, %100
  %102 = select i1 %101, i32 %100, i32 %97
  store i32 %102, i32* %16, align 4
  br label %103

103:                                              ; preds = %96, %90
  %104 = or i64 %91, 1
  %105 = getelementptr inbounds i32, i32* %0, i64 %104
  %106 = load i32, i32* %105, align 4, !tbaa !5
  %107 = icmp sgt i32 %15, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load i32, i32* %16, align 4, !tbaa !5
  %110 = getelementptr inbounds i32, i32* %4, i64 %104
  %111 = load i32, i32* %110, align 4, !tbaa !5
  %112 = add nsw i32 %111, %15
  %113 = icmp slt i32 %109, %112
  %114 = select i1 %113, i32 %112, i32 %109
  store i32 %114, i32* %16, align 4
  br label %115

115:                                              ; preds = %108, %103
  %116 = add nuw nsw i64 %91, 2
  %117 = add i64 %92, 2
  %118 = icmp eq i64 %117, %20
  br i1 %118, label %119, label %90, !llvm.loop !12

119:                                              ; preds = %115, %11
  %120 = phi i64 [ 0, %11 ], [ %116, %115 ]
  %121 = icmp eq i64 %17, 0
  br i1 %121, label %133, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds i32, i32* %0, i64 %120
  %124 = load i32, i32* %123, align 4, !tbaa !5
  %125 = icmp sgt i32 %15, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load i32, i32* %16, align 4, !tbaa !5
  %128 = getelementptr inbounds i32, i32* %4, i64 %120
  %129 = load i32, i32* %128, align 4, !tbaa !5
  %130 = add nsw i32 %129, %15
  %131 = icmp slt i32 %127, %130
  %132 = select i1 %131, i32 %130, i32 %127
  store i32 %132, i32* %16, align 4
  br label %133

133:                                              ; preds = %122, %126, %119
  %134 = add nuw nsw i64 %13, 1
  %135 = icmp eq i64 %134, %3
  %136 = add i64 %12, 1
  br i1 %135, label %21, label %11, !llvm.loop !13

137:                                              ; preds = %87, %137
  %138 = phi i64 [ %144, %137 ], [ %88, %87 ]
  %139 = phi i32 [ %143, %137 ], [ %89, %87 ]
  %140 = getelementptr inbounds i32, i32* %4, i64 %138
  %141 = load i32, i32* %140, align 4, !tbaa !5
  %142 = icmp slt i32 %139, %141
  %143 = select i1 %142, i32 %141, i32 %139
  %144 = add nuw nsw i64 %138, 1
  %145 = icmp eq i64 %144, %3
  br i1 %145, label %146, label %137, !llvm.loop !14

146:                                              ; preds = %137, %80, %2, %21
  %147 = phi i32 [ 0, %21 ], [ 0, %2 ], [ %85, %80 ], [ %143, %137 ]
  ret i32 %147
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #2

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
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
