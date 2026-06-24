; ModuleID = 'benchmark/cpp_transcoder/FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS/FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS/FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiS_S_iii(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %95

8:                                                ; preds = %6
  %9 = zext i32 %3 to i64
  %10 = icmp ult i32 %3, 8
  br i1 %10, label %92, label %11

11:                                               ; preds = %8
  %12 = and i64 %9, 4294967288
  %13 = add nsw i64 %12, -8
  %14 = lshr exact i64 %13, 3
  %15 = add nuw nsw i64 %14, 1
  %16 = and i64 %15, 3
  %17 = icmp ult i64 %13, 24
  br i1 %17, label %63, label %18

18:                                               ; preds = %11
  %19 = and i64 %15, 4611686018427387900
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i64 [ 0, %18 ], [ %60, %20 ]
  %22 = phi <4 x i32> [ zeroinitializer, %18 ], [ %58, %20 ]
  %23 = phi <4 x i32> [ zeroinitializer, %18 ], [ %59, %20 ]
  %24 = phi i64 [ 0, %18 ], [ %61, %20 ]
  %25 = getelementptr inbounds i32, i32* %0, i64 %21
  %26 = bitcast i32* %25 to <4 x i32>*
  %27 = load <4 x i32>, <4 x i32>* %26, align 4, !tbaa !5
  %28 = getelementptr inbounds i32, i32* %25, i64 4
  %29 = bitcast i32* %28 to <4 x i32>*
  %30 = load <4 x i32>, <4 x i32>* %29, align 4, !tbaa !5
  %31 = add <4 x i32> %27, %22
  %32 = add <4 x i32> %30, %23
  %33 = or i64 %21, 8
  %34 = getelementptr inbounds i32, i32* %0, i64 %33
  %35 = bitcast i32* %34 to <4 x i32>*
  %36 = load <4 x i32>, <4 x i32>* %35, align 4, !tbaa !5
  %37 = getelementptr inbounds i32, i32* %34, i64 4
  %38 = bitcast i32* %37 to <4 x i32>*
  %39 = load <4 x i32>, <4 x i32>* %38, align 4, !tbaa !5
  %40 = add <4 x i32> %36, %31
  %41 = add <4 x i32> %39, %32
  %42 = or i64 %21, 16
  %43 = getelementptr inbounds i32, i32* %0, i64 %42
  %44 = bitcast i32* %43 to <4 x i32>*
  %45 = load <4 x i32>, <4 x i32>* %44, align 4, !tbaa !5
  %46 = getelementptr inbounds i32, i32* %43, i64 4
  %47 = bitcast i32* %46 to <4 x i32>*
  %48 = load <4 x i32>, <4 x i32>* %47, align 4, !tbaa !5
  %49 = add <4 x i32> %45, %40
  %50 = add <4 x i32> %48, %41
  %51 = or i64 %21, 24
  %52 = getelementptr inbounds i32, i32* %0, i64 %51
  %53 = bitcast i32* %52 to <4 x i32>*
  %54 = load <4 x i32>, <4 x i32>* %53, align 4, !tbaa !5
  %55 = getelementptr inbounds i32, i32* %52, i64 4
  %56 = bitcast i32* %55 to <4 x i32>*
  %57 = load <4 x i32>, <4 x i32>* %56, align 4, !tbaa !5
  %58 = add <4 x i32> %54, %49
  %59 = add <4 x i32> %57, %50
  %60 = add nuw i64 %21, 32
  %61 = add i64 %24, 4
  %62 = icmp eq i64 %61, %19
  br i1 %62, label %63, label %20, !llvm.loop !9

63:                                               ; preds = %20, %11
  %64 = phi <4 x i32> [ undef, %11 ], [ %58, %20 ]
  %65 = phi <4 x i32> [ undef, %11 ], [ %59, %20 ]
  %66 = phi i64 [ 0, %11 ], [ %60, %20 ]
  %67 = phi <4 x i32> [ zeroinitializer, %11 ], [ %58, %20 ]
  %68 = phi <4 x i32> [ zeroinitializer, %11 ], [ %59, %20 ]
  %69 = icmp eq i64 %16, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %63, %70
  %71 = phi i64 [ %83, %70 ], [ %66, %63 ]
  %72 = phi <4 x i32> [ %81, %70 ], [ %67, %63 ]
  %73 = phi <4 x i32> [ %82, %70 ], [ %68, %63 ]
  %74 = phi i64 [ %84, %70 ], [ 0, %63 ]
  %75 = getelementptr inbounds i32, i32* %0, i64 %71
  %76 = bitcast i32* %75 to <4 x i32>*
  %77 = load <4 x i32>, <4 x i32>* %76, align 4, !tbaa !5
  %78 = getelementptr inbounds i32, i32* %75, i64 4
  %79 = bitcast i32* %78 to <4 x i32>*
  %80 = load <4 x i32>, <4 x i32>* %79, align 4, !tbaa !5
  %81 = add <4 x i32> %77, %72
  %82 = add <4 x i32> %80, %73
  %83 = add nuw i64 %71, 8
  %84 = add i64 %74, 1
  %85 = icmp eq i64 %84, %16
  br i1 %85, label %86, label %70, !llvm.loop !12

86:                                               ; preds = %70, %63
  %87 = phi <4 x i32> [ %64, %63 ], [ %81, %70 ]
  %88 = phi <4 x i32> [ %65, %63 ], [ %82, %70 ]
  %89 = add <4 x i32> %88, %87
  %90 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %89)
  %91 = icmp eq i64 %12, %9
  br i1 %91, label %95, label %92

92:                                               ; preds = %8, %86
  %93 = phi i64 [ 0, %8 ], [ %12, %86 ]
  %94 = phi i32 [ 0, %8 ], [ %90, %86 ]
  br label %185

95:                                               ; preds = %185, %86, %6
  %96 = phi i32 [ 0, %6 ], [ %90, %86 ], [ %190, %185 ]
  %97 = icmp sgt i32 %4, 0
  br i1 %97, label %98, label %193

98:                                               ; preds = %95
  %99 = zext i32 %4 to i64
  %100 = icmp ult i32 %4, 8
  br i1 %100, label %182, label %101

101:                                              ; preds = %98
  %102 = and i64 %99, 4294967288
  %103 = add nsw i64 %102, -8
  %104 = lshr exact i64 %103, 3
  %105 = add nuw nsw i64 %104, 1
  %106 = and i64 %105, 3
  %107 = icmp ult i64 %103, 24
  br i1 %107, label %153, label %108

108:                                              ; preds = %101
  %109 = and i64 %105, 4611686018427387900
  br label %110

110:                                              ; preds = %110, %108
  %111 = phi i64 [ 0, %108 ], [ %150, %110 ]
  %112 = phi <4 x i32> [ zeroinitializer, %108 ], [ %148, %110 ]
  %113 = phi <4 x i32> [ zeroinitializer, %108 ], [ %149, %110 ]
  %114 = phi i64 [ 0, %108 ], [ %151, %110 ]
  %115 = getelementptr inbounds i32, i32* %1, i64 %111
  %116 = bitcast i32* %115 to <4 x i32>*
  %117 = load <4 x i32>, <4 x i32>* %116, align 4, !tbaa !5
  %118 = getelementptr inbounds i32, i32* %115, i64 4
  %119 = bitcast i32* %118 to <4 x i32>*
  %120 = load <4 x i32>, <4 x i32>* %119, align 4, !tbaa !5
  %121 = add <4 x i32> %117, %112
  %122 = add <4 x i32> %120, %113
  %123 = or i64 %111, 8
  %124 = getelementptr inbounds i32, i32* %1, i64 %123
  %125 = bitcast i32* %124 to <4 x i32>*
  %126 = load <4 x i32>, <4 x i32>* %125, align 4, !tbaa !5
  %127 = getelementptr inbounds i32, i32* %124, i64 4
  %128 = bitcast i32* %127 to <4 x i32>*
  %129 = load <4 x i32>, <4 x i32>* %128, align 4, !tbaa !5
  %130 = add <4 x i32> %126, %121
  %131 = add <4 x i32> %129, %122
  %132 = or i64 %111, 16
  %133 = getelementptr inbounds i32, i32* %1, i64 %132
  %134 = bitcast i32* %133 to <4 x i32>*
  %135 = load <4 x i32>, <4 x i32>* %134, align 4, !tbaa !5
  %136 = getelementptr inbounds i32, i32* %133, i64 4
  %137 = bitcast i32* %136 to <4 x i32>*
  %138 = load <4 x i32>, <4 x i32>* %137, align 4, !tbaa !5
  %139 = add <4 x i32> %135, %130
  %140 = add <4 x i32> %138, %131
  %141 = or i64 %111, 24
  %142 = getelementptr inbounds i32, i32* %1, i64 %141
  %143 = bitcast i32* %142 to <4 x i32>*
  %144 = load <4 x i32>, <4 x i32>* %143, align 4, !tbaa !5
  %145 = getelementptr inbounds i32, i32* %142, i64 4
  %146 = bitcast i32* %145 to <4 x i32>*
  %147 = load <4 x i32>, <4 x i32>* %146, align 4, !tbaa !5
  %148 = add <4 x i32> %144, %139
  %149 = add <4 x i32> %147, %140
  %150 = add nuw i64 %111, 32
  %151 = add i64 %114, 4
  %152 = icmp eq i64 %151, %109
  br i1 %152, label %153, label %110, !llvm.loop !14

153:                                              ; preds = %110, %101
  %154 = phi <4 x i32> [ undef, %101 ], [ %148, %110 ]
  %155 = phi <4 x i32> [ undef, %101 ], [ %149, %110 ]
  %156 = phi i64 [ 0, %101 ], [ %150, %110 ]
  %157 = phi <4 x i32> [ zeroinitializer, %101 ], [ %148, %110 ]
  %158 = phi <4 x i32> [ zeroinitializer, %101 ], [ %149, %110 ]
  %159 = icmp eq i64 %106, 0
  br i1 %159, label %176, label %160

160:                                              ; preds = %153, %160
  %161 = phi i64 [ %173, %160 ], [ %156, %153 ]
  %162 = phi <4 x i32> [ %171, %160 ], [ %157, %153 ]
  %163 = phi <4 x i32> [ %172, %160 ], [ %158, %153 ]
  %164 = phi i64 [ %174, %160 ], [ 0, %153 ]
  %165 = getelementptr inbounds i32, i32* %1, i64 %161
  %166 = bitcast i32* %165 to <4 x i32>*
  %167 = load <4 x i32>, <4 x i32>* %166, align 4, !tbaa !5
  %168 = getelementptr inbounds i32, i32* %165, i64 4
  %169 = bitcast i32* %168 to <4 x i32>*
  %170 = load <4 x i32>, <4 x i32>* %169, align 4, !tbaa !5
  %171 = add <4 x i32> %167, %162
  %172 = add <4 x i32> %170, %163
  %173 = add nuw i64 %161, 8
  %174 = add i64 %164, 1
  %175 = icmp eq i64 %174, %106
  br i1 %175, label %176, label %160, !llvm.loop !15

176:                                              ; preds = %160, %153
  %177 = phi <4 x i32> [ %154, %153 ], [ %171, %160 ]
  %178 = phi <4 x i32> [ %155, %153 ], [ %172, %160 ]
  %179 = add <4 x i32> %178, %177
  %180 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %179)
  %181 = icmp eq i64 %102, %99
  br i1 %181, label %193, label %182

182:                                              ; preds = %98, %176
  %183 = phi i64 [ 0, %98 ], [ %102, %176 ]
  %184 = phi i32 [ 0, %98 ], [ %180, %176 ]
  br label %283

185:                                              ; preds = %92, %185
  %186 = phi i64 [ %191, %185 ], [ %93, %92 ]
  %187 = phi i32 [ %190, %185 ], [ %94, %92 ]
  %188 = getelementptr inbounds i32, i32* %0, i64 %186
  %189 = load i32, i32* %188, align 4, !tbaa !5
  %190 = add nsw i32 %189, %187
  %191 = add nuw nsw i64 %186, 1
  %192 = icmp eq i64 %191, %9
  br i1 %192, label %95, label %185, !llvm.loop !16

193:                                              ; preds = %283, %176, %95
  %194 = phi i32 [ 0, %95 ], [ %180, %176 ], [ %288, %283 ]
  %195 = icmp sgt i32 %5, 0
  br i1 %195, label %196, label %291

196:                                              ; preds = %193
  %197 = zext i32 %5 to i64
  %198 = icmp ult i32 %5, 8
  br i1 %198, label %280, label %199

199:                                              ; preds = %196
  %200 = and i64 %197, 4294967288
  %201 = add nsw i64 %200, -8
  %202 = lshr exact i64 %201, 3
  %203 = add nuw nsw i64 %202, 1
  %204 = and i64 %203, 3
  %205 = icmp ult i64 %201, 24
  br i1 %205, label %251, label %206

206:                                              ; preds = %199
  %207 = and i64 %203, 4611686018427387900
  br label %208

208:                                              ; preds = %208, %206
  %209 = phi i64 [ 0, %206 ], [ %248, %208 ]
  %210 = phi <4 x i32> [ zeroinitializer, %206 ], [ %246, %208 ]
  %211 = phi <4 x i32> [ zeroinitializer, %206 ], [ %247, %208 ]
  %212 = phi i64 [ 0, %206 ], [ %249, %208 ]
  %213 = getelementptr inbounds i32, i32* %2, i64 %209
  %214 = bitcast i32* %213 to <4 x i32>*
  %215 = load <4 x i32>, <4 x i32>* %214, align 4, !tbaa !5
  %216 = getelementptr inbounds i32, i32* %213, i64 4
  %217 = bitcast i32* %216 to <4 x i32>*
  %218 = load <4 x i32>, <4 x i32>* %217, align 4, !tbaa !5
  %219 = add <4 x i32> %215, %210
  %220 = add <4 x i32> %218, %211
  %221 = or i64 %209, 8
  %222 = getelementptr inbounds i32, i32* %2, i64 %221
  %223 = bitcast i32* %222 to <4 x i32>*
  %224 = load <4 x i32>, <4 x i32>* %223, align 4, !tbaa !5
  %225 = getelementptr inbounds i32, i32* %222, i64 4
  %226 = bitcast i32* %225 to <4 x i32>*
  %227 = load <4 x i32>, <4 x i32>* %226, align 4, !tbaa !5
  %228 = add <4 x i32> %224, %219
  %229 = add <4 x i32> %227, %220
  %230 = or i64 %209, 16
  %231 = getelementptr inbounds i32, i32* %2, i64 %230
  %232 = bitcast i32* %231 to <4 x i32>*
  %233 = load <4 x i32>, <4 x i32>* %232, align 4, !tbaa !5
  %234 = getelementptr inbounds i32, i32* %231, i64 4
  %235 = bitcast i32* %234 to <4 x i32>*
  %236 = load <4 x i32>, <4 x i32>* %235, align 4, !tbaa !5
  %237 = add <4 x i32> %233, %228
  %238 = add <4 x i32> %236, %229
  %239 = or i64 %209, 24
  %240 = getelementptr inbounds i32, i32* %2, i64 %239
  %241 = bitcast i32* %240 to <4 x i32>*
  %242 = load <4 x i32>, <4 x i32>* %241, align 4, !tbaa !5
  %243 = getelementptr inbounds i32, i32* %240, i64 4
  %244 = bitcast i32* %243 to <4 x i32>*
  %245 = load <4 x i32>, <4 x i32>* %244, align 4, !tbaa !5
  %246 = add <4 x i32> %242, %237
  %247 = add <4 x i32> %245, %238
  %248 = add nuw i64 %209, 32
  %249 = add i64 %212, 4
  %250 = icmp eq i64 %249, %207
  br i1 %250, label %251, label %208, !llvm.loop !18

251:                                              ; preds = %208, %199
  %252 = phi <4 x i32> [ undef, %199 ], [ %246, %208 ]
  %253 = phi <4 x i32> [ undef, %199 ], [ %247, %208 ]
  %254 = phi i64 [ 0, %199 ], [ %248, %208 ]
  %255 = phi <4 x i32> [ zeroinitializer, %199 ], [ %246, %208 ]
  %256 = phi <4 x i32> [ zeroinitializer, %199 ], [ %247, %208 ]
  %257 = icmp eq i64 %204, 0
  br i1 %257, label %274, label %258

258:                                              ; preds = %251, %258
  %259 = phi i64 [ %271, %258 ], [ %254, %251 ]
  %260 = phi <4 x i32> [ %269, %258 ], [ %255, %251 ]
  %261 = phi <4 x i32> [ %270, %258 ], [ %256, %251 ]
  %262 = phi i64 [ %272, %258 ], [ 0, %251 ]
  %263 = getelementptr inbounds i32, i32* %2, i64 %259
  %264 = bitcast i32* %263 to <4 x i32>*
  %265 = load <4 x i32>, <4 x i32>* %264, align 4, !tbaa !5
  %266 = getelementptr inbounds i32, i32* %263, i64 4
  %267 = bitcast i32* %266 to <4 x i32>*
  %268 = load <4 x i32>, <4 x i32>* %267, align 4, !tbaa !5
  %269 = add <4 x i32> %265, %260
  %270 = add <4 x i32> %268, %261
  %271 = add nuw i64 %259, 8
  %272 = add i64 %262, 1
  %273 = icmp eq i64 %272, %204
  br i1 %273, label %274, label %258, !llvm.loop !19

274:                                              ; preds = %258, %251
  %275 = phi <4 x i32> [ %252, %251 ], [ %269, %258 ]
  %276 = phi <4 x i32> [ %253, %251 ], [ %270, %258 ]
  %277 = add <4 x i32> %276, %275
  %278 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %277)
  %279 = icmp eq i64 %200, %197
  br i1 %279, label %291, label %280

280:                                              ; preds = %196, %274
  %281 = phi i64 [ 0, %196 ], [ %200, %274 ]
  %282 = phi i32 [ 0, %196 ], [ %278, %274 ]
  br label %298

283:                                              ; preds = %182, %283
  %284 = phi i64 [ %289, %283 ], [ %183, %182 ]
  %285 = phi i32 [ %288, %283 ], [ %184, %182 ]
  %286 = getelementptr inbounds i32, i32* %1, i64 %284
  %287 = load i32, i32* %286, align 4, !tbaa !5
  %288 = add nsw i32 %287, %285
  %289 = add nuw nsw i64 %284, 1
  %290 = icmp eq i64 %289, %99
  br i1 %290, label %193, label %283, !llvm.loop !20

291:                                              ; preds = %298, %274, %193
  %292 = phi i32 [ 0, %193 ], [ %278, %274 ], [ %303, %298 ]
  %293 = icmp eq i32 %3, 0
  %294 = icmp eq i32 %4, 0
  %295 = or i1 %293, %294
  %296 = icmp eq i32 %5, 0
  %297 = or i1 %295, %296
  br i1 %297, label %354, label %306

298:                                              ; preds = %280, %298
  %299 = phi i64 [ %304, %298 ], [ %281, %280 ]
  %300 = phi i32 [ %303, %298 ], [ %282, %280 ]
  %301 = getelementptr inbounds i32, i32* %2, i64 %299
  %302 = load i32, i32* %301, align 4, !tbaa !5
  %303 = add nsw i32 %302, %300
  %304 = add nuw nsw i64 %299, 1
  %305 = icmp eq i64 %304, %197
  br i1 %305, label %291, label %298, !llvm.loop !21

306:                                              ; preds = %291, %342
  %307 = phi i32 [ %348, %342 ], [ 0, %291 ]
  %308 = phi i32 [ %347, %342 ], [ 0, %291 ]
  %309 = phi i32 [ %346, %342 ], [ 0, %291 ]
  %310 = phi i32 [ %345, %342 ], [ %292, %291 ]
  %311 = phi i32 [ %344, %342 ], [ %194, %291 ]
  %312 = phi i32 [ %343, %342 ], [ %96, %291 ]
  %313 = icmp eq i32 %312, %311
  %314 = icmp eq i32 %311, %310
  %315 = select i1 %313, i1 %314, i1 false
  br i1 %315, label %354, label %316

316:                                              ; preds = %306
  %317 = icmp slt i32 %312, %311
  %318 = icmp slt i32 %312, %310
  %319 = select i1 %317, i1 true, i1 %318
  br i1 %319, label %326, label %320

320:                                              ; preds = %316
  %321 = add nsw i32 %309, 1
  %322 = sext i32 %309 to i64
  %323 = getelementptr inbounds i32, i32* %0, i64 %322
  %324 = load i32, i32* %323, align 4, !tbaa !5
  %325 = sub nsw i32 %312, %324
  br label %342

326:                                              ; preds = %316
  %327 = icmp slt i32 %311, %310
  br i1 %327, label %334, label %328

328:                                              ; preds = %326
  %329 = add nsw i32 %308, 1
  %330 = sext i32 %308 to i64
  %331 = getelementptr inbounds i32, i32* %1, i64 %330
  %332 = load i32, i32* %331, align 4, !tbaa !5
  %333 = sub nsw i32 %311, %332
  br label %342

334:                                              ; preds = %326
  %335 = icmp slt i32 %310, %312
  br i1 %335, label %342, label %336

336:                                              ; preds = %334
  %337 = add nsw i32 %307, 1
  %338 = sext i32 %307 to i64
  %339 = getelementptr inbounds i32, i32* %2, i64 %338
  %340 = load i32, i32* %339, align 4, !tbaa !5
  %341 = sub nsw i32 %310, %340
  br label %342

342:                                              ; preds = %328, %336, %334, %320
  %343 = phi i32 [ %325, %320 ], [ %312, %328 ], [ %312, %336 ], [ %312, %334 ]
  %344 = phi i32 [ %311, %320 ], [ %333, %328 ], [ %311, %336 ], [ %311, %334 ]
  %345 = phi i32 [ %310, %320 ], [ %310, %328 ], [ %341, %336 ], [ %310, %334 ]
  %346 = phi i32 [ %321, %320 ], [ %309, %328 ], [ %309, %336 ], [ %309, %334 ]
  %347 = phi i32 [ %308, %320 ], [ %329, %328 ], [ %308, %336 ], [ %308, %334 ]
  %348 = phi i32 [ %307, %320 ], [ %307, %328 ], [ %337, %336 ], [ %307, %334 ]
  %349 = icmp eq i32 %346, %3
  %350 = icmp eq i32 %347, %4
  %351 = select i1 %349, i1 true, i1 %350
  %352 = icmp eq i32 %348, %5
  %353 = select i1 %351, i1 true, i1 %352
  br i1 %353, label %354, label %306, !llvm.loop !22

354:                                              ; preds = %342, %306, %291
  %355 = phi i32 [ 0, %291 ], [ %310, %306 ], [ 0, %342 ]
  ret i32 %355
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }

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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !10, !17, !11}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !10, !17, !11}
!21 = distinct !{!21, !10, !17, !11}
!22 = distinct !{!22, !10}
