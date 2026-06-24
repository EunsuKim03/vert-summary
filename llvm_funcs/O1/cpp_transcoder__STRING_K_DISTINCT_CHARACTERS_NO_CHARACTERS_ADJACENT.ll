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
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %11, align 8, !tbaa !10
  %12 = bitcast %union.anon* %8 to i8*
  store i8 0, i8* %12, align 8, !tbaa !13
  %13 = icmp sgt i32 %2, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = bitcast %"class.std::__cxx11::basic_string"* %6 to i8*
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %17 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  %18 = bitcast i64* %5 to i8*
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  %23 = bitcast %union.anon* %16 to i8*
  %24 = bitcast %union.anon* %8 to i8*
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %26 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  %28 = icmp eq %"class.std::__cxx11::basic_string"* %6, %0
  br label %47

29:                                               ; preds = %107, %3
  %30 = sub i32 %1, %2
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %187

32:                                               ; preds = %29
  %33 = bitcast %"class.std::__cxx11::basic_string"* %7 to i8*
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2
  %35 = bitcast %"class.std::__cxx11::basic_string"* %7 to %union.anon**
  %36 = bitcast i64* %4 to i8*
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2, i32 0
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 1
  %41 = bitcast %union.anon* %34 to i8*
  %42 = bitcast %union.anon* %8 to i8*
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %44 = getelementptr inbounds %union.anon, %union.anon* %34, i64 0, i32 0
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2, i32 0
  %46 = icmp eq %"class.std::__cxx11::basic_string"* %7, %0
  br label %115

47:                                               ; preds = %14, %107
  %48 = phi i32 [ 0, %14 ], [ %108, %107 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #8
  %49 = trunc i32 %48 to i8
  %50 = add i8 %49, 97
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  store %union.anon* %16, %union.anon** %17, align 8, !tbaa !5, !alias.scope !14
  %51 = load i8*, i8** %10, align 8, !tbaa !17, !noalias !14
  %52 = load i64, i64* %11, align 8, !tbaa !10, !noalias !14
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #8, !noalias !14
  store i64 %52, i64* %5, align 8, !tbaa !18, !noalias !14
  %53 = icmp ugt i64 %52, 15
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i64* noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0)
          to label %56 unwind label %110

56:                                               ; preds = %54
  store i8* %55, i8** %19, align 8, !tbaa !17, !alias.scope !14
  %57 = load i64, i64* %5, align 8, !tbaa !18, !noalias !14
  store i64 %57, i64* %20, align 8, !tbaa !13, !alias.scope !14
  br label %58

58:                                               ; preds = %56, %47
  %59 = load i8*, i8** %21, align 8, !tbaa !17, !alias.scope !14
  switch i64 %52, label %62 [
    i64 1, label %60
    i64 0, label %63
  ]

60:                                               ; preds = %58
  %61 = load i8, i8* %51, align 1, !tbaa !13
  store i8 %61, i8* %59, align 1, !tbaa !13
  br label %63

62:                                               ; preds = %58
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %59, i8* align 1 %51, i64 %52, i1 false) #8
  br label %63

63:                                               ; preds = %62, %60, %58
  %64 = load i64, i64* %5, align 8, !tbaa !18, !noalias !14
  store i64 %64, i64* %22, align 8, !tbaa !10, !alias.scope !14
  %65 = load i8*, i8** %21, align 8, !tbaa !17, !alias.scope !14
  %66 = getelementptr inbounds i8, i8* %65, i64 %64
  store i8 0, i8* %66, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #8, !noalias !14
  %67 = load i64, i64* %22, align 8, !tbaa !10, !alias.scope !14
  %68 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %67, i64 noundef 0, i64 noundef 1, i8 noundef signext %50)
          to label %75 unwind label %69

69:                                               ; preds = %63
  %70 = landingpad { i8*, i32 }
          cleanup
  %71 = load i8*, i8** %21, align 8, !tbaa !17, !alias.scope !14
  %72 = bitcast %union.anon* %16 to i8*
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %112, label %74

74:                                               ; preds = %69
  call void @_ZdlPv(i8* noundef %71) #8
  br label %112

75:                                               ; preds = %63
  %76 = load i8*, i8** %21, align 8, !tbaa !17
  %77 = icmp eq i8* %76, %23
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  br i1 %28, label %102, label %79, !prof !19

79:                                               ; preds = %78
  %80 = load i64, i64* %22, align 8, !tbaa !10
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %10, align 8, !tbaa !17
  %84 = icmp eq i64 %80, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i8, i8* %76, align 1, !tbaa !13
  store i8 %86, i8* %83, align 1, !tbaa !13
  br label %88

87:                                               ; preds = %82
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %83, i8* align 1 %76, i64 %80, i1 false) #8
  br label %88

88:                                               ; preds = %87, %85, %79
  %89 = load i64, i64* %22, align 8, !tbaa !10
  store i64 %89, i64* %11, align 8, !tbaa !10
  %90 = load i8*, i8** %10, align 8, !tbaa !17
  %91 = getelementptr inbounds i8, i8* %90, i64 %89
  store i8 0, i8* %91, align 1, !tbaa !13
  br label %102

92:                                               ; preds = %75
  %93 = load i8*, i8** %10, align 8, !tbaa !17
  %94 = icmp eq i8* %93, %24
  %95 = load i64, i64* %25, align 8
  store i8* %76, i8** %10, align 8, !tbaa !17
  %96 = load i64, i64* %22, align 8, !tbaa !10
  store i64 %96, i64* %11, align 8, !tbaa !10
  %97 = load i64, i64* %26, align 8, !tbaa !13
  store i64 %97, i64* %25, align 8, !tbaa !13
  %98 = icmp eq i8* %93, null
  %99 = or i1 %94, %98
  br i1 %99, label %101, label %100

100:                                              ; preds = %92
  store i8* %93, i8** %21, align 8, !tbaa !17
  store i64 %95, i64* %27, align 8, !tbaa !13
  br label %102

101:                                              ; preds = %92
  store %union.anon* %16, %union.anon** %17, align 8, !tbaa !17
  br label %102

102:                                              ; preds = %78, %88, %100, %101
  store i64 0, i64* %22, align 8, !tbaa !10
  %103 = load i8*, i8** %21, align 8, !tbaa !17
  store i8 0, i8* %103, align 1, !tbaa !13
  %104 = load i8*, i8** %21, align 8, !tbaa !17
  %105 = icmp eq i8* %104, %23
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  call void @_ZdlPv(i8* noundef %104) #8
  br label %107

107:                                              ; preds = %102, %106
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #8
  %108 = add nuw nsw i32 %48, 1
  %109 = icmp eq i32 %108, %2
  br i1 %109, label %29, label %47, !llvm.loop !20

110:                                              ; preds = %54
  %111 = landingpad { i8*, i32 }
          cleanup
  br label %112

112:                                              ; preds = %69, %74, %110
  %113 = phi { i8*, i32 } [ %111, %110 ], [ %70, %74 ], [ %70, %69 ]
  %114 = bitcast %"class.std::__cxx11::basic_string"* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %114) #8
  br label %188

115:                                              ; preds = %32, %176
  %116 = phi i32 [ 0, %32 ], [ %180, %176 ]
  %117 = phi i32 [ 0, %32 ], [ %179, %176 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %33) #8
  %118 = trunc i32 %117 to i8
  %119 = add i8 %118, 97
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  store %union.anon* %34, %union.anon** %35, align 8, !tbaa !5, !alias.scope !23
  %120 = load i8*, i8** %10, align 8, !tbaa !17, !noalias !23
  %121 = load i64, i64* %11, align 8, !tbaa !10, !noalias !23
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %36) #8, !noalias !23
  store i64 %121, i64* %4, align 8, !tbaa !18, !noalias !23
  %122 = icmp ugt i64 %121, 15
  br i1 %122, label %123, label %127

123:                                              ; preds = %115
  %124 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7, i64* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %125 unwind label %182

125:                                              ; preds = %123
  store i8* %124, i8** %37, align 8, !tbaa !17, !alias.scope !23
  %126 = load i64, i64* %4, align 8, !tbaa !18, !noalias !23
  store i64 %126, i64* %38, align 8, !tbaa !13, !alias.scope !23
  br label %127

127:                                              ; preds = %125, %115
  %128 = load i8*, i8** %39, align 8, !tbaa !17, !alias.scope !23
  switch i64 %121, label %131 [
    i64 1, label %129
    i64 0, label %132
  ]

129:                                              ; preds = %127
  %130 = load i8, i8* %120, align 1, !tbaa !13
  store i8 %130, i8* %128, align 1, !tbaa !13
  br label %132

131:                                              ; preds = %127
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %128, i8* align 1 %120, i64 %121, i1 false) #8
  br label %132

132:                                              ; preds = %131, %129, %127
  %133 = load i64, i64* %4, align 8, !tbaa !18, !noalias !23
  store i64 %133, i64* %40, align 8, !tbaa !10, !alias.scope !23
  %134 = load i8*, i8** %39, align 8, !tbaa !17, !alias.scope !23
  %135 = getelementptr inbounds i8, i8* %134, i64 %133
  store i8 0, i8* %135, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #8, !noalias !23
  %136 = load i64, i64* %40, align 8, !tbaa !10, !alias.scope !23
  %137 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %136, i64 noundef 0, i64 noundef 1, i8 noundef signext %119)
          to label %144 unwind label %138

138:                                              ; preds = %132
  %139 = landingpad { i8*, i32 }
          cleanup
  %140 = load i8*, i8** %39, align 8, !tbaa !17, !alias.scope !23
  %141 = bitcast %union.anon* %34 to i8*
  %142 = icmp eq i8* %140, %141
  br i1 %142, label %184, label %143

143:                                              ; preds = %138
  call void @_ZdlPv(i8* noundef %140) #8
  br label %184

144:                                              ; preds = %132
  %145 = load i8*, i8** %39, align 8, !tbaa !17
  %146 = icmp eq i8* %145, %41
  br i1 %146, label %147, label %161

147:                                              ; preds = %144
  br i1 %46, label %171, label %148, !prof !19

148:                                              ; preds = %147
  %149 = load i64, i64* %40, align 8, !tbaa !10
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = load i8*, i8** %10, align 8, !tbaa !17
  %153 = icmp eq i64 %149, 1
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i8, i8* %145, align 1, !tbaa !13
  store i8 %155, i8* %152, align 1, !tbaa !13
  br label %157

156:                                              ; preds = %151
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %152, i8* align 1 %145, i64 %149, i1 false) #8
  br label %157

157:                                              ; preds = %156, %154, %148
  %158 = load i64, i64* %40, align 8, !tbaa !10
  store i64 %158, i64* %11, align 8, !tbaa !10
  %159 = load i8*, i8** %10, align 8, !tbaa !17
  %160 = getelementptr inbounds i8, i8* %159, i64 %158
  store i8 0, i8* %160, align 1, !tbaa !13
  br label %171

161:                                              ; preds = %144
  %162 = load i8*, i8** %10, align 8, !tbaa !17
  %163 = icmp eq i8* %162, %42
  %164 = load i64, i64* %43, align 8
  store i8* %145, i8** %10, align 8, !tbaa !17
  %165 = load i64, i64* %40, align 8, !tbaa !10
  store i64 %165, i64* %11, align 8, !tbaa !10
  %166 = load i64, i64* %44, align 8, !tbaa !13
  store i64 %166, i64* %43, align 8, !tbaa !13
  %167 = icmp eq i8* %162, null
  %168 = or i1 %163, %167
  br i1 %168, label %170, label %169

169:                                              ; preds = %161
  store i8* %162, i8** %39, align 8, !tbaa !17
  store i64 %164, i64* %45, align 8, !tbaa !13
  br label %171

170:                                              ; preds = %161
  store %union.anon* %34, %union.anon** %35, align 8, !tbaa !17
  br label %171

171:                                              ; preds = %147, %157, %169, %170
  store i64 0, i64* %40, align 8, !tbaa !10
  %172 = load i8*, i8** %39, align 8, !tbaa !17
  store i8 0, i8* %172, align 1, !tbaa !13
  %173 = load i8*, i8** %39, align 8, !tbaa !17
  %174 = icmp eq i8* %173, %41
  br i1 %174, label %176, label %175

175:                                              ; preds = %171
  call void @_ZdlPv(i8* noundef %173) #8
  br label %176

176:                                              ; preds = %171, %175
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #8
  %177 = add nsw i32 %117, 1
  %178 = icmp eq i32 %177, %2
  %179 = select i1 %178, i32 0, i32 %177
  %180 = add nuw nsw i32 %116, 1
  %181 = icmp eq i32 %180, %30
  br i1 %181, label %187, label %115, !llvm.loop !26

182:                                              ; preds = %123
  %183 = landingpad { i8*, i32 }
          cleanup
  br label %184

184:                                              ; preds = %138, %143, %182
  %185 = phi { i8*, i32 } [ %183, %182 ], [ %139, %143 ], [ %139, %138 ]
  %186 = bitcast %"class.std::__cxx11::basic_string"* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %186) #8
  br label %188

187:                                              ; preds = %176, %29
  ret void

188:                                              ; preds = %184, %112
  %189 = phi { i8*, i32 } [ %113, %112 ], [ %185, %184 ]
  %190 = load i8*, i8** %10, align 8, !tbaa !17
  %191 = bitcast %union.anon* %8 to i8*
  %192 = icmp eq i8* %190, %191
  br i1 %192, label %194, label %193

193:                                              ; preds = %188
  call void @_ZdlPv(i8* noundef %190) #8
  br label %194

194:                                              ; preds = %193, %188
  resume { i8*, i32 } %189
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
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8
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
!17 = !{!11, !7, i64 0}
!18 = !{!12, !12, i64 0}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = distinct !{!20, !21, !22}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_: argument 0"}
!25 = distinct !{!25, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_"}
!26 = distinct !{!26, !21, !22}
