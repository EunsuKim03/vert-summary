; ModuleID = 'benchmark/c_transcoder/COUNT_POSSIBLE_PATHS_TOP_LEFT_BOTTOM_RIGHT_NXM_MATRIX_1/COUNT_POSSIBLE_PATHS_TOP_LEFT_BOTTOM_RIGHT_NXM_MATRIX_1_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_POSSIBLE_PATHS_TOP_LEFT_BOTTOM_RIGHT_NXM_MATRIX_1/COUNT_POSSIBLE_PATHS_TOP_LEFT_BOTTOM_RIGHT_NXM_MATRIX_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %0 to i64
  %4 = zext i32 %1 to i64
  %5 = mul nuw i64 %4, %3
  %6 = alloca i32, i64 %5, align 16
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %8, label %83

8:                                                ; preds = %2
  %9 = icmp ugt i32 %0, 7
  %10 = icmp eq i32 %1, 1
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %66

12:                                               ; preds = %8
  %13 = and i64 %3, 4294967288
  %14 = add nsw i64 %13, -8
  %15 = lshr exact i64 %14, 3
  %16 = add nuw nsw i64 %15, 1
  %17 = and i64 %16, 3
  %18 = icmp ult i64 %14, 24
  br i1 %18, label %50, label %19

19:                                               ; preds = %12
  %20 = and i64 %16, 4611686018427387900
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i64 [ 0, %19 ], [ %47, %21 ]
  %23 = phi i64 [ 0, %19 ], [ %48, %21 ]
  %24 = mul nuw nsw i64 %22, %4
  %25 = getelementptr inbounds i32, i32* %6, i64 %24
  %26 = bitcast i32* %25 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %26, align 16, !tbaa !5
  %27 = getelementptr inbounds i32, i32* %25, i64 4
  %28 = bitcast i32* %27 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %28, align 16, !tbaa !5
  %29 = or i64 %22, 8
  %30 = mul nuw nsw i64 %29, %4
  %31 = getelementptr inbounds i32, i32* %6, i64 %30
  %32 = bitcast i32* %31 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %32, align 16, !tbaa !5
  %33 = getelementptr inbounds i32, i32* %31, i64 4
  %34 = bitcast i32* %33 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %34, align 16, !tbaa !5
  %35 = or i64 %22, 16
  %36 = mul nuw nsw i64 %35, %4
  %37 = getelementptr inbounds i32, i32* %6, i64 %36
  %38 = bitcast i32* %37 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %38, align 16, !tbaa !5
  %39 = getelementptr inbounds i32, i32* %37, i64 4
  %40 = bitcast i32* %39 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %40, align 16, !tbaa !5
  %41 = or i64 %22, 24
  %42 = mul nuw nsw i64 %41, %4
  %43 = getelementptr inbounds i32, i32* %6, i64 %42
  %44 = bitcast i32* %43 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %44, align 16, !tbaa !5
  %45 = getelementptr inbounds i32, i32* %43, i64 4
  %46 = bitcast i32* %45 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %46, align 16, !tbaa !5
  %47 = add nuw i64 %22, 32
  %48 = add i64 %23, 4
  %49 = icmp eq i64 %48, %20
  br i1 %49, label %50, label %21, !llvm.loop !9

50:                                               ; preds = %21, %12
  %51 = phi i64 [ 0, %12 ], [ %47, %21 ]
  %52 = icmp eq i64 %17, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %50, %53
  %54 = phi i64 [ %61, %53 ], [ %51, %50 ]
  %55 = phi i64 [ %62, %53 ], [ 0, %50 ]
  %56 = mul nuw nsw i64 %54, %4
  %57 = getelementptr inbounds i32, i32* %6, i64 %56
  %58 = bitcast i32* %57 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %58, align 16, !tbaa !5
  %59 = getelementptr inbounds i32, i32* %57, i64 4
  %60 = bitcast i32* %59 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %60, align 16, !tbaa !5
  %61 = add nuw i64 %54, 8
  %62 = add i64 %55, 1
  %63 = icmp eq i64 %62, %17
  br i1 %63, label %64, label %53, !llvm.loop !12

64:                                               ; preds = %53, %50
  %65 = icmp eq i64 %13, %3
  br i1 %65, label %83, label %66

66:                                               ; preds = %8, %64
  %67 = phi i64 [ 0, %8 ], [ %13, %64 ]
  %68 = xor i64 %67, -1
  %69 = add nsw i64 %68, %3
  %70 = and i64 %3, 3
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %66, %72
  %73 = phi i64 [ %77, %72 ], [ %67, %66 ]
  %74 = phi i64 [ %78, %72 ], [ 0, %66 ]
  %75 = mul nuw nsw i64 %73, %4
  %76 = getelementptr inbounds i32, i32* %6, i64 %75
  store i32 1, i32* %76, align 4, !tbaa !5
  %77 = add nuw nsw i64 %73, 1
  %78 = add i64 %74, 1
  %79 = icmp eq i64 %78, %70
  br i1 %79, label %80, label %72, !llvm.loop !14

80:                                               ; preds = %72, %66
  %81 = phi i64 [ %67, %66 ], [ %77, %72 ]
  %82 = icmp ult i64 %69, 3
  br i1 %82, label %83, label %158

83:                                               ; preds = %80, %158, %64, %2
  %84 = icmp sgt i32 %1, 0
  br i1 %84, label %85, label %173

85:                                               ; preds = %83
  %86 = icmp ult i32 %1, 8
  br i1 %86, label %156, label %87

87:                                               ; preds = %85
  %88 = and i64 %4, 4294967288
  %89 = add nsw i64 %88, -8
  %90 = lshr exact i64 %89, 3
  %91 = add nuw nsw i64 %90, 1
  %92 = and i64 %91, 7
  %93 = icmp ult i64 %89, 56
  br i1 %93, label %141, label %94

94:                                               ; preds = %87
  %95 = and i64 %91, 4611686018427387896
  br label %96

96:                                               ; preds = %96, %94
  %97 = phi i64 [ 0, %94 ], [ %138, %96 ]
  %98 = phi i64 [ 0, %94 ], [ %139, %96 ]
  %99 = getelementptr inbounds i32, i32* %6, i64 %97
  %100 = bitcast i32* %99 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %100, align 16, !tbaa !5
  %101 = getelementptr inbounds i32, i32* %99, i64 4
  %102 = bitcast i32* %101 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %102, align 16, !tbaa !5
  %103 = or i64 %97, 8
  %104 = getelementptr inbounds i32, i32* %6, i64 %103
  %105 = bitcast i32* %104 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %105, align 16, !tbaa !5
  %106 = getelementptr inbounds i32, i32* %104, i64 4
  %107 = bitcast i32* %106 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %107, align 16, !tbaa !5
  %108 = or i64 %97, 16
  %109 = getelementptr inbounds i32, i32* %6, i64 %108
  %110 = bitcast i32* %109 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %110, align 16, !tbaa !5
  %111 = getelementptr inbounds i32, i32* %109, i64 4
  %112 = bitcast i32* %111 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %112, align 16, !tbaa !5
  %113 = or i64 %97, 24
  %114 = getelementptr inbounds i32, i32* %6, i64 %113
  %115 = bitcast i32* %114 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %115, align 16, !tbaa !5
  %116 = getelementptr inbounds i32, i32* %114, i64 4
  %117 = bitcast i32* %116 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %117, align 16, !tbaa !5
  %118 = or i64 %97, 32
  %119 = getelementptr inbounds i32, i32* %6, i64 %118
  %120 = bitcast i32* %119 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %120, align 16, !tbaa !5
  %121 = getelementptr inbounds i32, i32* %119, i64 4
  %122 = bitcast i32* %121 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %122, align 16, !tbaa !5
  %123 = or i64 %97, 40
  %124 = getelementptr inbounds i32, i32* %6, i64 %123
  %125 = bitcast i32* %124 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %125, align 16, !tbaa !5
  %126 = getelementptr inbounds i32, i32* %124, i64 4
  %127 = bitcast i32* %126 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %127, align 16, !tbaa !5
  %128 = or i64 %97, 48
  %129 = getelementptr inbounds i32, i32* %6, i64 %128
  %130 = bitcast i32* %129 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %130, align 16, !tbaa !5
  %131 = getelementptr inbounds i32, i32* %129, i64 4
  %132 = bitcast i32* %131 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %132, align 16, !tbaa !5
  %133 = or i64 %97, 56
  %134 = getelementptr inbounds i32, i32* %6, i64 %133
  %135 = bitcast i32* %134 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %135, align 16, !tbaa !5
  %136 = getelementptr inbounds i32, i32* %134, i64 4
  %137 = bitcast i32* %136 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %137, align 16, !tbaa !5
  %138 = add nuw i64 %97, 64
  %139 = add nuw i64 %98, 8
  %140 = icmp eq i64 %139, %95
  br i1 %140, label %141, label %96, !llvm.loop !15

141:                                              ; preds = %96, %87
  %142 = phi i64 [ 0, %87 ], [ %138, %96 ]
  %143 = icmp eq i64 %92, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %141, %144
  %145 = phi i64 [ %151, %144 ], [ %142, %141 ]
  %146 = phi i64 [ %152, %144 ], [ 0, %141 ]
  %147 = getelementptr inbounds i32, i32* %6, i64 %145
  %148 = bitcast i32* %147 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %148, align 16, !tbaa !5
  %149 = getelementptr inbounds i32, i32* %147, i64 4
  %150 = bitcast i32* %149 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %150, align 16, !tbaa !5
  %151 = add nuw i64 %145, 8
  %152 = add i64 %146, 1
  %153 = icmp eq i64 %152, %92
  br i1 %153, label %154, label %144, !llvm.loop !16

154:                                              ; preds = %144, %141
  %155 = icmp eq i64 %88, %4
  br i1 %155, label %173, label %156

156:                                              ; preds = %85, %154
  %157 = phi i64 [ 0, %85 ], [ %88, %154 ]
  br label %183

158:                                              ; preds = %80, %158
  %159 = phi i64 [ %171, %158 ], [ %81, %80 ]
  %160 = mul nuw nsw i64 %159, %4
  %161 = getelementptr inbounds i32, i32* %6, i64 %160
  store i32 1, i32* %161, align 4, !tbaa !5
  %162 = add nuw nsw i64 %159, 1
  %163 = mul nuw nsw i64 %162, %4
  %164 = getelementptr inbounds i32, i32* %6, i64 %163
  store i32 1, i32* %164, align 4, !tbaa !5
  %165 = add nuw nsw i64 %159, 2
  %166 = mul nuw nsw i64 %165, %4
  %167 = getelementptr inbounds i32, i32* %6, i64 %166
  store i32 1, i32* %167, align 4, !tbaa !5
  %168 = add nuw nsw i64 %159, 3
  %169 = mul nuw nsw i64 %168, %4
  %170 = getelementptr inbounds i32, i32* %6, i64 %169
  store i32 1, i32* %170, align 4, !tbaa !5
  %171 = add nuw nsw i64 %159, 4
  %172 = icmp eq i64 %171, %3
  br i1 %172, label %83, label %158, !llvm.loop !17

173:                                              ; preds = %183, %154, %83
  %174 = icmp sgt i32 %0, 1
  br i1 %174, label %175, label %197

175:                                              ; preds = %173
  %176 = icmp sgt i32 %1, 1
  %177 = add nsw i64 %4, -1
  %178 = add nsw i64 %4, -2
  %179 = and i64 %177, 3
  %180 = icmp ult i64 %178, 3
  %181 = and i64 %177, -4
  %182 = icmp eq i64 %179, 0
  br label %188

183:                                              ; preds = %156, %183
  %184 = phi i64 [ %186, %183 ], [ %157, %156 ]
  %185 = getelementptr inbounds i32, i32* %6, i64 %184
  store i32 1, i32* %185, align 4, !tbaa !5
  %186 = add nuw nsw i64 %184, 1
  %187 = icmp eq i64 %186, %4
  br i1 %187, label %173, label %183, !llvm.loop !18

188:                                              ; preds = %175, %220
  %189 = phi i64 [ 1, %175 ], [ %221, %220 ]
  br i1 %176, label %190, label %220

190:                                              ; preds = %188
  %191 = add nsw i64 %189, -1
  %192 = mul nuw nsw i64 %191, %4
  %193 = getelementptr inbounds i32, i32* %6, i64 %192
  %194 = mul nuw nsw i64 %189, %4
  %195 = getelementptr inbounds i32, i32* %6, i64 %194
  %196 = load i32, i32* %195, align 4, !tbaa !5
  br i1 %180, label %206, label %223

197:                                              ; preds = %220, %173
  %198 = add nsw i32 %0, -1
  %199 = sext i32 %198 to i64
  %200 = mul nsw i64 %199, %4
  %201 = getelementptr inbounds i32, i32* %6, i64 %200
  %202 = add nsw i32 %1, -1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4, !tbaa !5
  ret i32 %205

206:                                              ; preds = %223, %190
  %207 = phi i32 [ %196, %190 ], [ %244, %223 ]
  %208 = phi i64 [ 1, %190 ], [ %246, %223 ]
  br i1 %182, label %220, label %209

209:                                              ; preds = %206, %209
  %210 = phi i32 [ %215, %209 ], [ %207, %206 ]
  %211 = phi i64 [ %217, %209 ], [ %208, %206 ]
  %212 = phi i64 [ %218, %209 ], [ 0, %206 ]
  %213 = getelementptr inbounds i32, i32* %193, i64 %211
  %214 = load i32, i32* %213, align 4, !tbaa !5
  %215 = add nsw i32 %210, %214
  %216 = getelementptr inbounds i32, i32* %195, i64 %211
  store i32 %215, i32* %216, align 4, !tbaa !5
  %217 = add nuw nsw i64 %211, 1
  %218 = add i64 %212, 1
  %219 = icmp eq i64 %218, %179
  br i1 %219, label %220, label %209, !llvm.loop !20

220:                                              ; preds = %206, %209, %188
  %221 = add nuw nsw i64 %189, 1
  %222 = icmp eq i64 %221, %3
  br i1 %222, label %197, label %188, !llvm.loop !21

223:                                              ; preds = %190, %223
  %224 = phi i32 [ %244, %223 ], [ %196, %190 ]
  %225 = phi i64 [ %246, %223 ], [ 1, %190 ]
  %226 = phi i64 [ %247, %223 ], [ 0, %190 ]
  %227 = getelementptr inbounds i32, i32* %193, i64 %225
  %228 = load i32, i32* %227, align 4, !tbaa !5
  %229 = add nsw i32 %224, %228
  %230 = getelementptr inbounds i32, i32* %195, i64 %225
  store i32 %229, i32* %230, align 4, !tbaa !5
  %231 = add nuw nsw i64 %225, 1
  %232 = getelementptr inbounds i32, i32* %193, i64 %231
  %233 = load i32, i32* %232, align 4, !tbaa !5
  %234 = add nsw i32 %229, %233
  %235 = getelementptr inbounds i32, i32* %195, i64 %231
  store i32 %234, i32* %235, align 4, !tbaa !5
  %236 = add nuw nsw i64 %225, 2
  %237 = getelementptr inbounds i32, i32* %193, i64 %236
  %238 = load i32, i32* %237, align 4, !tbaa !5
  %239 = add nsw i32 %234, %238
  %240 = getelementptr inbounds i32, i32* %195, i64 %236
  store i32 %239, i32* %240, align 4, !tbaa !5
  %241 = add nuw nsw i64 %225, 3
  %242 = getelementptr inbounds i32, i32* %193, i64 %241
  %243 = load i32, i32* %242, align 4, !tbaa !5
  %244 = add nsw i32 %239, %243
  %245 = getelementptr inbounds i32, i32* %195, i64 %241
  store i32 %244, i32* %245, align 4, !tbaa !5
  %246 = add nuw nsw i64 %225, 4
  %247 = add i64 %226, 4
  %248 = icmp eq i64 %247, %181
  br i1 %248, label %206, label %223, !llvm.loop !22
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !19, !11}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
