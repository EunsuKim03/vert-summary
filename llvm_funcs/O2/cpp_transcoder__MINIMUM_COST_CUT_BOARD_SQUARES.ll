; ModuleID = 'llvm/cpp_transcoder/MINIMUM_COST_CUT_BOARD_SQUARES/MINIMUM_COST_CUT_BOARD_SQUARES_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MINIMUM_COST_CUT_BOARD_SQUARES/MINIMUM_COST_CUT_BOARD_SQUARES_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

$_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_T0_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMUM_COST_CUT_BOARD_SQUARES_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldPiS_ii(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = tail call i64 @llvm.ctlz.i64(i64 %5, i1 true) #7, !range !5
  %10 = shl nuw nsw i64 %9, 1
  %11 = xor i64 %10, 126
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_T0_T1_(i32* noundef %0, i32* noundef nonnull %6, i64 noundef %11)
  tail call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_T0_(i32* noundef %0, i32* noundef nonnull %6)
  br label %12

12:                                               ; preds = %4, %8
  %13 = sext i32 %3 to i64
  %14 = getelementptr inbounds i32, i32* %1, i64 %13
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = tail call i64 @llvm.ctlz.i64(i64 %13, i1 true) #7, !range !5
  %18 = shl nuw nsw i64 %17, 1
  %19 = xor i64 %18, 126
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_T0_T1_(i32* noundef %1, i32* noundef nonnull %14, i64 noundef %19)
  tail call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_T0_(i32* noundef %1, i32* noundef nonnull %14)
  %20 = icmp sgt i32 %2, 0
  %21 = icmp sgt i32 %3, 0
  %22 = and i1 %20, %21
  br i1 %22, label %124, label %23

23:                                               ; preds = %145, %12, %16
  %24 = phi i32 [ 0, %16 ], [ 0, %12 ], [ %151, %145 ]
  %25 = phi i32 [ 1, %16 ], [ 1, %12 ], [ %147, %145 ]
  %26 = phi i32 [ 1, %16 ], [ 1, %12 ], [ %148, %145 ]
  %27 = phi i32 [ 0, %16 ], [ 0, %12 ], [ %149, %145 ]
  %28 = phi i32 [ 0, %16 ], [ 0, %12 ], [ %150, %145 ]
  %29 = icmp slt i32 %27, %2
  br i1 %29, label %30, label %155

30:                                               ; preds = %23
  %31 = sext i32 %27 to i64
  %32 = sub nsw i64 %5, %31
  %33 = icmp ult i64 %32, 8
  br i1 %33, label %121, label %34

34:                                               ; preds = %30
  %35 = and i64 %32, -8
  %36 = add nsw i64 %35, %31
  %37 = add nsw i64 %35, -8
  %38 = lshr exact i64 %37, 3
  %39 = add nuw nsw i64 %38, 1
  %40 = and i64 %39, 3
  %41 = icmp ult i64 %37, 24
  br i1 %41, label %91, label %42

42:                                               ; preds = %34
  %43 = and i64 %39, 4611686018427387900
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi i64 [ 0, %42 ], [ %88, %44 ]
  %46 = phi <4 x i32> [ zeroinitializer, %42 ], [ %86, %44 ]
  %47 = phi <4 x i32> [ zeroinitializer, %42 ], [ %87, %44 ]
  %48 = phi i64 [ 0, %42 ], [ %89, %44 ]
  %49 = add i64 %45, %31
  %50 = getelementptr inbounds i32, i32* %0, i64 %49
  %51 = bitcast i32* %50 to <4 x i32>*
  %52 = load <4 x i32>, <4 x i32>* %51, align 4, !tbaa !6
  %53 = getelementptr inbounds i32, i32* %50, i64 4
  %54 = bitcast i32* %53 to <4 x i32>*
  %55 = load <4 x i32>, <4 x i32>* %54, align 4, !tbaa !6
  %56 = add <4 x i32> %52, %46
  %57 = add <4 x i32> %55, %47
  %58 = or i64 %45, 8
  %59 = add i64 %58, %31
  %60 = getelementptr inbounds i32, i32* %0, i64 %59
  %61 = bitcast i32* %60 to <4 x i32>*
  %62 = load <4 x i32>, <4 x i32>* %61, align 4, !tbaa !6
  %63 = getelementptr inbounds i32, i32* %60, i64 4
  %64 = bitcast i32* %63 to <4 x i32>*
  %65 = load <4 x i32>, <4 x i32>* %64, align 4, !tbaa !6
  %66 = add <4 x i32> %62, %56
  %67 = add <4 x i32> %65, %57
  %68 = or i64 %45, 16
  %69 = add i64 %68, %31
  %70 = getelementptr inbounds i32, i32* %0, i64 %69
  %71 = bitcast i32* %70 to <4 x i32>*
  %72 = load <4 x i32>, <4 x i32>* %71, align 4, !tbaa !6
  %73 = getelementptr inbounds i32, i32* %70, i64 4
  %74 = bitcast i32* %73 to <4 x i32>*
  %75 = load <4 x i32>, <4 x i32>* %74, align 4, !tbaa !6
  %76 = add <4 x i32> %72, %66
  %77 = add <4 x i32> %75, %67
  %78 = or i64 %45, 24
  %79 = add i64 %78, %31
  %80 = getelementptr inbounds i32, i32* %0, i64 %79
  %81 = bitcast i32* %80 to <4 x i32>*
  %82 = load <4 x i32>, <4 x i32>* %81, align 4, !tbaa !6
  %83 = getelementptr inbounds i32, i32* %80, i64 4
  %84 = bitcast i32* %83 to <4 x i32>*
  %85 = load <4 x i32>, <4 x i32>* %84, align 4, !tbaa !6
  %86 = add <4 x i32> %82, %76
  %87 = add <4 x i32> %85, %77
  %88 = add nuw i64 %45, 32
  %89 = add i64 %48, 4
  %90 = icmp eq i64 %89, %43
  br i1 %90, label %91, label %44, !llvm.loop !10

91:                                               ; preds = %44, %34
  %92 = phi <4 x i32> [ undef, %34 ], [ %86, %44 ]
  %93 = phi <4 x i32> [ undef, %34 ], [ %87, %44 ]
  %94 = phi i64 [ 0, %34 ], [ %88, %44 ]
  %95 = phi <4 x i32> [ zeroinitializer, %34 ], [ %86, %44 ]
  %96 = phi <4 x i32> [ zeroinitializer, %34 ], [ %87, %44 ]
  %97 = icmp eq i64 %40, 0
  br i1 %97, label %115, label %98

98:                                               ; preds = %91, %98
  %99 = phi i64 [ %112, %98 ], [ %94, %91 ]
  %100 = phi <4 x i32> [ %110, %98 ], [ %95, %91 ]
  %101 = phi <4 x i32> [ %111, %98 ], [ %96, %91 ]
  %102 = phi i64 [ %113, %98 ], [ 0, %91 ]
  %103 = add i64 %99, %31
  %104 = getelementptr inbounds i32, i32* %0, i64 %103
  %105 = bitcast i32* %104 to <4 x i32>*
  %106 = load <4 x i32>, <4 x i32>* %105, align 4, !tbaa !6
  %107 = getelementptr inbounds i32, i32* %104, i64 4
  %108 = bitcast i32* %107 to <4 x i32>*
  %109 = load <4 x i32>, <4 x i32>* %108, align 4, !tbaa !6
  %110 = add <4 x i32> %106, %100
  %111 = add <4 x i32> %109, %101
  %112 = add nuw i64 %99, 8
  %113 = add i64 %102, 1
  %114 = icmp eq i64 %113, %40
  br i1 %114, label %115, label %98, !llvm.loop !13

115:                                              ; preds = %98, %91
  %116 = phi <4 x i32> [ %92, %91 ], [ %110, %98 ]
  %117 = phi <4 x i32> [ %93, %91 ], [ %111, %98 ]
  %118 = add <4 x i32> %117, %116
  %119 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %118)
  %120 = icmp eq i64 %32, %35
  br i1 %120, label %155, label %121

121:                                              ; preds = %30, %115
  %122 = phi i64 [ %31, %30 ], [ %36, %115 ]
  %123 = phi i32 [ 0, %30 ], [ %119, %115 ]
  br label %252

124:                                              ; preds = %16, %145
  %125 = phi i32 [ %150, %145 ], [ 0, %16 ]
  %126 = phi i32 [ %149, %145 ], [ 0, %16 ]
  %127 = phi i32 [ %148, %145 ], [ 1, %16 ]
  %128 = phi i32 [ %147, %145 ], [ 1, %16 ]
  %129 = phi i32 [ %151, %145 ], [ 0, %16 ]
  %130 = sext i32 %126 to i64
  %131 = getelementptr inbounds i32, i32* %0, i64 %130
  %132 = load i32, i32* %131, align 4, !tbaa !6
  %133 = sext i32 %125 to i64
  %134 = getelementptr inbounds i32, i32* %1, i64 %133
  %135 = load i32, i32* %134, align 4, !tbaa !6
  %136 = icmp sgt i32 %132, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %124
  %138 = mul nsw i32 %132, %127
  %139 = add nsw i32 %128, 1
  %140 = add nsw i32 %126, 1
  br label %145

141:                                              ; preds = %124
  %142 = mul nsw i32 %135, %128
  %143 = add nsw i32 %127, 1
  %144 = add nsw i32 %125, 1
  br label %145

145:                                              ; preds = %141, %137
  %146 = phi i32 [ %138, %137 ], [ %142, %141 ]
  %147 = phi i32 [ %139, %137 ], [ %128, %141 ]
  %148 = phi i32 [ %127, %137 ], [ %143, %141 ]
  %149 = phi i32 [ %140, %137 ], [ %126, %141 ]
  %150 = phi i32 [ %125, %137 ], [ %144, %141 ]
  %151 = add nsw i32 %146, %129
  %152 = icmp slt i32 %149, %2
  %153 = icmp slt i32 %150, %3
  %154 = select i1 %152, i1 %153, i1 false
  br i1 %154, label %124, label %23, !llvm.loop !15

155:                                              ; preds = %252, %115, %23
  %156 = phi i32 [ 0, %23 ], [ %119, %115 ], [ %258, %252 ]
  %157 = icmp slt i32 %28, %3
  br i1 %157, label %158, label %268

158:                                              ; preds = %155
  %159 = sext i32 %28 to i64
  %160 = sub nsw i64 %13, %159
  %161 = icmp ult i64 %160, 8
  br i1 %161, label %249, label %162

162:                                              ; preds = %158
  %163 = and i64 %160, -8
  %164 = add nsw i64 %163, %159
  %165 = add nsw i64 %163, -8
  %166 = lshr exact i64 %165, 3
  %167 = add nuw nsw i64 %166, 1
  %168 = and i64 %167, 3
  %169 = icmp ult i64 %165, 24
  br i1 %169, label %219, label %170

170:                                              ; preds = %162
  %171 = and i64 %167, 4611686018427387900
  br label %172

172:                                              ; preds = %172, %170
  %173 = phi i64 [ 0, %170 ], [ %216, %172 ]
  %174 = phi <4 x i32> [ zeroinitializer, %170 ], [ %214, %172 ]
  %175 = phi <4 x i32> [ zeroinitializer, %170 ], [ %215, %172 ]
  %176 = phi i64 [ 0, %170 ], [ %217, %172 ]
  %177 = add i64 %173, %159
  %178 = getelementptr inbounds i32, i32* %1, i64 %177
  %179 = bitcast i32* %178 to <4 x i32>*
  %180 = load <4 x i32>, <4 x i32>* %179, align 4, !tbaa !6
  %181 = getelementptr inbounds i32, i32* %178, i64 4
  %182 = bitcast i32* %181 to <4 x i32>*
  %183 = load <4 x i32>, <4 x i32>* %182, align 4, !tbaa !6
  %184 = add <4 x i32> %180, %174
  %185 = add <4 x i32> %183, %175
  %186 = or i64 %173, 8
  %187 = add i64 %186, %159
  %188 = getelementptr inbounds i32, i32* %1, i64 %187
  %189 = bitcast i32* %188 to <4 x i32>*
  %190 = load <4 x i32>, <4 x i32>* %189, align 4, !tbaa !6
  %191 = getelementptr inbounds i32, i32* %188, i64 4
  %192 = bitcast i32* %191 to <4 x i32>*
  %193 = load <4 x i32>, <4 x i32>* %192, align 4, !tbaa !6
  %194 = add <4 x i32> %190, %184
  %195 = add <4 x i32> %193, %185
  %196 = or i64 %173, 16
  %197 = add i64 %196, %159
  %198 = getelementptr inbounds i32, i32* %1, i64 %197
  %199 = bitcast i32* %198 to <4 x i32>*
  %200 = load <4 x i32>, <4 x i32>* %199, align 4, !tbaa !6
  %201 = getelementptr inbounds i32, i32* %198, i64 4
  %202 = bitcast i32* %201 to <4 x i32>*
  %203 = load <4 x i32>, <4 x i32>* %202, align 4, !tbaa !6
  %204 = add <4 x i32> %200, %194
  %205 = add <4 x i32> %203, %195
  %206 = or i64 %173, 24
  %207 = add i64 %206, %159
  %208 = getelementptr inbounds i32, i32* %1, i64 %207
  %209 = bitcast i32* %208 to <4 x i32>*
  %210 = load <4 x i32>, <4 x i32>* %209, align 4, !tbaa !6
  %211 = getelementptr inbounds i32, i32* %208, i64 4
  %212 = bitcast i32* %211 to <4 x i32>*
  %213 = load <4 x i32>, <4 x i32>* %212, align 4, !tbaa !6
  %214 = add <4 x i32> %210, %204
  %215 = add <4 x i32> %213, %205
  %216 = add nuw i64 %173, 32
  %217 = add i64 %176, 4
  %218 = icmp eq i64 %217, %171
  br i1 %218, label %219, label %172, !llvm.loop !16

219:                                              ; preds = %172, %162
  %220 = phi <4 x i32> [ undef, %162 ], [ %214, %172 ]
  %221 = phi <4 x i32> [ undef, %162 ], [ %215, %172 ]
  %222 = phi i64 [ 0, %162 ], [ %216, %172 ]
  %223 = phi <4 x i32> [ zeroinitializer, %162 ], [ %214, %172 ]
  %224 = phi <4 x i32> [ zeroinitializer, %162 ], [ %215, %172 ]
  %225 = icmp eq i64 %168, 0
  br i1 %225, label %243, label %226

226:                                              ; preds = %219, %226
  %227 = phi i64 [ %240, %226 ], [ %222, %219 ]
  %228 = phi <4 x i32> [ %238, %226 ], [ %223, %219 ]
  %229 = phi <4 x i32> [ %239, %226 ], [ %224, %219 ]
  %230 = phi i64 [ %241, %226 ], [ 0, %219 ]
  %231 = add i64 %227, %159
  %232 = getelementptr inbounds i32, i32* %1, i64 %231
  %233 = bitcast i32* %232 to <4 x i32>*
  %234 = load <4 x i32>, <4 x i32>* %233, align 4, !tbaa !6
  %235 = getelementptr inbounds i32, i32* %232, i64 4
  %236 = bitcast i32* %235 to <4 x i32>*
  %237 = load <4 x i32>, <4 x i32>* %236, align 4, !tbaa !6
  %238 = add <4 x i32> %234, %228
  %239 = add <4 x i32> %237, %229
  %240 = add nuw i64 %227, 8
  %241 = add i64 %230, 1
  %242 = icmp eq i64 %241, %168
  br i1 %242, label %243, label %226, !llvm.loop !17

243:                                              ; preds = %226, %219
  %244 = phi <4 x i32> [ %220, %219 ], [ %238, %226 ]
  %245 = phi <4 x i32> [ %221, %219 ], [ %239, %226 ]
  %246 = add <4 x i32> %245, %244
  %247 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %246)
  %248 = icmp eq i64 %160, %163
  br i1 %248, label %268, label %249

249:                                              ; preds = %158, %243
  %250 = phi i64 [ %159, %158 ], [ %164, %243 ]
  %251 = phi i32 [ 0, %158 ], [ %247, %243 ]
  br label %260

252:                                              ; preds = %121, %252
  %253 = phi i64 [ %255, %252 ], [ %122, %121 ]
  %254 = phi i32 [ %258, %252 ], [ %123, %121 ]
  %255 = add nsw i64 %253, 1
  %256 = getelementptr inbounds i32, i32* %0, i64 %253
  %257 = load i32, i32* %256, align 4, !tbaa !6
  %258 = add nsw i32 %257, %254
  %259 = icmp eq i64 %255, %5
  br i1 %259, label %155, label %252, !llvm.loop !18

260:                                              ; preds = %249, %260
  %261 = phi i64 [ %263, %260 ], [ %250, %249 ]
  %262 = phi i32 [ %266, %260 ], [ %251, %249 ]
  %263 = add nsw i64 %261, 1
  %264 = getelementptr inbounds i32, i32* %1, i64 %261
  %265 = load i32, i32* %264, align 4, !tbaa !6
  %266 = add nsw i32 %265, %262
  %267 = icmp eq i64 %263, %13
  br i1 %267, label %268, label %260, !llvm.loop !20

268:                                              ; preds = %260, %243, %155
  %269 = phi i32 [ 0, %155 ], [ %247, %243 ], [ %266, %260 ]
  %270 = mul nsw i32 %156, %26
  %271 = add nsw i32 %270, %24
  %272 = mul nsw i32 %269, %25
  %273 = add nsw i32 %271, %272
  ret i32 %273
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_T0_T1_(i32* noundef %0, i32* noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat {
  %4 = ptrtoint i32* %0 to i64
  %5 = ptrtoint i32* %1 to i64
  %6 = sub i64 %5, %4
  %7 = icmp sgt i64 %6, 64
  br i1 %7, label %8, label %178

8:                                                ; preds = %3
  %9 = getelementptr inbounds i32, i32* %0, i64 1
  br label %10

10:                                               ; preds = %8, %174
  %11 = phi i64 [ %6, %8 ], [ %176, %174 ]
  %12 = phi i32* [ %1, %8 ], [ %162, %174 ]
  %13 = phi i64 [ %2, %8 ], [ %130, %174 ]
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %129

15:                                               ; preds = %10
  %16 = lshr exact i64 %11, 2
  %17 = add nsw i64 %16, -2
  %18 = lshr i64 %17, 1
  %19 = add nsw i64 %16, -1
  %20 = lshr i64 %19, 1
  %21 = and i64 %11, 4
  %22 = icmp eq i64 %21, 0
  %23 = or i64 %17, 1
  %24 = getelementptr inbounds i32, i32* %0, i64 %23
  %25 = getelementptr inbounds i32, i32* %0, i64 %18
  br label %26

26:                                               ; preds = %65, %15
  %27 = phi i64 [ %18, %15 ], [ %69, %65 ]
  %28 = getelementptr inbounds i32, i32* %0, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !6
  %30 = icmp sgt i64 %20, %27
  br i1 %30, label %31, label %46

31:                                               ; preds = %26, %31
  %32 = phi i64 [ %41, %31 ], [ %27, %26 ]
  %33 = shl i64 %32, 1
  %34 = add i64 %33, 2
  %35 = getelementptr inbounds i32, i32* %0, i64 %34
  %36 = or i64 %33, 1
  %37 = getelementptr inbounds i32, i32* %0, i64 %36
  %38 = load i32, i32* %35, align 4, !tbaa !6
  %39 = load i32, i32* %37, align 4, !tbaa !6
  %40 = icmp sgt i32 %38, %39
  %41 = select i1 %40, i64 %36, i64 %34
  %42 = getelementptr inbounds i32, i32* %0, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !6
  %44 = getelementptr inbounds i32, i32* %0, i64 %32
  store i32 %43, i32* %44, align 4, !tbaa !6
  %45 = icmp slt i64 %41, %20
  br i1 %45, label %31, label %46, !llvm.loop !21

46:                                               ; preds = %31, %26
  %47 = phi i64 [ %27, %26 ], [ %41, %31 ]
  %48 = icmp eq i64 %47, %18
  %49 = select i1 %22, i1 %48, i1 false
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %24, align 4, !tbaa !6
  store i32 %51, i32* %25, align 4, !tbaa !6
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i64 [ %23, %50 ], [ %47, %46 ]
  %54 = icmp sgt i64 %53, %27
  br i1 %54, label %55, label %65

55:                                               ; preds = %52, %62
  %56 = phi i64 [ %58, %62 ], [ %53, %52 ]
  %57 = add nsw i64 %56, -1
  %58 = sdiv i64 %57, 2
  %59 = getelementptr inbounds i32, i32* %0, i64 %58
  %60 = load i32, i32* %59, align 4, !tbaa !6
  %61 = icmp sgt i32 %60, %29
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = getelementptr inbounds i32, i32* %0, i64 %56
  store i32 %60, i32* %63, align 4, !tbaa !6
  %64 = icmp sgt i64 %58, %27
  br i1 %64, label %55, label %65, !llvm.loop !22

65:                                               ; preds = %62, %55, %52
  %66 = phi i64 [ %53, %52 ], [ %58, %62 ], [ %56, %55 ]
  %67 = getelementptr inbounds i32, i32* %0, i64 %66
  store i32 %29, i32* %67, align 4, !tbaa !6
  %68 = icmp eq i64 %27, 0
  %69 = add nsw i64 %27, -1
  br i1 %68, label %70, label %26, !llvm.loop !23

70:                                               ; preds = %65
  %71 = icmp sgt i64 %11, 4
  br i1 %71, label %72, label %178

72:                                               ; preds = %70, %125
  %73 = phi i32* [ %74, %125 ], [ %12, %70 ]
  %74 = getelementptr inbounds i32, i32* %73, i64 -1
  %75 = load i32, i32* %74, align 4, !tbaa !6
  %76 = load i32, i32* %0, align 4, !tbaa !6
  store i32 %76, i32* %74, align 4, !tbaa !6
  %77 = ptrtoint i32* %74 to i64
  %78 = sub i64 %77, %4
  %79 = ashr exact i64 %78, 2
  %80 = add nsw i64 %79, -1
  %81 = sdiv i64 %80, 2
  %82 = icmp sgt i64 %78, 8
  br i1 %82, label %83, label %98

83:                                               ; preds = %72, %83
  %84 = phi i64 [ %93, %83 ], [ 0, %72 ]
  %85 = shl i64 %84, 1
  %86 = add i64 %85, 2
  %87 = getelementptr inbounds i32, i32* %0, i64 %86
  %88 = or i64 %85, 1
  %89 = getelementptr inbounds i32, i32* %0, i64 %88
  %90 = load i32, i32* %87, align 4, !tbaa !6
  %91 = load i32, i32* %89, align 4, !tbaa !6
  %92 = icmp sgt i32 %90, %91
  %93 = select i1 %92, i64 %88, i64 %86
  %94 = getelementptr inbounds i32, i32* %0, i64 %93
  %95 = load i32, i32* %94, align 4, !tbaa !6
  %96 = getelementptr inbounds i32, i32* %0, i64 %84
  store i32 %95, i32* %96, align 4, !tbaa !6
  %97 = icmp slt i64 %93, %81
  br i1 %97, label %83, label %98, !llvm.loop !21

98:                                               ; preds = %83, %72
  %99 = phi i64 [ 0, %72 ], [ %93, %83 ]
  %100 = and i64 %78, 4
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = add nsw i64 %79, -2
  %104 = sdiv i64 %103, 2
  %105 = icmp eq i64 %99, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = shl i64 %99, 1
  %108 = or i64 %107, 1
  %109 = getelementptr inbounds i32, i32* %0, i64 %108
  %110 = load i32, i32* %109, align 4, !tbaa !6
  %111 = getelementptr inbounds i32, i32* %0, i64 %99
  store i32 %110, i32* %111, align 4, !tbaa !6
  br label %112

112:                                              ; preds = %106, %102, %98
  %113 = phi i64 [ %108, %106 ], [ %99, %102 ], [ %99, %98 ]
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %112, %122
  %116 = phi i64 [ %118, %122 ], [ %113, %112 ]
  %117 = add nsw i64 %116, -1
  %118 = lshr i64 %117, 1
  %119 = getelementptr inbounds i32, i32* %0, i64 %118
  %120 = load i32, i32* %119, align 4, !tbaa !6
  %121 = icmp sgt i32 %120, %75
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = getelementptr inbounds i32, i32* %0, i64 %116
  store i32 %120, i32* %123, align 4, !tbaa !6
  %124 = icmp ult i64 %117, 2
  br i1 %124, label %125, label %115, !llvm.loop !22

125:                                              ; preds = %122, %115, %112
  %126 = phi i64 [ %113, %112 ], [ %116, %115 ], [ 0, %122 ]
  %127 = getelementptr inbounds i32, i32* %0, i64 %126
  store i32 %75, i32* %127, align 4, !tbaa !6
  %128 = icmp sgt i64 %78, 4
  br i1 %128, label %72, label %178, !llvm.loop !24

129:                                              ; preds = %10
  %130 = add nsw i64 %13, -1
  %131 = lshr i64 %11, 3
  %132 = getelementptr inbounds i32, i32* %0, i64 %131
  %133 = getelementptr inbounds i32, i32* %12, i64 -1
  %134 = load i32, i32* %9, align 4, !tbaa !6
  %135 = load i32, i32* %132, align 4, !tbaa !6
  %136 = icmp sgt i32 %134, %135
  %137 = load i32, i32* %133, align 4, !tbaa !6
  br i1 %136, label %138, label %147

138:                                              ; preds = %129
  %139 = icmp sgt i32 %135, %137
  br i1 %139, label %140, label %142

140:                                              ; preds = %138
  %141 = load i32, i32* %0, align 4, !tbaa !6
  store i32 %135, i32* %0, align 4, !tbaa !6
  store i32 %141, i32* %132, align 4, !tbaa !6
  br label %156

142:                                              ; preds = %138
  %143 = icmp sgt i32 %134, %137
  %144 = load i32, i32* %0, align 4, !tbaa !6
  br i1 %143, label %145, label %146

145:                                              ; preds = %142
  store i32 %137, i32* %0, align 4, !tbaa !6
  store i32 %144, i32* %133, align 4, !tbaa !6
  br label %156

146:                                              ; preds = %142
  store i32 %134, i32* %0, align 4, !tbaa !6
  store i32 %144, i32* %9, align 4, !tbaa !6
  br label %156

147:                                              ; preds = %129
  %148 = icmp sgt i32 %134, %137
  br i1 %148, label %149, label %151

149:                                              ; preds = %147
  %150 = load i32, i32* %0, align 4, !tbaa !6
  store i32 %134, i32* %0, align 4, !tbaa !6
  store i32 %150, i32* %9, align 4, !tbaa !6
  br label %156

151:                                              ; preds = %147
  %152 = icmp sgt i32 %135, %137
  %153 = load i32, i32* %0, align 4, !tbaa !6
  br i1 %152, label %154, label %155

154:                                              ; preds = %151
  store i32 %137, i32* %0, align 4, !tbaa !6
  store i32 %153, i32* %133, align 4, !tbaa !6
  br label %156

155:                                              ; preds = %151
  store i32 %135, i32* %0, align 4, !tbaa !6
  store i32 %153, i32* %132, align 4, !tbaa !6
  br label %156

156:                                              ; preds = %155, %154, %149, %146, %145, %140
  br label %157

157:                                              ; preds = %156, %173
  %158 = phi i32* [ %168, %173 ], [ %12, %156 ]
  %159 = phi i32* [ %165, %173 ], [ %9, %156 ]
  %160 = load i32, i32* %0, align 4, !tbaa !6
  br label %161

161:                                              ; preds = %161, %157
  %162 = phi i32* [ %159, %157 ], [ %165, %161 ]
  %163 = load i32, i32* %162, align 4, !tbaa !6
  %164 = icmp sgt i32 %163, %160
  %165 = getelementptr inbounds i32, i32* %162, i64 1
  br i1 %164, label %161, label %166, !llvm.loop !25

166:                                              ; preds = %161, %166
  %167 = phi i32* [ %168, %166 ], [ %158, %161 ]
  %168 = getelementptr inbounds i32, i32* %167, i64 -1
  %169 = load i32, i32* %168, align 4, !tbaa !6
  %170 = icmp sgt i32 %160, %169
  br i1 %170, label %166, label %171, !llvm.loop !26

171:                                              ; preds = %166
  %172 = icmp ult i32* %162, %168
  br i1 %172, label %173, label %174

173:                                              ; preds = %171
  store i32 %169, i32* %162, align 4, !tbaa !6
  store i32 %163, i32* %168, align 4, !tbaa !6
  br label %157, !llvm.loop !27

174:                                              ; preds = %171
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_T0_T1_(i32* noundef nonnull %162, i32* noundef %12, i64 noundef %130)
  %175 = ptrtoint i32* %162 to i64
  %176 = sub i64 %175, %4
  %177 = icmp sgt i64 %176, 64
  br i1 %177, label %10, label %178, !llvm.loop !28

178:                                              ; preds = %174, %125, %3, %70
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_T0_(i32* noundef %0, i32* noundef %1) local_unnamed_addr #3 comdat {
  %3 = ptrtoint i32* %1 to i64
  %4 = ptrtoint i32* %0 to i64
  %5 = sub i64 %3, %4
  %6 = icmp sgt i64 %5, 64
  br i1 %6, label %7, label %54

7:                                                ; preds = %2
  %8 = bitcast i32* %0 to i8*
  %9 = getelementptr i32, i32* %0, i64 1
  %10 = bitcast i32* %9 to i8*
  br label %11

11:                                               ; preds = %30, %7
  %12 = phi i64 [ 1, %7 ], [ %32, %30 ]
  %13 = phi i32* [ %0, %7 ], [ %14, %30 ]
  %14 = getelementptr inbounds i32, i32* %0, i64 %12
  %15 = load i32, i32* %14, align 4, !tbaa !6
  %16 = load i32, i32* %0, align 4, !tbaa !6
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = shl nsw i64 %12, 2
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %10, i8* nonnull align 4 %8, i64 %19, i1 false) #7
  br label %30

20:                                               ; preds = %11
  %21 = load i32, i32* %13, align 4, !tbaa !6
  %22 = icmp sgt i32 %15, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %20, %23
  %24 = phi i32 [ %28, %23 ], [ %21, %20 ]
  %25 = phi i32* [ %27, %23 ], [ %13, %20 ]
  %26 = phi i32* [ %25, %23 ], [ %14, %20 ]
  store i32 %24, i32* %26, align 4, !tbaa !6
  %27 = getelementptr inbounds i32, i32* %25, i64 -1
  %28 = load i32, i32* %27, align 4, !tbaa !6
  %29 = icmp sgt i32 %15, %28
  br i1 %29, label %23, label %30, !llvm.loop !29

30:                                               ; preds = %23, %20, %18
  %31 = phi i32* [ %0, %18 ], [ %14, %20 ], [ %25, %23 ]
  store i32 %15, i32* %31, align 4, !tbaa !6
  %32 = add nuw nsw i64 %12, 1
  %33 = icmp eq i64 %32, 16
  br i1 %33, label %34, label %11, !llvm.loop !30

34:                                               ; preds = %30
  %35 = getelementptr inbounds i32, i32* %0, i64 16
  %36 = icmp eq i32* %35, %1
  br i1 %36, label %91, label %37

37:                                               ; preds = %34, %50
  %38 = phi i32* [ %52, %50 ], [ %35, %34 ]
  %39 = load i32, i32* %38, align 4, !tbaa !6
  %40 = getelementptr inbounds i32, i32* %38, i64 -1
  %41 = load i32, i32* %40, align 4, !tbaa !6
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37, %43
  %44 = phi i32 [ %48, %43 ], [ %41, %37 ]
  %45 = phi i32* [ %47, %43 ], [ %40, %37 ]
  %46 = phi i32* [ %45, %43 ], [ %38, %37 ]
  store i32 %44, i32* %46, align 4, !tbaa !6
  %47 = getelementptr inbounds i32, i32* %45, i64 -1
  %48 = load i32, i32* %47, align 4, !tbaa !6
  %49 = icmp sgt i32 %39, %48
  br i1 %49, label %43, label %50, !llvm.loop !29

50:                                               ; preds = %43, %37
  %51 = phi i32* [ %38, %37 ], [ %45, %43 ]
  store i32 %39, i32* %51, align 4, !tbaa !6
  %52 = getelementptr inbounds i32, i32* %38, i64 1
  %53 = icmp eq i32* %52, %1
  br i1 %53, label %91, label %37, !llvm.loop !31

54:                                               ; preds = %2
  %55 = icmp eq i32* %0, %1
  br i1 %55, label %91, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds i32, i32* %0, i64 1
  %58 = icmp eq i32* %57, %1
  br i1 %58, label %91, label %59

59:                                               ; preds = %56
  %60 = bitcast i32* %0 to i8*
  br label %61

61:                                               ; preds = %87, %59
  %62 = phi i32* [ %57, %59 ], [ %89, %87 ]
  %63 = phi i32* [ %0, %59 ], [ %62, %87 ]
  %64 = load i32, i32* %62, align 4, !tbaa !6
  %65 = load i32, i32* %0, align 4, !tbaa !6
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = ptrtoint i32* %62 to i64
  %69 = sub i64 %68, %4
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds i32, i32* %63, i64 2
  %73 = ashr exact i64 %69, 2
  %74 = sub nsw i64 0, %73
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = bitcast i32* %75 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %76, i8* nonnull align 4 %60, i64 %69, i1 false) #7
  br label %87

77:                                               ; preds = %61
  %78 = load i32, i32* %63, align 4, !tbaa !6
  %79 = icmp sgt i32 %64, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %77, %80
  %81 = phi i32 [ %85, %80 ], [ %78, %77 ]
  %82 = phi i32* [ %84, %80 ], [ %63, %77 ]
  %83 = phi i32* [ %82, %80 ], [ %62, %77 ]
  store i32 %81, i32* %83, align 4, !tbaa !6
  %84 = getelementptr inbounds i32, i32* %82, i64 -1
  %85 = load i32, i32* %84, align 4, !tbaa !6
  %86 = icmp sgt i32 %64, %85
  br i1 %86, label %80, label %87, !llvm.loop !29

87:                                               ; preds = %80, %77, %71, %67
  %88 = phi i32* [ %0, %67 ], [ %0, %71 ], [ %62, %77 ], [ %82, %80 ]
  store i32 %64, i32* %88, align 4, !tbaa !6
  %89 = getelementptr inbounds i32, i32* %62, i64 1
  %90 = icmp eq i32* %89, %1
  br i1 %90, label %91, label %61, !llvm.loop !30

91:                                               ; preds = %87, %50, %56, %54, %34
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_COST_CUT_BOARD_SQUARES_reprocessed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{i64 0, i64 65}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !11, !19, !12}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !11, !19, !12}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
