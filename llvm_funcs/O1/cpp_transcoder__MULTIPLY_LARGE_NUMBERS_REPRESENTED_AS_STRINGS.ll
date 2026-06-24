; ModuleID = 'benchmark/cpp_transcoder/MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS/MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS/MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

$_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits = linkonce_odr dso_local local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", comdat, align 16
@.str.3 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %2) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !5
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 1
  %10 = load i64, i64* %9, align 8, !tbaa !5
  %11 = trunc i64 %10 to i32
  %12 = icmp eq i32 %8, 0
  %13 = icmp eq i32 %11, 0
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %17 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %16, %union.anon** %17, align 8, !tbaa !12
  %18 = bitcast %union.anon* %16 to i8*
  store i8 48, i8* %18, align 8, !tbaa !13
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 1, i64* %19, align 8, !tbaa !5
  %20 = bitcast %union.anon* %16 to i8*
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 0, i8* %21, align 1, !tbaa !13
  br label %264

22:                                               ; preds = %3
  %23 = add i64 %10, %7
  %24 = shl i64 %23, 32
  %25 = ashr exact i64 %24, 32
  %26 = icmp slt i64 %24, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0)) #11
  unreachable

28:                                               ; preds = %22
  %29 = icmp eq i64 %24, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %28
  %31 = ashr exact i64 %24, 30
  %32 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %31) #12
  %33 = bitcast i8* %32 to i32*
  br label %34

34:                                               ; preds = %30, %28
  %35 = phi i32* [ %33, %30 ], [ null, %28 ]
  br i1 %29, label %40, label %36

36:                                               ; preds = %34
  %37 = bitcast i32* %35 to i8*
  %38 = ashr exact i64 %24, 30
  call void @llvm.memset.p0i8.i64(i8* align 4 %37, i8 0, i64 %38, i1 false), !tbaa !14
  %39 = getelementptr inbounds i32, i32* %35, i64 %25
  br label %40

40:                                               ; preds = %36, %34
  %41 = phi i32* [ %35, %34 ], [ %39, %36 ]
  %42 = icmp sgt i32 %8, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8, !tbaa !16
  %46 = icmp sgt i32 %11, 0
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %48 = shl i64 %10, 32
  %49 = ashr exact i64 %48, 32
  %50 = shl i64 %7, 32
  %51 = ashr exact i64 %50, 32
  %52 = and i64 %7, 4294967295
  %53 = and i64 %10, 4294967295
  br label %63

54:                                               ; preds = %102, %40
  %55 = ptrtoint i32* %41 to i64
  %56 = ptrtoint i32* %35 to i64
  %57 = sub i64 %55, %56
  %58 = lshr exact i64 %57, 2
  %59 = trunc i64 %58 to i32
  %60 = add i32 %59, -1
  %61 = call i32 @llvm.smin.i32(i32 %60, i32 -1)
  %62 = add nsw i32 %61, 1
  br label %105

63:                                               ; preds = %43, %102
  %64 = phi i64 [ 0, %43 ], [ %103, %102 ]
  %65 = phi i64 [ %51, %43 ], [ %66, %102 ]
  %66 = add nsw i64 %65, -1
  %67 = getelementptr inbounds i8, i8* %45, i64 %66
  %68 = load i8, i8* %67, align 1, !tbaa !13
  %69 = sext i8 %68 to i32
  %70 = add nsw i32 %69, -48
  br i1 %46, label %71, label %73

71:                                               ; preds = %63
  %72 = load i8*, i8** %47, align 8, !tbaa !16
  br label %77

73:                                               ; preds = %77, %63
  %74 = phi i64 [ 0, %63 ], [ %94, %77 ]
  %75 = phi i32 [ 0, %63 ], [ %92, %77 ]
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %96, label %102

77:                                               ; preds = %71, %77
  %78 = phi i64 [ 0, %71 ], [ %94, %77 ]
  %79 = phi i64 [ %49, %71 ], [ %81, %77 ]
  %80 = phi i32 [ 0, %71 ], [ %92, %77 ]
  %81 = add nsw i64 %79, -1
  %82 = getelementptr inbounds i8, i8* %72, i64 %81
  %83 = load i8, i8* %82, align 1, !tbaa !13
  %84 = sext i8 %83 to i32
  %85 = add nsw i32 %84, -48
  %86 = mul nsw i32 %85, %70
  %87 = add nuw nsw i64 %78, %64
  %88 = getelementptr inbounds i32, i32* %35, i64 %87
  %89 = load i32, i32* %88, align 4, !tbaa !14
  %90 = add i32 %89, %80
  %91 = add i32 %90, %86
  %92 = sdiv i32 %91, 10
  %93 = srem i32 %91, 10
  store i32 %93, i32* %88, align 4, !tbaa !14
  %94 = add nuw nsw i64 %78, 1
  %95 = icmp eq i64 %94, %53
  br i1 %95, label %73, label %77, !llvm.loop !17

96:                                               ; preds = %73
  %97 = and i64 %74, 4294967295
  %98 = add nuw nsw i64 %97, %64
  %99 = getelementptr inbounds i32, i32* %35, i64 %98
  %100 = load i32, i32* %99, align 4, !tbaa !14
  %101 = add nsw i32 %100, %75
  store i32 %101, i32* %99, align 4, !tbaa !14
  br label %102

102:                                              ; preds = %96, %73
  %103 = add nuw nsw i64 %64, 1
  %104 = icmp eq i64 %103, %52
  br i1 %104, label %54, label %63, !llvm.loop !20

105:                                              ; preds = %109, %54
  %106 = phi i32 [ %59, %54 ], [ %107, %109 ]
  %107 = add i32 %106, -1
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = sext i32 %107 to i64
  %111 = getelementptr inbounds i32, i32* %35, i64 %110
  %112 = load i32, i32* %111, align 4, !tbaa !14
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %105, label %114, !llvm.loop !21

114:                                              ; preds = %105, %109
  %115 = phi i32 [ %62, %105 ], [ %106, %109 ]
  %116 = phi i32 [ %61, %105 ], [ %107, %109 ]
  %117 = icmp eq i32 %115, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %120 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %119, %union.anon** %120, align 8, !tbaa !12
  %121 = bitcast %union.anon* %119 to i8*
  store i8 48, i8* %121, align 8, !tbaa !13
  %122 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 1, i64* %122, align 8, !tbaa !5
  %123 = bitcast %union.anon* %119 to i8*
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  store i8 0, i8* %124, align 1, !tbaa !13
  br label %258

125:                                              ; preds = %114
  %126 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %126) #13
  %127 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %128 = bitcast %"class.std::__cxx11::basic_string"* %4 to %union.anon**
  store %union.anon* %127, %union.anon** %128, align 8, !tbaa !12
  %129 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %130 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  store i64 0, i64* %130, align 8, !tbaa !5
  %131 = bitcast %union.anon* %127 to i8*
  store i8 0, i8* %131, align 8, !tbaa !13
  %132 = icmp sgt i32 %116, -1
  br i1 %132, label %133, label %240

133:                                              ; preds = %125
  %134 = bitcast %"class.std::__cxx11::basic_string"* %5 to i8*
  %135 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %136 = bitcast %"class.std::__cxx11::basic_string"* %5 to %union.anon**
  %137 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %138 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  %139 = bitcast %union.anon* %135 to i8*
  %140 = sext i32 %116 to i64
  br label %141

141:                                              ; preds = %133, %223
  %142 = phi i64 [ %140, %133 ], [ %143, %223 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %134) #13
  %143 = add nsw i64 %142, -1
  %144 = getelementptr inbounds i32, i32* %35, i64 %142
  %145 = load i32, i32* %144, align 4, !tbaa !14
  %146 = call i32 @llvm.abs.i32(i32 %145, i1 false)
  %147 = icmp ult i32 %146, 10
  br i1 %147, label %166, label %148

148:                                              ; preds = %141, %162
  %149 = phi i32 [ %163, %162 ], [ %146, %141 ]
  %150 = phi i32 [ %164, %162 ], [ 1, %141 ]
  %151 = icmp ult i32 %149, 100
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = add i32 %150, 1
  br label %166

154:                                              ; preds = %148
  %155 = icmp ult i32 %149, 1000
  br i1 %155, label %156, label %158

156:                                              ; preds = %154
  %157 = add i32 %150, 2
  br label %166

158:                                              ; preds = %154
  %159 = icmp ult i32 %149, 10000
  br i1 %159, label %160, label %162

160:                                              ; preds = %158
  %161 = add i32 %150, 3
  br label %166

162:                                              ; preds = %158
  %163 = udiv i32 %149, 10000
  %164 = add i32 %150, 4
  %165 = icmp ult i32 %149, 100000
  br i1 %165, label %166, label %148, !llvm.loop !22

166:                                              ; preds = %162, %160, %156, %152, %141
  %167 = phi i32 [ %153, %152 ], [ %157, %156 ], [ %161, %160 ], [ 1, %141 ], [ %164, %162 ]
  %168 = lshr i32 %145, 31
  %169 = add i32 %167, %168
  %170 = zext i32 %169 to i64
  store %union.anon* %135, %union.anon** %136, align 8, !tbaa !12, !alias.scope !23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %170, i8 noundef signext 45)
          to label %171 unwind label %225

171:                                              ; preds = %166
  %172 = zext i32 %168 to i64
  %173 = load i8*, i8** %137, align 8, !tbaa !16, !alias.scope !23
  %174 = getelementptr inbounds i8, i8* %173, i64 %172
  %175 = icmp ugt i32 %146, 99
  br i1 %175, label %176, label %198

176:                                              ; preds = %171
  %177 = add i32 %167, -1
  br label %178

178:                                              ; preds = %178, %176
  %179 = phi i32 [ %183, %178 ], [ %146, %176 ]
  %180 = phi i32 [ %196, %178 ], [ %177, %176 ]
  %181 = urem i32 %179, 100
  %182 = shl nuw nsw i32 %181, 1
  %183 = udiv i32 %179, 100
  %184 = or i32 %182, 1
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %185
  %187 = load i8, i8* %186, align 1, !tbaa !13
  %188 = zext i32 %180 to i64
  %189 = getelementptr inbounds i8, i8* %174, i64 %188
  store i8 %187, i8* %189, align 1, !tbaa !13
  %190 = zext i32 %182 to i64
  %191 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %190
  %192 = load i8, i8* %191, align 2, !tbaa !13
  %193 = add i32 %180, -1
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %174, i64 %194
  store i8 %192, i8* %195, align 1, !tbaa !13
  %196 = add i32 %180, -2
  %197 = icmp ugt i32 %179, 9999
  br i1 %197, label %178, label %198, !llvm.loop !26

198:                                              ; preds = %178, %171
  %199 = phi i32 [ %146, %171 ], [ %183, %178 ]
  %200 = icmp ugt i32 %199, 9
  br i1 %200, label %201, label %211

201:                                              ; preds = %198
  %202 = shl i32 %199, 1
  %203 = or i32 %202, 1
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %204
  %206 = load i8, i8* %205, align 1, !tbaa !13
  %207 = getelementptr inbounds i8, i8* %174, i64 1
  store i8 %206, i8* %207, align 1, !tbaa !13
  %208 = zext i32 %202 to i64
  %209 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %208
  %210 = load i8, i8* %209, align 2, !tbaa !13
  br label %214

211:                                              ; preds = %198
  %212 = trunc i32 %199 to i8
  %213 = add i8 %212, 48
  br label %214

214:                                              ; preds = %201, %211
  %215 = phi i8 [ %213, %211 ], [ %210, %201 ]
  store i8 %215, i8* %174, align 1, !tbaa !13
  %216 = load i8*, i8** %137, align 8, !tbaa !16
  %217 = load i64, i64* %138, align 8, !tbaa !5
  %218 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i8* noundef %216, i64 noundef %217)
          to label %219 unwind label %227

219:                                              ; preds = %214
  %220 = load i8*, i8** %137, align 8, !tbaa !16
  %221 = icmp eq i8* %220, %139
  br i1 %221, label %223, label %222

222:                                              ; preds = %219
  call void @_ZdlPv(i8* noundef %220) #13
  br label %223

223:                                              ; preds = %219, %222
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %134) #13
  %224 = icmp sgt i64 %142, 0
  br i1 %224, label %141, label %240, !llvm.loop !27

225:                                              ; preds = %166
  %226 = landingpad { i8*, i32 }
          cleanup
  br label %233

227:                                              ; preds = %214
  %228 = landingpad { i8*, i32 }
          cleanup
  %229 = load i8*, i8** %137, align 8, !tbaa !16
  %230 = bitcast %union.anon* %135 to i8*
  %231 = icmp eq i8* %229, %230
  br i1 %231, label %233, label %232

232:                                              ; preds = %227
  call void @_ZdlPv(i8* noundef %229) #13
  br label %233

233:                                              ; preds = %232, %227, %225
  %234 = phi { i8*, i32 } [ %226, %225 ], [ %228, %227 ], [ %228, %232 ]
  %235 = bitcast %"class.std::__cxx11::basic_string"* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %235) #13
  %236 = load i8*, i8** %129, align 8, !tbaa !16
  %237 = bitcast %union.anon* %127 to i8*
  %238 = icmp eq i8* %236, %237
  br i1 %238, label %256, label %239

239:                                              ; preds = %233
  call void @_ZdlPv(i8* noundef %236) #13
  br label %256

240:                                              ; preds = %223, %125
  %241 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %242 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %241, %union.anon** %242, align 8, !tbaa !12
  %243 = load i8*, i8** %129, align 8, !tbaa !16
  %244 = bitcast %union.anon* %127 to i8*
  %245 = icmp eq i8* %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = bitcast %union.anon* %241 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %247, i8* noundef nonnull align 8 dereferenceable(16) %244, i64 16, i1 false) #13
  br label %253

248:                                              ; preds = %240
  %249 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  store i8* %243, i8** %249, align 8, !tbaa !16
  %250 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  %251 = load i64, i64* %250, align 8, !tbaa !13
  %252 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %251, i64* %252, align 8, !tbaa !13
  br label %253

253:                                              ; preds = %246, %248
  %254 = load i64, i64* %130, align 8, !tbaa !5
  %255 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %254, i64* %255, align 8, !tbaa !5
  store %union.anon* %127, %union.anon** %128, align 8, !tbaa !16
  store i64 0, i64* %130, align 8, !tbaa !5
  store i8 0, i8* %244, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %126) #13
  br label %258

256:                                              ; preds = %239, %233
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %126) #13
  %257 = icmp eq i32* %35, null
  br i1 %257, label %265, label %262

258:                                              ; preds = %253, %118
  %259 = icmp eq i32* %35, null
  br i1 %259, label %264, label %260

260:                                              ; preds = %258
  %261 = bitcast i32* %35 to i8*
  call void @_ZdlPv(i8* noundef nonnull %261) #13
  br label %264

262:                                              ; preds = %256
  %263 = bitcast i32* %35 to i8*
  call void @_ZdlPv(i8* noundef nonnull %263) #13
  br label %265

264:                                              ; preds = %260, %258, %15
  ret void

265:                                              ; preds = %256, %262
  resume { i8*, i32 } %234
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS_processed.cpp() #3 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #13
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { noreturn }
attributes #12 = { allocsize(0) }
attributes #13 = { nounwind }

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
!12 = !{!7, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !9, i64 0}
!16 = !{!6, !8, i64 0}
!17 = distinct !{!17, !18, !19}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !18, !19}
!21 = distinct !{!21, !18, !19}
!22 = distinct !{!22, !18, !19}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!25 = distinct !{!25, !"_ZNSt7__cxx119to_stringEi"}
!26 = distinct !{!26, !18, !19}
!27 = distinct !{!27, !18, !19}
