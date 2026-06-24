; ModuleID = 'benchmark/cpp_transcoder/CHECK_GIVEN_STRING_CAN_SPLIT_FOUR_DISTINCT_STRINGS/CHECK_GIVEN_STRING_CAN_SPLIT_FOUR_DISTINCT_STRINGS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/CHECK_GIVEN_STRING_CAN_SPLIT_FOUR_DISTINCT_STRINGS/CHECK_GIVEN_STRING_CAN_SPLIT_FOUR_DISTINCT_STRINGS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_CHECK_GIVEN_STRING_CAN_SPLIT_FOUR_DISTINCT_STRINGS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %11 = load i64, i64* %10, align 8, !tbaa !5
  %12 = icmp ugt i64 %11, 9
  br i1 %12, label %320, label %13

13:                                               ; preds = %1
  %14 = bitcast %"class.std::__cxx11::basic_string"* %6 to i8*
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %16 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %18 = bitcast i64* %5 to i8*
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  %23 = bitcast %"class.std::__cxx11::basic_string"* %7 to i8*
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2
  %25 = bitcast %"class.std::__cxx11::basic_string"* %7 to %union.anon**
  %26 = bitcast i64* %4 to i8*
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2, i32 0
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 1
  %31 = bitcast %"class.std::__cxx11::basic_string"* %8 to i8*
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2
  %33 = bitcast %"class.std::__cxx11::basic_string"* %8 to %union.anon**
  %34 = bitcast i64* %3 to i8*
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2, i32 0
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 1
  %39 = bitcast %"class.std::__cxx11::basic_string"* %9 to i8*
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 2
  %41 = bitcast %"class.std::__cxx11::basic_string"* %9 to %union.anon**
  %42 = bitcast i64* %2 to i8*
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 0, i32 0
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 2, i32 0
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 0, i32 0
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 1
  %47 = bitcast %union.anon* %40 to i8*
  %48 = bitcast %union.anon* %32 to i8*
  %49 = bitcast %union.anon* %24 to i8*
  %50 = bitcast %union.anon* %15 to i8*
  %51 = bitcast %"class.std::__cxx11::basic_string"* %6 to i8*
  %52 = bitcast %"class.std::__cxx11::basic_string"* %7 to i8*
  %53 = bitcast %"class.std::__cxx11::basic_string"* %8 to i8*
  %54 = bitcast %"class.std::__cxx11::basic_string"* %9 to i8*
  %55 = bitcast %union.anon* %40 to i8*
  %56 = bitcast %union.anon* %32 to i8*
  %57 = bitcast %union.anon* %24 to i8*
  %58 = bitcast %union.anon* %15 to i8*
  br label %59

59:                                               ; preds = %13, %311
  %60 = phi i64 [ 1, %13 ], [ %67, %311 ]
  %61 = phi i32 [ 2, %13 ], [ %315, %311 ]
  %62 = phi i32 [ 3, %13 ], [ %314, %311 ]
  %63 = load i64, i64* %10, align 8, !tbaa !5
  %64 = icmp ugt i64 %63, %60
  br i1 %64, label %65, label %316

65:                                               ; preds = %59
  %66 = sext i32 %61 to i64
  %67 = add nuw i64 %60, 1
  br label %68

68:                                               ; preds = %307, %65
  %69 = phi i64 [ %76, %307 ], [ %66, %65 ]
  %70 = phi i32 [ %310, %307 ], [ %62, %65 ]
  %71 = sext i32 %70 to i64
  %72 = and i64 %69, 4294967295
  %73 = load i64, i64* %10, align 8, !tbaa !5
  %74 = icmp ugt i64 %73, %72
  br i1 %74, label %75, label %311

75:                                               ; preds = %68
  %76 = add i64 %69, 1
  %77 = and i64 %76, 4294967295
  %78 = load i64, i64* %10, align 8, !tbaa !5
  %79 = icmp ugt i64 %78, %77
  br i1 %79, label %80, label %307

80:                                               ; preds = %75
  %81 = sub nsw i64 %69, %60
  br label %82

82:                                               ; preds = %80, %286
  %83 = phi i64 [ %71, %80 ], [ %287, %286 ]
  %84 = phi i1 [ %79, %80 ], [ %290, %286 ]
  %85 = phi i64 [ %78, %80 ], [ %289, %286 ]
  %86 = phi i64 [ %77, %80 ], [ %288, %286 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  store %union.anon* %15, %union.anon** %16, align 8, !tbaa !15, !alias.scope !12
  %87 = load i8*, i8** %17, align 8, !tbaa !16, !noalias !12
  %88 = icmp ugt i64 %85, %60
  %89 = select i1 %88, i64 %60, i64 %85
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #10, !noalias !12
  store i64 %89, i64* %5, align 8, !tbaa !17, !noalias !12
  %90 = icmp ugt i64 %89, 15
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i64* noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0)
  store i8* %92, i8** %19, align 8, !tbaa !16, !alias.scope !12
  %93 = load i64, i64* %5, align 8, !tbaa !17, !noalias !12
  store i64 %93, i64* %20, align 8, !tbaa !18, !alias.scope !12
  br label %94

94:                                               ; preds = %91, %82
  %95 = load i8*, i8** %21, align 8, !tbaa !16, !alias.scope !12
  switch i64 %89, label %98 [
    i64 1, label %96
    i64 0, label %99
  ]

96:                                               ; preds = %94
  %97 = load i8, i8* %87, align 1, !tbaa !18
  store i8 %97, i8* %95, align 1, !tbaa !18
  br label %99

98:                                               ; preds = %94
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %95, i8* align 1 %87, i64 %89, i1 false) #10
  br label %99

99:                                               ; preds = %94, %96, %98
  %100 = load i64, i64* %5, align 8, !tbaa !17, !noalias !12
  store i64 %100, i64* %22, align 8, !tbaa !5, !alias.scope !12
  %101 = load i8*, i8** %21, align 8, !tbaa !16, !alias.scope !12
  %102 = getelementptr inbounds i8, i8* %101, i64 %100
  store i8 0, i8* %102, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #10, !noalias !12
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %23) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %103 = load i64, i64* %10, align 8, !tbaa !5, !noalias !19
  %104 = icmp ult i64 %103, %60
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = and i64 %60, 4294967295
  invoke void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 noundef %106, i64 noundef %103) #11
          to label %107 unwind label %236

107:                                              ; preds = %105
  unreachable

108:                                              ; preds = %99
  store %union.anon* %24, %union.anon** %25, align 8, !tbaa !15, !alias.scope !19
  %109 = load i8*, i8** %17, align 8, !tbaa !16, !noalias !19
  %110 = getelementptr inbounds i8, i8* %109, i64 %60
  %111 = sub i64 %103, %60
  %112 = icmp ugt i64 %111, %81
  %113 = select i1 %112, i64 %81, i64 %111
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #10, !noalias !19
  store i64 %113, i64* %4, align 8, !tbaa !17, !noalias !19
  %114 = icmp ugt i64 %113, 15
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7, i64* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %117 unwind label %234

117:                                              ; preds = %115
  store i8* %116, i8** %27, align 8, !tbaa !16, !alias.scope !19
  %118 = load i64, i64* %4, align 8, !tbaa !17, !noalias !19
  store i64 %118, i64* %28, align 8, !tbaa !18, !alias.scope !19
  br label %119

119:                                              ; preds = %117, %108
  %120 = load i8*, i8** %29, align 8, !tbaa !16, !alias.scope !19
  switch i64 %113, label %123 [
    i64 1, label %121
    i64 0, label %124
  ]

121:                                              ; preds = %119
  %122 = load i8, i8* %110, align 1, !tbaa !18
  store i8 %122, i8* %120, align 1, !tbaa !18
  br label %124

123:                                              ; preds = %119
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %120, i8* nonnull align 1 %110, i64 %113, i1 false) #10
  br label %124

124:                                              ; preds = %119, %121, %123
  %125 = load i64, i64* %4, align 8, !tbaa !17, !noalias !19
  store i64 %125, i64* %30, align 8, !tbaa !5, !alias.scope !19
  %126 = load i8*, i8** %29, align 8, !tbaa !16, !alias.scope !19
  %127 = getelementptr inbounds i8, i8* %126, i64 %125
  store i8 0, i8* %127, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #10, !noalias !19
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %31) #10
  %128 = sub nsw i64 %83, %69
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %129 = load i64, i64* %10, align 8, !tbaa !5, !noalias !22
  %130 = icmp ult i64 %129, %72
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = and i64 %69, 4294967295
  invoke void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 noundef %132, i64 noundef %129) #11
          to label %133 unwind label %240

133:                                              ; preds = %131
  unreachable

134:                                              ; preds = %124
  store %union.anon* %32, %union.anon** %33, align 8, !tbaa !15, !alias.scope !22
  %135 = load i8*, i8** %17, align 8, !tbaa !16, !noalias !22
  %136 = getelementptr inbounds i8, i8* %135, i64 %72
  %137 = sub i64 %129, %72
  %138 = icmp ugt i64 %137, %128
  %139 = select i1 %138, i64 %128, i64 %137
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #10, !noalias !22
  store i64 %139, i64* %3, align 8, !tbaa !17, !noalias !22
  %140 = icmp ugt i64 %139, 15
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, i64* noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %143 unwind label %238

143:                                              ; preds = %141
  store i8* %142, i8** %35, align 8, !tbaa !16, !alias.scope !22
  %144 = load i64, i64* %3, align 8, !tbaa !17, !noalias !22
  store i64 %144, i64* %36, align 8, !tbaa !18, !alias.scope !22
  br label %145

145:                                              ; preds = %143, %134
  %146 = load i8*, i8** %37, align 8, !tbaa !16, !alias.scope !22
  switch i64 %139, label %149 [
    i64 1, label %147
    i64 0, label %150
  ]

147:                                              ; preds = %145
  %148 = load i8, i8* %136, align 1, !tbaa !18
  store i8 %148, i8* %146, align 1, !tbaa !18
  br label %150

149:                                              ; preds = %145
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %146, i8* align 1 %136, i64 %139, i1 false) #10
  br label %150

150:                                              ; preds = %145, %147, %149
  %151 = load i64, i64* %3, align 8, !tbaa !17, !noalias !22
  store i64 %151, i64* %38, align 8, !tbaa !5, !alias.scope !22
  %152 = load i8*, i8** %37, align 8, !tbaa !16, !alias.scope !22
  %153 = getelementptr inbounds i8, i8* %152, i64 %151
  store i8 0, i8* %153, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #10, !noalias !22
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %39) #10
  %154 = load i64, i64* %10, align 8, !tbaa !5
  %155 = sub i64 %154, %86
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %156 = icmp ult i64 %154, %86
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = and i64 %83, 4294967295
  invoke void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 noundef %158, i64 noundef %154) #11
          to label %159 unwind label %244

159:                                              ; preds = %157
  unreachable

160:                                              ; preds = %150
  store %union.anon* %40, %union.anon** %41, align 8, !tbaa !15, !alias.scope !25
  %161 = load i8*, i8** %17, align 8, !tbaa !16, !noalias !25
  %162 = getelementptr inbounds i8, i8* %161, i64 %86
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42) #10, !noalias !25
  store i64 %155, i64* %2, align 8, !tbaa !17, !noalias !25
  %163 = icmp ugt i64 %155, 15
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9, i64* noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
          to label %166 unwind label %242

166:                                              ; preds = %164
  store i8* %165, i8** %43, align 8, !tbaa !16, !alias.scope !25
  %167 = load i64, i64* %2, align 8, !tbaa !17, !noalias !25
  store i64 %167, i64* %44, align 8, !tbaa !18, !alias.scope !25
  br label %168

168:                                              ; preds = %166, %160
  %169 = load i8*, i8** %45, align 8, !tbaa !16, !alias.scope !25
  switch i64 %155, label %172 [
    i64 1, label %170
    i64 0, label %173
  ]

170:                                              ; preds = %168
  %171 = load i8, i8* %162, align 1, !tbaa !18
  store i8 %171, i8* %169, align 1, !tbaa !18
  br label %173

172:                                              ; preds = %168
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %169, i8* align 1 %162, i64 %155, i1 false) #10
  br label %173

173:                                              ; preds = %168, %170, %172
  %174 = load i64, i64* %2, align 8, !tbaa !17, !noalias !25
  store i64 %174, i64* %46, align 8, !tbaa !5, !alias.scope !25
  %175 = load i8*, i8** %45, align 8, !tbaa !16, !alias.scope !25
  %176 = getelementptr inbounds i8, i8* %175, i64 %174
  store i8 0, i8* %176, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #10, !noalias !25
  %177 = load i64, i64* %22, align 8, !tbaa !5
  %178 = load i64, i64* %30, align 8, !tbaa !5
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %173
  %181 = icmp eq i64 %177, 0
  br i1 %181, label %270, label %182

182:                                              ; preds = %180
  %183 = load i8*, i8** %29, align 8, !tbaa !16
  %184 = load i8*, i8** %21, align 8, !tbaa !16
  %185 = call i32 @bcmp(i8* %184, i8* %183, i64 %177) #10
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %270, label %187

187:                                              ; preds = %173, %182
  %188 = load i64, i64* %38, align 8, !tbaa !5
  %189 = icmp eq i64 %177, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %187
  %191 = icmp eq i64 %177, 0
  br i1 %191, label %270, label %192

192:                                              ; preds = %190
  %193 = load i8*, i8** %37, align 8, !tbaa !16
  %194 = load i8*, i8** %21, align 8, !tbaa !16
  %195 = call i32 @bcmp(i8* %194, i8* %193, i64 %177) #10
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %270, label %197

197:                                              ; preds = %187, %192
  %198 = load i64, i64* %46, align 8, !tbaa !5
  %199 = icmp eq i64 %177, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %197
  %201 = icmp eq i64 %177, 0
  br i1 %201, label %270, label %202

202:                                              ; preds = %200
  %203 = load i8*, i8** %45, align 8, !tbaa !16
  %204 = load i8*, i8** %21, align 8, !tbaa !16
  %205 = call i32 @bcmp(i8* %204, i8* %203, i64 %177) #10
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %270, label %207

207:                                              ; preds = %197, %202
  %208 = icmp eq i64 %178, %188
  br i1 %208, label %209, label %216

209:                                              ; preds = %207
  %210 = icmp eq i64 %178, 0
  br i1 %210, label %270, label %211

211:                                              ; preds = %209
  %212 = load i8*, i8** %37, align 8, !tbaa !16
  %213 = load i8*, i8** %29, align 8, !tbaa !16
  %214 = call i32 @bcmp(i8* %213, i8* %212, i64 %178) #10
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %270, label %216

216:                                              ; preds = %207, %211
  %217 = icmp eq i64 %178, %198
  br i1 %217, label %218, label %225

218:                                              ; preds = %216
  %219 = icmp eq i64 %178, 0
  br i1 %219, label %270, label %220

220:                                              ; preds = %218
  %221 = load i8*, i8** %45, align 8, !tbaa !16
  %222 = load i8*, i8** %29, align 8, !tbaa !16
  %223 = call i32 @bcmp(i8* %222, i8* %221, i64 %178) #10
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %270, label %225

225:                                              ; preds = %216, %220
  %226 = icmp eq i64 %188, %198
  br i1 %226, label %227, label %253

227:                                              ; preds = %225
  %228 = icmp eq i64 %188, 0
  br i1 %228, label %270, label %229

229:                                              ; preds = %227
  %230 = load i8*, i8** %45, align 8, !tbaa !16
  %231 = load i8*, i8** %37, align 8, !tbaa !16
  %232 = call i32 @bcmp(i8* %231, i8* %230, i64 %188) #10
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %270, label %253

234:                                              ; preds = %115
  %235 = landingpad { i8*, i32 }
          cleanup
  br label %298

236:                                              ; preds = %105
  %237 = landingpad { i8*, i32 }
          cleanup
  br label %298

238:                                              ; preds = %141
  %239 = landingpad { i8*, i32 }
          cleanup
  br label %291

240:                                              ; preds = %131
  %241 = landingpad { i8*, i32 }
          cleanup
  br label %291

242:                                              ; preds = %164
  %243 = landingpad { i8*, i32 }
          cleanup
  br label %246

244:                                              ; preds = %157
  %245 = landingpad { i8*, i32 }
          cleanup
  br label %246

246:                                              ; preds = %244, %242
  %247 = phi { i8*, i32 } [ %243, %242 ], [ %245, %244 ]
  %248 = bitcast %"class.std::__cxx11::basic_string"* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %248) #10
  %249 = load i8*, i8** %37, align 8, !tbaa !16
  %250 = bitcast %union.anon* %32 to i8*
  %251 = icmp eq i8* %249, %250
  br i1 %251, label %291, label %252

252:                                              ; preds = %246
  call void @_ZdlPv(i8* noundef %249) #10
  br label %291

253:                                              ; preds = %225, %229
  %254 = load i8*, i8** %45, align 8, !tbaa !16
  %255 = icmp eq i8* %254, %55
  br i1 %255, label %257, label %256

256:                                              ; preds = %253
  call void @_ZdlPv(i8* noundef %254) #10
  br label %257

257:                                              ; preds = %253, %256
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %54) #10
  %258 = load i8*, i8** %37, align 8, !tbaa !16
  %259 = icmp eq i8* %258, %56
  br i1 %259, label %261, label %260

260:                                              ; preds = %257
  call void @_ZdlPv(i8* noundef %258) #10
  br label %261

261:                                              ; preds = %257, %260
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %53) #10
  %262 = load i8*, i8** %29, align 8, !tbaa !16
  %263 = icmp eq i8* %262, %57
  br i1 %263, label %265, label %264

264:                                              ; preds = %261
  call void @_ZdlPv(i8* noundef %262) #10
  br label %265

265:                                              ; preds = %261, %264
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %52) #10
  %266 = load i8*, i8** %21, align 8, !tbaa !16
  %267 = icmp eq i8* %266, %58
  br i1 %267, label %269, label %268

268:                                              ; preds = %265
  call void @_ZdlPv(i8* noundef %266) #10
  br label %269

269:                                              ; preds = %265, %268
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %51) #10
  br label %307

270:                                              ; preds = %227, %218, %209, %200, %190, %180, %182, %192, %202, %211, %220, %229
  %271 = load i8*, i8** %45, align 8, !tbaa !16
  %272 = icmp eq i8* %271, %47
  br i1 %272, label %274, label %273

273:                                              ; preds = %270
  call void @_ZdlPv(i8* noundef %271) #10
  br label %274

274:                                              ; preds = %270, %273
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %39) #10
  %275 = load i8*, i8** %37, align 8, !tbaa !16
  %276 = icmp eq i8* %275, %48
  br i1 %276, label %278, label %277

277:                                              ; preds = %274
  call void @_ZdlPv(i8* noundef %275) #10
  br label %278

278:                                              ; preds = %274, %277
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %31) #10
  %279 = load i8*, i8** %29, align 8, !tbaa !16
  %280 = icmp eq i8* %279, %49
  br i1 %280, label %282, label %281

281:                                              ; preds = %278
  call void @_ZdlPv(i8* noundef %279) #10
  br label %282

282:                                              ; preds = %278, %281
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23) #10
  %283 = load i8*, i8** %21, align 8, !tbaa !16
  %284 = icmp eq i8* %283, %50
  br i1 %284, label %286, label %285

285:                                              ; preds = %282
  call void @_ZdlPv(i8* noundef %283) #10
  br label %286

286:                                              ; preds = %282, %285
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #10
  %287 = add i64 %83, 1
  %288 = and i64 %287, 4294967295
  %289 = load i64, i64* %10, align 8, !tbaa !5
  %290 = icmp ugt i64 %289, %288
  br i1 %290, label %82, label %307, !llvm.loop !28

291:                                              ; preds = %238, %240, %252, %246
  %292 = phi { i8*, i32 } [ %247, %246 ], [ %247, %252 ], [ %239, %238 ], [ %241, %240 ]
  %293 = bitcast %"class.std::__cxx11::basic_string"* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %293) #10
  %294 = load i8*, i8** %29, align 8, !tbaa !16
  %295 = bitcast %union.anon* %24 to i8*
  %296 = icmp eq i8* %294, %295
  br i1 %296, label %298, label %297

297:                                              ; preds = %291
  call void @_ZdlPv(i8* noundef %294) #10
  br label %298

298:                                              ; preds = %234, %236, %297, %291
  %299 = phi { i8*, i32 } [ %292, %291 ], [ %292, %297 ], [ %235, %234 ], [ %237, %236 ]
  %300 = bitcast %"class.std::__cxx11::basic_string"* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %300) #10
  %301 = load i8*, i8** %21, align 8, !tbaa !16
  %302 = bitcast %union.anon* %15 to i8*
  %303 = icmp eq i8* %301, %302
  br i1 %303, label %305, label %304

304:                                              ; preds = %298
  call void @_ZdlPv(i8* noundef %301) #10
  br label %305

305:                                              ; preds = %298, %304
  %306 = bitcast %"class.std::__cxx11::basic_string"* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %306) #10
  resume { i8*, i32 } %299

307:                                              ; preds = %286, %75, %269
  %308 = phi i1 [ %84, %269 ], [ %79, %75 ], [ %290, %286 ]
  %309 = phi i32 [ 1, %269 ], [ 8, %75 ], [ 8, %286 ]
  %310 = add i32 %70, 1
  br i1 %308, label %311, label %68, !llvm.loop !31

311:                                              ; preds = %68, %307
  %312 = phi i32 [ %309, %307 ], [ 5, %68 ]
  %313 = icmp eq i32 %312, 5
  %314 = add i32 %62, 1
  %315 = add nuw i32 %61, 1
  br i1 %313, label %59, label %316, !llvm.loop !32

316:                                              ; preds = %59, %311
  %317 = phi i32 [ %312, %311 ], [ 2, %59 ]
  %318 = icmp ne i32 %317, 2
  %319 = zext i1 %318 to i32
  br label %320

320:                                              ; preds = %316, %1
  %321 = phi i32 [ 1, %1 ], [ %319, %316 ]
  ret i32 %321
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef, ...) local_unnamed_addr #6

declare noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64* noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CHECK_GIVEN_STRING_CAN_SPLIT_FOUR_DISTINCT_STRINGS_processed.cpp() #3 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #10
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #8

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

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
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!14 = distinct !{!14, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!15 = !{!7, !8, i64 0}
!16 = !{!6, !8, i64 0}
!17 = !{!11, !11, i64 0}
!18 = !{!9, !9, i64 0}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!21 = distinct !{!21, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!24 = distinct !{!24, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!27 = distinct !{!27, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!28 = distinct !{!28, !29, !30}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = distinct !{!31, !29, !30}
!32 = distinct !{!32, !29, !30}
