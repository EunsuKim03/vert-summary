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
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %17 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %16, %union.anon** %17, align 8, !tbaa !12
  %18 = bitcast %union.anon* %16 to i8*
  store i8 48, i8* %18, align 8, !tbaa !13
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 1, i64* %19, align 8, !tbaa !5
  %20 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 0, i8* %20, align 1, !tbaa !13
  br label %261

21:                                               ; preds = %3
  %22 = add i64 %10, %7
  %23 = shl i64 %22, 32
  %24 = ashr exact i64 %23, 32
  %25 = icmp slt i64 %23, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0)) #11
  unreachable

27:                                               ; preds = %21
  %28 = icmp eq i64 %23, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %27
  %30 = lshr exact i64 %23, 30
  %31 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef %30) #12
  %32 = bitcast i8* %31 to i32*
  %33 = lshr exact i64 %23, 30
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %31, i8 0, i64 %33, i1 false), !tbaa !14
  %34 = getelementptr inbounds i32, i32* %32, i64 %24
  %35 = ptrtoint i32* %34 to i64
  br label %36

36:                                               ; preds = %29, %27
  %37 = phi i32* [ null, %27 ], [ %32, %29 ]
  %38 = phi i64 [ 0, %27 ], [ %35, %29 ]
  %39 = icmp sgt i32 %8, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8, !tbaa !16
  %43 = icmp sgt i32 %11, 0
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %45 = and i64 %10, 4294967295
  %46 = and i64 %7, 4294967295
  %47 = and i64 %10, 4294967295
  br label %53

48:                                               ; preds = %91, %36
  %49 = ptrtoint i32* %37 to i64
  %50 = sub i64 %38, %49
  %51 = lshr exact i64 %50, 2
  %52 = trunc i64 %51 to i32
  br label %94

53:                                               ; preds = %40, %91
  %54 = phi i64 [ 0, %40 ], [ %92, %91 ]
  %55 = phi i64 [ %46, %40 ], [ %56, %91 ]
  %56 = add nsw i64 %55, -1
  %57 = and i64 %56, 4294967295
  %58 = getelementptr inbounds i8, i8* %42, i64 %57
  %59 = load i8, i8* %58, align 1, !tbaa !13
  %60 = sext i8 %59 to i32
  %61 = add nsw i32 %60, -48
  br i1 %43, label %62, label %91

62:                                               ; preds = %53
  %63 = load i8*, i8** %44, align 8, !tbaa !16
  br label %66

64:                                               ; preds = %66
  %65 = icmp sgt i32 %81, 9
  br i1 %65, label %86, label %91

66:                                               ; preds = %62, %66
  %67 = phi i64 [ 0, %62 ], [ %84, %66 ]
  %68 = phi i64 [ %45, %62 ], [ %70, %66 ]
  %69 = phi i32 [ 0, %62 ], [ %82, %66 ]
  %70 = add nsw i64 %68, -1
  %71 = and i64 %70, 4294967295
  %72 = getelementptr inbounds i8, i8* %63, i64 %71
  %73 = load i8, i8* %72, align 1, !tbaa !13
  %74 = sext i8 %73 to i32
  %75 = add nsw i32 %74, -48
  %76 = mul nsw i32 %75, %61
  %77 = add nuw nsw i64 %67, %54
  %78 = getelementptr inbounds i32, i32* %37, i64 %77
  %79 = load i32, i32* %78, align 4, !tbaa !14
  %80 = add i32 %79, %69
  %81 = add i32 %80, %76
  %82 = sdiv i32 %81, 10
  %83 = srem i32 %81, 10
  store i32 %83, i32* %78, align 4, !tbaa !14
  %84 = add nuw nsw i64 %67, 1
  %85 = icmp eq i64 %84, %45
  br i1 %85, label %64, label %66, !llvm.loop !17

86:                                               ; preds = %64
  %87 = add nuw nsw i64 %47, %54
  %88 = getelementptr inbounds i32, i32* %37, i64 %87
  %89 = load i32, i32* %88, align 4, !tbaa !14
  %90 = add nsw i32 %89, %82
  store i32 %90, i32* %88, align 4, !tbaa !14
  br label %91

91:                                               ; preds = %53, %86, %64
  %92 = add nuw nsw i64 %54, 1
  %93 = icmp eq i64 %92, %46
  br i1 %93, label %48, label %53, !llvm.loop !19

94:                                               ; preds = %98, %48
  %95 = phi i32 [ %52, %48 ], [ %96, %98 ]
  %96 = add i32 %95, -1
  %97 = icmp sgt i32 %96, -1
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = zext i32 %96 to i64
  %100 = getelementptr inbounds i32, i32* %37, i64 %99
  %101 = load i32, i32* %100, align 4, !tbaa !14
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %94, label %119, !llvm.loop !20

103:                                              ; preds = %94
  %104 = icmp ult i32 %52, -2147483647
  br i1 %104, label %105, label %111

105:                                              ; preds = %103
  %106 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %107 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %106, %union.anon** %107, align 8, !tbaa !12
  %108 = bitcast %union.anon* %106 to i8*
  store i8 48, i8* %108, align 8, !tbaa !13
  %109 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 1, i64* %109, align 8, !tbaa !5
  %110 = getelementptr inbounds i8, i8* %108, i64 1
  store i8 0, i8* %110, align 1, !tbaa !13
  br label %255

111:                                              ; preds = %103
  %112 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %112) #13
  %113 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %114 = bitcast %"class.std::__cxx11::basic_string"* %4 to %union.anon**
  store %union.anon* %113, %union.anon** %114, align 8, !tbaa !12
  %115 = bitcast %union.anon* %113 to i8*
  %116 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  store i64 0, i64* %116, align 8, !tbaa !5
  store i8 0, i8* %115, align 8, !tbaa !13
  %117 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %118 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %117, %union.anon** %118, align 8, !tbaa !12
  br label %234

119:                                              ; preds = %98
  %120 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %120) #13
  %121 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %122 = bitcast %"class.std::__cxx11::basic_string"* %4 to %union.anon**
  store %union.anon* %121, %union.anon** %122, align 8, !tbaa !12
  %123 = bitcast %union.anon* %121 to i8*
  %124 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %125 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  store i64 0, i64* %125, align 8, !tbaa !5
  store i8 0, i8* %123, align 8, !tbaa !13
  %126 = bitcast %"class.std::__cxx11::basic_string"* %5 to i8*
  %127 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %128 = bitcast %"class.std::__cxx11::basic_string"* %5 to %union.anon**
  %129 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %130 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  %131 = bitcast %union.anon* %127 to i8*
  %132 = zext i32 %96 to i64
  br label %133

133:                                              ; preds = %119, %215
  %134 = phi i64 [ %132, %119 ], [ %135, %215 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %126) #13
  %135 = add nsw i64 %134, -1
  %136 = getelementptr inbounds i32, i32* %37, i64 %134
  %137 = load i32, i32* %136, align 4, !tbaa !14
  %138 = call i32 @llvm.abs.i32(i32 %137, i1 false)
  %139 = icmp ult i32 %138, 10
  br i1 %139, label %158, label %140

140:                                              ; preds = %133, %154
  %141 = phi i32 [ %155, %154 ], [ %138, %133 ]
  %142 = phi i32 [ %156, %154 ], [ 1, %133 ]
  %143 = icmp ult i32 %141, 100
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = add i32 %142, 1
  br label %158

146:                                              ; preds = %140
  %147 = icmp ult i32 %141, 1000
  br i1 %147, label %148, label %150

148:                                              ; preds = %146
  %149 = add i32 %142, 2
  br label %158

150:                                              ; preds = %146
  %151 = icmp ult i32 %141, 10000
  br i1 %151, label %152, label %154

152:                                              ; preds = %150
  %153 = add i32 %142, 3
  br label %158

154:                                              ; preds = %150
  %155 = udiv i32 %141, 10000
  %156 = add i32 %142, 4
  %157 = icmp ult i32 %141, 100000
  br i1 %157, label %158, label %140, !llvm.loop !21

158:                                              ; preds = %154, %152, %148, %144, %133
  %159 = phi i32 [ %145, %144 ], [ %149, %148 ], [ %153, %152 ], [ 1, %133 ], [ %156, %154 ]
  %160 = lshr i32 %137, 31
  %161 = add i32 %159, %160
  %162 = zext i32 %161 to i64
  store %union.anon* %127, %union.anon** %128, align 8, !tbaa !12, !alias.scope !22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %162, i8 noundef signext 45)
          to label %163 unwind label %217

163:                                              ; preds = %158
  %164 = zext i32 %160 to i64
  %165 = load i8*, i8** %129, align 8, !tbaa !16, !alias.scope !22
  %166 = getelementptr inbounds i8, i8* %165, i64 %164
  %167 = icmp ugt i32 %138, 99
  br i1 %167, label %168, label %190

168:                                              ; preds = %163
  %169 = add i32 %159, -1
  br label %170

170:                                              ; preds = %170, %168
  %171 = phi i32 [ %175, %170 ], [ %138, %168 ]
  %172 = phi i32 [ %188, %170 ], [ %169, %168 ]
  %173 = urem i32 %171, 100
  %174 = shl nuw nsw i32 %173, 1
  %175 = udiv i32 %171, 100
  %176 = or i32 %174, 1
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %177
  %179 = load i8, i8* %178, align 1, !tbaa !13
  %180 = zext i32 %172 to i64
  %181 = getelementptr inbounds i8, i8* %166, i64 %180
  store i8 %179, i8* %181, align 1, !tbaa !13
  %182 = zext i32 %174 to i64
  %183 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %182
  %184 = load i8, i8* %183, align 2, !tbaa !13
  %185 = add i32 %172, -1
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %166, i64 %186
  store i8 %184, i8* %187, align 1, !tbaa !13
  %188 = add i32 %172, -2
  %189 = icmp ugt i32 %171, 9999
  br i1 %189, label %170, label %190, !llvm.loop !25

190:                                              ; preds = %170, %163
  %191 = phi i32 [ %138, %163 ], [ %175, %170 ]
  %192 = icmp ugt i32 %191, 9
  br i1 %192, label %193, label %203

193:                                              ; preds = %190
  %194 = shl nuw nsw i32 %191, 1
  %195 = or i32 %194, 1
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %196
  %198 = load i8, i8* %197, align 1, !tbaa !13
  %199 = getelementptr inbounds i8, i8* %166, i64 1
  store i8 %198, i8* %199, align 1, !tbaa !13
  %200 = zext i32 %194 to i64
  %201 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %200
  %202 = load i8, i8* %201, align 2, !tbaa !13
  br label %206

203:                                              ; preds = %190
  %204 = trunc i32 %191 to i8
  %205 = add nuw nsw i8 %204, 48
  br label %206

206:                                              ; preds = %203, %193
  %207 = phi i8 [ %205, %203 ], [ %202, %193 ]
  store i8 %207, i8* %166, align 1, !tbaa !13
  %208 = load i8*, i8** %129, align 8, !tbaa !16
  %209 = load i64, i64* %130, align 8, !tbaa !5
  %210 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i8* noundef %208, i64 noundef %209)
          to label %211 unwind label %219

211:                                              ; preds = %206
  %212 = load i8*, i8** %129, align 8, !tbaa !16
  %213 = icmp eq i8* %212, %131
  br i1 %213, label %215, label %214

214:                                              ; preds = %211
  call void @_ZdlPv(i8* noundef %212) #13
  br label %215

215:                                              ; preds = %211, %214
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %126) #13
  %216 = icmp sgt i64 %134, 0
  br i1 %216, label %133, label %229, !llvm.loop !26

217:                                              ; preds = %158
  %218 = landingpad { i8*, i32 }
          cleanup
  br label %224

219:                                              ; preds = %206
  %220 = landingpad { i8*, i32 }
          cleanup
  %221 = load i8*, i8** %129, align 8, !tbaa !16
  %222 = icmp eq i8* %221, %131
  br i1 %222, label %224, label %223

223:                                              ; preds = %219
  call void @_ZdlPv(i8* noundef %221) #13
  br label %224

224:                                              ; preds = %223, %219, %217
  %225 = phi { i8*, i32 } [ %218, %217 ], [ %220, %219 ], [ %220, %223 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %126) #13
  %226 = load i8*, i8** %124, align 8, !tbaa !16
  %227 = icmp eq i8* %226, %123
  br i1 %227, label %253, label %228

228:                                              ; preds = %224
  call void @_ZdlPv(i8* noundef %226) #13
  br label %253

229:                                              ; preds = %215
  %230 = load i8*, i8** %124, align 8, !tbaa !16
  %231 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %232 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %231, %union.anon** %232, align 8, !tbaa !12
  %233 = icmp eq i8* %230, %123
  br i1 %233, label %234, label %240

234:                                              ; preds = %111, %229
  %235 = phi %union.anon* [ %117, %111 ], [ %231, %229 ]
  %236 = phi %union.anon* [ %113, %111 ], [ %121, %229 ]
  %237 = phi i8* [ %115, %111 ], [ %123, %229 ]
  %238 = phi i64* [ %116, %111 ], [ %125, %229 ]
  %239 = bitcast %union.anon* %235 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %239, i8* noundef nonnull align 8 dereferenceable(16) %237, i64 16, i1 false) #13
  br label %245

240:                                              ; preds = %229
  %241 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  store i8* %230, i8** %241, align 8, !tbaa !16
  %242 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  %243 = load i64, i64* %242, align 8, !tbaa !13
  %244 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %243, i64* %244, align 8, !tbaa !13
  br label %245

245:                                              ; preds = %234, %240
  %246 = phi %union.anon* [ %236, %234 ], [ %121, %240 ]
  %247 = phi i8* [ %237, %234 ], [ %123, %240 ]
  %248 = phi i64* [ %238, %234 ], [ %125, %240 ]
  %249 = bitcast %"class.std::__cxx11::basic_string"* %4 to %union.anon**
  %250 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  %251 = load i64, i64* %248, align 8, !tbaa !5
  %252 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %251, i64* %252, align 8, !tbaa !5
  store %union.anon* %246, %union.anon** %249, align 8, !tbaa !16
  store i64 0, i64* %248, align 8, !tbaa !5
  store i8 0, i8* %247, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %250) #13
  br label %255

253:                                              ; preds = %228, %224
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %120) #13
  %254 = icmp eq i32* %37, null
  br i1 %254, label %262, label %259

255:                                              ; preds = %245, %105
  %256 = icmp eq i32* %37, null
  br i1 %256, label %261, label %257

257:                                              ; preds = %255
  %258 = bitcast i32* %37 to i8*
  call void @_ZdlPv(i8* noundef nonnull %258) #13
  br label %261

259:                                              ; preds = %253
  %260 = bitcast i32* %37 to i8*
  call void @_ZdlPv(i8* noundef nonnull %260) #13
  br label %262

261:                                              ; preds = %257, %255, %15
  ret void

262:                                              ; preds = %253, %259
  resume { i8*, i32 } %225
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
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #13
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

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
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!24 = distinct !{!24, !"_ZNSt7__cxx119to_stringEi"}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18}
