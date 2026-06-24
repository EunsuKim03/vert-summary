; ModuleID = 'benchmark/cpp_transcoder/STRING_K_DISTINCT_CHARACTERS_NO_CHARACTERS_ADJACENT/STRING_K_DISTINCT_CHARACTERS_NO_CHARACTERS_ADJACENT_processed.cpp'
source_filename = "benchmark/cpp_transcoder/STRING_K_DISTINCT_CHARACTERS_NO_CHARACTERS_ADJACENT/STRING_K_DISTINCT_CHARACTERS_NO_CHARACTERS_ADJACENT_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_STRING_K_DISTINCT_CHARACTERS_NO_CHARACTERS_ADJACENT_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_Z6f_goldB5cxx11ii(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !5
  %10 = bitcast %union.anon* %8 to i8*
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %12, align 8, !tbaa !10
  store i8 0, i8* %10, align 8, !tbaa !13
  %13 = icmp sgt i32 %2, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = bitcast %"class.std::__cxx11::basic_string"* %6 to i8*
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %17 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  %18 = bitcast i64* %5 to i8*
  %19 = bitcast %union.anon* %16 to i8*
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %24 = icmp eq %"class.std::__cxx11::basic_string"* %6, %0
  %25 = bitcast i64* %22 to <2 x i64>*
  %26 = bitcast i64* %12 to <2 x i64>*
  %27 = bitcast i64* %22 to <2 x i64>*
  %28 = bitcast i64* %12 to <2 x i64>*
  br label %47

29:                                               ; preds = %108, %3
  %30 = sub i32 %1, %2
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %190

32:                                               ; preds = %29
  %33 = bitcast %"class.std::__cxx11::basic_string"* %7 to i8*
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2
  %35 = bitcast %"class.std::__cxx11::basic_string"* %7 to %union.anon**
  %36 = bitcast i64* %4 to i8*
  %37 = bitcast %union.anon* %34 to i8*
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2, i32 0
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 1
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %42 = icmp eq %"class.std::__cxx11::basic_string"* %7, %0
  %43 = bitcast i64* %40 to <2 x i64>*
  %44 = bitcast i64* %12 to <2 x i64>*
  %45 = bitcast i64* %40 to <2 x i64>*
  %46 = bitcast i64* %12 to <2 x i64>*
  br label %118

47:                                               ; preds = %111, %14
  %48 = phi i64 [ 0, %14 ], [ %113, %111 ]
  %49 = phi i8* [ %10, %14 ], [ %112, %111 ]
  %50 = phi i32 [ 0, %14 ], [ %109, %111 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #8
  %51 = trunc i32 %50 to i8
  %52 = add i8 %51, 97
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  store %union.anon* %16, %union.anon** %17, align 8, !tbaa !5, !alias.scope !14
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #8, !noalias !14
  store i64 %48, i64* %5, align 8, !tbaa !17, !noalias !14
  %53 = icmp ugt i64 %48, 15
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i64* noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0)
          to label %56 unwind label %114

56:                                               ; preds = %54
  store i8* %55, i8** %20, align 8, !tbaa !18, !alias.scope !14
  %57 = load i64, i64* %5, align 8, !tbaa !17, !noalias !14
  store i64 %57, i64* %21, align 8, !tbaa !13, !alias.scope !14
  br label %58

58:                                               ; preds = %47, %56
  %59 = phi i8* [ %55, %56 ], [ %19, %47 ]
  switch i64 %48, label %62 [
    i64 1, label %60
    i64 0, label %63
  ]

60:                                               ; preds = %58
  %61 = load i8, i8* %49, align 1, !tbaa !13
  store i8 %61, i8* %59, align 1, !tbaa !13
  br label %63

62:                                               ; preds = %58
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %59, i8* align 1 %49, i64 %48, i1 false) #8
  br label %63

63:                                               ; preds = %62, %60, %58
  %64 = load i64, i64* %5, align 8, !tbaa !17, !noalias !14
  store i64 %64, i64* %22, align 8, !tbaa !10, !alias.scope !14
  %65 = load i8*, i8** %20, align 8, !tbaa !18, !alias.scope !14
  %66 = getelementptr inbounds i8, i8* %65, i64 %64
  store i8 0, i8* %66, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #8, !noalias !14
  %67 = load i64, i64* %22, align 8, !tbaa !10, !alias.scope !14
  %68 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %67, i64 noundef 0, i64 noundef 1, i8 noundef signext %52)
          to label %74 unwind label %69

69:                                               ; preds = %63
  %70 = landingpad { i8*, i32 }
          cleanup
  %71 = load i8*, i8** %20, align 8, !tbaa !18, !alias.scope !14
  %72 = icmp eq i8* %71, %19
  br i1 %72, label %116, label %73

73:                                               ; preds = %69
  call void @_ZdlPv(i8* noundef %71) #8
  br label %116

74:                                               ; preds = %63
  %75 = load i8*, i8** %20, align 8, !tbaa !18
  %76 = icmp eq i8* %75, %19
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  br i1 %24, label %103, label %78, !prof !19

78:                                               ; preds = %77
  %79 = load i64, i64* %22, align 8, !tbaa !10
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load i8*, i8** %11, align 8, !tbaa !18
  %83 = icmp eq i64 %79, 1
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i8, i8* %19, align 8, !tbaa !13
  store i8 %85, i8* %82, align 1, !tbaa !13
  br label %87

86:                                               ; preds = %81
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %82, i8* nonnull align 8 %19, i64 %79, i1 false) #8
  br label %87

87:                                               ; preds = %86, %84, %78
  %88 = load i64, i64* %22, align 8, !tbaa !10
  store i64 %88, i64* %12, align 8, !tbaa !10
  %89 = load i8*, i8** %11, align 8, !tbaa !18
  %90 = getelementptr inbounds i8, i8* %89, i64 %88
  store i8 0, i8* %90, align 1, !tbaa !13
  %91 = load i8*, i8** %20, align 8, !tbaa !18
  br label %103

92:                                               ; preds = %74
  %93 = load i8*, i8** %11, align 8, !tbaa !18
  %94 = icmp eq i8* %93, %10
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  store i8* %75, i8** %11, align 8, !tbaa !18
  %96 = load <2 x i64>, <2 x i64>* %27, align 8, !tbaa !13
  store <2 x i64> %96, <2 x i64>* %28, align 8, !tbaa !13
  br label %102

97:                                               ; preds = %92
  %98 = load i64, i64* %23, align 8, !tbaa !13
  store i8* %75, i8** %11, align 8, !tbaa !18
  %99 = load <2 x i64>, <2 x i64>* %25, align 8, !tbaa !13
  store <2 x i64> %99, <2 x i64>* %26, align 8, !tbaa !13
  %100 = icmp eq i8* %93, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  store i8* %93, i8** %20, align 8, !tbaa !18
  store i64 %98, i64* %21, align 8, !tbaa !13
  br label %103

102:                                              ; preds = %97, %95
  store %union.anon* %16, %union.anon** %17, align 8, !tbaa !18
  br label %103

103:                                              ; preds = %77, %87, %101, %102
  %104 = phi i8* [ %91, %87 ], [ %93, %101 ], [ %19, %102 ], [ %19, %77 ]
  store i64 0, i64* %22, align 8, !tbaa !10
  store i8 0, i8* %104, align 1, !tbaa !13
  %105 = load i8*, i8** %20, align 8, !tbaa !18
  %106 = icmp eq i8* %105, %19
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  call void @_ZdlPv(i8* noundef %105) #8
  br label %108

108:                                              ; preds = %103, %107
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #8
  %109 = add nuw nsw i32 %50, 1
  %110 = icmp eq i32 %109, %2
  br i1 %110, label %29, label %111, !llvm.loop !20

111:                                              ; preds = %108
  %112 = load i8*, i8** %11, align 8, !tbaa !18, !noalias !14
  %113 = load i64, i64* %12, align 8, !tbaa !10, !noalias !14
  br label %47

114:                                              ; preds = %54
  %115 = landingpad { i8*, i32 }
          cleanup
  br label %116

116:                                              ; preds = %69, %73, %114
  %117 = phi { i8*, i32 } [ %115, %114 ], [ %70, %73 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #8
  br label %191

118:                                              ; preds = %32, %180
  %119 = phi i32 [ 0, %32 ], [ %184, %180 ]
  %120 = phi i32 [ 0, %32 ], [ %183, %180 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %33) #8
  %121 = trunc i32 %120 to i8
  %122 = add i8 %121, 97
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  store %union.anon* %34, %union.anon** %35, align 8, !tbaa !5, !alias.scope !22
  %123 = load i8*, i8** %11, align 8, !tbaa !18, !noalias !22
  %124 = load i64, i64* %12, align 8, !tbaa !10, !noalias !22
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %36) #8, !noalias !22
  store i64 %124, i64* %4, align 8, !tbaa !17, !noalias !22
  %125 = icmp ugt i64 %124, 15
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  %127 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7, i64* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %128 unwind label %186

128:                                              ; preds = %126
  store i8* %127, i8** %38, align 8, !tbaa !18, !alias.scope !22
  %129 = load i64, i64* %4, align 8, !tbaa !17, !noalias !22
  store i64 %129, i64* %39, align 8, !tbaa !13, !alias.scope !22
  br label %130

130:                                              ; preds = %118, %128
  %131 = phi i8* [ %127, %128 ], [ %37, %118 ]
  switch i64 %124, label %134 [
    i64 1, label %132
    i64 0, label %135
  ]

132:                                              ; preds = %130
  %133 = load i8, i8* %123, align 1, !tbaa !13
  store i8 %133, i8* %131, align 1, !tbaa !13
  br label %135

134:                                              ; preds = %130
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %131, i8* align 1 %123, i64 %124, i1 false) #8
  br label %135

135:                                              ; preds = %134, %132, %130
  %136 = load i64, i64* %4, align 8, !tbaa !17, !noalias !22
  store i64 %136, i64* %40, align 8, !tbaa !10, !alias.scope !22
  %137 = load i8*, i8** %38, align 8, !tbaa !18, !alias.scope !22
  %138 = getelementptr inbounds i8, i8* %137, i64 %136
  store i8 0, i8* %138, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #8, !noalias !22
  %139 = load i64, i64* %40, align 8, !tbaa !10, !alias.scope !22
  %140 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %139, i64 noundef 0, i64 noundef 1, i8 noundef signext %122)
          to label %146 unwind label %141

141:                                              ; preds = %135
  %142 = landingpad { i8*, i32 }
          cleanup
  %143 = load i8*, i8** %38, align 8, !tbaa !18, !alias.scope !22
  %144 = icmp eq i8* %143, %37
  br i1 %144, label %188, label %145

145:                                              ; preds = %141
  call void @_ZdlPv(i8* noundef %143) #8
  br label %188

146:                                              ; preds = %135
  %147 = load i8*, i8** %38, align 8, !tbaa !18
  %148 = icmp eq i8* %147, %37
  br i1 %148, label %149, label %164

149:                                              ; preds = %146
  br i1 %42, label %175, label %150, !prof !19

150:                                              ; preds = %149
  %151 = load i64, i64* %40, align 8, !tbaa !10
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %150
  %154 = load i8*, i8** %11, align 8, !tbaa !18
  %155 = icmp eq i64 %151, 1
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i8, i8* %37, align 8, !tbaa !13
  store i8 %157, i8* %154, align 1, !tbaa !13
  br label %159

158:                                              ; preds = %153
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %154, i8* nonnull align 8 %37, i64 %151, i1 false) #8
  br label %159

159:                                              ; preds = %158, %156, %150
  %160 = load i64, i64* %40, align 8, !tbaa !10
  store i64 %160, i64* %12, align 8, !tbaa !10
  %161 = load i8*, i8** %11, align 8, !tbaa !18
  %162 = getelementptr inbounds i8, i8* %161, i64 %160
  store i8 0, i8* %162, align 1, !tbaa !13
  %163 = load i8*, i8** %38, align 8, !tbaa !18
  br label %175

164:                                              ; preds = %146
  %165 = load i8*, i8** %11, align 8, !tbaa !18
  %166 = icmp eq i8* %165, %10
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  store i8* %147, i8** %11, align 8, !tbaa !18
  %168 = load <2 x i64>, <2 x i64>* %45, align 8, !tbaa !13
  store <2 x i64> %168, <2 x i64>* %46, align 8, !tbaa !13
  br label %174

169:                                              ; preds = %164
  %170 = load i64, i64* %41, align 8, !tbaa !13
  store i8* %147, i8** %11, align 8, !tbaa !18
  %171 = load <2 x i64>, <2 x i64>* %43, align 8, !tbaa !13
  store <2 x i64> %171, <2 x i64>* %44, align 8, !tbaa !13
  %172 = icmp eq i8* %165, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %169
  store i8* %165, i8** %38, align 8, !tbaa !18
  store i64 %170, i64* %39, align 8, !tbaa !13
  br label %175

174:                                              ; preds = %169, %167
  store %union.anon* %34, %union.anon** %35, align 8, !tbaa !18
  br label %175

175:                                              ; preds = %149, %159, %173, %174
  %176 = phi i8* [ %163, %159 ], [ %165, %173 ], [ %37, %174 ], [ %37, %149 ]
  store i64 0, i64* %40, align 8, !tbaa !10
  store i8 0, i8* %176, align 1, !tbaa !13
  %177 = load i8*, i8** %38, align 8, !tbaa !18
  %178 = icmp eq i8* %177, %37
  br i1 %178, label %180, label %179

179:                                              ; preds = %175
  call void @_ZdlPv(i8* noundef %177) #8
  br label %180

180:                                              ; preds = %175, %179
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #8
  %181 = add nsw i32 %120, 1
  %182 = icmp eq i32 %181, %2
  %183 = select i1 %182, i32 0, i32 %181
  %184 = add nuw nsw i32 %119, 1
  %185 = icmp eq i32 %184, %30
  br i1 %185, label %190, label %118, !llvm.loop !25

186:                                              ; preds = %126
  %187 = landingpad { i8*, i32 }
          cleanup
  br label %188

188:                                              ; preds = %141, %145, %186
  %189 = phi { i8*, i32 } [ %187, %186 ], [ %142, %145 ], [ %142, %141 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #8
  br label %191

190:                                              ; preds = %180, %29
  ret void

191:                                              ; preds = %188, %116
  %192 = phi { i8*, i32 } [ %117, %116 ], [ %189, %188 ]
  %193 = load i8*, i8** %11, align 8, !tbaa !18
  %194 = icmp eq i8* %193, %10
  br i1 %194, label %196, label %195

195:                                              ; preds = %191
  call void @_ZdlPv(i8* noundef %193) #8
  br label %196

196:                                              ; preds = %195, %191
  resume { i8*, i32 } %192
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

declare noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64* noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_STRING_K_DISTINCT_CHARACTERS_NO_CHARACTERS_ADJACENT_processed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !12, i64 8}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !6, i64 0, !12, i64 8, !8, i64 16}
!12 = !{!"long", !8, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_: argument 0"}
!16 = distinct !{!16, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_"}
!17 = !{!12, !12, i64 0}
!18 = !{!11, !7, i64 0}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_: argument 0"}
!24 = distinct !{!24, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_"}
!25 = distinct !{!25, !21}
