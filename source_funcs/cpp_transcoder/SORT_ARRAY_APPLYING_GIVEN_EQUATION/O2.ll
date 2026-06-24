; ModuleID = 'llvm/cpp_transcoder/SORT_ARRAY_APPLYING_GIVEN_EQUATION/SORT_ARRAY_APPLYING_GIVEN_EQUATION_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/SORT_ARRAY_APPLYING_GIVEN_EQUATION/SORT_ARRAY_APPLYING_GIVEN_EQUATION_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SORT_ARRAY_APPLYING_GIVEN_EQUATION_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z6f_goldPiiiii(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  %6 = bitcast i32* %0 to i8*
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %370

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = icmp ult i32 %1, 8
  br i1 %10, label %93, label %11

11:                                               ; preds = %8
  %12 = and i64 %9, 4294967288
  %13 = insertelement <4 x i32> poison, i32 %2, i64 0
  %14 = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> zeroinitializer
  %15 = insertelement <4 x i32> poison, i32 %2, i64 0
  %16 = shufflevector <4 x i32> %15, <4 x i32> poison, <4 x i32> zeroinitializer
  %17 = insertelement <4 x i32> poison, i32 %3, i64 0
  %18 = shufflevector <4 x i32> %17, <4 x i32> poison, <4 x i32> zeroinitializer
  %19 = insertelement <4 x i32> poison, i32 %3, i64 0
  %20 = shufflevector <4 x i32> %19, <4 x i32> poison, <4 x i32> zeroinitializer
  %21 = insertelement <4 x i32> poison, i32 %4, i64 0
  %22 = shufflevector <4 x i32> %21, <4 x i32> poison, <4 x i32> zeroinitializer
  %23 = insertelement <4 x i32> poison, i32 %4, i64 0
  %24 = shufflevector <4 x i32> %23, <4 x i32> poison, <4 x i32> zeroinitializer
  %25 = add nsw i64 %12, -8
  %26 = lshr exact i64 %25, 3
  %27 = add nuw nsw i64 %26, 1
  %28 = and i64 %27, 1
  %29 = icmp eq i64 %25, 0
  br i1 %29, label %71, label %30

30:                                               ; preds = %11
  %31 = and i64 %27, 4611686018427387902
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %68, %32 ]
  %34 = phi i64 [ 0, %30 ], [ %69, %32 ]
  %35 = getelementptr inbounds i32, i32* %0, i64 %33
  %36 = bitcast i32* %35 to <4 x i32>*
  %37 = load <4 x i32>, <4 x i32>* %36, align 4, !tbaa !5
  %38 = getelementptr inbounds i32, i32* %35, i64 4
  %39 = bitcast i32* %38 to <4 x i32>*
  %40 = load <4 x i32>, <4 x i32>* %39, align 4, !tbaa !5
  %41 = mul nsw <4 x i32> %37, %14
  %42 = mul nsw <4 x i32> %40, %16
  %43 = add <4 x i32> %41, %18
  %44 = add <4 x i32> %42, %20
  %45 = mul <4 x i32> %43, %37
  %46 = mul <4 x i32> %44, %40
  %47 = add nsw <4 x i32> %45, %22
  %48 = add nsw <4 x i32> %46, %24
  %49 = bitcast i32* %35 to <4 x i32>*
  store <4 x i32> %47, <4 x i32>* %49, align 4, !tbaa !5
  %50 = bitcast i32* %38 to <4 x i32>*
  store <4 x i32> %48, <4 x i32>* %50, align 4, !tbaa !5
  %51 = or i64 %33, 8
  %52 = getelementptr inbounds i32, i32* %0, i64 %51
  %53 = bitcast i32* %52 to <4 x i32>*
  %54 = load <4 x i32>, <4 x i32>* %53, align 4, !tbaa !5
  %55 = getelementptr inbounds i32, i32* %52, i64 4
  %56 = bitcast i32* %55 to <4 x i32>*
  %57 = load <4 x i32>, <4 x i32>* %56, align 4, !tbaa !5
  %58 = mul nsw <4 x i32> %54, %14
  %59 = mul nsw <4 x i32> %57, %16
  %60 = add <4 x i32> %58, %18
  %61 = add <4 x i32> %59, %20
  %62 = mul <4 x i32> %60, %54
  %63 = mul <4 x i32> %61, %57
  %64 = add nsw <4 x i32> %62, %22
  %65 = add nsw <4 x i32> %63, %24
  %66 = bitcast i32* %52 to <4 x i32>*
  store <4 x i32> %64, <4 x i32>* %66, align 4, !tbaa !5
  %67 = bitcast i32* %55 to <4 x i32>*
  store <4 x i32> %65, <4 x i32>* %67, align 4, !tbaa !5
  %68 = add nuw i64 %33, 16
  %69 = add i64 %34, 2
  %70 = icmp eq i64 %69, %31
  br i1 %70, label %71, label %32, !llvm.loop !9

71:                                               ; preds = %32, %11
  %72 = phi i64 [ 0, %11 ], [ %68, %32 ]
  %73 = icmp eq i64 %28, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds i32, i32* %0, i64 %72
  %76 = bitcast i32* %75 to <4 x i32>*
  %77 = load <4 x i32>, <4 x i32>* %76, align 4, !tbaa !5
  %78 = getelementptr inbounds i32, i32* %75, i64 4
  %79 = bitcast i32* %78 to <4 x i32>*
  %80 = load <4 x i32>, <4 x i32>* %79, align 4, !tbaa !5
  %81 = mul nsw <4 x i32> %77, %14
  %82 = mul nsw <4 x i32> %80, %16
  %83 = add <4 x i32> %81, %18
  %84 = add <4 x i32> %82, %20
  %85 = mul <4 x i32> %83, %77
  %86 = mul <4 x i32> %84, %80
  %87 = add nsw <4 x i32> %85, %22
  %88 = add nsw <4 x i32> %86, %24
  %89 = bitcast i32* %75 to <4 x i32>*
  store <4 x i32> %87, <4 x i32>* %89, align 4, !tbaa !5
  %90 = bitcast i32* %78 to <4 x i32>*
  store <4 x i32> %88, <4 x i32>* %90, align 4, !tbaa !5
  br label %91

91:                                               ; preds = %71, %74
  %92 = icmp eq i64 %12, %9
  br i1 %92, label %95, label %93

93:                                               ; preds = %8, %91
  %94 = phi i64 [ 0, %8 ], [ %12, %91 ]
  br label %103

95:                                               ; preds = %103, %91
  br i1 %7, label %96, label %370

96:                                               ; preds = %95
  %97 = zext i32 %1 to i64
  %98 = add nsw i64 %9, -1
  %99 = and i64 %9, 3
  %100 = icmp ult i64 %98, 3
  br i1 %100, label %113, label %101

101:                                              ; preds = %96
  %102 = and i64 %9, 4294967292
  br label %142

103:                                              ; preds = %93, %103
  %104 = phi i64 [ %111, %103 ], [ %94, %93 ]
  %105 = getelementptr inbounds i32, i32* %0, i64 %104
  %106 = load i32, i32* %105, align 4, !tbaa !5
  %107 = mul nsw i32 %106, %2
  %108 = add i32 %107, %3
  %109 = mul i32 %108, %106
  %110 = add nsw i32 %109, %4
  store i32 %110, i32* %105, align 4, !tbaa !5
  %111 = add nuw nsw i64 %104, 1
  %112 = icmp eq i64 %111, %9
  br i1 %112, label %95, label %103, !llvm.loop !12

113:                                              ; preds = %142, %96
  %114 = phi i32 [ undef, %96 ], [ %171, %142 ]
  %115 = phi i64 [ 0, %96 ], [ %174, %142 ]
  %116 = phi i32 [ undef, %96 ], [ %173, %142 ]
  %117 = phi i32 [ -2147483648, %96 ], [ %171, %142 ]
  %118 = icmp eq i64 %99, 0
  br i1 %118, label %133, label %119

119:                                              ; preds = %113, %119
  %120 = phi i64 [ %130, %119 ], [ %115, %113 ]
  %121 = phi i32 [ %129, %119 ], [ %116, %113 ]
  %122 = phi i32 [ %127, %119 ], [ %117, %113 ]
  %123 = phi i64 [ %131, %119 ], [ 0, %113 ]
  %124 = getelementptr inbounds i32, i32* %0, i64 %120
  %125 = load i32, i32* %124, align 4, !tbaa !5
  %126 = icmp slt i32 %122, %125
  %127 = select i1 %126, i32 %125, i32 %122
  %128 = trunc i64 %120 to i32
  %129 = select i1 %126, i32 %128, i32 %121
  %130 = add nuw nsw i64 %120, 1
  %131 = add i64 %123, 1
  %132 = icmp eq i64 %131, %99
  br i1 %132, label %133, label %119, !llvm.loop !14

133:                                              ; preds = %119, %113
  %134 = phi i32 [ %114, %113 ], [ %127, %119 ]
  %135 = phi i32 [ %116, %113 ], [ %129, %119 ]
  %136 = add nsw i32 %1, -1
  %137 = alloca i32, i64 %97, align 16
  %138 = bitcast i32* %137 to i8*
  %139 = icmp sgt i32 %135, 0
  %140 = icmp sgt i32 %136, %135
  %141 = select i1 %139, i1 %140, i1 false
  br i1 %141, label %241, label %179

142:                                              ; preds = %142, %101
  %143 = phi i64 [ 0, %101 ], [ %174, %142 ]
  %144 = phi i32 [ undef, %101 ], [ %173, %142 ]
  %145 = phi i32 [ -2147483648, %101 ], [ %171, %142 ]
  %146 = phi i64 [ 0, %101 ], [ %175, %142 ]
  %147 = getelementptr inbounds i32, i32* %0, i64 %143
  %148 = load i32, i32* %147, align 4, !tbaa !5
  %149 = icmp slt i32 %145, %148
  %150 = select i1 %149, i32 %148, i32 %145
  %151 = trunc i64 %143 to i32
  %152 = select i1 %149, i32 %151, i32 %144
  %153 = or i64 %143, 1
  %154 = getelementptr inbounds i32, i32* %0, i64 %153
  %155 = load i32, i32* %154, align 4, !tbaa !5
  %156 = icmp slt i32 %150, %155
  %157 = select i1 %156, i32 %155, i32 %150
  %158 = trunc i64 %153 to i32
  %159 = select i1 %156, i32 %158, i32 %152
  %160 = or i64 %143, 2
  %161 = getelementptr inbounds i32, i32* %0, i64 %160
  %162 = load i32, i32* %161, align 4, !tbaa !5
  %163 = icmp slt i32 %157, %162
  %164 = select i1 %163, i32 %162, i32 %157
  %165 = trunc i64 %160 to i32
  %166 = select i1 %163, i32 %165, i32 %159
  %167 = or i64 %143, 3
  %168 = getelementptr inbounds i32, i32* %0, i64 %167
  %169 = load i32, i32* %168, align 4, !tbaa !5
  %170 = icmp slt i32 %164, %169
  %171 = select i1 %170, i32 %169, i32 %164
  %172 = trunc i64 %167 to i32
  %173 = select i1 %170, i32 %172, i32 %166
  %174 = add nuw nsw i64 %143, 4
  %175 = add i64 %146, 4
  %176 = icmp eq i64 %175, %102
  br i1 %176, label %113, label %142, !llvm.loop !16

177:                                              ; preds = %241
  %178 = trunc i64 %259 to i32
  br label %179

179:                                              ; preds = %177, %133
  %180 = phi i32 [ 0, %133 ], [ %254, %177 ]
  %181 = phi i32 [ %136, %133 ], [ %257, %177 ]
  %182 = phi i32 [ 0, %133 ], [ %178, %177 ]
  %183 = icmp slt i32 %180, %135
  br i1 %183, label %184, label %266

184:                                              ; preds = %179
  %185 = zext i32 %182 to i64
  %186 = getelementptr i32, i32* %137, i64 %185
  %187 = bitcast i32* %186 to i8*
  %188 = sext i32 %180 to i64
  %189 = getelementptr i32, i32* %0, i64 %188
  %190 = bitcast i32* %189 to i8*
  %191 = xor i32 %180, -1
  %192 = add i32 %135, %191
  %193 = zext i32 %192 to i64
  %194 = shl nuw nsw i64 %193, 2
  %195 = add nuw nsw i64 %194, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(1) %187, i8* noundef nonnull align 4 dereferenceable(1) %190, i64 %195, i1 false), !tbaa !5
  %196 = sext i32 %135 to i64
  %197 = sub nsw i64 %196, %188
  %198 = icmp ult i64 %197, 4
  br i1 %198, label %238, label %199

199:                                              ; preds = %184
  %200 = and i64 %197, -4
  %201 = add nsw i64 %200, %188
  %202 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %185, i64 0
  %203 = add nsw i64 %200, -4
  %204 = lshr exact i64 %203, 2
  %205 = add nuw nsw i64 %204, 1
  %206 = and i64 %205, 7
  %207 = icmp ult i64 %203, 28
  br i1 %207, label %218, label %208

208:                                              ; preds = %199
  %209 = and i64 %205, 9223372036854775800
  br label %210

210:                                              ; preds = %210, %208
  %211 = phi <2 x i64> [ %202, %208 ], [ %214, %210 ]
  %212 = phi <2 x i64> [ zeroinitializer, %208 ], [ %215, %210 ]
  %213 = phi i64 [ 0, %208 ], [ %216, %210 ]
  %214 = add <2 x i64> %211, <i64 8, i64 8>
  %215 = add <2 x i64> %212, <i64 8, i64 8>
  %216 = add i64 %213, 8
  %217 = icmp eq i64 %216, %209
  br i1 %217, label %218, label %210, !llvm.loop !17

218:                                              ; preds = %210, %199
  %219 = phi <2 x i64> [ undef, %199 ], [ %214, %210 ]
  %220 = phi <2 x i64> [ undef, %199 ], [ %215, %210 ]
  %221 = phi <2 x i64> [ %202, %199 ], [ %214, %210 ]
  %222 = phi <2 x i64> [ zeroinitializer, %199 ], [ %215, %210 ]
  %223 = icmp eq i64 %206, 0
  br i1 %223, label %232, label %224

224:                                              ; preds = %218, %224
  %225 = phi <2 x i64> [ %228, %224 ], [ %221, %218 ]
  %226 = phi <2 x i64> [ %229, %224 ], [ %222, %218 ]
  %227 = phi i64 [ %230, %224 ], [ 0, %218 ]
  %228 = add <2 x i64> %225, <i64 1, i64 1>
  %229 = add <2 x i64> %226, <i64 1, i64 1>
  %230 = add i64 %227, 1
  %231 = icmp eq i64 %230, %206
  br i1 %231, label %232, label %224, !llvm.loop !18

232:                                              ; preds = %224, %218
  %233 = phi <2 x i64> [ %219, %218 ], [ %228, %224 ]
  %234 = phi <2 x i64> [ %220, %218 ], [ %229, %224 ]
  %235 = add <2 x i64> %234, %233
  %236 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %235)
  %237 = icmp eq i64 %197, %200
  br i1 %237, label %263, label %238

238:                                              ; preds = %184, %232
  %239 = phi i64 [ %188, %184 ], [ %201, %232 ]
  %240 = phi i64 [ %185, %184 ], [ %236, %232 ]
  br label %350

241:                                              ; preds = %133, %241
  %242 = phi i64 [ %259, %241 ], [ 0, %133 ]
  %243 = phi i32 [ %257, %241 ], [ %136, %133 ]
  %244 = phi i32 [ %254, %241 ], [ 0, %133 ]
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %0, i64 %245
  %247 = load i32, i32* %246, align 4, !tbaa !5
  %248 = sext i32 %243 to i64
  %249 = getelementptr inbounds i32, i32* %0, i64 %248
  %250 = load i32, i32* %249, align 4, !tbaa !5
  %251 = icmp slt i32 %247, %250
  %252 = select i1 %251, i32 %247, i32 %250
  %253 = zext i1 %251 to i32
  %254 = add nuw nsw i32 %244, %253
  %255 = xor i1 %251, true
  %256 = sext i1 %255 to i32
  %257 = add nsw i32 %243, %256
  %258 = getelementptr inbounds i32, i32* %137, i64 %242
  store i32 %252, i32* %258, align 4
  %259 = add nuw i64 %242, 1
  %260 = icmp slt i32 %254, %135
  %261 = icmp sgt i32 %257, %135
  %262 = select i1 %260, i1 %261, i1 false
  br i1 %262, label %241, label %177, !llvm.loop !19

263:                                              ; preds = %350, %232
  %264 = phi i64 [ %236, %232 ], [ %354, %350 ]
  %265 = trunc i64 %264 to i32
  br label %266

266:                                              ; preds = %263, %179
  %267 = phi i32 [ %182, %179 ], [ %265, %263 ]
  %268 = icmp sgt i32 %181, %135
  br i1 %268, label %269, label %365

269:                                              ; preds = %266
  %270 = zext i32 %267 to i64
  %271 = sext i32 %181 to i64
  %272 = sext i32 %135 to i64
  %273 = sub nsw i64 %271, %272
  %274 = icmp ult i64 %273, 8
  br i1 %274, label %347, label %275

275:                                              ; preds = %269
  %276 = and i64 %273, -8
  %277 = sub nsw i64 %271, %276
  %278 = add nsw i64 %276, %270
  %279 = add nsw i64 %276, -8
  %280 = lshr exact i64 %279, 3
  %281 = add nuw nsw i64 %280, 1
  %282 = and i64 %281, 1
  %283 = icmp eq i64 %279, 0
  br i1 %283, label %325, label %284

284:                                              ; preds = %275
  %285 = and i64 %281, 4611686018427387902
  br label %286

286:                                              ; preds = %286, %284
  %287 = phi i64 [ 0, %284 ], [ %322, %286 ]
  %288 = phi i64 [ 0, %284 ], [ %323, %286 ]
  %289 = sub i64 %271, %287
  %290 = add i64 %287, %270
  %291 = getelementptr inbounds i32, i32* %0, i64 %289
  %292 = getelementptr inbounds i32, i32* %291, i64 -3
  %293 = bitcast i32* %292 to <4 x i32>*
  %294 = load <4 x i32>, <4 x i32>* %293, align 4, !tbaa !5
  %295 = shufflevector <4 x i32> %294, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %296 = getelementptr inbounds i32, i32* %291, i64 -4
  %297 = getelementptr inbounds i32, i32* %296, i64 -3
  %298 = bitcast i32* %297 to <4 x i32>*
  %299 = load <4 x i32>, <4 x i32>* %298, align 4, !tbaa !5
  %300 = shufflevector <4 x i32> %299, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %301 = getelementptr inbounds i32, i32* %137, i64 %290
  %302 = bitcast i32* %301 to <4 x i32>*
  store <4 x i32> %295, <4 x i32>* %302, align 4, !tbaa !5
  %303 = getelementptr inbounds i32, i32* %301, i64 4
  %304 = bitcast i32* %303 to <4 x i32>*
  store <4 x i32> %300, <4 x i32>* %304, align 4, !tbaa !5
  %305 = or i64 %287, 8
  %306 = sub i64 %271, %305
  %307 = add i64 %305, %270
  %308 = getelementptr inbounds i32, i32* %0, i64 %306
  %309 = getelementptr inbounds i32, i32* %308, i64 -3
  %310 = bitcast i32* %309 to <4 x i32>*
  %311 = load <4 x i32>, <4 x i32>* %310, align 4, !tbaa !5
  %312 = shufflevector <4 x i32> %311, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %313 = getelementptr inbounds i32, i32* %308, i64 -4
  %314 = getelementptr inbounds i32, i32* %313, i64 -3
  %315 = bitcast i32* %314 to <4 x i32>*
  %316 = load <4 x i32>, <4 x i32>* %315, align 4, !tbaa !5
  %317 = shufflevector <4 x i32> %316, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %318 = getelementptr inbounds i32, i32* %137, i64 %307
  %319 = bitcast i32* %318 to <4 x i32>*
  store <4 x i32> %312, <4 x i32>* %319, align 4, !tbaa !5
  %320 = getelementptr inbounds i32, i32* %318, i64 4
  %321 = bitcast i32* %320 to <4 x i32>*
  store <4 x i32> %317, <4 x i32>* %321, align 4, !tbaa !5
  %322 = add nuw i64 %287, 16
  %323 = add i64 %288, 2
  %324 = icmp eq i64 %323, %285
  br i1 %324, label %325, label %286, !llvm.loop !20

325:                                              ; preds = %286, %275
  %326 = phi i64 [ 0, %275 ], [ %322, %286 ]
  %327 = icmp eq i64 %282, 0
  br i1 %327, label %345, label %328

328:                                              ; preds = %325
  %329 = sub i64 %271, %326
  %330 = add i64 %326, %270
  %331 = getelementptr inbounds i32, i32* %0, i64 %329
  %332 = getelementptr inbounds i32, i32* %331, i64 -3
  %333 = bitcast i32* %332 to <4 x i32>*
  %334 = load <4 x i32>, <4 x i32>* %333, align 4, !tbaa !5
  %335 = shufflevector <4 x i32> %334, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %336 = getelementptr inbounds i32, i32* %331, i64 -4
  %337 = getelementptr inbounds i32, i32* %336, i64 -3
  %338 = bitcast i32* %337 to <4 x i32>*
  %339 = load <4 x i32>, <4 x i32>* %338, align 4, !tbaa !5
  %340 = shufflevector <4 x i32> %339, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %341 = getelementptr inbounds i32, i32* %137, i64 %330
  %342 = bitcast i32* %341 to <4 x i32>*
  store <4 x i32> %335, <4 x i32>* %342, align 4, !tbaa !5
  %343 = getelementptr inbounds i32, i32* %341, i64 4
  %344 = bitcast i32* %343 to <4 x i32>*
  store <4 x i32> %340, <4 x i32>* %344, align 4, !tbaa !5
  br label %345

345:                                              ; preds = %325, %328
  %346 = icmp eq i64 %273, %276
  br i1 %346, label %365, label %347

347:                                              ; preds = %269, %345
  %348 = phi i64 [ %271, %269 ], [ %277, %345 ]
  %349 = phi i64 [ %270, %269 ], [ %278, %345 ]
  br label %356

350:                                              ; preds = %238, %350
  %351 = phi i64 [ %353, %350 ], [ %239, %238 ]
  %352 = phi i64 [ %354, %350 ], [ %240, %238 ]
  %353 = add nsw i64 %351, 1
  %354 = add nuw nsw i64 %352, 1
  %355 = icmp eq i64 %353, %196
  br i1 %355, label %263, label %350, !llvm.loop !21

356:                                              ; preds = %347, %356
  %357 = phi i64 [ %359, %356 ], [ %348, %347 ]
  %358 = phi i64 [ %362, %356 ], [ %349, %347 ]
  %359 = add nsw i64 %357, -1
  %360 = getelementptr inbounds i32, i32* %0, i64 %357
  %361 = load i32, i32* %360, align 4, !tbaa !5
  %362 = add nuw nsw i64 %358, 1
  %363 = getelementptr inbounds i32, i32* %137, i64 %358
  store i32 %361, i32* %363, align 4, !tbaa !5
  %364 = icmp sgt i64 %359, %272
  br i1 %364, label %356, label %365, !llvm.loop !22

365:                                              ; preds = %356, %345, %266
  %366 = sext i32 %136 to i64
  %367 = getelementptr inbounds i32, i32* %137, i64 %366
  store i32 %134, i32* %367, align 4, !tbaa !5
  br i1 %7, label %368, label %370

368:                                              ; preds = %365
  %369 = shl nuw nsw i64 %97, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* nonnull align 16 %138, i64 %369, i1 false), !tbaa !5
  br label %370

370:                                              ; preds = %95, %5, %368, %365
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SORT_ARRAY_APPLYING_GIVEN_EQUATION_reprocessed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #6

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
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
!12 = distinct !{!12, !10, !13, !11}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !13, !11}
!22 = distinct !{!22, !10, !13, !11}
