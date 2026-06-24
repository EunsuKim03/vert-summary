; ModuleID = 'benchmark/c_transcoder/LONGEST_SUBSEQUENCE_SUCH_THAT_DIFFERENCE_BETWEEN_ADJACENTS_IS_ONE/LONGEST_SUBSEQUENCE_SUCH_THAT_DIFFERENCE_BETWEEN_ADJACENTS_IS_ONE_processed.c'
source_filename = "benchmark/c_transcoder/LONGEST_SUBSEQUENCE_SUCH_THAT_DIFFERENCE_BETWEEN_ADJACENTS_IS_ONE/LONGEST_SUBSEQUENCE_SUCH_THAT_DIFFERENCE_BETWEEN_ADJACENTS_IS_ONE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %181

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
  br i1 %80, label %86, label %90

81:                                               ; preds = %77, %81
  %82 = phi i64 [ %84, %81 ], [ %78, %77 ]
  %83 = getelementptr inbounds i32, i32* %4, i64 %82
  store i32 1, i32* %83, align 4, !tbaa !5
  %84 = add nuw nsw i64 %82, 1
  %85 = icmp eq i64 %84, %3
  br i1 %85, label %79, label %81, !llvm.loop !14

86:                                               ; preds = %79, %159
  %87 = phi i64 [ %160, %159 ], [ 1, %79 ]
  %88 = getelementptr inbounds i32, i32* %0, i64 %87
  %89 = getelementptr inbounds i32, i32* %4, i64 %87
  br label %162

90:                                               ; preds = %159, %79
  br i1 %5, label %91, label %181

91:                                               ; preds = %90
  %92 = icmp ult i32 %1, 8
  br i1 %92, label %156, label %93

93:                                               ; preds = %91
  %94 = and i64 %3, 4294967288
  %95 = add nsw i64 %94, -8
  %96 = lshr exact i64 %95, 3
  %97 = add nuw nsw i64 %96, 1
  %98 = and i64 %97, 1
  %99 = icmp eq i64 %95, 0
  br i1 %99, label %131, label %100

100:                                              ; preds = %93
  %101 = and i64 %97, 4611686018427387902
  br label %102

102:                                              ; preds = %102, %100
  %103 = phi i64 [ 0, %100 ], [ %128, %102 ]
  %104 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %100 ], [ %126, %102 ]
  %105 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %100 ], [ %127, %102 ]
  %106 = phi i64 [ 0, %100 ], [ %129, %102 ]
  %107 = getelementptr inbounds i32, i32* %4, i64 %103
  %108 = bitcast i32* %107 to <4 x i32>*
  %109 = load <4 x i32>, <4 x i32>* %108, align 16, !tbaa !5
  %110 = getelementptr inbounds i32, i32* %107, i64 4
  %111 = bitcast i32* %110 to <4 x i32>*
  %112 = load <4 x i32>, <4 x i32>* %111, align 16, !tbaa !5
  %113 = icmp slt <4 x i32> %104, %109
  %114 = icmp slt <4 x i32> %105, %112
  %115 = select <4 x i1> %113, <4 x i32> %109, <4 x i32> %104
  %116 = select <4 x i1> %114, <4 x i32> %112, <4 x i32> %105
  %117 = or i64 %103, 8
  %118 = getelementptr inbounds i32, i32* %4, i64 %117
  %119 = bitcast i32* %118 to <4 x i32>*
  %120 = load <4 x i32>, <4 x i32>* %119, align 16, !tbaa !5
  %121 = getelementptr inbounds i32, i32* %118, i64 4
  %122 = bitcast i32* %121 to <4 x i32>*
  %123 = load <4 x i32>, <4 x i32>* %122, align 16, !tbaa !5
  %124 = icmp slt <4 x i32> %115, %120
  %125 = icmp slt <4 x i32> %116, %123
  %126 = select <4 x i1> %124, <4 x i32> %120, <4 x i32> %115
  %127 = select <4 x i1> %125, <4 x i32> %123, <4 x i32> %116
  %128 = add nuw i64 %103, 16
  %129 = add i64 %106, 2
  %130 = icmp eq i64 %129, %101
  br i1 %130, label %131, label %102, !llvm.loop !16

131:                                              ; preds = %102, %93
  %132 = phi <4 x i32> [ undef, %93 ], [ %126, %102 ]
  %133 = phi <4 x i32> [ undef, %93 ], [ %127, %102 ]
  %134 = phi i64 [ 0, %93 ], [ %128, %102 ]
  %135 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %93 ], [ %126, %102 ]
  %136 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %93 ], [ %127, %102 ]
  %137 = icmp eq i64 %98, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %131
  %139 = getelementptr inbounds i32, i32* %4, i64 %134
  %140 = bitcast i32* %139 to <4 x i32>*
  %141 = load <4 x i32>, <4 x i32>* %140, align 16, !tbaa !5
  %142 = getelementptr inbounds i32, i32* %139, i64 4
  %143 = bitcast i32* %142 to <4 x i32>*
  %144 = load <4 x i32>, <4 x i32>* %143, align 16, !tbaa !5
  %145 = icmp slt <4 x i32> %135, %141
  %146 = icmp slt <4 x i32> %136, %144
  %147 = select <4 x i1> %145, <4 x i32> %141, <4 x i32> %135
  %148 = select <4 x i1> %146, <4 x i32> %144, <4 x i32> %136
  br label %149

149:                                              ; preds = %131, %138
  %150 = phi <4 x i32> [ %132, %131 ], [ %147, %138 ]
  %151 = phi <4 x i32> [ %133, %131 ], [ %148, %138 ]
  %152 = icmp sgt <4 x i32> %150, %151
  %153 = select <4 x i1> %152, <4 x i32> %150, <4 x i32> %151
  %154 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %153)
  %155 = icmp eq i64 %94, %3
  br i1 %155, label %181, label %156

156:                                              ; preds = %91, %149
  %157 = phi i64 [ 0, %91 ], [ %94, %149 ]
  %158 = phi i32 [ 1, %91 ], [ %154, %149 ]
  br label %183

159:                                              ; preds = %178
  %160 = add nuw nsw i64 %87, 1
  %161 = icmp eq i64 %160, %3
  br i1 %161, label %90, label %86, !llvm.loop !17

162:                                              ; preds = %86, %178
  %163 = phi i64 [ 0, %86 ], [ %179, %178 ]
  %164 = load i32, i32* %88, align 4, !tbaa !5
  %165 = getelementptr inbounds i32, i32* %0, i64 %163
  %166 = load i32, i32* %165, align 4, !tbaa !5
  %167 = add nsw i32 %166, 1
  %168 = icmp eq i32 %164, %167
  %169 = add nsw i32 %166, -1
  %170 = icmp eq i32 %164, %169
  %171 = select i1 %168, i1 true, i1 %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %162
  %173 = load i32, i32* %89, align 4, !tbaa !5
  %174 = getelementptr inbounds i32, i32* %4, i64 %163
  %175 = load i32, i32* %174, align 4, !tbaa !5
  %176 = add nsw i32 %175, 1
  %177 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %173, i32 noundef %176) #3
  store i32 %177, i32* %89, align 4, !tbaa !5
  br label %178

178:                                              ; preds = %162, %172
  %179 = add nuw nsw i64 %163, 1
  %180 = icmp eq i64 %179, %87
  br i1 %180, label %159, label %162, !llvm.loop !18

181:                                              ; preds = %183, %149, %2, %90
  %182 = phi i32 [ 1, %90 ], [ 1, %2 ], [ %154, %149 ], [ %189, %183 ]
  ret i32 %182

183:                                              ; preds = %156, %183
  %184 = phi i64 [ %190, %183 ], [ %157, %156 ]
  %185 = phi i32 [ %189, %183 ], [ %158, %156 ]
  %186 = getelementptr inbounds i32, i32* %4, i64 %184
  %187 = load i32, i32* %186, align 4, !tbaa !5
  %188 = icmp slt i32 %185, %187
  %189 = select i1 %188, i32 %187, i32 %185
  %190 = add nuw nsw i64 %184, 1
  %191 = icmp eq i64 %190, %3
  br i1 %191, label %181, label %183, !llvm.loop !19
}

declare i32 @max(...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { nounwind }

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
