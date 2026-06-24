; ModuleID = 'llvm/cpp_transcoder/SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER/SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER/SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SC_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SC_T0_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_Z6f_goldPii(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %136

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %17

6:                                                ; preds = %116
  %7 = icmp eq i32* %117, %118
  br i1 %7, label %125, label %8

8:                                                ; preds = %6
  %9 = ptrtoint i32* %118 to i64
  %10 = ptrtoint i32* %117 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 2
  %13 = tail call i64 @llvm.ctlz.i64(i64 %12, i1 true) #10, !range !5
  %14 = shl nuw nsw i64 %13, 1
  %15 = xor i64 %14, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(i32* %117, i32* %118, i64 noundef %15)
          to label %16 unwind label %379

16:                                               ; preds = %8
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(i32* %117, i32* %118)
          to label %125 unwind label %379

17:                                               ; preds = %4, %116
  %18 = phi i64 [ 0, %4 ], [ %123, %116 ]
  %19 = phi i32* [ null, %4 ], [ %122, %116 ]
  %20 = phi i32* [ null, %4 ], [ %121, %116 ]
  %21 = phi i32* [ null, %4 ], [ %120, %116 ]
  %22 = phi i32* [ null, %4 ], [ %119, %116 ]
  %23 = phi i32* [ null, %4 ], [ %118, %116 ]
  %24 = phi i32* [ null, %4 ], [ %117, %116 ]
  %25 = and i64 %18, 1
  %26 = icmp eq i64 %25, 0
  %27 = getelementptr inbounds i32, i32* %0, i64 %18
  br i1 %26, label %28, label %74

28:                                               ; preds = %17
  %29 = icmp eq i32* %23, %22
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %27, align 4, !tbaa !6
  store i32 %31, i32* %23, align 4, !tbaa !6
  %32 = getelementptr inbounds i32, i32* %23, i64 1
  br label %116

33:                                               ; preds = %28
  %34 = ptrtoint i32* %22 to i64
  %35 = ptrtoint i32* %24 to i64
  %36 = sub i64 %34, %35
  %37 = ashr exact i64 %36, 2
  %38 = icmp eq i64 %36, 9223372036854775804
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  invoke void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #11
          to label %40 unwind label %72

40:                                               ; preds = %39
  unreachable

41:                                               ; preds = %33
  %42 = icmp eq i64 %36, 0
  %43 = select i1 %42, i64 1, i64 %37
  %44 = add nsw i64 %43, %37
  %45 = icmp ult i64 %44, %37
  %46 = icmp ugt i64 %44, 2305843009213693951
  %47 = or i1 %45, %46
  %48 = select i1 %47, i64 2305843009213693951, i64 %44
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %41
  %51 = shl nuw nsw i64 %48, 2
  %52 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef %51) #12
          to label %53 unwind label %70

53:                                               ; preds = %50
  %54 = bitcast i8* %52 to i32*
  br label %55

55:                                               ; preds = %53, %41
  %56 = phi i32* [ %54, %53 ], [ null, %41 ]
  %57 = getelementptr inbounds i32, i32* %56, i64 %37
  %58 = load i32, i32* %27, align 4, !tbaa !6
  store i32 %58, i32* %57, align 4, !tbaa !6
  %59 = icmp sgt i64 %36, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = bitcast i32* %56 to i8*
  %62 = bitcast i32* %24 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 %36, i1 false) #10
  br label %63

63:                                               ; preds = %55, %60
  %64 = getelementptr inbounds i32, i32* %57, i64 1
  %65 = icmp eq i32* %24, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = bitcast i32* %24 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %67) #10
  br label %68

68:                                               ; preds = %66, %63
  %69 = getelementptr inbounds i32, i32* %56, i64 %48
  br label %116

70:                                               ; preds = %50, %96
  %71 = landingpad { i8*, i32 }
          cleanup
  br label %433

72:                                               ; preds = %39, %85
  %73 = landingpad { i8*, i32 }
          cleanup
  br label %433

74:                                               ; preds = %17
  %75 = icmp eq i32* %20, %19
  br i1 %75, label %79, label %76

76:                                               ; preds = %74
  %77 = load i32, i32* %27, align 4, !tbaa !6
  store i32 %77, i32* %20, align 4, !tbaa !6
  %78 = getelementptr inbounds i32, i32* %20, i64 1
  br label %116

79:                                               ; preds = %74
  %80 = ptrtoint i32* %19 to i64
  %81 = ptrtoint i32* %21 to i64
  %82 = sub i64 %80, %81
  %83 = ashr exact i64 %82, 2
  %84 = icmp eq i64 %82, 9223372036854775804
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  invoke void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #11
          to label %86 unwind label %72

86:                                               ; preds = %85
  unreachable

87:                                               ; preds = %79
  %88 = icmp eq i64 %82, 0
  %89 = select i1 %88, i64 1, i64 %83
  %90 = add nsw i64 %89, %83
  %91 = icmp ult i64 %90, %83
  %92 = icmp ugt i64 %90, 2305843009213693951
  %93 = or i1 %91, %92
  %94 = select i1 %93, i64 2305843009213693951, i64 %90
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %87
  %97 = shl nuw nsw i64 %94, 2
  %98 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef %97) #12
          to label %99 unwind label %70

99:                                               ; preds = %96
  %100 = bitcast i8* %98 to i32*
  br label %101

101:                                              ; preds = %99, %87
  %102 = phi i32* [ %100, %99 ], [ null, %87 ]
  %103 = getelementptr inbounds i32, i32* %102, i64 %83
  %104 = load i32, i32* %27, align 4, !tbaa !6
  store i32 %104, i32* %103, align 4, !tbaa !6
  %105 = icmp sgt i64 %82, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = bitcast i32* %102 to i8*
  %108 = bitcast i32* %21 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 %108, i64 %82, i1 false) #10
  br label %109

109:                                              ; preds = %101, %106
  %110 = getelementptr inbounds i32, i32* %103, i64 1
  %111 = icmp eq i32* %21, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %109
  %113 = bitcast i32* %21 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %113) #10
  br label %114

114:                                              ; preds = %112, %109
  %115 = getelementptr inbounds i32, i32* %102, i64 %94
  br label %116

116:                                              ; preds = %114, %76, %68, %30
  %117 = phi i32* [ %56, %68 ], [ %24, %30 ], [ %24, %76 ], [ %24, %114 ]
  %118 = phi i32* [ %64, %68 ], [ %32, %30 ], [ %23, %76 ], [ %23, %114 ]
  %119 = phi i32* [ %69, %68 ], [ %22, %30 ], [ %22, %76 ], [ %22, %114 ]
  %120 = phi i32* [ %21, %68 ], [ %21, %30 ], [ %21, %76 ], [ %102, %114 ]
  %121 = phi i32* [ %20, %68 ], [ %20, %30 ], [ %78, %76 ], [ %110, %114 ]
  %122 = phi i32* [ %19, %68 ], [ %19, %30 ], [ %19, %76 ], [ %115, %114 ]
  %123 = add nuw nsw i64 %18, 1
  %124 = icmp eq i64 %123, %5
  br i1 %124, label %6, label %17, !llvm.loop !10

125:                                              ; preds = %6, %16
  %126 = icmp eq i32* %120, %121
  br i1 %126, label %136, label %127

127:                                              ; preds = %125
  %128 = ptrtoint i32* %121 to i64
  %129 = ptrtoint i32* %120 to i64
  %130 = sub i64 %128, %129
  %131 = ashr exact i64 %130, 2
  %132 = tail call i64 @llvm.ctlz.i64(i64 %131, i1 true) #10, !range !5
  %133 = shl nuw nsw i64 %132, 1
  %134 = xor i64 %133, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SC_T0_T1_(i32* %120, i32* %121, i64 noundef %134)
          to label %135 unwind label %379

135:                                              ; preds = %127
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SC_T0_(i32* %120, i32* %121)
          to label %136 unwind label %379

136:                                              ; preds = %2, %135, %125
  %137 = phi i32* [ %117, %135 ], [ %117, %125 ], [ null, %2 ]
  %138 = phi i32* [ %118, %135 ], [ %118, %125 ], [ null, %2 ]
  %139 = phi i32* [ %120, %135 ], [ %120, %125 ], [ null, %2 ]
  %140 = phi i32* [ %121, %135 ], [ %121, %125 ], [ null, %2 ]
  %141 = ptrtoint i32* %138 to i64
  %142 = ptrtoint i32* %137 to i64
  %143 = sub i64 %141, %142
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %254, label %145

145:                                              ; preds = %136
  %146 = ashr i64 %143, 2
  %147 = call i64 @llvm.umax.i64(i64 %146, i64 1)
  %148 = icmp ult i64 %147, 8
  br i1 %148, label %234, label %149

149:                                              ; preds = %145
  %150 = getelementptr i32, i32* %0, i64 %147
  %151 = getelementptr i32, i32* %137, i64 %147
  %152 = icmp ugt i32* %151, %0
  %153 = icmp ult i32* %137, %150
  %154 = and i1 %152, %153
  br i1 %154, label %234, label %155

155:                                              ; preds = %149
  %156 = and i64 %147, -8
  %157 = add i64 %156, -8
  %158 = lshr exact i64 %157, 3
  %159 = add nuw nsw i64 %158, 1
  %160 = and i64 %159, 3
  %161 = icmp ult i64 %157, 24
  br i1 %161, label %213, label %162

162:                                              ; preds = %155
  %163 = and i64 %159, 4611686018427387900
  br label %164

164:                                              ; preds = %164, %162
  %165 = phi i64 [ 0, %162 ], [ %210, %164 ]
  %166 = phi i64 [ 0, %162 ], [ %211, %164 ]
  %167 = getelementptr inbounds i32, i32* %137, i64 %165
  %168 = bitcast i32* %167 to <4 x i32>*
  %169 = load <4 x i32>, <4 x i32>* %168, align 4, !tbaa !6, !alias.scope !12
  %170 = getelementptr inbounds i32, i32* %167, i64 4
  %171 = bitcast i32* %170 to <4 x i32>*
  %172 = load <4 x i32>, <4 x i32>* %171, align 4, !tbaa !6, !alias.scope !12
  %173 = getelementptr inbounds i32, i32* %0, i64 %165
  %174 = bitcast i32* %173 to <4 x i32>*
  store <4 x i32> %169, <4 x i32>* %174, align 4, !tbaa !6, !alias.scope !15, !noalias !12
  %175 = getelementptr inbounds i32, i32* %173, i64 4
  %176 = bitcast i32* %175 to <4 x i32>*
  store <4 x i32> %172, <4 x i32>* %176, align 4, !tbaa !6, !alias.scope !15, !noalias !12
  %177 = or i64 %165, 8
  %178 = getelementptr inbounds i32, i32* %137, i64 %177
  %179 = bitcast i32* %178 to <4 x i32>*
  %180 = load <4 x i32>, <4 x i32>* %179, align 4, !tbaa !6, !alias.scope !12
  %181 = getelementptr inbounds i32, i32* %178, i64 4
  %182 = bitcast i32* %181 to <4 x i32>*
  %183 = load <4 x i32>, <4 x i32>* %182, align 4, !tbaa !6, !alias.scope !12
  %184 = getelementptr inbounds i32, i32* %0, i64 %177
  %185 = bitcast i32* %184 to <4 x i32>*
  store <4 x i32> %180, <4 x i32>* %185, align 4, !tbaa !6, !alias.scope !15, !noalias !12
  %186 = getelementptr inbounds i32, i32* %184, i64 4
  %187 = bitcast i32* %186 to <4 x i32>*
  store <4 x i32> %183, <4 x i32>* %187, align 4, !tbaa !6, !alias.scope !15, !noalias !12
  %188 = or i64 %165, 16
  %189 = getelementptr inbounds i32, i32* %137, i64 %188
  %190 = bitcast i32* %189 to <4 x i32>*
  %191 = load <4 x i32>, <4 x i32>* %190, align 4, !tbaa !6, !alias.scope !12
  %192 = getelementptr inbounds i32, i32* %189, i64 4
  %193 = bitcast i32* %192 to <4 x i32>*
  %194 = load <4 x i32>, <4 x i32>* %193, align 4, !tbaa !6, !alias.scope !12
  %195 = getelementptr inbounds i32, i32* %0, i64 %188
  %196 = bitcast i32* %195 to <4 x i32>*
  store <4 x i32> %191, <4 x i32>* %196, align 4, !tbaa !6, !alias.scope !15, !noalias !12
  %197 = getelementptr inbounds i32, i32* %195, i64 4
  %198 = bitcast i32* %197 to <4 x i32>*
  store <4 x i32> %194, <4 x i32>* %198, align 4, !tbaa !6, !alias.scope !15, !noalias !12
  %199 = or i64 %165, 24
  %200 = getelementptr inbounds i32, i32* %137, i64 %199
  %201 = bitcast i32* %200 to <4 x i32>*
  %202 = load <4 x i32>, <4 x i32>* %201, align 4, !tbaa !6, !alias.scope !12
  %203 = getelementptr inbounds i32, i32* %200, i64 4
  %204 = bitcast i32* %203 to <4 x i32>*
  %205 = load <4 x i32>, <4 x i32>* %204, align 4, !tbaa !6, !alias.scope !12
  %206 = getelementptr inbounds i32, i32* %0, i64 %199
  %207 = bitcast i32* %206 to <4 x i32>*
  store <4 x i32> %202, <4 x i32>* %207, align 4, !tbaa !6, !alias.scope !15, !noalias !12
  %208 = getelementptr inbounds i32, i32* %206, i64 4
  %209 = bitcast i32* %208 to <4 x i32>*
  store <4 x i32> %205, <4 x i32>* %209, align 4, !tbaa !6, !alias.scope !15, !noalias !12
  %210 = add nuw i64 %165, 32
  %211 = add i64 %166, 4
  %212 = icmp eq i64 %211, %163
  br i1 %212, label %213, label %164, !llvm.loop !17

213:                                              ; preds = %164, %155
  %214 = phi i64 [ 0, %155 ], [ %210, %164 ]
  %215 = icmp eq i64 %160, 0
  br i1 %215, label %232, label %216

216:                                              ; preds = %213, %216
  %217 = phi i64 [ %229, %216 ], [ %214, %213 ]
  %218 = phi i64 [ %230, %216 ], [ 0, %213 ]
  %219 = getelementptr inbounds i32, i32* %137, i64 %217
  %220 = bitcast i32* %219 to <4 x i32>*
  %221 = load <4 x i32>, <4 x i32>* %220, align 4, !tbaa !6, !alias.scope !12
  %222 = getelementptr inbounds i32, i32* %219, i64 4
  %223 = bitcast i32* %222 to <4 x i32>*
  %224 = load <4 x i32>, <4 x i32>* %223, align 4, !tbaa !6, !alias.scope !12
  %225 = getelementptr inbounds i32, i32* %0, i64 %217
  %226 = bitcast i32* %225 to <4 x i32>*
  store <4 x i32> %221, <4 x i32>* %226, align 4, !tbaa !6, !alias.scope !15, !noalias !12
  %227 = getelementptr inbounds i32, i32* %225, i64 4
  %228 = bitcast i32* %227 to <4 x i32>*
  store <4 x i32> %224, <4 x i32>* %228, align 4, !tbaa !6, !alias.scope !15, !noalias !12
  %229 = add nuw i64 %217, 8
  %230 = add i64 %218, 1
  %231 = icmp eq i64 %230, %160
  br i1 %231, label %232, label %216, !llvm.loop !19

232:                                              ; preds = %216, %213
  %233 = icmp eq i64 %147, %156
  br i1 %233, label %252, label %234

234:                                              ; preds = %149, %145, %232
  %235 = phi i64 [ 0, %149 ], [ 0, %145 ], [ %156, %232 ]
  %236 = xor i64 %235, -1
  %237 = add i64 %147, %236
  %238 = and i64 %147, 3
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %249, label %240

240:                                              ; preds = %234, %240
  %241 = phi i64 [ %245, %240 ], [ %235, %234 ]
  %242 = phi i64 [ %247, %240 ], [ 0, %234 ]
  %243 = getelementptr inbounds i32, i32* %137, i64 %241
  %244 = load i32, i32* %243, align 4, !tbaa !6
  %245 = add nuw nsw i64 %241, 1
  %246 = getelementptr inbounds i32, i32* %0, i64 %241
  store i32 %244, i32* %246, align 4, !tbaa !6
  %247 = add i64 %242, 1
  %248 = icmp eq i64 %247, %238
  br i1 %248, label %249, label %240, !llvm.loop !21

249:                                              ; preds = %240, %234
  %250 = phi i64 [ %235, %234 ], [ %245, %240 ]
  %251 = icmp ult i64 %237, 3
  br i1 %251, label %252, label %381

252:                                              ; preds = %249, %381, %232
  %253 = and i64 %147, 4294967295
  br label %254

254:                                              ; preds = %252, %136
  %255 = phi i64 [ 0, %136 ], [ %253, %252 ]
  %256 = ptrtoint i32* %140 to i64
  %257 = ptrtoint i32* %139 to i64
  %258 = sub i64 %256, %257
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %400, label %260

260:                                              ; preds = %254
  %261 = ashr i64 %258, 2
  %262 = call i64 @llvm.umax.i64(i64 %261, i64 1)
  %263 = icmp ult i64 %262, 8
  br i1 %263, label %357, label %264

264:                                              ; preds = %260
  %265 = getelementptr i32, i32* %0, i64 %255
  %266 = add i64 %255, %262
  %267 = getelementptr i32, i32* %0, i64 %266
  %268 = getelementptr i32, i32* %139, i64 %262
  %269 = icmp ult i32* %265, %268
  %270 = icmp ult i32* %139, %267
  %271 = and i1 %269, %270
  br i1 %271, label %357, label %272

272:                                              ; preds = %264
  %273 = and i64 %262, -8
  %274 = add i64 %255, %273
  %275 = add i64 %273, -8
  %276 = lshr exact i64 %275, 3
  %277 = add nuw nsw i64 %276, 1
  %278 = and i64 %277, 3
  %279 = icmp ult i64 %275, 24
  br i1 %279, label %335, label %280

280:                                              ; preds = %272
  %281 = and i64 %277, 4611686018427387900
  br label %282

282:                                              ; preds = %282, %280
  %283 = phi i64 [ 0, %280 ], [ %332, %282 ]
  %284 = phi i64 [ 0, %280 ], [ %333, %282 ]
  %285 = add i64 %255, %283
  %286 = getelementptr inbounds i32, i32* %139, i64 %283
  %287 = bitcast i32* %286 to <4 x i32>*
  %288 = load <4 x i32>, <4 x i32>* %287, align 4, !tbaa !6, !alias.scope !22
  %289 = getelementptr inbounds i32, i32* %286, i64 4
  %290 = bitcast i32* %289 to <4 x i32>*
  %291 = load <4 x i32>, <4 x i32>* %290, align 4, !tbaa !6, !alias.scope !22
  %292 = getelementptr inbounds i32, i32* %0, i64 %285
  %293 = bitcast i32* %292 to <4 x i32>*
  store <4 x i32> %288, <4 x i32>* %293, align 4, !tbaa !6, !alias.scope !25, !noalias !22
  %294 = getelementptr inbounds i32, i32* %292, i64 4
  %295 = bitcast i32* %294 to <4 x i32>*
  store <4 x i32> %291, <4 x i32>* %295, align 4, !tbaa !6, !alias.scope !25, !noalias !22
  %296 = or i64 %283, 8
  %297 = add i64 %255, %296
  %298 = getelementptr inbounds i32, i32* %139, i64 %296
  %299 = bitcast i32* %298 to <4 x i32>*
  %300 = load <4 x i32>, <4 x i32>* %299, align 4, !tbaa !6, !alias.scope !22
  %301 = getelementptr inbounds i32, i32* %298, i64 4
  %302 = bitcast i32* %301 to <4 x i32>*
  %303 = load <4 x i32>, <4 x i32>* %302, align 4, !tbaa !6, !alias.scope !22
  %304 = getelementptr inbounds i32, i32* %0, i64 %297
  %305 = bitcast i32* %304 to <4 x i32>*
  store <4 x i32> %300, <4 x i32>* %305, align 4, !tbaa !6, !alias.scope !25, !noalias !22
  %306 = getelementptr inbounds i32, i32* %304, i64 4
  %307 = bitcast i32* %306 to <4 x i32>*
  store <4 x i32> %303, <4 x i32>* %307, align 4, !tbaa !6, !alias.scope !25, !noalias !22
  %308 = or i64 %283, 16
  %309 = add i64 %255, %308
  %310 = getelementptr inbounds i32, i32* %139, i64 %308
  %311 = bitcast i32* %310 to <4 x i32>*
  %312 = load <4 x i32>, <4 x i32>* %311, align 4, !tbaa !6, !alias.scope !22
  %313 = getelementptr inbounds i32, i32* %310, i64 4
  %314 = bitcast i32* %313 to <4 x i32>*
  %315 = load <4 x i32>, <4 x i32>* %314, align 4, !tbaa !6, !alias.scope !22
  %316 = getelementptr inbounds i32, i32* %0, i64 %309
  %317 = bitcast i32* %316 to <4 x i32>*
  store <4 x i32> %312, <4 x i32>* %317, align 4, !tbaa !6, !alias.scope !25, !noalias !22
  %318 = getelementptr inbounds i32, i32* %316, i64 4
  %319 = bitcast i32* %318 to <4 x i32>*
  store <4 x i32> %315, <4 x i32>* %319, align 4, !tbaa !6, !alias.scope !25, !noalias !22
  %320 = or i64 %283, 24
  %321 = add i64 %255, %320
  %322 = getelementptr inbounds i32, i32* %139, i64 %320
  %323 = bitcast i32* %322 to <4 x i32>*
  %324 = load <4 x i32>, <4 x i32>* %323, align 4, !tbaa !6, !alias.scope !22
  %325 = getelementptr inbounds i32, i32* %322, i64 4
  %326 = bitcast i32* %325 to <4 x i32>*
  %327 = load <4 x i32>, <4 x i32>* %326, align 4, !tbaa !6, !alias.scope !22
  %328 = getelementptr inbounds i32, i32* %0, i64 %321
  %329 = bitcast i32* %328 to <4 x i32>*
  store <4 x i32> %324, <4 x i32>* %329, align 4, !tbaa !6, !alias.scope !25, !noalias !22
  %330 = getelementptr inbounds i32, i32* %328, i64 4
  %331 = bitcast i32* %330 to <4 x i32>*
  store <4 x i32> %327, <4 x i32>* %331, align 4, !tbaa !6, !alias.scope !25, !noalias !22
  %332 = add nuw i64 %283, 32
  %333 = add i64 %284, 4
  %334 = icmp eq i64 %333, %281
  br i1 %334, label %335, label %282, !llvm.loop !27

335:                                              ; preds = %282, %272
  %336 = phi i64 [ 0, %272 ], [ %332, %282 ]
  %337 = icmp eq i64 %278, 0
  br i1 %337, label %355, label %338

338:                                              ; preds = %335, %338
  %339 = phi i64 [ %352, %338 ], [ %336, %335 ]
  %340 = phi i64 [ %353, %338 ], [ 0, %335 ]
  %341 = add i64 %255, %339
  %342 = getelementptr inbounds i32, i32* %139, i64 %339
  %343 = bitcast i32* %342 to <4 x i32>*
  %344 = load <4 x i32>, <4 x i32>* %343, align 4, !tbaa !6, !alias.scope !22
  %345 = getelementptr inbounds i32, i32* %342, i64 4
  %346 = bitcast i32* %345 to <4 x i32>*
  %347 = load <4 x i32>, <4 x i32>* %346, align 4, !tbaa !6, !alias.scope !22
  %348 = getelementptr inbounds i32, i32* %0, i64 %341
  %349 = bitcast i32* %348 to <4 x i32>*
  store <4 x i32> %344, <4 x i32>* %349, align 4, !tbaa !6, !alias.scope !25, !noalias !22
  %350 = getelementptr inbounds i32, i32* %348, i64 4
  %351 = bitcast i32* %350 to <4 x i32>*
  store <4 x i32> %347, <4 x i32>* %351, align 4, !tbaa !6, !alias.scope !25, !noalias !22
  %352 = add nuw i64 %339, 8
  %353 = add i64 %340, 1
  %354 = icmp eq i64 %353, %278
  br i1 %354, label %355, label %338, !llvm.loop !28

355:                                              ; preds = %338, %335
  %356 = icmp eq i64 %262, %273
  br i1 %356, label %402, label %357

357:                                              ; preds = %264, %260, %355
  %358 = phi i64 [ %255, %264 ], [ %255, %260 ], [ %274, %355 ]
  %359 = phi i64 [ 0, %264 ], [ 0, %260 ], [ %273, %355 ]
  %360 = xor i64 %359, -1
  %361 = add i64 %262, %360
  %362 = and i64 %262, 3
  %363 = icmp eq i64 %362, 0
  br i1 %363, label %375, label %364

364:                                              ; preds = %357, %364
  %365 = phi i64 [ %370, %364 ], [ %358, %357 ]
  %366 = phi i64 [ %372, %364 ], [ %359, %357 ]
  %367 = phi i64 [ %373, %364 ], [ 0, %357 ]
  %368 = getelementptr inbounds i32, i32* %139, i64 %366
  %369 = load i32, i32* %368, align 4, !tbaa !6
  %370 = add nuw i64 %365, 1
  %371 = getelementptr inbounds i32, i32* %0, i64 %365
  store i32 %369, i32* %371, align 4, !tbaa !6
  %372 = add nuw nsw i64 %366, 1
  %373 = add i64 %367, 1
  %374 = icmp eq i64 %373, %362
  br i1 %374, label %375, label %364, !llvm.loop !29

375:                                              ; preds = %364, %357
  %376 = phi i64 [ %358, %357 ], [ %370, %364 ]
  %377 = phi i64 [ %359, %357 ], [ %372, %364 ]
  %378 = icmp ult i64 %361, 3
  br i1 %378, label %402, label %409

379:                                              ; preds = %135, %127, %16, %8
  %380 = landingpad { i8*, i32 }
          cleanup
  br label %433

381:                                              ; preds = %249, %381
  %382 = phi i64 [ %397, %381 ], [ %250, %249 ]
  %383 = getelementptr inbounds i32, i32* %137, i64 %382
  %384 = load i32, i32* %383, align 4, !tbaa !6
  %385 = add nuw nsw i64 %382, 1
  %386 = getelementptr inbounds i32, i32* %0, i64 %382
  store i32 %384, i32* %386, align 4, !tbaa !6
  %387 = getelementptr inbounds i32, i32* %137, i64 %385
  %388 = load i32, i32* %387, align 4, !tbaa !6
  %389 = add nuw nsw i64 %382, 2
  %390 = getelementptr inbounds i32, i32* %0, i64 %385
  store i32 %388, i32* %390, align 4, !tbaa !6
  %391 = getelementptr inbounds i32, i32* %137, i64 %389
  %392 = load i32, i32* %391, align 4, !tbaa !6
  %393 = add nuw nsw i64 %382, 3
  %394 = getelementptr inbounds i32, i32* %0, i64 %389
  store i32 %392, i32* %394, align 4, !tbaa !6
  %395 = getelementptr inbounds i32, i32* %137, i64 %393
  %396 = load i32, i32* %395, align 4, !tbaa !6
  %397 = add nuw nsw i64 %382, 4
  %398 = getelementptr inbounds i32, i32* %0, i64 %393
  store i32 %396, i32* %398, align 4, !tbaa !6
  %399 = icmp eq i64 %397, %147
  br i1 %399, label %252, label %381, !llvm.loop !30

400:                                              ; preds = %254
  %401 = icmp eq i32* %139, null
  br i1 %401, label %404, label %402

402:                                              ; preds = %375, %409, %355, %400
  %403 = bitcast i32* %139 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %403) #10
  br label %404

404:                                              ; preds = %400, %402
  %405 = icmp eq i32* %137, null
  br i1 %405, label %408, label %406

406:                                              ; preds = %404
  %407 = bitcast i32* %137 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %407) #10
  br label %408

408:                                              ; preds = %404, %406
  ret void

409:                                              ; preds = %375, %409
  %410 = phi i64 [ %429, %409 ], [ %376, %375 ]
  %411 = phi i64 [ %431, %409 ], [ %377, %375 ]
  %412 = getelementptr inbounds i32, i32* %139, i64 %411
  %413 = load i32, i32* %412, align 4, !tbaa !6
  %414 = add nuw i64 %410, 1
  %415 = getelementptr inbounds i32, i32* %0, i64 %410
  store i32 %413, i32* %415, align 4, !tbaa !6
  %416 = add nuw nsw i64 %411, 1
  %417 = getelementptr inbounds i32, i32* %139, i64 %416
  %418 = load i32, i32* %417, align 4, !tbaa !6
  %419 = add nuw i64 %410, 2
  %420 = getelementptr inbounds i32, i32* %0, i64 %414
  store i32 %418, i32* %420, align 4, !tbaa !6
  %421 = add nuw nsw i64 %411, 2
  %422 = getelementptr inbounds i32, i32* %139, i64 %421
  %423 = load i32, i32* %422, align 4, !tbaa !6
  %424 = add nuw i64 %410, 3
  %425 = getelementptr inbounds i32, i32* %0, i64 %419
  store i32 %423, i32* %425, align 4, !tbaa !6
  %426 = add nuw nsw i64 %411, 3
  %427 = getelementptr inbounds i32, i32* %139, i64 %426
  %428 = load i32, i32* %427, align 4, !tbaa !6
  %429 = add nuw i64 %410, 4
  %430 = getelementptr inbounds i32, i32* %0, i64 %424
  store i32 %428, i32* %430, align 4, !tbaa !6
  %431 = add nuw nsw i64 %411, 4
  %432 = icmp eq i64 %431, %262
  br i1 %432, label %402, label %409, !llvm.loop !31

433:                                              ; preds = %70, %72, %379
  %434 = phi i32* [ %117, %379 ], [ %24, %70 ], [ %24, %72 ]
  %435 = phi i32* [ %120, %379 ], [ %21, %70 ], [ %21, %72 ]
  %436 = phi { i8*, i32 } [ %380, %379 ], [ %71, %70 ], [ %73, %72 ]
  %437 = icmp eq i32* %435, null
  br i1 %437, label %440, label %438

438:                                              ; preds = %433
  %439 = bitcast i32* %435 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %439) #10
  br label %440

440:                                              ; preds = %433, %438
  %441 = icmp eq i32* %434, null
  br i1 %441, label %444, label %442

442:                                              ; preds = %440
  %443 = bitcast i32* %434 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %443) #10
  br label %444

444:                                              ; preds = %440, %442
  resume { i8*, i32 } %436
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(i32* %0, i32* %1, i64 noundef %2) local_unnamed_addr #3 comdat {
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
  %12 = phi i64 [ %2, %8 ], [ %130, %174 ]
  %13 = phi i32* [ %1, %8 ], [ %162, %174 ]
  %14 = icmp eq i64 %12, 0
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
  %40 = icmp slt i32 %38, %39
  %41 = select i1 %40, i64 %36, i64 %34
  %42 = getelementptr inbounds i32, i32* %0, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !6
  %44 = getelementptr inbounds i32, i32* %0, i64 %32
  store i32 %43, i32* %44, align 4, !tbaa !6
  %45 = icmp slt i64 %41, %20
  br i1 %45, label %31, label %46, !llvm.loop !32

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
  %61 = icmp slt i32 %60, %29
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = getelementptr inbounds i32, i32* %0, i64 %56
  store i32 %60, i32* %63, align 4, !tbaa !6
  %64 = icmp sgt i64 %58, %27
  br i1 %64, label %55, label %65, !llvm.loop !33

65:                                               ; preds = %62, %55, %52
  %66 = phi i64 [ %53, %52 ], [ %58, %62 ], [ %56, %55 ]
  %67 = getelementptr inbounds i32, i32* %0, i64 %66
  store i32 %29, i32* %67, align 4, !tbaa !6
  %68 = icmp eq i64 %27, 0
  %69 = add nsw i64 %27, -1
  br i1 %68, label %70, label %26, !llvm.loop !34

70:                                               ; preds = %65
  %71 = icmp sgt i64 %11, 4
  br i1 %71, label %72, label %178

72:                                               ; preds = %70, %125
  %73 = phi i32* [ %74, %125 ], [ %13, %70 ]
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
  %92 = icmp slt i32 %90, %91
  %93 = select i1 %92, i64 %88, i64 %86
  %94 = getelementptr inbounds i32, i32* %0, i64 %93
  %95 = load i32, i32* %94, align 4, !tbaa !6
  %96 = getelementptr inbounds i32, i32* %0, i64 %84
  store i32 %95, i32* %96, align 4, !tbaa !6
  %97 = icmp slt i64 %93, %81
  br i1 %97, label %83, label %98, !llvm.loop !32

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
  %121 = icmp slt i32 %120, %75
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = getelementptr inbounds i32, i32* %0, i64 %116
  store i32 %120, i32* %123, align 4, !tbaa !6
  %124 = icmp ult i64 %117, 2
  br i1 %124, label %125, label %115, !llvm.loop !33

125:                                              ; preds = %122, %115, %112
  %126 = phi i64 [ %113, %112 ], [ %116, %115 ], [ 0, %122 ]
  %127 = getelementptr inbounds i32, i32* %0, i64 %126
  store i32 %75, i32* %127, align 4, !tbaa !6
  %128 = icmp sgt i64 %78, 4
  br i1 %128, label %72, label %178, !llvm.loop !35

129:                                              ; preds = %10
  %130 = add nsw i64 %12, -1
  %131 = lshr i64 %11, 3
  %132 = getelementptr inbounds i32, i32* %0, i64 %131
  %133 = getelementptr inbounds i32, i32* %13, i64 -1
  %134 = load i32, i32* %9, align 4, !tbaa !6
  %135 = load i32, i32* %132, align 4, !tbaa !6
  %136 = icmp slt i32 %134, %135
  %137 = load i32, i32* %133, align 4, !tbaa !6
  br i1 %136, label %138, label %147

138:                                              ; preds = %129
  %139 = icmp slt i32 %135, %137
  br i1 %139, label %140, label %142

140:                                              ; preds = %138
  %141 = load i32, i32* %0, align 4, !tbaa !6
  store i32 %135, i32* %0, align 4, !tbaa !6
  store i32 %141, i32* %132, align 4, !tbaa !6
  br label %156

142:                                              ; preds = %138
  %143 = icmp slt i32 %134, %137
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
  %148 = icmp slt i32 %134, %137
  br i1 %148, label %149, label %151

149:                                              ; preds = %147
  %150 = load i32, i32* %0, align 4, !tbaa !6
  store i32 %134, i32* %0, align 4, !tbaa !6
  store i32 %150, i32* %9, align 4, !tbaa !6
  br label %156

151:                                              ; preds = %147
  %152 = icmp slt i32 %135, %137
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
  %158 = phi i32* [ %165, %173 ], [ %9, %156 ]
  %159 = phi i32* [ %168, %173 ], [ %13, %156 ]
  %160 = load i32, i32* %0, align 4, !tbaa !6
  br label %161

161:                                              ; preds = %161, %157
  %162 = phi i32* [ %158, %157 ], [ %165, %161 ]
  %163 = load i32, i32* %162, align 4, !tbaa !6
  %164 = icmp slt i32 %163, %160
  %165 = getelementptr inbounds i32, i32* %162, i64 1
  br i1 %164, label %161, label %166, !llvm.loop !36

166:                                              ; preds = %161, %166
  %167 = phi i32* [ %168, %166 ], [ %159, %161 ]
  %168 = getelementptr inbounds i32, i32* %167, i64 -1
  %169 = load i32, i32* %168, align 4, !tbaa !6
  %170 = icmp slt i32 %160, %169
  br i1 %170, label %166, label %171, !llvm.loop !37

171:                                              ; preds = %166
  %172 = icmp ult i32* %162, %168
  br i1 %172, label %173, label %174

173:                                              ; preds = %171
  store i32 %169, i32* %162, align 4, !tbaa !6
  store i32 %163, i32* %168, align 4, !tbaa !6
  br label %157, !llvm.loop !38

174:                                              ; preds = %171
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(i32* nonnull %162, i32* %13, i64 noundef %130)
  %175 = ptrtoint i32* %162 to i64
  %176 = sub i64 %175, %4
  %177 = icmp sgt i64 %176, 64
  br i1 %177, label %10, label %178, !llvm.loop !39

178:                                              ; preds = %174, %125, %3, %70
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(i32* %0, i32* %1) local_unnamed_addr #3 comdat {
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
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = shl nsw i64 %12, 2
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %10, i8* nonnull align 4 %8, i64 %19, i1 false) #10
  br label %30

20:                                               ; preds = %11
  %21 = load i32, i32* %13, align 4, !tbaa !6
  %22 = icmp slt i32 %15, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %20, %23
  %24 = phi i32 [ %28, %23 ], [ %21, %20 ]
  %25 = phi i32* [ %27, %23 ], [ %13, %20 ]
  %26 = phi i32* [ %25, %23 ], [ %14, %20 ]
  store i32 %24, i32* %26, align 4, !tbaa !6
  %27 = getelementptr inbounds i32, i32* %25, i64 -1
  %28 = load i32, i32* %27, align 4, !tbaa !6
  %29 = icmp slt i32 %15, %28
  br i1 %29, label %23, label %30, !llvm.loop !40

30:                                               ; preds = %23, %20, %18
  %31 = phi i32* [ %0, %18 ], [ %14, %20 ], [ %25, %23 ]
  store i32 %15, i32* %31, align 4, !tbaa !6
  %32 = add nuw nsw i64 %12, 1
  %33 = icmp eq i64 %32, 16
  br i1 %33, label %34, label %11, !llvm.loop !41

34:                                               ; preds = %30
  %35 = getelementptr inbounds i32, i32* %0, i64 16
  %36 = icmp eq i32* %35, %1
  br i1 %36, label %91, label %37

37:                                               ; preds = %34, %50
  %38 = phi i32* [ %52, %50 ], [ %35, %34 ]
  %39 = load i32, i32* %38, align 4, !tbaa !6
  %40 = getelementptr inbounds i32, i32* %38, i64 -1
  %41 = load i32, i32* %40, align 4, !tbaa !6
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37, %43
  %44 = phi i32 [ %48, %43 ], [ %41, %37 ]
  %45 = phi i32* [ %47, %43 ], [ %40, %37 ]
  %46 = phi i32* [ %45, %43 ], [ %38, %37 ]
  store i32 %44, i32* %46, align 4, !tbaa !6
  %47 = getelementptr inbounds i32, i32* %45, i64 -1
  %48 = load i32, i32* %47, align 4, !tbaa !6
  %49 = icmp slt i32 %39, %48
  br i1 %49, label %43, label %50, !llvm.loop !40

50:                                               ; preds = %43, %37
  %51 = phi i32* [ %38, %37 ], [ %45, %43 ]
  store i32 %39, i32* %51, align 4, !tbaa !6
  %52 = getelementptr inbounds i32, i32* %38, i64 1
  %53 = icmp eq i32* %52, %1
  br i1 %53, label %91, label %37, !llvm.loop !42

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
  %66 = icmp slt i32 %64, %65
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
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %76, i8* nonnull align 4 %60, i64 %69, i1 false) #10
  br label %87

77:                                               ; preds = %61
  %78 = load i32, i32* %63, align 4, !tbaa !6
  %79 = icmp slt i32 %64, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %77, %80
  %81 = phi i32 [ %85, %80 ], [ %78, %77 ]
  %82 = phi i32* [ %84, %80 ], [ %63, %77 ]
  %83 = phi i32* [ %82, %80 ], [ %62, %77 ]
  store i32 %81, i32* %83, align 4, !tbaa !6
  %84 = getelementptr inbounds i32, i32* %82, i64 -1
  %85 = load i32, i32* %84, align 4, !tbaa !6
  %86 = icmp slt i32 %64, %85
  br i1 %86, label %80, label %87, !llvm.loop !40

87:                                               ; preds = %80, %77, %71, %67
  %88 = phi i32* [ %0, %67 ], [ %0, %71 ], [ %62, %77 ], [ %82, %80 ]
  store i32 %64, i32* %88, align 4, !tbaa !6
  %89 = getelementptr inbounds i32, i32* %62, i64 1
  %90 = icmp eq i32* %89, %1
  br i1 %90, label %91, label %61, !llvm.loop !41

91:                                               ; preds = %87, %50, %56, %54, %34
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SC_T0_T1_(i32* %0, i32* %1, i64 noundef %2) local_unnamed_addr #3 comdat {
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
  %12 = phi i64 [ %2, %8 ], [ %130, %174 ]
  %13 = phi i32* [ %1, %8 ], [ %162, %174 ]
  %14 = icmp eq i64 %12, 0
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
  br i1 %45, label %31, label %46, !llvm.loop !43

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
  br i1 %64, label %55, label %65, !llvm.loop !44

65:                                               ; preds = %62, %55, %52
  %66 = phi i64 [ %53, %52 ], [ %58, %62 ], [ %56, %55 ]
  %67 = getelementptr inbounds i32, i32* %0, i64 %66
  store i32 %29, i32* %67, align 4, !tbaa !6
  %68 = icmp eq i64 %27, 0
  %69 = add nsw i64 %27, -1
  br i1 %68, label %70, label %26, !llvm.loop !45

70:                                               ; preds = %65
  %71 = icmp sgt i64 %11, 4
  br i1 %71, label %72, label %178

72:                                               ; preds = %70, %125
  %73 = phi i32* [ %74, %125 ], [ %13, %70 ]
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
  br i1 %97, label %83, label %98, !llvm.loop !43

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
  br i1 %124, label %125, label %115, !llvm.loop !44

125:                                              ; preds = %122, %115, %112
  %126 = phi i64 [ %113, %112 ], [ %116, %115 ], [ 0, %122 ]
  %127 = getelementptr inbounds i32, i32* %0, i64 %126
  store i32 %75, i32* %127, align 4, !tbaa !6
  %128 = icmp sgt i64 %78, 4
  br i1 %128, label %72, label %178, !llvm.loop !46

129:                                              ; preds = %10
  %130 = add nsw i64 %12, -1
  %131 = lshr i64 %11, 3
  %132 = getelementptr inbounds i32, i32* %0, i64 %131
  %133 = getelementptr inbounds i32, i32* %13, i64 -1
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
  %158 = phi i32* [ %165, %173 ], [ %9, %156 ]
  %159 = phi i32* [ %168, %173 ], [ %13, %156 ]
  %160 = load i32, i32* %0, align 4, !tbaa !6
  br label %161

161:                                              ; preds = %161, %157
  %162 = phi i32* [ %158, %157 ], [ %165, %161 ]
  %163 = load i32, i32* %162, align 4, !tbaa !6
  %164 = icmp sgt i32 %163, %160
  %165 = getelementptr inbounds i32, i32* %162, i64 1
  br i1 %164, label %161, label %166, !llvm.loop !47

166:                                              ; preds = %161, %166
  %167 = phi i32* [ %168, %166 ], [ %159, %161 ]
  %168 = getelementptr inbounds i32, i32* %167, i64 -1
  %169 = load i32, i32* %168, align 4, !tbaa !6
  %170 = icmp sgt i32 %160, %169
  br i1 %170, label %166, label %171, !llvm.loop !48

171:                                              ; preds = %166
  %172 = icmp ult i32* %162, %168
  br i1 %172, label %173, label %174

173:                                              ; preds = %171
  store i32 %169, i32* %162, align 4, !tbaa !6
  store i32 %163, i32* %168, align 4, !tbaa !6
  br label %157, !llvm.loop !49

174:                                              ; preds = %171
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SC_T0_T1_(i32* nonnull %162, i32* %13, i64 noundef %130)
  %175 = ptrtoint i32* %162 to i64
  %176 = sub i64 %175, %4
  %177 = icmp sgt i64 %176, 64
  br i1 %177, label %10, label %178, !llvm.loop !50

178:                                              ; preds = %174, %125, %3, %70
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SC_T0_(i32* %0, i32* %1) local_unnamed_addr #3 comdat {
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
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %10, i8* nonnull align 4 %8, i64 %19, i1 false) #10
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
  br i1 %29, label %23, label %30, !llvm.loop !51

30:                                               ; preds = %23, %20, %18
  %31 = phi i32* [ %0, %18 ], [ %14, %20 ], [ %25, %23 ]
  store i32 %15, i32* %31, align 4, !tbaa !6
  %32 = add nuw nsw i64 %12, 1
  %33 = icmp eq i64 %32, 16
  br i1 %33, label %34, label %11, !llvm.loop !52

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
  br i1 %49, label %43, label %50, !llvm.loop !51

50:                                               ; preds = %43, %37
  %51 = phi i32* [ %38, %37 ], [ %45, %43 ]
  store i32 %39, i32* %51, align 4, !tbaa !6
  %52 = getelementptr inbounds i32, i32* %38, i64 1
  %53 = icmp eq i32* %52, %1
  br i1 %53, label %91, label %37, !llvm.loop !53

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
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %76, i8* nonnull align 4 %60, i64 %69, i1 false) #10
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
  br i1 %86, label %80, label %87, !llvm.loop !51

87:                                               ; preds = %80, %77, %71, %67
  %88 = phi i32* [ %0, %67 ], [ %0, %71 ], [ %62, %77 ], [ %82, %80 ]
  store i32 %64, i32* %88, align 4, !tbaa !6
  %89 = getelementptr inbounds i32, i32* %62, i64 1
  %90 = icmp eq i32* %89, %1
  br i1 %90, label %91, label %61, !llvm.loop !52

91:                                               ; preds = %87, %50, %56, %54, %34
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_reprocessed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #10
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { allocsize(0) }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13}
!13 = distinct !{!13, !14}
!14 = distinct !{!14, !"LVerDomain"}
!15 = !{!16}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !11, !18}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !20}
!22 = !{!23}
!23 = distinct !{!23, !24}
!24 = distinct !{!24, !"LVerDomain"}
!25 = !{!26}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !11, !18}
!28 = distinct !{!28, !20}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !11, !18}
!31 = distinct !{!31, !11, !18}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !11}
