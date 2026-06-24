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
  br i1 %15, label %300, label %16

16:                                               ; preds = %11, %1
  %17 = srem i32 %9, 3
  switch i32 %17, label %114 [
    i32 1, label %18
    i32 2, label %66
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
  br i1 %25, label %26, label %42

26:                                               ; preds = %18
  %27 = icmp eq %"class.std::__cxx11::basic_string"* %3, %0
  br i1 %27, label %59, label %28, !prof !14

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
  br label %59

42:                                               ; preds = %18
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %44 = bitcast %union.anon* %43 to i8*
  %45 = load i8*, i8** %20, align 8, !tbaa !12
  %46 = icmp eq i8* %45, %44
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %48 = load i64, i64* %47, align 8
  store i8* %22, i8** %20, align 8, !tbaa !12
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %50 = load i64, i64* %49, align 8, !tbaa !5
  store i64 %50, i64* %7, align 8, !tbaa !5
  %51 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %52 = load i64, i64* %51, align 8, !tbaa !13
  store i64 %52, i64* %47, align 8, !tbaa !13
  %53 = icmp eq i8* %45, null
  %54 = or i1 %46, %53
  br i1 %54, label %57, label %55

55:                                               ; preds = %42
  store i8* %45, i8** %21, align 8, !tbaa !12
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2, i32 0
  store i64 %48, i64* %56, align 8, !tbaa !13
  br label %59

57:                                               ; preds = %42
  %58 = bitcast %"class.std::__cxx11::basic_string"* %3 to %union.anon**
  store %union.anon* %23, %union.anon** %58, align 8, !tbaa !12
  br label %59

59:                                               ; preds = %26, %38, %55, %57
  %60 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  store i64 0, i64* %60, align 8, !tbaa !5
  %61 = load i8*, i8** %21, align 8, !tbaa !12
  store i8 0, i8* %61, align 1, !tbaa !13
  %62 = load i8*, i8** %21, align 8, !tbaa !12
  %63 = icmp eq i8* %62, %24
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  call void @_ZdlPv(i8* noundef %62) #9
  br label %65

65:                                               ; preds = %59, %64
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #9
  br label %114

66:                                               ; preds = %16
  %67 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %67) #9
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0)
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %69 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8, !tbaa !12
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %72 = bitcast %union.anon* %71 to i8*
  %73 = icmp eq i8* %70, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %66
  %75 = icmp eq %"class.std::__cxx11::basic_string"* %4, %0
  br i1 %75, label %107, label %76, !prof !14

76:                                               ; preds = %74
  %77 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  %78 = load i64, i64* %77, align 8, !tbaa !5
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = load i8*, i8** %68, align 8, !tbaa !12
  %82 = icmp eq i64 %78, 1
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i8, i8* %70, align 1, !tbaa !13
  store i8 %84, i8* %81, align 1, !tbaa !13
  br label %86

85:                                               ; preds = %80
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %81, i8* align 1 %70, i64 %78, i1 false) #9
  br label %86

86:                                               ; preds = %85, %83, %76
  %87 = load i64, i64* %77, align 8, !tbaa !5
  store i64 %87, i64* %7, align 8, !tbaa !5
  %88 = load i8*, i8** %68, align 8, !tbaa !12
  %89 = getelementptr inbounds i8, i8* %88, i64 %87
  store i8 0, i8* %89, align 1, !tbaa !13
  br label %107

90:                                               ; preds = %66
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %92 = bitcast %union.anon* %91 to i8*
  %93 = load i8*, i8** %68, align 8, !tbaa !12
  %94 = icmp eq i8* %93, %92
  %95 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %96 = load i64, i64* %95, align 8
  store i8* %70, i8** %68, align 8, !tbaa !12
  %97 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  %98 = load i64, i64* %97, align 8, !tbaa !5
  store i64 %98, i64* %7, align 8, !tbaa !5
  %99 = getelementptr inbounds %union.anon, %union.anon* %71, i64 0, i32 0
  %100 = load i64, i64* %99, align 8, !tbaa !13
  store i64 %100, i64* %95, align 8, !tbaa !13
  %101 = icmp eq i8* %93, null
  %102 = or i1 %94, %101
  br i1 %102, label %105, label %103

103:                                              ; preds = %90
  store i8* %93, i8** %69, align 8, !tbaa !12
  %104 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  store i64 %96, i64* %104, align 8, !tbaa !13
  br label %107

105:                                              ; preds = %90
  %106 = bitcast %"class.std::__cxx11::basic_string"* %4 to %union.anon**
  store %union.anon* %71, %union.anon** %106, align 8, !tbaa !12
  br label %107

107:                                              ; preds = %74, %86, %103, %105
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  store i64 0, i64* %108, align 8, !tbaa !5
  %109 = load i8*, i8** %69, align 8, !tbaa !12
  store i8 0, i8* %109, align 1, !tbaa !13
  %110 = load i8*, i8** %69, align 8, !tbaa !12
  %111 = icmp eq i8* %110, %72
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  call void @_ZdlPv(i8* noundef %110) #9
  br label %113

113:                                              ; preds = %107, %112
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %67) #9
  br label %114

114:                                              ; preds = %65, %16, %113
  %115 = icmp sgt i32 %9, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %114
  %117 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8, !tbaa !12
  %119 = shl i64 %8, 32
  %120 = ashr exact i64 %119, 32
  br label %124

121:                                              ; preds = %124, %114
  %122 = phi i32 [ 0, %114 ], [ %143, %124 ]
  %123 = icmp sgt i32 %122, 1000
  br i1 %123, label %146, label %296

124:                                              ; preds = %116, %124
  %125 = phi i64 [ 0, %116 ], [ %144, %124 ]
  %126 = phi i32 [ 0, %116 ], [ %143, %124 ]
  %127 = add nuw nsw i64 %125, 1
  %128 = getelementptr inbounds i8, i8* %118, i64 %125
  %129 = load i8, i8* %128, align 1, !tbaa !13
  %130 = sext i8 %129 to i32
  %131 = mul nsw i32 %130, 100
  %132 = add nuw nsw i64 %125, 2
  %133 = getelementptr inbounds i8, i8* %118, i64 %127
  %134 = load i8, i8* %133, align 1, !tbaa !13
  %135 = sext i8 %134 to i32
  %136 = mul nsw i32 %135, 10
  %137 = getelementptr inbounds i8, i8* %118, i64 %132
  %138 = load i8, i8* %137, align 1, !tbaa !13
  %139 = sext i8 %138 to i32
  %140 = add i32 %126, -5328
  %141 = add i32 %140, %131
  %142 = add i32 %141, %136
  %143 = add i32 %142, %139
  %144 = add nuw nsw i64 %125, 3
  %145 = icmp slt i64 %144, %120
  br i1 %145, label %124, label %121, !llvm.loop !15

146:                                              ; preds = %121
  %147 = bitcast %"class.std::__cxx11::basic_string"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %147) #9
  br label %148

148:                                              ; preds = %146, %162
  %149 = phi i32 [ %163, %162 ], [ %122, %146 ]
  %150 = phi i32 [ %164, %162 ], [ 1, %146 ]
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
  br i1 %165, label %166, label %148, !llvm.loop !18

166:                                              ; preds = %162, %160, %156, %152
  %167 = phi i32 [ %153, %152 ], [ %157, %156 ], [ %161, %160 ], [ %164, %162 ]
  %168 = lshr i32 %122, 31
  %169 = add i32 %167, %168
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %172 = bitcast %"class.std::__cxx11::basic_string"* %5 to %union.anon**
  store %union.anon* %171, %union.anon** %172, align 8, !tbaa !19, !alias.scope !20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %170, i8 noundef signext 45)
  %173 = zext i32 %168 to i64
  %174 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8, !tbaa !12, !alias.scope !20
  %176 = getelementptr inbounds i8, i8* %175, i64 %173
  %177 = icmp ugt i32 %122, 99
  br i1 %177, label %178, label %200

178:                                              ; preds = %166
  %179 = add i32 %167, -1
  br label %180

180:                                              ; preds = %180, %178
  %181 = phi i32 [ %185, %180 ], [ %122, %178 ]
  %182 = phi i32 [ %198, %180 ], [ %179, %178 ]
  %183 = urem i32 %181, 100
  %184 = shl nuw nsw i32 %183, 1
  %185 = udiv i32 %181, 100
  %186 = or i32 %184, 1
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %187
  %189 = load i8, i8* %188, align 1, !tbaa !13
  %190 = zext i32 %182 to i64
  %191 = getelementptr inbounds i8, i8* %176, i64 %190
  store i8 %189, i8* %191, align 1, !tbaa !13
  %192 = zext i32 %184 to i64
  %193 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %192
  %194 = load i8, i8* %193, align 2, !tbaa !13
  %195 = add i32 %182, -1
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %176, i64 %196
  store i8 %194, i8* %197, align 1, !tbaa !13
  %198 = add i32 %182, -2
  %199 = icmp ugt i32 %181, 9999
  br i1 %199, label %180, label %200, !llvm.loop !23

200:                                              ; preds = %180, %166
  %201 = phi i32 [ %122, %166 ], [ %185, %180 ]
  %202 = icmp ugt i32 %201, 9
  br i1 %202, label %203, label %213

203:                                              ; preds = %200
  %204 = shl i32 %201, 1
  %205 = or i32 %204, 1
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %206
  %208 = load i8, i8* %207, align 1, !tbaa !13
  %209 = getelementptr inbounds i8, i8* %176, i64 1
  store i8 %208, i8* %209, align 1, !tbaa !13
  %210 = zext i32 %204 to i64
  %211 = getelementptr inbounds [201 x i8], [201 x i8]* @_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits, i64 0, i64 %210
  %212 = load i8, i8* %211, align 2, !tbaa !13
  br label %216

213:                                              ; preds = %200
  %214 = trunc i32 %201 to i8
  %215 = add i8 %214, 48
  br label %216

216:                                              ; preds = %203, %213
  %217 = phi i8 [ %215, %213 ], [ %212, %203 ]
  store i8 %217, i8* %176, align 1, !tbaa !13
  %218 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %219 = load i8*, i8** %174, align 8, !tbaa !12
  %220 = bitcast %union.anon* %171 to i8*
  %221 = icmp eq i8* %219, %220
  br i1 %221, label %222, label %238

222:                                              ; preds = %216
  %223 = icmp eq %"class.std::__cxx11::basic_string"* %5, %0
  br i1 %223, label %254, label %224, !prof !14

224:                                              ; preds = %222
  %225 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  %226 = load i64, i64* %225, align 8, !tbaa !5
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %224
  %229 = load i8*, i8** %218, align 8, !tbaa !12
  %230 = icmp eq i64 %226, 1
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = load i8, i8* %219, align 1, !tbaa !13
  store i8 %232, i8* %229, align 1, !tbaa !13
  br label %234

233:                                              ; preds = %228
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %229, i8* align 1 %219, i64 %226, i1 false) #9
  br label %234

234:                                              ; preds = %233, %231, %224
  %235 = load i64, i64* %225, align 8, !tbaa !5
  store i64 %235, i64* %7, align 8, !tbaa !5
  %236 = load i8*, i8** %218, align 8, !tbaa !12
  %237 = getelementptr inbounds i8, i8* %236, i64 %235
  store i8 0, i8* %237, align 1, !tbaa !13
  br label %254

238:                                              ; preds = %216
  %239 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %240 = bitcast %union.anon* %239 to i8*
  %241 = load i8*, i8** %218, align 8, !tbaa !12
  %242 = icmp eq i8* %241, %240
  %243 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %244 = load i64, i64* %243, align 8
  store i8* %219, i8** %218, align 8, !tbaa !12
  %245 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  %246 = load i64, i64* %245, align 8, !tbaa !5
  store i64 %246, i64* %7, align 8, !tbaa !5
  %247 = getelementptr inbounds %union.anon, %union.anon* %171, i64 0, i32 0
  %248 = load i64, i64* %247, align 8, !tbaa !13
  store i64 %248, i64* %243, align 8, !tbaa !13
  %249 = icmp eq i8* %241, null
  %250 = or i1 %242, %249
  br i1 %250, label %253, label %251

251:                                              ; preds = %238
  store i8* %241, i8** %174, align 8, !tbaa !12
  %252 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2, i32 0
  store i64 %244, i64* %252, align 8, !tbaa !13
  br label %254

253:                                              ; preds = %238
  store %union.anon* %171, %union.anon** %172, align 8, !tbaa !12
  br label %254

254:                                              ; preds = %222, %234, %251, %253
  %255 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  store i64 0, i64* %255, align 8, !tbaa !5
  %256 = load i8*, i8** %174, align 8, !tbaa !12
  store i8 0, i8* %256, align 1, !tbaa !13
  %257 = load i8*, i8** %174, align 8, !tbaa !12
  %258 = icmp eq i8* %257, %220
  br i1 %258, label %260, label %259

259:                                              ; preds = %254
  call void @_ZdlPv(i8* noundef %257) #9
  br label %260

260:                                              ; preds = %254, %259
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %147) #9
  %261 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %262 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  store %union.anon* %261, %union.anon** %262, align 8, !tbaa !19
  %263 = load i8*, i8** %218, align 8, !tbaa !12
  %264 = load i64, i64* %7, align 8, !tbaa !5
  %265 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %265) #9
  store i64 %264, i64* %2, align 8, !tbaa !24
  %266 = icmp ugt i64 %264, 15
  br i1 %266, label %267, label %272

267:                                              ; preds = %260
  %268 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i64* noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  %269 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  store i8* %268, i8** %269, align 8, !tbaa !12
  %270 = load i64, i64* %2, align 8, !tbaa !24
  %271 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  store i64 %270, i64* %271, align 8, !tbaa !13
  br label %272

272:                                              ; preds = %267, %260
  %273 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8, !tbaa !12
  switch i64 %264, label %277 [
    i64 1, label %275
    i64 0, label %278
  ]

275:                                              ; preds = %272
  %276 = load i8, i8* %263, align 1, !tbaa !13
  store i8 %276, i8* %274, align 1, !tbaa !13
  br label %278

277:                                              ; preds = %272
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %274, i8* align 1 %263, i64 %264, i1 false) #9
  br label %278

278:                                              ; preds = %272, %275, %277
  %279 = load i64, i64* %2, align 8, !tbaa !24
  %280 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  store i64 %279, i64* %280, align 8, !tbaa !5
  %281 = load i8*, i8** %273, align 8, !tbaa !12
  %282 = getelementptr inbounds i8, i8* %281, i64 %279
  store i8 0, i8* %282, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %265) #9
  %283 = invoke noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noundef nonnull %6)
          to label %284 unwind label %289, !range !25

284:                                              ; preds = %278
  %285 = load i8*, i8** %273, align 8, !tbaa !12
  %286 = bitcast %union.anon* %261 to i8*
  %287 = icmp eq i8* %285, %286
  br i1 %287, label %296, label %288

288:                                              ; preds = %284
  call void @_ZdlPv(i8* noundef %285) #9
  br label %296

289:                                              ; preds = %278
  %290 = landingpad { i8*, i32 }
          cleanup
  %291 = load i8*, i8** %273, align 8, !tbaa !12
  %292 = bitcast %union.anon* %261 to i8*
  %293 = icmp eq i8* %291, %292
  br i1 %293, label %295, label %294

294:                                              ; preds = %289
  call void @_ZdlPv(i8* noundef %291) #9
  br label %295

295:                                              ; preds = %289, %294
  resume { i8*, i32 } %290

296:                                              ; preds = %288, %284, %121
  %297 = phi i32 [ %122, %121 ], [ %283, %284 ], [ %283, %288 ]
  %298 = icmp eq i32 %297, 999
  %299 = zext i1 %298 to i32
  br label %300

300:                                              ; preds = %11, %296
  %301 = phi i32 [ %299, %296 ], [ 1, %11 ]
  ret i32 %301
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i8* noundef %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #9
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !19
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
  call void @_ZdlPv(i8* noundef %28) #9
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
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #9
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
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16, !17}
!19 = !{!7, !8, i64 0}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!22 = distinct !{!22, !"_ZNSt7__cxx119to_stringEi"}
!23 = distinct !{!23, !16, !17}
!24 = !{!11, !11, i64 0}
!25 = !{i32 0, i32 2}
