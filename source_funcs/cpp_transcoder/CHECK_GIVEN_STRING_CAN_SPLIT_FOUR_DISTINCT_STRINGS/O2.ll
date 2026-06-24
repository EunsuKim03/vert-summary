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
  br i1 %12, label %301, label %13

13:                                               ; preds = %1
  %14 = icmp ugt i64 %11, 1
  br i1 %14, label %15, label %301

15:                                               ; preds = %13
  %16 = bitcast %"class.std::__cxx11::basic_string"* %6 to i8*
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %18 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  %19 = bitcast %union.anon* %17 to i8*
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %21 = bitcast i64* %5 to i8*
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  %25 = bitcast %"class.std::__cxx11::basic_string"* %7 to i8*
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2
  %27 = bitcast %"class.std::__cxx11::basic_string"* %7 to %union.anon**
  %28 = bitcast %union.anon* %26 to i8*
  %29 = bitcast i64* %4 to i8*
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2, i32 0
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 1
  %33 = bitcast %"class.std::__cxx11::basic_string"* %8 to i8*
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2
  %35 = bitcast %"class.std::__cxx11::basic_string"* %8 to %union.anon**
  %36 = bitcast %union.anon* %34 to i8*
  %37 = bitcast i64* %3 to i8*
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2, i32 0
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 1
  %41 = bitcast %"class.std::__cxx11::basic_string"* %9 to i8*
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 2
  %43 = bitcast %"class.std::__cxx11::basic_string"* %9 to %union.anon**
  %44 = bitcast %union.anon* %42 to i8*
  %45 = bitcast i64* %2 to i8*
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 0, i32 0
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 2, i32 0
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 1
  br label %54

49:                                               ; preds = %64, %54
  %50 = phi i64 [ %55, %54 ], [ %65, %64 ]
  %51 = icmp ugt i64 %50, %59
  %52 = add i32 %58, 1
  %53 = add nuw i32 %57, 1
  br i1 %51, label %54, label %301

54:                                               ; preds = %15, %49
  %55 = phi i64 [ %11, %15 ], [ %50, %49 ]
  %56 = phi i64 [ 1, %15 ], [ %59, %49 ]
  %57 = phi i32 [ 2, %15 ], [ %53, %49 ]
  %58 = phi i32 [ 3, %15 ], [ %52, %49 ]
  %59 = add nuw i64 %56, 1
  %60 = and i64 %59, 4294967295
  %61 = icmp ugt i64 %55, %60
  br i1 %61, label %62, label %49

62:                                               ; preds = %54
  %63 = sext i32 %57 to i64
  br label %69

64:                                               ; preds = %285, %69
  %65 = phi i64 [ %70, %69 ], [ %288, %285 ]
  %66 = phi i64 [ %71, %69 ], [ %288, %285 ]
  %67 = icmp ugt i64 %66, %76
  %68 = add i32 %73, 1
  br i1 %67, label %69, label %49

69:                                               ; preds = %62, %64
  %70 = phi i64 [ %55, %62 ], [ %65, %64 ]
  %71 = phi i64 [ %55, %62 ], [ %66, %64 ]
  %72 = phi i64 [ %63, %62 ], [ %75, %64 ]
  %73 = phi i32 [ %58, %62 ], [ %68, %64 ]
  %74 = phi i64 [ %60, %62 ], [ %76, %64 ]
  %75 = add i64 %72, 1
  %76 = and i64 %75, 4294967295
  %77 = icmp ugt i64 %71, %76
  br i1 %77, label %78, label %64

78:                                               ; preds = %69
  %79 = sext i32 %73 to i64
  %80 = sub nsw i64 %72, %56
  br label %81

81:                                               ; preds = %78, %285
  %82 = phi i64 [ %79, %78 ], [ %286, %285 ]
  %83 = phi i64 [ %71, %78 ], [ %288, %285 ]
  %84 = phi i64 [ %76, %78 ], [ %287, %285 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  store %union.anon* %17, %union.anon** %18, align 8, !tbaa !15, !alias.scope !12
  %85 = load i8*, i8** %20, align 8, !tbaa !16, !noalias !12
  %86 = icmp ugt i64 %83, %56
  %87 = select i1 %86, i64 %56, i64 %83
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #10, !noalias !12
  store i64 %87, i64* %5, align 8, !tbaa !17, !noalias !12
  %88 = icmp ugt i64 %87, 15
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i64* noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0)
  store i8* %90, i8** %22, align 8, !tbaa !16, !alias.scope !12
  %91 = load i64, i64* %5, align 8, !tbaa !17, !noalias !12
  store i64 %91, i64* %23, align 8, !tbaa !18, !alias.scope !12
  br label %92

92:                                               ; preds = %89, %81
  %93 = phi i8* [ %90, %89 ], [ %19, %81 ]
  %94 = trunc i64 %87 to i32
  switch i32 %94, label %97 [
    i32 1, label %95
    i32 0, label %98
  ]

95:                                               ; preds = %92
  %96 = load i8, i8* %85, align 1, !tbaa !18
  store i8 %96, i8* %93, align 1, !tbaa !18
  br label %98

97:                                               ; preds = %92
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %93, i8* align 1 %85, i64 %87, i1 false) #10
  br label %98

98:                                               ; preds = %92, %95, %97
  %99 = load i64, i64* %5, align 8, !tbaa !17, !noalias !12
  store i64 %99, i64* %24, align 8, !tbaa !5, !alias.scope !12
  %100 = load i8*, i8** %22, align 8, !tbaa !16, !alias.scope !12
  %101 = getelementptr inbounds i8, i8* %100, i64 %99
  store i8 0, i8* %101, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #10, !noalias !12
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %25) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %102 = load i64, i64* %10, align 8, !tbaa !5, !noalias !19
  %103 = icmp ult i64 %102, %56
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = and i64 %56, 4294967295
  invoke void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 noundef %105, i64 noundef %102) #11
          to label %106 unwind label %237

106:                                              ; preds = %104
  unreachable

107:                                              ; preds = %98
  store %union.anon* %26, %union.anon** %27, align 8, !tbaa !15, !alias.scope !19
  %108 = load i8*, i8** %20, align 8, !tbaa !16, !noalias !19
  %109 = getelementptr inbounds i8, i8* %108, i64 %56
  %110 = sub i64 %102, %56
  %111 = icmp ugt i64 %110, %80
  %112 = select i1 %111, i64 %80, i64 %110
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #10, !noalias !19
  store i64 %112, i64* %4, align 8, !tbaa !17, !noalias !19
  %113 = icmp ugt i64 %112, 15
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7, i64* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %116 unwind label %235

116:                                              ; preds = %114
  store i8* %115, i8** %30, align 8, !tbaa !16, !alias.scope !19
  %117 = load i64, i64* %4, align 8, !tbaa !17, !noalias !19
  store i64 %117, i64* %31, align 8, !tbaa !18, !alias.scope !19
  br label %118

118:                                              ; preds = %116, %107
  %119 = phi i8* [ %115, %116 ], [ %28, %107 ]
  switch i64 %112, label %122 [
    i64 1, label %120
    i64 0, label %123
  ]

120:                                              ; preds = %118
  %121 = load i8, i8* %109, align 1, !tbaa !18
  store i8 %121, i8* %119, align 1, !tbaa !18
  br label %123

122:                                              ; preds = %118
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %119, i8* nonnull align 1 %109, i64 %112, i1 false) #10
  br label %123

123:                                              ; preds = %122, %120, %118
  %124 = load i64, i64* %4, align 8, !tbaa !17, !noalias !19
  store i64 %124, i64* %32, align 8, !tbaa !5, !alias.scope !19
  %125 = load i8*, i8** %30, align 8, !tbaa !16, !alias.scope !19
  %126 = getelementptr inbounds i8, i8* %125, i64 %124
  store i8 0, i8* %126, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #10, !noalias !19
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %33) #10
  %127 = sub nsw i64 %82, %72
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %128 = load i64, i64* %10, align 8, !tbaa !5, !noalias !22
  %129 = icmp ult i64 %128, %74
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = and i64 %72, 4294967295
  invoke void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 noundef %131, i64 noundef %128) #11
          to label %132 unwind label %241

132:                                              ; preds = %130
  unreachable

133:                                              ; preds = %123
  store %union.anon* %34, %union.anon** %35, align 8, !tbaa !15, !alias.scope !22
  %134 = load i8*, i8** %20, align 8, !tbaa !16, !noalias !22
  %135 = getelementptr inbounds i8, i8* %134, i64 %74
  %136 = sub i64 %128, %74
  %137 = icmp ugt i64 %136, %127
  %138 = select i1 %137, i64 %127, i64 %136
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %37) #10, !noalias !22
  store i64 %138, i64* %3, align 8, !tbaa !17, !noalias !22
  %139 = icmp ugt i64 %138, 15
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, i64* noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %142 unwind label %239

142:                                              ; preds = %140
  store i8* %141, i8** %38, align 8, !tbaa !16, !alias.scope !22
  %143 = load i64, i64* %3, align 8, !tbaa !17, !noalias !22
  store i64 %143, i64* %39, align 8, !tbaa !18, !alias.scope !22
  br label %144

144:                                              ; preds = %142, %133
  %145 = phi i8* [ %141, %142 ], [ %36, %133 ]
  switch i64 %138, label %148 [
    i64 1, label %146
    i64 0, label %149
  ]

146:                                              ; preds = %144
  %147 = load i8, i8* %135, align 1, !tbaa !18
  store i8 %147, i8* %145, align 1, !tbaa !18
  br label %149

148:                                              ; preds = %144
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %145, i8* align 1 %135, i64 %138, i1 false) #10
  br label %149

149:                                              ; preds = %148, %146, %144
  %150 = load i64, i64* %3, align 8, !tbaa !17, !noalias !22
  store i64 %150, i64* %40, align 8, !tbaa !5, !alias.scope !22
  %151 = load i8*, i8** %38, align 8, !tbaa !16, !alias.scope !22
  %152 = getelementptr inbounds i8, i8* %151, i64 %150
  store i8 0, i8* %152, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %37) #10, !noalias !22
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %41) #10
  %153 = load i64, i64* %10, align 8, !tbaa !5
  %154 = sub i64 %153, %84
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %155 = icmp ult i64 %153, %84
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = and i64 %82, 4294967295
  invoke void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 noundef %157, i64 noundef %153) #11
          to label %158 unwind label %245

158:                                              ; preds = %156
  unreachable

159:                                              ; preds = %149
  store %union.anon* %42, %union.anon** %43, align 8, !tbaa !15, !alias.scope !25
  %160 = load i8*, i8** %20, align 8, !tbaa !16, !noalias !25
  %161 = getelementptr inbounds i8, i8* %160, i64 %84
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #10, !noalias !25
  store i64 %154, i64* %2, align 8, !tbaa !17, !noalias !25
  %162 = icmp ugt i64 %154, 15
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9, i64* noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
          to label %165 unwind label %243

165:                                              ; preds = %163
  store i8* %164, i8** %46, align 8, !tbaa !16, !alias.scope !25
  %166 = load i64, i64* %2, align 8, !tbaa !17, !noalias !25
  store i64 %166, i64* %47, align 8, !tbaa !18, !alias.scope !25
  br label %167

167:                                              ; preds = %165, %159
  %168 = phi i8* [ %164, %165 ], [ %44, %159 ]
  switch i64 %154, label %171 [
    i64 1, label %169
    i64 0, label %172
  ]

169:                                              ; preds = %167
  %170 = load i8, i8* %161, align 1, !tbaa !18
  store i8 %170, i8* %168, align 1, !tbaa !18
  br label %172

171:                                              ; preds = %167
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %168, i8* align 1 %161, i64 %154, i1 false) #10
  br label %172

172:                                              ; preds = %171, %169, %167
  %173 = load i64, i64* %2, align 8, !tbaa !17, !noalias !25
  store i64 %173, i64* %48, align 8, !tbaa !5, !alias.scope !25
  %174 = load i8*, i8** %46, align 8, !tbaa !16, !alias.scope !25
  %175 = getelementptr inbounds i8, i8* %174, i64 %173
  store i8 0, i8* %175, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #10, !noalias !25
  %176 = load i64, i64* %24, align 8, !tbaa !5
  %177 = load i64, i64* %32, align 8, !tbaa !5
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %172
  %180 = icmp eq i64 %176, 0
  br i1 %180, label %269, label %181

181:                                              ; preds = %179
  %182 = load i8*, i8** %30, align 8, !tbaa !16
  %183 = load i8*, i8** %22, align 8, !tbaa !16
  %184 = call i32 @bcmp(i8* %183, i8* %182, i64 %176) #10
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %269, label %186

186:                                              ; preds = %172, %181
  %187 = load i64, i64* %40, align 8, !tbaa !5
  %188 = icmp eq i64 %176, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %186
  %190 = icmp eq i64 %176, 0
  br i1 %190, label %269, label %191

191:                                              ; preds = %189
  %192 = load i8*, i8** %38, align 8, !tbaa !16
  %193 = load i8*, i8** %22, align 8, !tbaa !16
  %194 = call i32 @bcmp(i8* %193, i8* %192, i64 %176) #10
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %269, label %196

196:                                              ; preds = %186, %191
  %197 = load i64, i64* %48, align 8, !tbaa !5
  %198 = icmp eq i64 %176, %197
  br i1 %198, label %199, label %206

199:                                              ; preds = %196
  %200 = icmp eq i64 %176, 0
  br i1 %200, label %269, label %201

201:                                              ; preds = %199
  %202 = load i8*, i8** %46, align 8, !tbaa !16
  %203 = load i8*, i8** %22, align 8, !tbaa !16
  %204 = call i32 @bcmp(i8* %203, i8* %202, i64 %176) #10
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %269, label %206

206:                                              ; preds = %196, %201
  %207 = icmp eq i64 %177, %187
  br i1 %207, label %208, label %215

208:                                              ; preds = %206
  %209 = icmp eq i64 %177, 0
  br i1 %209, label %269, label %210

210:                                              ; preds = %208
  %211 = load i8*, i8** %38, align 8, !tbaa !16
  %212 = load i8*, i8** %30, align 8, !tbaa !16
  %213 = call i32 @bcmp(i8* %212, i8* %211, i64 %177) #10
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %269, label %215

215:                                              ; preds = %206, %210
  %216 = icmp eq i64 %177, %197
  br i1 %216, label %217, label %224

217:                                              ; preds = %215
  %218 = icmp eq i64 %177, 0
  br i1 %218, label %269, label %219

219:                                              ; preds = %217
  %220 = load i8*, i8** %46, align 8, !tbaa !16
  %221 = load i8*, i8** %30, align 8, !tbaa !16
  %222 = call i32 @bcmp(i8* %221, i8* %220, i64 %177) #10
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %269, label %224

224:                                              ; preds = %215, %219
  %225 = icmp eq i64 %187, %197
  br i1 %225, label %228, label %226

226:                                              ; preds = %224
  %227 = load i8*, i8** %46, align 8, !tbaa !16
  br label %252

228:                                              ; preds = %224
  %229 = icmp eq i64 %187, 0
  br i1 %229, label %269, label %230

230:                                              ; preds = %228
  %231 = load i8*, i8** %46, align 8, !tbaa !16
  %232 = load i8*, i8** %38, align 8, !tbaa !16
  %233 = call i32 @bcmp(i8* %232, i8* %231, i64 %187) #10
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %269, label %252

235:                                              ; preds = %114
  %236 = landingpad { i8*, i32 }
          cleanup
  br label %295

237:                                              ; preds = %104
  %238 = landingpad { i8*, i32 }
          cleanup
  br label %295

239:                                              ; preds = %140
  %240 = landingpad { i8*, i32 }
          cleanup
  br label %290

241:                                              ; preds = %130
  %242 = landingpad { i8*, i32 }
          cleanup
  br label %290

243:                                              ; preds = %163
  %244 = landingpad { i8*, i32 }
          cleanup
  br label %247

245:                                              ; preds = %156
  %246 = landingpad { i8*, i32 }
          cleanup
  br label %247

247:                                              ; preds = %245, %243
  %248 = phi { i8*, i32 } [ %244, %243 ], [ %246, %245 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %41) #10
  %249 = load i8*, i8** %38, align 8, !tbaa !16
  %250 = icmp eq i8* %249, %36
  br i1 %250, label %290, label %251

251:                                              ; preds = %247
  call void @_ZdlPv(i8* noundef %249) #10
  br label %290

252:                                              ; preds = %230, %226
  %253 = phi i8* [ %227, %226 ], [ %231, %230 ]
  %254 = icmp eq i8* %253, %44
  br i1 %254, label %256, label %255

255:                                              ; preds = %252
  call void @_ZdlPv(i8* noundef %253) #10
  br label %256

256:                                              ; preds = %252, %255
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %41) #10
  %257 = load i8*, i8** %38, align 8, !tbaa !16
  %258 = icmp eq i8* %257, %36
  br i1 %258, label %260, label %259

259:                                              ; preds = %256
  call void @_ZdlPv(i8* noundef %257) #10
  br label %260

260:                                              ; preds = %256, %259
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #10
  %261 = load i8*, i8** %30, align 8, !tbaa !16
  %262 = icmp eq i8* %261, %28
  br i1 %262, label %264, label %263

263:                                              ; preds = %260
  call void @_ZdlPv(i8* noundef %261) #10
  br label %264

264:                                              ; preds = %260, %263
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %25) #10
  %265 = load i8*, i8** %22, align 8, !tbaa !16
  %266 = icmp eq i8* %265, %19
  br i1 %266, label %268, label %267

267:                                              ; preds = %264
  call void @_ZdlPv(i8* noundef %265) #10
  br label %268

268:                                              ; preds = %264, %267
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #10
  br label %301

269:                                              ; preds = %228, %217, %208, %199, %189, %179, %181, %191, %201, %210, %219, %230
  %270 = load i8*, i8** %46, align 8, !tbaa !16
  %271 = icmp eq i8* %270, %44
  br i1 %271, label %273, label %272

272:                                              ; preds = %269
  call void @_ZdlPv(i8* noundef %270) #10
  br label %273

273:                                              ; preds = %269, %272
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %41) #10
  %274 = load i8*, i8** %38, align 8, !tbaa !16
  %275 = icmp eq i8* %274, %36
  br i1 %275, label %277, label %276

276:                                              ; preds = %273
  call void @_ZdlPv(i8* noundef %274) #10
  br label %277

277:                                              ; preds = %273, %276
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #10
  %278 = load i8*, i8** %30, align 8, !tbaa !16
  %279 = icmp eq i8* %278, %28
  br i1 %279, label %281, label %280

280:                                              ; preds = %277
  call void @_ZdlPv(i8* noundef %278) #10
  br label %281

281:                                              ; preds = %277, %280
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %25) #10
  %282 = load i8*, i8** %22, align 8, !tbaa !16
  %283 = icmp eq i8* %282, %19
  br i1 %283, label %285, label %284

284:                                              ; preds = %281
  call void @_ZdlPv(i8* noundef %282) #10
  br label %285

285:                                              ; preds = %281, %284
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #10
  %286 = add i64 %82, 1
  %287 = and i64 %286, 4294967295
  %288 = load i64, i64* %10, align 8, !tbaa !5
  %289 = icmp ugt i64 %288, %287
  br i1 %289, label %81, label %64, !llvm.loop !28

290:                                              ; preds = %239, %241, %251, %247
  %291 = phi { i8*, i32 } [ %248, %247 ], [ %248, %251 ], [ %240, %239 ], [ %242, %241 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #10
  %292 = load i8*, i8** %30, align 8, !tbaa !16
  %293 = icmp eq i8* %292, %28
  br i1 %293, label %295, label %294

294:                                              ; preds = %290
  call void @_ZdlPv(i8* noundef %292) #10
  br label %295

295:                                              ; preds = %235, %237, %294, %290
  %296 = phi { i8*, i32 } [ %291, %290 ], [ %291, %294 ], [ %236, %235 ], [ %238, %237 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %25) #10
  %297 = load i8*, i8** %22, align 8, !tbaa !16
  %298 = icmp eq i8* %297, %19
  br i1 %298, label %300, label %299

299:                                              ; preds = %295
  call void @_ZdlPv(i8* noundef %297) #10
  br label %300

300:                                              ; preds = %295, %299
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #10
  resume { i8*, i32 } %296

301:                                              ; preds = %49, %268, %13, %1
  %302 = phi i32 [ 1, %1 ], [ 1, %268 ], [ 0, %13 ], [ 0, %49 ]
  ret i32 %302
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
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #10
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
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
