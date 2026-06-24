; ModuleID = 'benchmark/cpp_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiS_ii(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = load i32, i32* %0, align 4, !tbaa !5
  %6 = load i32, i32* %1, align 4, !tbaa !5
  %7 = icmp sgt i32 %2, 1
  %8 = icmp sgt i32 %3, 1
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %66

10:                                               ; preds = %4
  %11 = add nsw i32 %3, -2
  %12 = add nsw i32 %2, -2
  %13 = call i32 @llvm.umin.i32(i32 %11, i32 %12)
  %14 = add nuw nsw i32 %13, 2
  %15 = zext i32 %14 to i64
  %16 = add nsw i64 %15, -1
  %17 = icmp ult i64 %16, 8
  br i1 %17, label %62, label %18

18:                                               ; preds = %10
  %19 = and i64 %16, -8
  %20 = or i64 %19, 1
  %21 = insertelement <4 x i32> poison, i32 %6, i64 0
  %22 = shufflevector <4 x i32> %21, <4 x i32> poison, <4 x i32> zeroinitializer
  %23 = insertelement <4 x i32> poison, i32 %5, i64 0
  %24 = shufflevector <4 x i32> %23, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %25

25:                                               ; preds = %25, %18
  %26 = phi i64 [ 0, %18 ], [ %52, %25 ]
  %27 = phi <4 x i32> [ %22, %18 ], [ %50, %25 ]
  %28 = phi <4 x i32> [ %22, %18 ], [ %51, %25 ]
  %29 = phi <4 x i32> [ %24, %18 ], [ %40, %25 ]
  %30 = phi <4 x i32> [ %24, %18 ], [ %41, %25 ]
  %31 = or i64 %26, 1
  %32 = getelementptr inbounds i32, i32* %0, i64 %31
  %33 = bitcast i32* %32 to <4 x i32>*
  %34 = load <4 x i32>, <4 x i32>* %33, align 4, !tbaa !5
  %35 = getelementptr inbounds i32, i32* %32, i64 4
  %36 = bitcast i32* %35 to <4 x i32>*
  %37 = load <4 x i32>, <4 x i32>* %36, align 4, !tbaa !5
  %38 = icmp sgt <4 x i32> %34, %29
  %39 = icmp sgt <4 x i32> %37, %30
  %40 = select <4 x i1> %38, <4 x i32> %34, <4 x i32> %29
  %41 = select <4 x i1> %39, <4 x i32> %37, <4 x i32> %30
  %42 = getelementptr inbounds i32, i32* %1, i64 %31
  %43 = bitcast i32* %42 to <4 x i32>*
  %44 = load <4 x i32>, <4 x i32>* %43, align 4, !tbaa !5
  %45 = getelementptr inbounds i32, i32* %42, i64 4
  %46 = bitcast i32* %45 to <4 x i32>*
  %47 = load <4 x i32>, <4 x i32>* %46, align 4, !tbaa !5
  %48 = icmp slt <4 x i32> %44, %27
  %49 = icmp slt <4 x i32> %47, %28
  %50 = select <4 x i1> %48, <4 x i32> %44, <4 x i32> %27
  %51 = select <4 x i1> %49, <4 x i32> %47, <4 x i32> %28
  %52 = add nuw i64 %26, 8
  %53 = icmp eq i64 %52, %19
  br i1 %53, label %54, label %25, !llvm.loop !9

54:                                               ; preds = %25
  %55 = icmp sgt <4 x i32> %40, %41
  %56 = select <4 x i1> %55, <4 x i32> %40, <4 x i32> %41
  %57 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %56)
  %58 = icmp slt <4 x i32> %50, %51
  %59 = select <4 x i1> %58, <4 x i32> %50, <4 x i32> %51
  %60 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %59)
  %61 = icmp eq i64 %16, %19
  br i1 %61, label %66, label %62

62:                                               ; preds = %10, %54
  %63 = phi i64 [ 1, %10 ], [ %20, %54 ]
  %64 = phi i32 [ %6, %10 ], [ %60, %54 ]
  %65 = phi i32 [ %5, %10 ], [ %57, %54 ]
  br label %148

66:                                               ; preds = %148, %54, %4
  %67 = phi i32 [ %5, %4 ], [ %57, %54 ], [ %155, %148 ]
  %68 = phi i32 [ %6, %4 ], [ %60, %54 ], [ %159, %148 ]
  %69 = phi i32 [ 1, %4 ], [ %14, %54 ], [ %14, %148 ]
  %70 = icmp slt i32 %69, %2
  br i1 %70, label %71, label %162

71:                                               ; preds = %66
  %72 = zext i32 %69 to i64
  %73 = zext i32 %2 to i64
  %74 = sub nsw i64 %73, %72
  %75 = icmp ult i64 %74, 8
  br i1 %75, label %145, label %76

76:                                               ; preds = %71
  %77 = and i64 %74, -8
  %78 = add nsw i64 %77, %72
  %79 = insertelement <4 x i32> poison, i32 %67, i64 0
  %80 = shufflevector <4 x i32> %79, <4 x i32> poison, <4 x i32> zeroinitializer
  %81 = add nsw i64 %77, -8
  %82 = lshr exact i64 %81, 3
  %83 = add nuw nsw i64 %82, 1
  %84 = and i64 %83, 1
  %85 = icmp eq i64 %81, 0
  br i1 %85, label %119, label %86

86:                                               ; preds = %76
  %87 = and i64 %83, 4611686018427387902
  br label %88

88:                                               ; preds = %88, %86
  %89 = phi i64 [ 0, %86 ], [ %116, %88 ]
  %90 = phi <4 x i32> [ %80, %86 ], [ %114, %88 ]
  %91 = phi <4 x i32> [ %80, %86 ], [ %115, %88 ]
  %92 = phi i64 [ 0, %86 ], [ %117, %88 ]
  %93 = add i64 %89, %72
  %94 = getelementptr inbounds i32, i32* %0, i64 %93
  %95 = bitcast i32* %94 to <4 x i32>*
  %96 = load <4 x i32>, <4 x i32>* %95, align 4, !tbaa !5
  %97 = getelementptr inbounds i32, i32* %94, i64 4
  %98 = bitcast i32* %97 to <4 x i32>*
  %99 = load <4 x i32>, <4 x i32>* %98, align 4, !tbaa !5
  %100 = icmp sgt <4 x i32> %96, %90
  %101 = icmp sgt <4 x i32> %99, %91
  %102 = select <4 x i1> %100, <4 x i32> %96, <4 x i32> %90
  %103 = select <4 x i1> %101, <4 x i32> %99, <4 x i32> %91
  %104 = or i64 %89, 8
  %105 = add i64 %104, %72
  %106 = getelementptr inbounds i32, i32* %0, i64 %105
  %107 = bitcast i32* %106 to <4 x i32>*
  %108 = load <4 x i32>, <4 x i32>* %107, align 4, !tbaa !5
  %109 = getelementptr inbounds i32, i32* %106, i64 4
  %110 = bitcast i32* %109 to <4 x i32>*
  %111 = load <4 x i32>, <4 x i32>* %110, align 4, !tbaa !5
  %112 = icmp sgt <4 x i32> %108, %102
  %113 = icmp sgt <4 x i32> %111, %103
  %114 = select <4 x i1> %112, <4 x i32> %108, <4 x i32> %102
  %115 = select <4 x i1> %113, <4 x i32> %111, <4 x i32> %103
  %116 = add nuw i64 %89, 16
  %117 = add i64 %92, 2
  %118 = icmp eq i64 %117, %87
  br i1 %118, label %119, label %88, !llvm.loop !12

119:                                              ; preds = %88, %76
  %120 = phi <4 x i32> [ undef, %76 ], [ %114, %88 ]
  %121 = phi <4 x i32> [ undef, %76 ], [ %115, %88 ]
  %122 = phi i64 [ 0, %76 ], [ %116, %88 ]
  %123 = phi <4 x i32> [ %80, %76 ], [ %114, %88 ]
  %124 = phi <4 x i32> [ %80, %76 ], [ %115, %88 ]
  %125 = icmp eq i64 %84, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %119
  %127 = add i64 %122, %72
  %128 = getelementptr inbounds i32, i32* %0, i64 %127
  %129 = bitcast i32* %128 to <4 x i32>*
  %130 = load <4 x i32>, <4 x i32>* %129, align 4, !tbaa !5
  %131 = getelementptr inbounds i32, i32* %128, i64 4
  %132 = bitcast i32* %131 to <4 x i32>*
  %133 = load <4 x i32>, <4 x i32>* %132, align 4, !tbaa !5
  %134 = icmp sgt <4 x i32> %130, %123
  %135 = icmp sgt <4 x i32> %133, %124
  %136 = select <4 x i1> %134, <4 x i32> %130, <4 x i32> %123
  %137 = select <4 x i1> %135, <4 x i32> %133, <4 x i32> %124
  br label %138

138:                                              ; preds = %119, %126
  %139 = phi <4 x i32> [ %120, %119 ], [ %136, %126 ]
  %140 = phi <4 x i32> [ %121, %119 ], [ %137, %126 ]
  %141 = icmp sgt <4 x i32> %139, %140
  %142 = select <4 x i1> %141, <4 x i32> %139, <4 x i32> %140
  %143 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %142)
  %144 = icmp eq i64 %74, %77
  br i1 %144, label %162, label %145

145:                                              ; preds = %71, %138
  %146 = phi i64 [ %72, %71 ], [ %78, %138 ]
  %147 = phi i32 [ %67, %71 ], [ %143, %138 ]
  br label %245

148:                                              ; preds = %62, %148
  %149 = phi i64 [ %160, %148 ], [ %63, %62 ]
  %150 = phi i32 [ %159, %148 ], [ %64, %62 ]
  %151 = phi i32 [ %155, %148 ], [ %65, %62 ]
  %152 = getelementptr inbounds i32, i32* %0, i64 %149
  %153 = load i32, i32* %152, align 4, !tbaa !5
  %154 = icmp sgt i32 %153, %151
  %155 = select i1 %154, i32 %153, i32 %151
  %156 = getelementptr inbounds i32, i32* %1, i64 %149
  %157 = load i32, i32* %156, align 4, !tbaa !5
  %158 = icmp slt i32 %157, %150
  %159 = select i1 %158, i32 %157, i32 %150
  %160 = add nuw nsw i64 %149, 1
  %161 = icmp eq i64 %160, %15
  br i1 %161, label %66, label %148, !llvm.loop !13

162:                                              ; preds = %245, %138, %66
  %163 = phi i32 [ %67, %66 ], [ %143, %138 ], [ %251, %245 ]
  %164 = phi i32 [ %69, %66 ], [ %2, %138 ], [ %2, %245 ]
  %165 = icmp slt i32 %164, %3
  br i1 %165, label %166, label %264

166:                                              ; preds = %162
  %167 = zext i32 %164 to i64
  %168 = xor i32 %164, -1
  %169 = add i32 %168, %3
  %170 = zext i32 %169 to i64
  %171 = add nuw nsw i64 %170, 1
  %172 = icmp ult i32 %169, 7
  br i1 %172, label %242, label %173

173:                                              ; preds = %166
  %174 = and i64 %171, 8589934584
  %175 = add nuw nsw i64 %174, %167
  %176 = insertelement <4 x i32> poison, i32 %68, i64 0
  %177 = shufflevector <4 x i32> %176, <4 x i32> poison, <4 x i32> zeroinitializer
  %178 = add nsw i64 %174, -8
  %179 = lshr exact i64 %178, 3
  %180 = add nuw nsw i64 %179, 1
  %181 = and i64 %180, 1
  %182 = icmp eq i64 %178, 0
  br i1 %182, label %216, label %183

183:                                              ; preds = %173
  %184 = and i64 %180, 4611686018427387902
  br label %185

185:                                              ; preds = %185, %183
  %186 = phi i64 [ 0, %183 ], [ %213, %185 ]
  %187 = phi <4 x i32> [ %177, %183 ], [ %211, %185 ]
  %188 = phi <4 x i32> [ %177, %183 ], [ %212, %185 ]
  %189 = phi i64 [ 0, %183 ], [ %214, %185 ]
  %190 = add i64 %186, %167
  %191 = getelementptr inbounds i32, i32* %1, i64 %190
  %192 = bitcast i32* %191 to <4 x i32>*
  %193 = load <4 x i32>, <4 x i32>* %192, align 4, !tbaa !5
  %194 = getelementptr inbounds i32, i32* %191, i64 4
  %195 = bitcast i32* %194 to <4 x i32>*
  %196 = load <4 x i32>, <4 x i32>* %195, align 4, !tbaa !5
  %197 = icmp slt <4 x i32> %193, %187
  %198 = icmp slt <4 x i32> %196, %188
  %199 = select <4 x i1> %197, <4 x i32> %193, <4 x i32> %187
  %200 = select <4 x i1> %198, <4 x i32> %196, <4 x i32> %188
  %201 = or i64 %186, 8
  %202 = add i64 %201, %167
  %203 = getelementptr inbounds i32, i32* %1, i64 %202
  %204 = bitcast i32* %203 to <4 x i32>*
  %205 = load <4 x i32>, <4 x i32>* %204, align 4, !tbaa !5
  %206 = getelementptr inbounds i32, i32* %203, i64 4
  %207 = bitcast i32* %206 to <4 x i32>*
  %208 = load <4 x i32>, <4 x i32>* %207, align 4, !tbaa !5
  %209 = icmp slt <4 x i32> %205, %199
  %210 = icmp slt <4 x i32> %208, %200
  %211 = select <4 x i1> %209, <4 x i32> %205, <4 x i32> %199
  %212 = select <4 x i1> %210, <4 x i32> %208, <4 x i32> %200
  %213 = add nuw i64 %186, 16
  %214 = add i64 %189, 2
  %215 = icmp eq i64 %214, %184
  br i1 %215, label %216, label %185, !llvm.loop !15

216:                                              ; preds = %185, %173
  %217 = phi <4 x i32> [ undef, %173 ], [ %211, %185 ]
  %218 = phi <4 x i32> [ undef, %173 ], [ %212, %185 ]
  %219 = phi i64 [ 0, %173 ], [ %213, %185 ]
  %220 = phi <4 x i32> [ %177, %173 ], [ %211, %185 ]
  %221 = phi <4 x i32> [ %177, %173 ], [ %212, %185 ]
  %222 = icmp eq i64 %181, 0
  br i1 %222, label %235, label %223

223:                                              ; preds = %216
  %224 = add i64 %219, %167
  %225 = getelementptr inbounds i32, i32* %1, i64 %224
  %226 = bitcast i32* %225 to <4 x i32>*
  %227 = load <4 x i32>, <4 x i32>* %226, align 4, !tbaa !5
  %228 = getelementptr inbounds i32, i32* %225, i64 4
  %229 = bitcast i32* %228 to <4 x i32>*
  %230 = load <4 x i32>, <4 x i32>* %229, align 4, !tbaa !5
  %231 = icmp slt <4 x i32> %227, %220
  %232 = icmp slt <4 x i32> %230, %221
  %233 = select <4 x i1> %231, <4 x i32> %227, <4 x i32> %220
  %234 = select <4 x i1> %232, <4 x i32> %230, <4 x i32> %221
  br label %235

235:                                              ; preds = %216, %223
  %236 = phi <4 x i32> [ %217, %216 ], [ %233, %223 ]
  %237 = phi <4 x i32> [ %218, %216 ], [ %234, %223 ]
  %238 = icmp slt <4 x i32> %236, %237
  %239 = select <4 x i1> %238, <4 x i32> %236, <4 x i32> %237
  %240 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %239)
  %241 = icmp eq i64 %171, %174
  br i1 %241, label %264, label %242

242:                                              ; preds = %166, %235
  %243 = phi i64 [ %167, %166 ], [ %175, %235 ]
  %244 = phi i32 [ %68, %166 ], [ %240, %235 ]
  br label %254

245:                                              ; preds = %145, %245
  %246 = phi i64 [ %252, %245 ], [ %146, %145 ]
  %247 = phi i32 [ %251, %245 ], [ %147, %145 ]
  %248 = getelementptr inbounds i32, i32* %0, i64 %246
  %249 = load i32, i32* %248, align 4, !tbaa !5
  %250 = icmp sgt i32 %249, %247
  %251 = select i1 %250, i32 %249, i32 %247
  %252 = add nuw nsw i64 %246, 1
  %253 = icmp eq i64 %252, %73
  br i1 %253, label %162, label %245, !llvm.loop !16

254:                                              ; preds = %242, %254
  %255 = phi i64 [ %261, %254 ], [ %243, %242 ]
  %256 = phi i32 [ %260, %254 ], [ %244, %242 ]
  %257 = getelementptr inbounds i32, i32* %1, i64 %255
  %258 = load i32, i32* %257, align 4, !tbaa !5
  %259 = icmp slt i32 %258, %256
  %260 = select i1 %259, i32 %258, i32 %256
  %261 = add nuw nsw i64 %255, 1
  %262 = trunc i64 %261 to i32
  %263 = icmp slt i32 %262, %3
  br i1 %263, label %254, label %264, !llvm.loop !17

264:                                              ; preds = %254, %235, %162
  %265 = phi i32 [ %68, %162 ], [ %240, %235 ], [ %260, %254 ]
  %266 = mul nsw i32 %265, %163
  ret i32 %266
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #6

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #6

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }

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
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !14, !11}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !14, !11}
!17 = distinct !{!17, !10, !14, !11}
