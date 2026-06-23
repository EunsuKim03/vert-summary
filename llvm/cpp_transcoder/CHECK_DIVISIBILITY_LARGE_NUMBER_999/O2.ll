; ModuleID = 'benchmark/cpp_transcoder/CHECK_DIVISIBILITY_LARGE_NUMBER_999/CHECK_DIVISIBILITY_LARGE_NUMBER_999_processed.cpp'
source_filename = "benchmark/cpp_transcoder/CHECK_DIVISIBILITY_LARGE_NUMBER_999/CHECK_DIVISIBILITY_LARGE_NUMBER_999_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_ = comdat any

$_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits = linkonce_odr dso_local local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", comdat, align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_CHECK_DIVISIBILITY_LARGE_NUMBER_999_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef %0) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca i64, align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !5
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8, !tbaa !12
  %14 = load i8, i8* %13, align 1, !tbaa !13
  %15 = icmp eq i8 %14, 48
  br i1 %15, label %370, label %366

16:                                               ; preds = %1
  %17 = srem i32 %9, 3
  switch i32 %17, label %126 [
    i32 1, label %18
    i32 2, label %72
  ]

18:                                               ; preds = %16
  %19 = bitcast %"class.std::__cxx11::basic_string"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %19) #9
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0)
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8, !tbaa !12
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2
  %24 = bitcast %union.anon* %23 to i8*
  %25 = icmp eq i8* %22, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %18
  %27 = icmp eq %"class.std::__cxx11::basic_string"* %3, %0
  br i1 %27, label %65, label %28, !prof !14

28:                                               ; preds = %26
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %30 = load i64, i64* %29, align 8, !tbaa !5
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %20, align 8, !tbaa !12
  %34 = icmp eq i64 %30, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i8, i8* %22, align 1, !tbaa !13
  store i8 %36, i8* %33, align 1, !tbaa !13
  br label %38

37:                                               ; preds = %32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 %22, i64 %30, i1 false) #9
  br label %38

38:                                               ; preds = %37, %35, %28
  %39 = load i64, i64* %29, align 8, !tbaa !5
  store i64 %39, i64* %7, align 8, !tbaa !5
  %40 = load i8*, i8** %20, align 8, !tbaa !12
  %41 = getelementptr inbounds i8, i8* %40, i64 %39
  store i8 0, i8* %41, align 1, !tbaa !13
  %42 = load i8*, i8** %21, align 8, !tbaa !12
  br label %65

43:                                               ; preds = %18
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %45 = bitcast %union.anon* %44 to i8*
  %46 = load i8*, i8** %20, align 8, !tbaa !12
  %47 = icmp eq i8* %46, %45
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  store i8* %22, i8** %20, align 8, !tbaa !12
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %50 = bitcast i64* %49 to <2 x i64>*
  %51 = load <2 x i64>, <2 x i64>* %50, align 8, !tbaa !13
  %52 = bitcast i64* %7 to <2 x i64>*
  store <2 x i64> %51, <2 x i64>* %52, align 8, !tbaa !13
  br label %63

53:                                               ; preds = %43
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %55 = load i64, i64* %54, align 8, !tbaa !13
  store i8* %22, i8** %20, align 8, !tbaa !12
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %57 = bitcast i64* %56 to <2 x i64>*
  %58 = load <2 x i64>, <2 x i64>* %57, align 8, !tbaa !13
  %59 = bitcast i64* %7 to <2 x i64>*
  store <2 x i64> %58, <2 x i64>* %59, align 8, !tbaa !13
  %60 = icmp eq i8* %46, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %53
  store i8* %46, i8** %21, align 8, !tbaa !12
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2, i32 0
  store i64 %55, i64* %62, align 8, !tbaa !13
  br label %65

63:                                               ; preds = %53, %48
  %64 = bitcast %"class.std::__cxx11::basic_string"* %3 to %union.anon**
  store %union.anon* %23, %union.anon** %64, align 8, !tbaa !12
  br label %65

65:                                               ; preds = %26, %38, %61, %63
  %66 = phi i8* [ %42, %38 ], [ %46, %61 ], [ %24, %63 ], [ %22, %26 ]
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  store i64 0, i64* %67, align 8, !tbaa !5
  store i8 0, i8* %66, align 1, !tbaa !13
  %68 = load i8*, i8** %21, align 8, !tbaa !12
  %69 = icmp eq i8* %68, %24
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  call void @_ZdlPv(i8* noundef %68) #9
  br label %71

71:                                               ; preds = %65, %70
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #9
  br label %126

72:                                               ; preds = %16
  %73 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %73) #9
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0)
  %74 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %75 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8, !tbaa !12
  %77 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %78 = bitcast %union.anon* %77 to i8*
  %79 = icmp eq i8* %76, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %72
  %81 = icmp eq %"class.std::__cxx11::basic_string"* %4, %0
  br i1 %81, label %119, label %82, !prof !14

82:                                               ; preds = %80
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  %84 = load i64, i64* %83, align 8, !tbaa !5
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %82
  %87 = load i8*, i8** %74, align 8, !tbaa !12
  %88 = icmp eq i64 %84, 1
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i8, i8* %76, align 1, !tbaa !13
  store i8 %90, i8* %87, align 1, !tbaa !13
  br label %92

91:                                               ; preds = %86
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %87, i8* align 1 %76, i64 %84, i1 false) #9
  br label %92

92:                                               ; preds = %91, %89, %82
  %93 = load i64, i64* %83, align 8, !tbaa !5
  store i64 %93, i64* %7, align 8, !tbaa !5
  %94 = load i8*, i8** %74, align 8, !tbaa !12
  %95 = getelementptr inbounds i8, i8* %94, i64 %93
  store i8 0, i8* %95, align 1, !tbaa !13
  %96 = load i8*, i8** %75, align 8, !tbaa !12
  br label %119

97:                                               ; preds = %72
  %98 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %99 = bitcast %union.anon* %98 to i8*
  %100 = load i8*, i8** %74, align 8, !tbaa !12
  %101 = icmp eq i8* %100, %99
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  store i8* %76, i8** %74, align 8, !tbaa !12
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  %104 = bitcast i64* %103 to <2 x i64>*
  %105 = load <2 x i64>, <2 x i64>* %104, align 8, !tbaa !13
  %106 = bitcast i64* %7 to <2 x i64>*
  store <2 x i64> %105, <2 x i64>* %106, align 8, !tbaa !13
  br label %117

107:                                              ; preds = %97
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %109 = load i64, i64* %108, align 8, !tbaa !13
  store i8* %76, i8** %74, align 8, !tbaa !12
  %110 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  %111 = bitcast i64* %110 to <2 x i64>*
  %112 = load <2 x i64>, <2 x i64>* %111, align 8, !tbaa !13
  %113 = bitcast i64* %7 to <2 x i64>*
  store <2 x i64> %112, <2 x i64>* %113, align 8, !tbaa !13
  %114 = icmp eq i8* %100, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %107
  store i8* %100, i8** %75, align 8, !tbaa !12
  %116 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  store i64 %109, i64* %116, align 8, !tbaa !13
  br label %119

117:                                              ; preds = %107, %102
  %118 = bitcast %"class.std::__cxx11::basic_string"* %4 to %union.anon**
  store %union.anon* %77, %union.anon** %118, align 8, !tbaa !12
  br label %119

119:                                              ; preds = %80, %92, %115, %117
  %120 = phi i8* [ %96, %92 ], [ %100, %115 ], [ %78, %117 ], [ %76, %80 ]
  %121 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  store i64 0, i64* %121, align 8, !tbaa !5
  store i8 0, i8* %120, align 1, !tbaa !13
  %122 = load i8*, i8** %75, align 8, !tbaa !12
  %123 = icmp eq i8* %122, %78
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  call void @_ZdlPv(i8* noundef %122) #9
  br label %125

125:                                              ; preds = %119, %124
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %73) #9
  br label %126

126:                                              ; preds = %71, %16, %125
  %127 = icmp sgt i32 %9, 0
  br i1 %127, label %128, label %366

128:                                              ; preds = %126
  %129 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8, !tbaa !12
  %131 = shl i64 %8, 32
  %132 = ashr exact i64 %131, 32
  %133 = add nsw i64 %132, -1
  %134 = udiv i64 %133, 3
  %135 = add nuw nsw i64 %134, 1
  %136 = and i64 %135, 1
  %137 = icmp ult i64 %133, 3
  br i1 %137, label %140, label %138

138:                                              ; preds = %128
  %139 = and i64 %135, 9223372036854775806
  br label %166

140:                                              ; preds = %166, %128
  %141 = phi i32 [ undef, %128 ], [ %204, %166 ]
  %142 = phi i64 [ 0, %128 ], [ %205, %166 ]
  %143 = phi i32 [ 0, %128 ], [ %204, %166 ]
  %144 = icmp eq i64 %136, 0
  br i1 %144, label %163, label %145

145:                                              ; preds = %140
  %146 = add nuw nsw i64 %142, 1
  %147 = getelementptr inbounds i8, i8* %130, i64 %142
  %148 = load i8, i8* %147, align 1, !tbaa !13
  %149 = sext i8 %148 to i32
  %150 = mul nsw i32 %149, 100
  %151 = add nuw nsw i64 %142, 2
  %152 = getelementptr inbounds i8, i8* %130, i64 %146
  %153 = load i8, i8* %152, align 1, !tbaa !13
  %154 = sext i8 %153 to i32
  %155 = mul nsw i32 %154, 10
  %156 = getelementptr inbounds i8, i8* %130, i64 %151
  %157 = load i8, i8* %156, align 1, !tbaa !13
  %158 = sext i8 %157 to i32
  %159 = add i32 %143, -5328
  %160 = add i32 %159, %150
  %161 = add i32 %160, %155
  %162 = add i32 %161, %158
  br label %163

163:                                              ; preds = %140, %145
  %164 = phi i32 [ %141, %140 ], [ %162, %145 ]
  %165 = icmp sgt i32 %164, 1000
  br i1 %165, label %208, label %366

166:                                              ; preds = %166, %138
  %167 = phi i64 [ 0, %138 ], [ %205, %166 ]
  %168 = phi i32 [ 0, %138 ], [ %204, %166 ]
  %169 = phi i64 [ 0, %138 ], [ %206, %166 ]
  %170 = or i64 %167, 1
  %171 = getelementptr inbounds i8, i8* %130, i64 %167
  %172 = load i8, i8* %171, align 1, !tbaa !13
  %173 = sext i8 %172 to i32
  %174 = mul nsw i32 %173, 100
  %175 = add nuw nsw i64 %167, 2
  %176 = getelementptr inbounds i8, i8* %130, i64 %170
  %177 = load i8, i8* %176, align 1, !tbaa !13
  %178 = sext i8 %177 to i32
  %179 = mul nsw i32 %178, 10
  %180 = getelementptr inbounds i8, i8* %130, i64 %175
  %181 = load i8, i8* %180, align 1, !tbaa !13
  %182 = sext i8 %181 to i32
  %183 = add i32 %168, -5328
  %184 = add i32 %183, %174
  %185 = add i32 %184, %179
  %186 = add i32 %185, %182
  %187 = add nuw nsw i64 %167, 3
  %188 = add nuw nsw i64 %167, 4
  %189 = getelementptr inbounds i8, i8* %130, i64 %187
  %190 = load i8, i8* %189, align 1, !tbaa !13
  %191 = sext i8 %190 to i32
  %192 = mul nsw i32 %191, 100
  %193 = add nuw nsw i64 %167, 5
  %194 = getelementptr inbounds i8, i8* %130, i64 %188
  %195 = load i8, i8* %194, align 1, !tbaa !13
  %196 = sext i8 %195 to i32
  %197 = mul nsw i32 %196, 10
  %198 = getelementptr inbounds i8, i8* %130, i64 %193
  %199 = load i8, i8* %198, align 1, !tbaa !13
  %200 = sext i8 %199 to i32
  %201 = add i32 %186, -5328
  %202 = add i32 %201, %192
  %203 = add i32 %202, %197
  %204 = add i32 %203, %200
  %205 = add nuw nsw i64 %167, 6
  %206 = add i64 %169, 2
  %207 = icmp eq i64 %206, %139
  br i1 %207, label %140, label %166, !llvm.loop !15

208:                                              ; preds = %163
  %209 = bitcast %"class.std::__cxx11::basic_string"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %209) #9
  br label %210

210:                                              ; preds = %208, %224
  %211 = phi i32 [ %225, %224 ], [ %164, %208 ]
  %212 = phi i32 [ %226, %224 ], [ 1, %208 ]
  %213 = icmp ult i32 %211, 100
  br i1 %213, label %214, label %216

214:                                              ; preds = %210
  %215 = add i32 %212, 1
  br label %228

216:                                              ; preds = %210
  %217 = icmp ult i32 %211, 1000
  br i1 %217, label %218, label %220

218:                                              ; preds = %216
  %219 = add i32 %212, 2
  br label %228

220:                                              ; preds = %216
  %221 = icmp ult i32 %211, 10000
  br i1 %221, label %222, label %224

222:                                              ; preds = %220
  %223 = add i32 %212, 3
  br label %228

224:                                              ; preds = %220
  %225 = udiv i32 %211, 10000
  %226 = add i32 %212, 4
  %227 = icmp ult i32 %211, 100000
  br i1 %227, label %228, label %210, !llvm.loop !17

228:                                              ; preds = %224, %222, %218, %214
  %229 = phi i32 [ %215, %214 ], [ %219, %218 ], [ %223, %222 ], [ %226, %224 ]
  %230 = lshr i32 %164, 31
  %231 = add i32 %229, %230
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %234 = bitcast %"class.std::__cxx11::basic_string"* %5 to %union.anon**
  store %union.anon* %233, %union.anon** %234, align 8, !tbaa !18, !alias.scope !19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %232, i8 noundef signext 45)
  %235 = zext i32 %230 to i64
  %236 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8, !tbaa !12, !alias.scope !19
  %238 = getelementptr inbounds i8, i8* %237, i64 %235
  %239 = icmp ugt i32 %164, 99
  br i1 %239, label %240, label %262

240:                                              ; preds = %228
  %241 = add i32 %229, -1
  br label %242

242:                                              ; preds = %242, %240
  %243 = phi i32 [ %247, %242 ], [ %164, %240 ]
  %244 = phi i32 [ %260, %242 ], [ %241, %240 ]
  %245 = urem i32 %243, 100
  %246 = shl nuw nsw i32 %245, 1
  %247 = udiv i32 %243, 100
  %248 = or i32 %246, 1
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %249
  %251 = load i8, i8* %250, align 1, !tbaa !13
  %252 = zext i32 %244 to i64
  %253 = getelementptr inbounds i8, i8* %238, i64 %252
  store i8 %251, i8* %253, align 1, !tbaa !13
  %254 = zext i32 %246 to i64
  %255 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %254
  %256 = load i8, i8* %255, align 2, !tbaa !13
  %257 = add i32 %244, -1
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %238, i64 %258
  store i8 %256, i8* %259, align 1, !tbaa !13
  %260 = add i32 %244, -2
  %261 = icmp ugt i32 %243, 9999
  br i1 %261, label %242, label %262, !llvm.loop !22

262:                                              ; preds = %242, %228
  %263 = phi i32 [ %164, %228 ], [ %247, %242 ]
  %264 = icmp ugt i32 %263, 9
  br i1 %264, label %265, label %275

265:                                              ; preds = %262
  %266 = shl nuw nsw i32 %263, 1
  %267 = or i32 %266, 1
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %268
  %270 = load i8, i8* %269, align 1, !tbaa !13
  %271 = getelementptr inbounds i8, i8* %238, i64 1
  store i8 %270, i8* %271, align 1, !tbaa !13
  %272 = zext i32 %266 to i64
  %273 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %272
  %274 = load i8, i8* %273, align 2, !tbaa !13
  br label %278

275:                                              ; preds = %262
  %276 = trunc i32 %263 to i8
  %277 = add nuw nsw i8 %276, 48
  br label %278

278:                                              ; preds = %265, %275
  %279 = phi i8 [ %277, %275 ], [ %274, %265 ]
  store i8 %279, i8* %238, align 1, !tbaa !13
  %280 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %281 = load i8*, i8** %236, align 8, !tbaa !12
  %282 = bitcast %union.anon* %233 to i8*
  %283 = icmp eq i8* %281, %282
  br i1 %283, label %284, label %301

284:                                              ; preds = %278
  %285 = icmp eq %"class.std::__cxx11::basic_string"* %5, %0
  br i1 %285, label %322, label %286, !prof !14

286:                                              ; preds = %284
  %287 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  %288 = load i64, i64* %287, align 8, !tbaa !5
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %296, label %290

290:                                              ; preds = %286
  %291 = load i8*, i8** %280, align 8, !tbaa !12
  %292 = icmp eq i64 %288, 1
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = load i8, i8* %281, align 1, !tbaa !13
  store i8 %294, i8* %291, align 1, !tbaa !13
  br label %296

295:                                              ; preds = %290
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %291, i8* align 1 %281, i64 %288, i1 false) #9
  br label %296

296:                                              ; preds = %295, %293, %286
  %297 = load i64, i64* %287, align 8, !tbaa !5
  store i64 %297, i64* %7, align 8, !tbaa !5
  %298 = load i8*, i8** %280, align 8, !tbaa !12
  %299 = getelementptr inbounds i8, i8* %298, i64 %297
  store i8 0, i8* %299, align 1, !tbaa !13
  %300 = load i8*, i8** %236, align 8, !tbaa !12
  br label %322

301:                                              ; preds = %278
  %302 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %303 = bitcast %union.anon* %302 to i8*
  %304 = load i8*, i8** %280, align 8, !tbaa !12
  %305 = icmp eq i8* %304, %303
  br i1 %305, label %306, label %311

306:                                              ; preds = %301
  store i8* %281, i8** %280, align 8, !tbaa !12
  %307 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  %308 = bitcast i64* %307 to <2 x i64>*
  %309 = load <2 x i64>, <2 x i64>* %308, align 8, !tbaa !13
  %310 = bitcast i64* %7 to <2 x i64>*
  store <2 x i64> %309, <2 x i64>* %310, align 8, !tbaa !13
  br label %321

311:                                              ; preds = %301
  %312 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %313 = load i64, i64* %312, align 8, !tbaa !13
  store i8* %281, i8** %280, align 8, !tbaa !12
  %314 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  %315 = bitcast i64* %314 to <2 x i64>*
  %316 = load <2 x i64>, <2 x i64>* %315, align 8, !tbaa !13
  %317 = bitcast i64* %7 to <2 x i64>*
  store <2 x i64> %316, <2 x i64>* %317, align 8, !tbaa !13
  %318 = icmp eq i8* %304, null
  br i1 %318, label %321, label %319

319:                                              ; preds = %311
  store i8* %304, i8** %236, align 8, !tbaa !12
  %320 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2, i32 0
  store i64 %313, i64* %320, align 8, !tbaa !13
  br label %322

321:                                              ; preds = %311, %306
  store %union.anon* %233, %union.anon** %234, align 8, !tbaa !12
  br label %322

322:                                              ; preds = %284, %296, %319, %321
  %323 = phi i8* [ %300, %296 ], [ %304, %319 ], [ %282, %321 ], [ %281, %284 ]
  %324 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  store i64 0, i64* %324, align 8, !tbaa !5
  store i8 0, i8* %323, align 1, !tbaa !13
  %325 = load i8*, i8** %236, align 8, !tbaa !12
  %326 = icmp eq i8* %325, %282
  br i1 %326, label %328, label %327

327:                                              ; preds = %322
  call void @_ZdlPv(i8* noundef %325) #9
  br label %328

328:                                              ; preds = %322, %327
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %209) #9
  %329 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %330 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  store %union.anon* %329, %union.anon** %330, align 8, !tbaa !18
  %331 = load i8*, i8** %280, align 8, !tbaa !12
  %332 = load i64, i64* %7, align 8, !tbaa !5
  %333 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %333) #9
  store i64 %332, i64* %2, align 8, !tbaa !23
  %334 = icmp ugt i64 %332, 15
  br i1 %334, label %337, label %335

335:                                              ; preds = %328
  %336 = bitcast %union.anon* %329 to i8*
  br label %342

337:                                              ; preds = %328
  %338 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i64* noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  %339 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  store i8* %338, i8** %339, align 8, !tbaa !12
  %340 = load i64, i64* %2, align 8, !tbaa !23
  %341 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  store i64 %340, i64* %341, align 8, !tbaa !13
  br label %342

342:                                              ; preds = %337, %335
  %343 = phi i8* [ %336, %335 ], [ %338, %337 ]
  switch i64 %332, label %346 [
    i64 1, label %344
    i64 0, label %347
  ]

344:                                              ; preds = %342
  %345 = load i8, i8* %331, align 1, !tbaa !13
  store i8 %345, i8* %343, align 1, !tbaa !13
  br label %347

346:                                              ; preds = %342
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %343, i8* align 1 %331, i64 %332, i1 false) #9
  br label %347

347:                                              ; preds = %342, %344, %346
  %348 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %349 = load i64, i64* %2, align 8, !tbaa !23
  %350 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  store i64 %349, i64* %350, align 8, !tbaa !5
  %351 = load i8*, i8** %348, align 8, !tbaa !12
  %352 = getelementptr inbounds i8, i8* %351, i64 %349
  store i8 0, i8* %352, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %333) #9
  %353 = invoke noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef nonnull %6)
          to label %354 unwind label %359, !range !24

354:                                              ; preds = %347
  %355 = load i8*, i8** %348, align 8, !tbaa !12
  %356 = bitcast %union.anon* %329 to i8*
  %357 = icmp eq i8* %355, %356
  br i1 %357, label %366, label %358

358:                                              ; preds = %354
  call void @_ZdlPv(i8* noundef %355) #9
  br label %366

359:                                              ; preds = %347
  %360 = landingpad { i8*, i32 }
          cleanup
  %361 = load i8*, i8** %348, align 8, !tbaa !12
  %362 = bitcast %union.anon* %329 to i8*
  %363 = icmp eq i8* %361, %362
  br i1 %363, label %365, label %364

364:                                              ; preds = %359
  call void @_ZdlPv(i8* noundef %361) #9
  br label %365

365:                                              ; preds = %359, %364
  resume { i8*, i32 } %360

366:                                              ; preds = %11, %126, %358, %354, %163
  %367 = phi i32 [ %164, %163 ], [ %353, %354 ], [ %353, %358 ], [ 0, %126 ], [ 0, %11 ]
  %368 = icmp eq i32 %367, 999
  %369 = zext i1 %368 to i32
  br label %370

370:                                              ; preds = %11, %366
  %371 = phi i32 [ %369, %366 ], [ 1, %11 ]
  ret i32 %371
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i8* noundef %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #9
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !18
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %7, align 8, !tbaa !5
  %8 = bitcast %union.anon* %5 to i8*
  store i8 0, i8* %8, align 8, !tbaa !13
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 1
  %10 = load i64, i64* %9, align 8, !tbaa !5
  %11 = add i64 %10, %4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %11)
          to label %12 unwind label %25

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8, !tbaa !5
  %14 = sub i64 4611686018427387903, %13
  %15 = icmp ult i64 %14, %4
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  invoke void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #10
          to label %17 unwind label %25

17:                                               ; preds = %16
  unreachable

18:                                               ; preds = %12
  %19 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %1, i64 noundef %4)
          to label %20 unwind label %25

20:                                               ; preds = %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8, !tbaa !12
  %23 = load i64, i64* %9, align 8, !tbaa !5
  %24 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %22, i64 noundef %23)
          to label %31 unwind label %25

25:                                               ; preds = %20, %18, %16, %3
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8, !tbaa !12
  %29 = icmp eq i8* %28, %8
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  tail call void @_ZdlPv(i8* noundef %28) #9
  br label %32

31:                                               ; preds = %20
  ret void

32:                                               ; preds = %30, %25
  resume { i8*, i32 } %26
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

declare noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64* noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) local_unnamed_addr #8

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CHECK_DIVISIBILITY_LARGE_NUMBER_999_processed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #9
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

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
!12 = !{!6, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!7, !8, i64 0}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!21 = distinct !{!21, !"_ZNSt7__cxx119to_stringEi"}
!22 = distinct !{!22, !16}
!23 = !{!11, !11, i64 0}
!24 = !{i32 0, i32 2}
