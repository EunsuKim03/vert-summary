; ModuleID = 'llvm/cpp_transcoder/LONGEST_REPEATED_SUBSEQUENCE_1/LONGEST_REPEATED_SUBSEQUENCE_1_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/LONGEST_REPEATED_SUBSEQUENCE_1/LONGEST_REPEATED_SUBSEQUENCE_1_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LONGEST_REPEATED_SUBSEQUENCE_1_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !5
  %7 = trunc i64 %6 to i32
  %8 = add i64 %6, 1
  %9 = and i64 %8, 4294967295
  %10 = mul nuw i64 %9, %9
  %11 = alloca i32, i64 %10, align 16
  %12 = icmp slt i32 %7, 0
  br i1 %12, label %87, label %13

13:                                               ; preds = %2
  %14 = shl nuw nsw i64 %9, 2
  %15 = add i64 %6, 1
  %16 = and i64 %15, 4294967295
  %17 = add nsw i64 %16, -1
  %18 = and i64 %15, 7
  %19 = icmp ult i64 %17, 7
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = sub nsw i64 %16, %18
  br label %41

22:                                               ; preds = %41, %13
  %23 = phi i64 [ 0, %13 ], [ %75, %41 ]
  %24 = icmp eq i64 %18, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22, %25
  %26 = phi i64 [ %31, %25 ], [ %23, %22 ]
  %27 = phi i64 [ %32, %25 ], [ 0, %22 ]
  %28 = mul nuw nsw i64 %9, %26
  %29 = getelementptr i32, i32* %11, i64 %28
  %30 = bitcast i32* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 %14, i1 false), !tbaa !12
  %31 = add nuw nsw i64 %26, 1
  %32 = add i64 %27, 1
  %33 = icmp eq i64 %32, %18
  br i1 %33, label %34, label %25, !llvm.loop !14

34:                                               ; preds = %25, %22
  %35 = icmp slt i32 %7, 1
  br i1 %35, label %87, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %38 = add i64 %6, 1
  %39 = and i64 %38, 4294967295
  %40 = load i8*, i8** %37, align 8, !tbaa !16
  br label %78

41:                                               ; preds = %41, %20
  %42 = phi i64 [ 0, %20 ], [ %75, %41 ]
  %43 = phi i64 [ 0, %20 ], [ %76, %41 ]
  %44 = mul nuw nsw i64 %9, %42
  %45 = getelementptr i32, i32* %11, i64 %44
  %46 = bitcast i32* %45 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %46, i8 0, i64 %14, i1 false), !tbaa !12
  %47 = or i64 %42, 1
  %48 = mul nuw nsw i64 %9, %47
  %49 = getelementptr i32, i32* %11, i64 %48
  %50 = bitcast i32* %49 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %50, i8 0, i64 %14, i1 false), !tbaa !12
  %51 = or i64 %42, 2
  %52 = mul nuw nsw i64 %9, %51
  %53 = getelementptr i32, i32* %11, i64 %52
  %54 = bitcast i32* %53 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %54, i8 0, i64 %14, i1 false), !tbaa !12
  %55 = or i64 %42, 3
  %56 = mul nuw nsw i64 %9, %55
  %57 = getelementptr i32, i32* %11, i64 %56
  %58 = bitcast i32* %57 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %58, i8 0, i64 %14, i1 false), !tbaa !12
  %59 = or i64 %42, 4
  %60 = mul nuw nsw i64 %9, %59
  %61 = getelementptr i32, i32* %11, i64 %60
  %62 = bitcast i32* %61 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %62, i8 0, i64 %14, i1 false), !tbaa !12
  %63 = or i64 %42, 5
  %64 = mul nuw nsw i64 %9, %63
  %65 = getelementptr i32, i32* %11, i64 %64
  %66 = bitcast i32* %65 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %66, i8 0, i64 %14, i1 false), !tbaa !12
  %67 = or i64 %42, 6
  %68 = mul nuw nsw i64 %9, %67
  %69 = getelementptr i32, i32* %11, i64 %68
  %70 = bitcast i32* %69 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %70, i8 0, i64 %14, i1 false), !tbaa !12
  %71 = or i64 %42, 7
  %72 = mul nuw nsw i64 %9, %71
  %73 = getelementptr i32, i32* %11, i64 %72
  %74 = bitcast i32* %73 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %74, i8 0, i64 %14, i1 false), !tbaa !12
  %75 = add nuw nsw i64 %42, 8
  %76 = add i64 %43, 8
  %77 = icmp eq i64 %76, %21
  br i1 %77, label %22, label %41, !llvm.loop !17

78:                                               ; preds = %115, %36
  %79 = phi i64 [ 1, %36 ], [ %116, %115 ]
  %80 = add nsw i64 %79, -1
  %81 = getelementptr inbounds i8, i8* %40, i64 %80
  %82 = load i8, i8* %81, align 1, !tbaa !19
  %83 = mul nuw nsw i64 %9, %80
  %84 = getelementptr inbounds i32, i32* %11, i64 %83
  %85 = mul nuw nsw i64 %9, %79
  %86 = getelementptr inbounds i32, i32* %11, i64 %85
  br label %118

87:                                               ; preds = %34, %2
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %89 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %88, %union.anon** %89, align 8, !tbaa !20
  %90 = bitcast %union.anon* %88 to i8*
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %91, align 8, !tbaa !5
  store i8 0, i8* %90, align 8, !tbaa !19
  br label %258

92:                                               ; preds = %115
  %93 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %94 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %93, %union.anon** %94, align 8, !tbaa !20
  %95 = bitcast %union.anon* %93 to i8*
  %96 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %97 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %97, align 8, !tbaa !5
  store i8 0, i8* %95, align 8, !tbaa !19
  %98 = icmp sgt i32 %7, 0
  br i1 %98, label %99, label %258

99:                                               ; preds = %92
  %100 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  %101 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %103 = bitcast %"class.std::__cxx11::basic_string"* %4 to %union.anon**
  %104 = bitcast i64* %3 to i8*
  %105 = bitcast %union.anon* %102 to i8*
  %106 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  %109 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %110 = icmp eq %"class.std::__cxx11::basic_string"* %4, %0
  %111 = bitcast i64* %108 to <2 x i64>*
  %112 = bitcast i64* %97 to <2 x i64>*
  %113 = bitcast i64* %108 to <2 x i64>*
  %114 = bitcast i64* %97 to <2 x i64>*
  br label %142

115:                                              ; preds = %137
  %116 = add nuw nsw i64 %79, 1
  %117 = icmp eq i64 %116, %39
  br i1 %117, label %92, label %78, !llvm.loop !21

118:                                              ; preds = %78, %137
  %119 = phi i64 [ 1, %78 ], [ %140, %137 ]
  %120 = add nsw i64 %119, -1
  %121 = getelementptr inbounds i8, i8* %40, i64 %120
  %122 = load i8, i8* %121, align 1, !tbaa !19
  %123 = icmp ne i8 %82, %122
  %124 = icmp eq i64 %79, %119
  %125 = select i1 %123, i1 true, i1 %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %118
  %127 = getelementptr inbounds i32, i32* %84, i64 %120
  %128 = load i32, i32* %127, align 4, !tbaa !12
  %129 = add nsw i32 %128, 1
  br label %137

130:                                              ; preds = %118
  %131 = getelementptr inbounds i32, i32* %86, i64 %120
  %132 = getelementptr inbounds i32, i32* %84, i64 %119
  %133 = load i32, i32* %131, align 4
  %134 = load i32, i32* %132, align 4
  %135 = icmp slt i32 %133, %134
  %136 = select i1 %135, i32 %134, i32 %133
  br label %137

137:                                              ; preds = %126, %130
  %138 = phi i32 [ %129, %126 ], [ %136, %130 ]
  %139 = getelementptr inbounds i32, i32* %86, i64 %119
  store i32 %138, i32* %139, align 4, !tbaa !12
  %140 = add nuw nsw i64 %119, 1
  %141 = icmp eq i64 %140, %39
  br i1 %141, label %115, label %118, !llvm.loop !22

142:                                              ; preds = %99, %235
  %143 = phi i32 [ %7, %99 ], [ %237, %235 ]
  %144 = phi i32 [ %7, %99 ], [ %236, %235 ]
  %145 = zext i32 %144 to i64
  %146 = mul nuw nsw i64 %9, %145
  %147 = getelementptr inbounds i32, i32* %11, i64 %146
  %148 = zext i32 %143 to i64
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4, !tbaa !12
  %151 = add nsw i32 %144, -1
  %152 = zext i32 %151 to i64
  %153 = mul nuw nsw i64 %9, %152
  %154 = getelementptr inbounds i32, i32* %11, i64 %153
  %155 = add nsw i32 %143, -1
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4, !tbaa !12
  %159 = add nsw i32 %158, 1
  %160 = icmp eq i32 %150, %159
  br i1 %160, label %161, label %229

161:                                              ; preds = %142
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %100) #9
  %162 = load i8*, i8** %101, align 8, !tbaa !16
  %163 = getelementptr inbounds i8, i8* %162, i64 %152
  %164 = load i8, i8* %163, align 1, !tbaa !19
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  store %union.anon* %102, %union.anon** %103, align 8, !tbaa !20, !alias.scope !23
  %165 = load i8*, i8** %96, align 8, !tbaa !16, !noalias !23
  %166 = load i64, i64* %97, align 8, !tbaa !5, !noalias !23
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %104) #9, !noalias !23
  store i64 %166, i64* %3, align 8, !tbaa !26, !noalias !23
  %167 = icmp ugt i64 %166, 15
  br i1 %167, label %168, label %172

168:                                              ; preds = %161
  %169 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i64* noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %170 unwind label %223

170:                                              ; preds = %168
  store i8* %169, i8** %106, align 8, !tbaa !16, !alias.scope !23
  %171 = load i64, i64* %3, align 8, !tbaa !26, !noalias !23
  store i64 %171, i64* %107, align 8, !tbaa !19, !alias.scope !23
  br label %172

172:                                              ; preds = %161, %170
  %173 = phi i8* [ %169, %170 ], [ %105, %161 ]
  switch i64 %166, label %176 [
    i64 1, label %174
    i64 0, label %177
  ]

174:                                              ; preds = %172
  %175 = load i8, i8* %165, align 1, !tbaa !19
  store i8 %175, i8* %173, align 1, !tbaa !19
  br label %177

176:                                              ; preds = %172
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %173, i8* align 1 %165, i64 %166, i1 false) #9
  br label %177

177:                                              ; preds = %176, %174, %172
  %178 = load i64, i64* %3, align 8, !tbaa !26, !noalias !23
  store i64 %178, i64* %108, align 8, !tbaa !5, !alias.scope !23
  %179 = load i8*, i8** %106, align 8, !tbaa !16, !alias.scope !23
  %180 = getelementptr inbounds i8, i8* %179, i64 %178
  store i8 0, i8* %180, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %104) #9, !noalias !23
  %181 = load i64, i64* %108, align 8, !tbaa !5, !alias.scope !23
  %182 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %181, i64 noundef 0, i64 noundef 1, i8 noundef signext %164)
          to label %188 unwind label %183

183:                                              ; preds = %177
  %184 = landingpad { i8*, i32 }
          cleanup
  %185 = load i8*, i8** %106, align 8, !tbaa !16, !alias.scope !23
  %186 = icmp eq i8* %185, %105
  br i1 %186, label %225, label %187

187:                                              ; preds = %183
  call void @_ZdlPv(i8* noundef %185) #9
  br label %225

188:                                              ; preds = %177
  %189 = load i8*, i8** %106, align 8, !tbaa !16
  %190 = icmp eq i8* %189, %105
  br i1 %190, label %191, label %206

191:                                              ; preds = %188
  br i1 %110, label %217, label %192, !prof !27

192:                                              ; preds = %191
  %193 = load i64, i64* %108, align 8, !tbaa !5
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %192
  %196 = load i8*, i8** %96, align 8, !tbaa !16
  %197 = icmp eq i64 %193, 1
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = load i8, i8* %105, align 8, !tbaa !19
  store i8 %199, i8* %196, align 1, !tbaa !19
  br label %201

200:                                              ; preds = %195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %196, i8* nonnull align 8 %105, i64 %193, i1 false) #9
  br label %201

201:                                              ; preds = %200, %198, %192
  %202 = load i64, i64* %108, align 8, !tbaa !5
  store i64 %202, i64* %97, align 8, !tbaa !5
  %203 = load i8*, i8** %96, align 8, !tbaa !16
  %204 = getelementptr inbounds i8, i8* %203, i64 %202
  store i8 0, i8* %204, align 1, !tbaa !19
  %205 = load i8*, i8** %106, align 8, !tbaa !16
  br label %217

206:                                              ; preds = %188
  %207 = load i8*, i8** %96, align 8, !tbaa !16
  %208 = icmp eq i8* %207, %95
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  store i8* %189, i8** %96, align 8, !tbaa !16
  %210 = load <2 x i64>, <2 x i64>* %113, align 8, !tbaa !19
  store <2 x i64> %210, <2 x i64>* %114, align 8, !tbaa !19
  br label %216

211:                                              ; preds = %206
  %212 = load i64, i64* %109, align 8, !tbaa !19
  store i8* %189, i8** %96, align 8, !tbaa !16
  %213 = load <2 x i64>, <2 x i64>* %111, align 8, !tbaa !19
  store <2 x i64> %213, <2 x i64>* %112, align 8, !tbaa !19
  %214 = icmp eq i8* %207, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %211
  store i8* %207, i8** %106, align 8, !tbaa !16
  store i64 %212, i64* %107, align 8, !tbaa !19
  br label %217

216:                                              ; preds = %211, %209
  store %union.anon* %102, %union.anon** %103, align 8, !tbaa !16
  br label %217

217:                                              ; preds = %191, %201, %215, %216
  %218 = phi i8* [ %205, %201 ], [ %207, %215 ], [ %105, %216 ], [ %105, %191 ]
  store i64 0, i64* %108, align 8, !tbaa !5
  store i8 0, i8* %218, align 1, !tbaa !19
  %219 = load i8*, i8** %106, align 8, !tbaa !16
  %220 = icmp eq i8* %219, %105
  br i1 %220, label %222, label %221

221:                                              ; preds = %217
  call void @_ZdlPv(i8* noundef %219) #9
  br label %222

222:                                              ; preds = %217, %221
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %100) #9
  br label %235

223:                                              ; preds = %168
  %224 = landingpad { i8*, i32 }
          cleanup
  br label %225

225:                                              ; preds = %183, %187, %223
  %226 = phi { i8*, i32 } [ %224, %223 ], [ %184, %187 ], [ %184, %183 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %100) #9
  %227 = load i8*, i8** %96, align 8, !tbaa !16
  %228 = icmp eq i8* %227, %95
  br i1 %228, label %259, label %257

229:                                              ; preds = %142
  %230 = getelementptr inbounds i32, i32* %154, i64 %148
  %231 = load i32, i32* %230, align 4, !tbaa !12
  %232 = icmp eq i32 %150, %231
  %233 = select i1 %232, i32 %151, i32 %144
  %234 = select i1 %232, i32 %143, i32 %155
  br label %235

235:                                              ; preds = %229, %222
  %236 = phi i32 [ %151, %222 ], [ %233, %229 ]
  %237 = phi i32 [ %155, %222 ], [ %234, %229 ]
  %238 = icmp sgt i32 %236, 0
  %239 = icmp sgt i32 %237, 0
  %240 = select i1 %238, i1 %239, i1 false
  br i1 %240, label %142, label %241, !llvm.loop !28

241:                                              ; preds = %235
  %242 = load i8*, i8** %96, align 8, !tbaa !16
  %243 = load i64, i64* %97, align 8, !tbaa !5
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  %245 = icmp ne i64 %243, 0
  %246 = getelementptr inbounds i8, i8* %244, i64 -1
  %247 = icmp ugt i8* %246, %242
  %248 = select i1 %245, i1 %247, i1 false
  br i1 %248, label %249, label %258

249:                                              ; preds = %241, %249
  %250 = phi i8* [ %255, %249 ], [ %246, %241 ]
  %251 = phi i8* [ %254, %249 ], [ %242, %241 ]
  %252 = load i8, i8* %251, align 1, !tbaa !19
  %253 = load i8, i8* %250, align 1, !tbaa !19
  store i8 %253, i8* %251, align 1, !tbaa !19
  store i8 %252, i8* %250, align 1, !tbaa !19
  %254 = getelementptr inbounds i8, i8* %251, i64 1
  %255 = getelementptr inbounds i8, i8* %250, i64 -1
  %256 = icmp ult i8* %254, %255
  br i1 %256, label %249, label %258, !llvm.loop !29

257:                                              ; preds = %225
  call void @_ZdlPv(i8* noundef %227) #9
  br label %259

258:                                              ; preds = %249, %87, %92, %241
  ret void

259:                                              ; preds = %257, %225
  resume { i8*, i32 } %226
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

declare noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64* noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LONGEST_REPEATED_SUBSEQUENCE_1_reprocessed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #9
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !11, i64 8}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !7, i64 0, !11, i64 8, !9, i64 16}
!7 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!6, !8, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!9, !9, i64 0}
!20 = !{!7, !8, i64 0}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_: argument 0"}
!25 = distinct !{!25, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_"}
!26 = !{!11, !11, i64 0}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
