; ModuleID = 'benchmark/c_transcoder/MAXIMUM_LENGTH_SUBSEQUENCE_DIFFERENCE_ADJACENT_ELEMENTS_EITHER_0_1/MAXIMUM_LENGTH_SUBSEQUENCE_DIFFERENCE_ADJACENT_ELEMENTS_EITHER_0_1_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_LENGTH_SUBSEQUENCE_DIFFERENCE_ADJACENT_ELEMENTS_EITHER_0_1/MAXIMUM_LENGTH_SUBSEQUENCE_DIFFERENCE_ADJACENT_ELEMENTS_EITHER_0_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %180

6:                                                ; preds = %2
  %7 = icmp ult i32 %1, 8
  br i1 %7, label %77, label %8

8:                                                ; preds = %6
  %9 = and i64 %3, 4294967288
  %10 = add nsw i64 %9, -8
  %11 = lshr exact i64 %10, 3
  %12 = add nuw nsw i64 %11, 1
  %13 = and i64 %12, 7
  %14 = icmp ult i64 %10, 56
  br i1 %14, label %62, label %15

15:                                               ; preds = %8
  %16 = and i64 %12, 4611686018427387896
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i64 [ 0, %15 ], [ %59, %17 ]
  %19 = phi i64 [ 0, %15 ], [ %60, %17 ]
  %20 = getelementptr inbounds i32, i32* %4, i64 %18
  %21 = bitcast i32* %20 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %21, align 16, !tbaa !5
  %22 = getelementptr inbounds i32, i32* %20, i64 4
  %23 = bitcast i32* %22 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %23, align 16, !tbaa !5
  %24 = or i64 %18, 8
  %25 = getelementptr inbounds i32, i32* %4, i64 %24
  %26 = bitcast i32* %25 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %26, align 16, !tbaa !5
  %27 = getelementptr inbounds i32, i32* %25, i64 4
  %28 = bitcast i32* %27 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %28, align 16, !tbaa !5
  %29 = or i64 %18, 16
  %30 = getelementptr inbounds i32, i32* %4, i64 %29
  %31 = bitcast i32* %30 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %31, align 16, !tbaa !5
  %32 = getelementptr inbounds i32, i32* %30, i64 4
  %33 = bitcast i32* %32 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %33, align 16, !tbaa !5
  %34 = or i64 %18, 24
  %35 = getelementptr inbounds i32, i32* %4, i64 %34
  %36 = bitcast i32* %35 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %36, align 16, !tbaa !5
  %37 = getelementptr inbounds i32, i32* %35, i64 4
  %38 = bitcast i32* %37 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %38, align 16, !tbaa !5
  %39 = or i64 %18, 32
  %40 = getelementptr inbounds i32, i32* %4, i64 %39
  %41 = bitcast i32* %40 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %41, align 16, !tbaa !5
  %42 = getelementptr inbounds i32, i32* %40, i64 4
  %43 = bitcast i32* %42 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %43, align 16, !tbaa !5
  %44 = or i64 %18, 40
  %45 = getelementptr inbounds i32, i32* %4, i64 %44
  %46 = bitcast i32* %45 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %46, align 16, !tbaa !5
  %47 = getelementptr inbounds i32, i32* %45, i64 4
  %48 = bitcast i32* %47 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %48, align 16, !tbaa !5
  %49 = or i64 %18, 48
  %50 = getelementptr inbounds i32, i32* %4, i64 %49
  %51 = bitcast i32* %50 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %51, align 16, !tbaa !5
  %52 = getelementptr inbounds i32, i32* %50, i64 4
  %53 = bitcast i32* %52 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %53, align 16, !tbaa !5
  %54 = or i64 %18, 56
  %55 = getelementptr inbounds i32, i32* %4, i64 %54
  %56 = bitcast i32* %55 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %56, align 16, !tbaa !5
  %57 = getelementptr inbounds i32, i32* %55, i64 4
  %58 = bitcast i32* %57 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %58, align 16, !tbaa !5
  %59 = add nuw i64 %18, 64
  %60 = add nuw i64 %19, 8
  %61 = icmp eq i64 %60, %16
  br i1 %61, label %62, label %17, !llvm.loop !9

62:                                               ; preds = %17, %8
  %63 = phi i64 [ 0, %8 ], [ %59, %17 ]
  %64 = icmp eq i64 %13, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %62, %65
  %66 = phi i64 [ %72, %65 ], [ %63, %62 ]
  %67 = phi i64 [ %73, %65 ], [ 0, %62 ]
  %68 = getelementptr inbounds i32, i32* %4, i64 %66
  %69 = bitcast i32* %68 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %69, align 16, !tbaa !5
  %70 = getelementptr inbounds i32, i32* %68, i64 4
  %71 = bitcast i32* %70 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %71, align 16, !tbaa !5
  %72 = add nuw i64 %66, 8
  %73 = add i64 %67, 1
  %74 = icmp eq i64 %73, %13
  br i1 %74, label %75, label %65, !llvm.loop !12

75:                                               ; preds = %65, %62
  %76 = icmp eq i64 %9, %3
  br i1 %76, label %79, label %77

77:                                               ; preds = %6, %75
  %78 = phi i64 [ 0, %6 ], [ %9, %75 ]
  br label %81

79:                                               ; preds = %81, %75
  %80 = icmp sgt i32 %1, 1
  br i1 %80, label %86, label %91

81:                                               ; preds = %77, %81
  %82 = phi i64 [ %84, %81 ], [ %78, %77 ]
  %83 = getelementptr inbounds i32, i32* %4, i64 %82
  store i32 1, i32* %83, align 4, !tbaa !5
  %84 = add nuw nsw i64 %82, 1
  %85 = icmp eq i64 %84, %3
  br i1 %85, label %79, label %81, !llvm.loop !14

86:                                               ; preds = %79, %160
  %87 = phi i64 [ %161, %160 ], [ 1, %79 ]
  %88 = getelementptr inbounds i32, i32* %0, i64 %87
  %89 = load i32, i32* %88, align 4, !tbaa !5
  %90 = getelementptr inbounds i32, i32* %4, i64 %87
  br label %163

91:                                               ; preds = %160, %79
  br i1 %5, label %92, label %180

92:                                               ; preds = %91
  %93 = icmp ult i32 %1, 8
  br i1 %93, label %157, label %94

94:                                               ; preds = %92
  %95 = and i64 %3, 4294967288
  %96 = add nsw i64 %95, -8
  %97 = lshr exact i64 %96, 3
  %98 = add nuw nsw i64 %97, 1
  %99 = and i64 %98, 1
  %100 = icmp eq i64 %96, 0
  br i1 %100, label %132, label %101

101:                                              ; preds = %94
  %102 = and i64 %98, 4611686018427387902
  br label %103

103:                                              ; preds = %103, %101
  %104 = phi i64 [ 0, %101 ], [ %129, %103 ]
  %105 = phi <4 x i32> [ zeroinitializer, %101 ], [ %127, %103 ]
  %106 = phi <4 x i32> [ zeroinitializer, %101 ], [ %128, %103 ]
  %107 = phi i64 [ 0, %101 ], [ %130, %103 ]
  %108 = getelementptr inbounds i32, i32* %4, i64 %104
  %109 = bitcast i32* %108 to <4 x i32>*
  %110 = load <4 x i32>, <4 x i32>* %109, align 16, !tbaa !5
  %111 = getelementptr inbounds i32, i32* %108, i64 4
  %112 = bitcast i32* %111 to <4 x i32>*
  %113 = load <4 x i32>, <4 x i32>* %112, align 16, !tbaa !5
  %114 = icmp slt <4 x i32> %105, %110
  %115 = icmp slt <4 x i32> %106, %113
  %116 = select <4 x i1> %114, <4 x i32> %110, <4 x i32> %105
  %117 = select <4 x i1> %115, <4 x i32> %113, <4 x i32> %106
  %118 = or i64 %104, 8
  %119 = getelementptr inbounds i32, i32* %4, i64 %118
  %120 = bitcast i32* %119 to <4 x i32>*
  %121 = load <4 x i32>, <4 x i32>* %120, align 16, !tbaa !5
  %122 = getelementptr inbounds i32, i32* %119, i64 4
  %123 = bitcast i32* %122 to <4 x i32>*
  %124 = load <4 x i32>, <4 x i32>* %123, align 16, !tbaa !5
  %125 = icmp slt <4 x i32> %116, %121
  %126 = icmp slt <4 x i32> %117, %124
  %127 = select <4 x i1> %125, <4 x i32> %121, <4 x i32> %116
  %128 = select <4 x i1> %126, <4 x i32> %124, <4 x i32> %117
  %129 = add nuw i64 %104, 16
  %130 = add i64 %107, 2
  %131 = icmp eq i64 %130, %102
  br i1 %131, label %132, label %103, !llvm.loop !16

132:                                              ; preds = %103, %94
  %133 = phi <4 x i32> [ undef, %94 ], [ %127, %103 ]
  %134 = phi <4 x i32> [ undef, %94 ], [ %128, %103 ]
  %135 = phi i64 [ 0, %94 ], [ %129, %103 ]
  %136 = phi <4 x i32> [ zeroinitializer, %94 ], [ %127, %103 ]
  %137 = phi <4 x i32> [ zeroinitializer, %94 ], [ %128, %103 ]
  %138 = icmp eq i64 %99, 0
  br i1 %138, label %150, label %139

139:                                              ; preds = %132
  %140 = getelementptr inbounds i32, i32* %4, i64 %135
  %141 = bitcast i32* %140 to <4 x i32>*
  %142 = load <4 x i32>, <4 x i32>* %141, align 16, !tbaa !5
  %143 = getelementptr inbounds i32, i32* %140, i64 4
  %144 = bitcast i32* %143 to <4 x i32>*
  %145 = load <4 x i32>, <4 x i32>* %144, align 16, !tbaa !5
  %146 = icmp slt <4 x i32> %136, %142
  %147 = icmp slt <4 x i32> %137, %145
  %148 = select <4 x i1> %146, <4 x i32> %142, <4 x i32> %136
  %149 = select <4 x i1> %147, <4 x i32> %145, <4 x i32> %137
  br label %150

150:                                              ; preds = %132, %139
  %151 = phi <4 x i32> [ %133, %132 ], [ %148, %139 ]
  %152 = phi <4 x i32> [ %134, %132 ], [ %149, %139 ]
  %153 = icmp sgt <4 x i32> %151, %152
  %154 = select <4 x i1> %153, <4 x i32> %151, <4 x i32> %152
  %155 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %154)
  %156 = icmp eq i64 %95, %3
  br i1 %156, label %180, label %157

157:                                              ; preds = %92, %150
  %158 = phi i64 [ 0, %92 ], [ %95, %150 ]
  %159 = phi i32 [ 0, %92 ], [ %155, %150 ]
  br label %182

160:                                              ; preds = %177
  %161 = add nuw nsw i64 %87, 1
  %162 = icmp eq i64 %161, %3
  br i1 %162, label %91, label %86, !llvm.loop !17

163:                                              ; preds = %86, %177
  %164 = phi i64 [ 0, %86 ], [ %178, %177 ]
  %165 = getelementptr inbounds i32, i32* %0, i64 %164
  %166 = load i32, i32* %165, align 4, !tbaa !5
  %167 = sub nsw i32 %89, %166
  %168 = tail call i32 @llvm.abs.i32(i32 %167, i1 true)
  %169 = icmp ult i32 %168, 2
  br i1 %169, label %170, label %177

170:                                              ; preds = %163
  %171 = load i32, i32* %90, align 4, !tbaa !5
  %172 = getelementptr inbounds i32, i32* %4, i64 %164
  %173 = load i32, i32* %172, align 4, !tbaa !5
  %174 = icmp sgt i32 %171, %173
  br i1 %174, label %177, label %175

175:                                              ; preds = %170
  %176 = add nsw i32 %173, 1
  store i32 %176, i32* %90, align 4, !tbaa !5
  br label %177

177:                                              ; preds = %163, %170, %175
  %178 = add nuw nsw i64 %164, 1
  %179 = icmp eq i64 %178, %87
  br i1 %179, label %160, label %163, !llvm.loop !18

180:                                              ; preds = %182, %150, %2, %91
  %181 = phi i32 [ 0, %91 ], [ 0, %2 ], [ %155, %150 ], [ %188, %182 ]
  ret i32 %181

182:                                              ; preds = %157, %182
  %183 = phi i64 [ %189, %182 ], [ %158, %157 ]
  %184 = phi i32 [ %188, %182 ], [ %159, %157 ]
  %185 = getelementptr inbounds i32, i32* %4, i64 %183
  %186 = load i32, i32* %185, align 4, !tbaa !5
  %187 = icmp slt i32 %184, %186
  %188 = select i1 %187, i32 %186, i32 %184
  %189 = add nuw nsw i64 %183, 1
  %190 = icmp eq i64 %189, %3
  br i1 %190, label %180, label %182, !llvm.loop !19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #2

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !10, !15, !11}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10, !15, !11}
