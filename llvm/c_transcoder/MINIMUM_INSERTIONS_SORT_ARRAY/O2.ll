; ModuleID = 'benchmark/c_transcoder/MINIMUM_INSERTIONS_SORT_ARRAY/MINIMUM_INSERTIONS_SORT_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_INSERTIONS_SORT_ARRAY/MINIMUM_INSERTIONS_SORT_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %212

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
  br i1 %80, label %86, label %96

81:                                               ; preds = %77, %81
  %82 = phi i64 [ %84, %81 ], [ %78, %77 ]
  %83 = getelementptr inbounds i32, i32* %4, i64 %82
  store i32 1, i32* %83, align 4, !tbaa !5
  %84 = add nuw nsw i64 %82, 1
  %85 = icmp eq i64 %84, %3
  br i1 %85, label %79, label %81, !llvm.loop !14

86:                                               ; preds = %79, %179
  %87 = phi i64 [ %182, %179 ], [ 0, %79 ]
  %88 = phi i64 [ %180, %179 ], [ 1, %79 ]
  %89 = getelementptr inbounds i32, i32* %0, i64 %88
  %90 = load i32, i32* %89, align 4, !tbaa !5
  %91 = getelementptr inbounds i32, i32* %4, i64 %88
  %92 = and i64 %88, 1
  %93 = icmp eq i64 %87, 0
  br i1 %93, label %165, label %94

94:                                               ; preds = %86
  %95 = and i64 %88, 9223372036854775806
  br label %183

96:                                               ; preds = %179, %79
  br i1 %5, label %97, label %212

97:                                               ; preds = %96
  %98 = icmp ult i32 %1, 8
  br i1 %98, label %162, label %99

99:                                               ; preds = %97
  %100 = and i64 %3, 4294967288
  %101 = add nsw i64 %100, -8
  %102 = lshr exact i64 %101, 3
  %103 = add nuw nsw i64 %102, 1
  %104 = and i64 %103, 1
  %105 = icmp eq i64 %101, 0
  br i1 %105, label %137, label %106

106:                                              ; preds = %99
  %107 = and i64 %103, 4611686018427387902
  br label %108

108:                                              ; preds = %108, %106
  %109 = phi i64 [ 0, %106 ], [ %134, %108 ]
  %110 = phi <4 x i32> [ zeroinitializer, %106 ], [ %132, %108 ]
  %111 = phi <4 x i32> [ zeroinitializer, %106 ], [ %133, %108 ]
  %112 = phi i64 [ 0, %106 ], [ %135, %108 ]
  %113 = getelementptr inbounds i32, i32* %4, i64 %109
  %114 = bitcast i32* %113 to <4 x i32>*
  %115 = load <4 x i32>, <4 x i32>* %114, align 16, !tbaa !5
  %116 = getelementptr inbounds i32, i32* %113, i64 4
  %117 = bitcast i32* %116 to <4 x i32>*
  %118 = load <4 x i32>, <4 x i32>* %117, align 16, !tbaa !5
  %119 = icmp slt <4 x i32> %110, %115
  %120 = icmp slt <4 x i32> %111, %118
  %121 = select <4 x i1> %119, <4 x i32> %115, <4 x i32> %110
  %122 = select <4 x i1> %120, <4 x i32> %118, <4 x i32> %111
  %123 = or i64 %109, 8
  %124 = getelementptr inbounds i32, i32* %4, i64 %123
  %125 = bitcast i32* %124 to <4 x i32>*
  %126 = load <4 x i32>, <4 x i32>* %125, align 16, !tbaa !5
  %127 = getelementptr inbounds i32, i32* %124, i64 4
  %128 = bitcast i32* %127 to <4 x i32>*
  %129 = load <4 x i32>, <4 x i32>* %128, align 16, !tbaa !5
  %130 = icmp slt <4 x i32> %121, %126
  %131 = icmp slt <4 x i32> %122, %129
  %132 = select <4 x i1> %130, <4 x i32> %126, <4 x i32> %121
  %133 = select <4 x i1> %131, <4 x i32> %129, <4 x i32> %122
  %134 = add nuw i64 %109, 16
  %135 = add i64 %112, 2
  %136 = icmp eq i64 %135, %107
  br i1 %136, label %137, label %108, !llvm.loop !16

137:                                              ; preds = %108, %99
  %138 = phi <4 x i32> [ undef, %99 ], [ %132, %108 ]
  %139 = phi <4 x i32> [ undef, %99 ], [ %133, %108 ]
  %140 = phi i64 [ 0, %99 ], [ %134, %108 ]
  %141 = phi <4 x i32> [ zeroinitializer, %99 ], [ %132, %108 ]
  %142 = phi <4 x i32> [ zeroinitializer, %99 ], [ %133, %108 ]
  %143 = icmp eq i64 %104, 0
  br i1 %143, label %155, label %144

144:                                              ; preds = %137
  %145 = getelementptr inbounds i32, i32* %4, i64 %140
  %146 = bitcast i32* %145 to <4 x i32>*
  %147 = load <4 x i32>, <4 x i32>* %146, align 16, !tbaa !5
  %148 = getelementptr inbounds i32, i32* %145, i64 4
  %149 = bitcast i32* %148 to <4 x i32>*
  %150 = load <4 x i32>, <4 x i32>* %149, align 16, !tbaa !5
  %151 = icmp slt <4 x i32> %141, %147
  %152 = icmp slt <4 x i32> %142, %150
  %153 = select <4 x i1> %151, <4 x i32> %147, <4 x i32> %141
  %154 = select <4 x i1> %152, <4 x i32> %150, <4 x i32> %142
  br label %155

155:                                              ; preds = %137, %144
  %156 = phi <4 x i32> [ %138, %137 ], [ %153, %144 ]
  %157 = phi <4 x i32> [ %139, %137 ], [ %154, %144 ]
  %158 = icmp sgt <4 x i32> %156, %157
  %159 = select <4 x i1> %158, <4 x i32> %156, <4 x i32> %157
  %160 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %159)
  %161 = icmp eq i64 %100, %3
  br i1 %161, label %212, label %162

162:                                              ; preds = %97, %155
  %163 = phi i64 [ 0, %97 ], [ %100, %155 ]
  %164 = phi i32 [ 0, %97 ], [ %160, %155 ]
  br label %215

165:                                              ; preds = %208, %86
  %166 = phi i64 [ 0, %86 ], [ %209, %208 ]
  %167 = icmp eq i64 %92, 0
  br i1 %167, label %179, label %168

168:                                              ; preds = %165
  %169 = getelementptr inbounds i32, i32* %0, i64 %166
  %170 = load i32, i32* %169, align 4, !tbaa !5
  %171 = icmp slt i32 %90, %170
  br i1 %171, label %179, label %172

172:                                              ; preds = %168
  %173 = load i32, i32* %91, align 4, !tbaa !5
  %174 = getelementptr inbounds i32, i32* %4, i64 %166
  %175 = load i32, i32* %174, align 4, !tbaa !5
  %176 = icmp sgt i32 %173, %175
  br i1 %176, label %179, label %177

177:                                              ; preds = %172
  %178 = add nsw i32 %175, 1
  store i32 %178, i32* %91, align 4, !tbaa !5
  br label %179

179:                                              ; preds = %168, %172, %177, %165
  %180 = add nuw nsw i64 %88, 1
  %181 = icmp eq i64 %180, %3
  %182 = add i64 %87, 1
  br i1 %181, label %96, label %86, !llvm.loop !17

183:                                              ; preds = %208, %94
  %184 = phi i64 [ 0, %94 ], [ %209, %208 ]
  %185 = phi i64 [ 0, %94 ], [ %210, %208 ]
  %186 = getelementptr inbounds i32, i32* %0, i64 %184
  %187 = load i32, i32* %186, align 4, !tbaa !5
  %188 = icmp slt i32 %90, %187
  br i1 %188, label %196, label %189

189:                                              ; preds = %183
  %190 = load i32, i32* %91, align 4, !tbaa !5
  %191 = getelementptr inbounds i32, i32* %4, i64 %184
  %192 = load i32, i32* %191, align 8, !tbaa !5
  %193 = icmp sgt i32 %190, %192
  br i1 %193, label %196, label %194

194:                                              ; preds = %189
  %195 = add nsw i32 %192, 1
  store i32 %195, i32* %91, align 4, !tbaa !5
  br label %196

196:                                              ; preds = %183, %189, %194
  %197 = or i64 %184, 1
  %198 = getelementptr inbounds i32, i32* %0, i64 %197
  %199 = load i32, i32* %198, align 4, !tbaa !5
  %200 = icmp slt i32 %90, %199
  br i1 %200, label %208, label %201

201:                                              ; preds = %196
  %202 = load i32, i32* %91, align 4, !tbaa !5
  %203 = getelementptr inbounds i32, i32* %4, i64 %197
  %204 = load i32, i32* %203, align 4, !tbaa !5
  %205 = icmp sgt i32 %202, %204
  br i1 %205, label %208, label %206

206:                                              ; preds = %201
  %207 = add nsw i32 %204, 1
  store i32 %207, i32* %91, align 4, !tbaa !5
  br label %208

208:                                              ; preds = %206, %201, %196
  %209 = add nuw nsw i64 %184, 2
  %210 = add i64 %185, 2
  %211 = icmp eq i64 %210, %95
  br i1 %211, label %165, label %183, !llvm.loop !18

212:                                              ; preds = %215, %155, %2, %96
  %213 = phi i32 [ 0, %96 ], [ 0, %2 ], [ %160, %155 ], [ %221, %215 ]
  %214 = sub nsw i32 %1, %213
  ret i32 %214

215:                                              ; preds = %162, %215
  %216 = phi i64 [ %222, %215 ], [ %163, %162 ]
  %217 = phi i32 [ %221, %215 ], [ %164, %162 ]
  %218 = getelementptr inbounds i32, i32* %4, i64 %216
  %219 = load i32, i32* %218, align 4, !tbaa !5
  %220 = icmp slt i32 %217, %219
  %221 = select i1 %220, i32 %219, i32 %217
  %222 = add nuw nsw i64 %216, 1
  %223 = icmp eq i64 %222, %3
  br i1 %223, label %212, label %215, !llvm.loop !19
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #1

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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !10, !15, !11}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10, !15, !11}
