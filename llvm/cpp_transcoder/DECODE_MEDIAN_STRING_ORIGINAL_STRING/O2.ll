; ModuleID = 'benchmark/cpp_transcoder/DECODE_MEDIAN_STRING_ORIGINAL_STRING/DECODE_MEDIAN_STRING_ORIGINAL_STRING_processed.cpp'
source_filename = "benchmark/cpp_transcoder/DECODE_MEDIAN_STRING_ORIGINAL_STRING/DECODE_MEDIAN_STRING_ORIGINAL_STRING_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DECODE_MEDIAN_STRING_ORIGINAL_STRING_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !5
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !12
  %10 = bitcast %union.anon* %8 to i8*
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %12, align 8, !tbaa !5
  store i8 0, i8* %10, align 8, !tbaa !13
  %13 = and i32 %7, 1
  %14 = icmp eq i32 %13, 0
  %15 = icmp sgt i32 %7, 0
  br i1 %15, label %16, label %215

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %19 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %21 = bitcast %"class.std::__cxx11::basic_string"* %4 to %union.anon**
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  %23 = bitcast %union.anon* %20 to i8*
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  %26 = icmp eq %"class.std::__cxx11::basic_string"* %4, %0
  %27 = bitcast %"class.std::__cxx11::basic_string"* %3 to i8*
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2
  %29 = bitcast %"class.std::__cxx11::basic_string"* %3 to %union.anon**
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %31 = bitcast %union.anon* %28 to i8*
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2, i32 0
  %34 = icmp eq %"class.std::__cxx11::basic_string"* %3, %0
  %35 = bitcast i64* %22 to <2 x i64>*
  %36 = bitcast i64* %12 to <2 x i64>*
  %37 = bitcast i64* %22 to <2 x i64>*
  %38 = bitcast i64* %12 to <2 x i64>*
  %39 = bitcast i64* %30 to <2 x i64>*
  %40 = bitcast i64* %12 to <2 x i64>*
  %41 = bitcast i64* %30 to <2 x i64>*
  %42 = bitcast i64* %12 to <2 x i64>*
  br label %43

43:                                               ; preds = %16, %206
  %44 = phi i64 [ 0, %16 ], [ %207, %206 ]
  br i1 %14, label %45, label %120

45:                                               ; preds = %43
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %27) #8
  %46 = load i8*, i8** %17, align 8, !tbaa !14
  %47 = getelementptr inbounds i8, i8* %46, i64 %44
  %48 = load i8, i8* %47, align 1, !tbaa !13
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  store %union.anon* %28, %union.anon** %29, align 8, !tbaa !12, !alias.scope !15
  store i64 0, i64* %30, align 8, !tbaa !5, !alias.scope !15
  store i8 0, i8* %31, align 8, !tbaa !13, !alias.scope !15
  %49 = load i64, i64* %12, align 8, !tbaa !5, !noalias !15
  %50 = add i64 %49, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %50)
          to label %51 unwind label %58

51:                                               ; preds = %45
  %52 = load i64, i64* %30, align 8, !tbaa !5, !alias.scope !15
  %53 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %52, i64 noundef 0, i64 noundef 1, i8 noundef signext %48)
          to label %54 unwind label %58

54:                                               ; preds = %51
  %55 = load i8*, i8** %11, align 8, !tbaa !14, !noalias !15
  %56 = load i64, i64* %12, align 8, !tbaa !5, !noalias !15
  %57 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3, i8* noundef %55, i64 noundef %56)
          to label %63 unwind label %58

58:                                               ; preds = %54, %51, %45
  %59 = landingpad { i8*, i32 }
          cleanup
  %60 = load i8*, i8** %32, align 8, !tbaa !14, !alias.scope !15
  %61 = icmp eq i8* %60, %31
  br i1 %61, label %117, label %62

62:                                               ; preds = %58
  call void @_ZdlPv(i8* noundef %60) #8
  br label %117

63:                                               ; preds = %54
  %64 = load i8*, i8** %32, align 8, !tbaa !14
  %65 = icmp eq i8* %64, %31
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  br i1 %34, label %92, label %67, !prof !18

67:                                               ; preds = %66
  %68 = load i64, i64* %30, align 8, !tbaa !5
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i8*, i8** %11, align 8, !tbaa !14
  %72 = icmp eq i64 %68, 1
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i8, i8* %31, align 8, !tbaa !13
  store i8 %74, i8* %71, align 1, !tbaa !13
  br label %76

75:                                               ; preds = %70
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %71, i8* nonnull align 8 %31, i64 %68, i1 false) #8
  br label %76

76:                                               ; preds = %75, %73, %67
  %77 = load i64, i64* %30, align 8, !tbaa !5
  store i64 %77, i64* %12, align 8, !tbaa !5
  %78 = load i8*, i8** %11, align 8, !tbaa !14
  %79 = getelementptr inbounds i8, i8* %78, i64 %77
  store i8 0, i8* %79, align 1, !tbaa !13
  %80 = load i8*, i8** %32, align 8, !tbaa !14
  br label %92

81:                                               ; preds = %63
  %82 = load i8*, i8** %11, align 8, !tbaa !14
  %83 = icmp eq i8* %82, %10
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  store i8* %64, i8** %11, align 8, !tbaa !14
  %85 = load <2 x i64>, <2 x i64>* %41, align 8, !tbaa !13
  store <2 x i64> %85, <2 x i64>* %42, align 8, !tbaa !13
  br label %91

86:                                               ; preds = %81
  %87 = load i64, i64* %18, align 8, !tbaa !13
  store i8* %64, i8** %11, align 8, !tbaa !14
  %88 = load <2 x i64>, <2 x i64>* %39, align 8, !tbaa !13
  store <2 x i64> %88, <2 x i64>* %40, align 8, !tbaa !13
  %89 = icmp eq i8* %82, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  store i8* %82, i8** %32, align 8, !tbaa !14
  store i64 %87, i64* %33, align 8, !tbaa !13
  br label %92

91:                                               ; preds = %86, %84
  store %union.anon* %28, %union.anon** %29, align 8, !tbaa !14
  br label %92

92:                                               ; preds = %66, %76, %90, %91
  %93 = phi i8* [ %80, %76 ], [ %82, %90 ], [ %31, %91 ], [ %31, %66 ]
  store i64 0, i64* %30, align 8, !tbaa !5
  store i8 0, i8* %93, align 1, !tbaa !13
  %94 = load i8*, i8** %32, align 8, !tbaa !14
  %95 = icmp eq i8* %94, %31
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  call void @_ZdlPv(i8* noundef %94) #8
  br label %97

97:                                               ; preds = %92, %96
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %27) #8
  %98 = or i64 %44, 1
  %99 = load i8*, i8** %17, align 8, !tbaa !14
  %100 = getelementptr inbounds i8, i8* %99, i64 %98
  %101 = load i8, i8* %100, align 1, !tbaa !13
  %102 = load i64, i64* %12, align 8, !tbaa !5
  %103 = add i64 %102, 1
  %104 = load i8*, i8** %11, align 8, !tbaa !14
  %105 = icmp eq i8* %104, %10
  %106 = load i64, i64* %18, align 8
  %107 = select i1 %105, i64 15, i64 %106
  %108 = icmp ugt i64 %103, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %102, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %110 unwind label %118

110:                                              ; preds = %109
  %111 = load i8*, i8** %11, align 8, !tbaa !14
  br label %112

112:                                              ; preds = %97, %110
  %113 = phi i8* [ %111, %110 ], [ %104, %97 ]
  %114 = getelementptr inbounds i8, i8* %113, i64 %102
  store i8 %101, i8* %114, align 1, !tbaa !13
  store i64 %103, i64* %12, align 8, !tbaa !5
  %115 = load i8*, i8** %11, align 8, !tbaa !14
  %116 = getelementptr inbounds i8, i8* %115, i64 %103
  store i8 0, i8* %116, align 1, !tbaa !13
  br label %206

117:                                              ; preds = %58, %62
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %27) #8
  br label %210

118:                                              ; preds = %198, %135, %109
  %119 = landingpad { i8*, i32 }
          cleanup
  br label %210

120:                                              ; preds = %43
  %121 = trunc i64 %44 to i32
  %122 = sub nsw i32 %7, %121
  %123 = icmp sgt i32 %122, 1
  %124 = load i8*, i8** %17, align 8, !tbaa !14
  %125 = getelementptr inbounds i8, i8* %124, i64 %44
  %126 = load i8, i8* %125, align 1, !tbaa !13
  %127 = load i64, i64* %12, align 8, !tbaa !5
  %128 = add i64 %127, 1
  %129 = load i8*, i8** %11, align 8, !tbaa !14
  %130 = icmp eq i8* %129, %10
  %131 = load i64, i64* %18, align 8
  %132 = select i1 %130, i64 15, i64 %131
  %133 = icmp ugt i64 %128, %132
  br i1 %123, label %134, label %197

134:                                              ; preds = %120
  br i1 %133, label %135, label %138

135:                                              ; preds = %134
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %127, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %136 unwind label %118

136:                                              ; preds = %135
  %137 = load i8*, i8** %11, align 8, !tbaa !14
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i8* [ %137, %136 ], [ %129, %134 ]
  %140 = getelementptr inbounds i8, i8* %139, i64 %127
  store i8 %126, i8* %140, align 1, !tbaa !13
  store i64 %128, i64* %12, align 8, !tbaa !5
  %141 = load i8*, i8** %11, align 8, !tbaa !14
  %142 = getelementptr inbounds i8, i8* %141, i64 %128
  store i8 0, i8* %142, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %19) #8
  %143 = or i64 %44, 1
  %144 = load i8*, i8** %17, align 8, !tbaa !14
  %145 = getelementptr inbounds i8, i8* %144, i64 %143
  %146 = load i8, i8* %145, align 1, !tbaa !13
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  store %union.anon* %20, %union.anon** %21, align 8, !tbaa !12, !alias.scope !19
  store i64 0, i64* %22, align 8, !tbaa !5, !alias.scope !19
  store i8 0, i8* %23, align 8, !tbaa !13, !alias.scope !19
  %147 = load i64, i64* %12, align 8, !tbaa !5, !noalias !19
  %148 = add i64 %147, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %148)
          to label %149 unwind label %156

149:                                              ; preds = %138
  %150 = load i64, i64* %22, align 8, !tbaa !5, !alias.scope !19
  %151 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %150, i64 noundef 0, i64 noundef 1, i8 noundef signext %146)
          to label %152 unwind label %156

152:                                              ; preds = %149
  %153 = load i8*, i8** %11, align 8, !tbaa !14, !noalias !19
  %154 = load i64, i64* %12, align 8, !tbaa !5, !noalias !19
  %155 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i8* noundef %153, i64 noundef %154)
          to label %161 unwind label %156

156:                                              ; preds = %152, %149, %138
  %157 = landingpad { i8*, i32 }
          cleanup
  %158 = load i8*, i8** %24, align 8, !tbaa !14, !alias.scope !19
  %159 = icmp eq i8* %158, %23
  br i1 %159, label %196, label %160

160:                                              ; preds = %156
  call void @_ZdlPv(i8* noundef %158) #8
  br label %196

161:                                              ; preds = %152
  %162 = load i8*, i8** %24, align 8, !tbaa !14
  %163 = icmp eq i8* %162, %23
  br i1 %163, label %164, label %179

164:                                              ; preds = %161
  br i1 %26, label %190, label %165, !prof !18

165:                                              ; preds = %164
  %166 = load i64, i64* %22, align 8, !tbaa !5
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %165
  %169 = load i8*, i8** %11, align 8, !tbaa !14
  %170 = icmp eq i64 %166, 1
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = load i8, i8* %23, align 8, !tbaa !13
  store i8 %172, i8* %169, align 1, !tbaa !13
  br label %174

173:                                              ; preds = %168
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %169, i8* nonnull align 8 %23, i64 %166, i1 false) #8
  br label %174

174:                                              ; preds = %173, %171, %165
  %175 = load i64, i64* %22, align 8, !tbaa !5
  store i64 %175, i64* %12, align 8, !tbaa !5
  %176 = load i8*, i8** %11, align 8, !tbaa !14
  %177 = getelementptr inbounds i8, i8* %176, i64 %175
  store i8 0, i8* %177, align 1, !tbaa !13
  %178 = load i8*, i8** %24, align 8, !tbaa !14
  br label %190

179:                                              ; preds = %161
  %180 = load i8*, i8** %11, align 8, !tbaa !14
  %181 = icmp eq i8* %180, %10
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  store i8* %162, i8** %11, align 8, !tbaa !14
  %183 = load <2 x i64>, <2 x i64>* %37, align 8, !tbaa !13
  store <2 x i64> %183, <2 x i64>* %38, align 8, !tbaa !13
  br label %189

184:                                              ; preds = %179
  %185 = load i64, i64* %18, align 8, !tbaa !13
  store i8* %162, i8** %11, align 8, !tbaa !14
  %186 = load <2 x i64>, <2 x i64>* %35, align 8, !tbaa !13
  store <2 x i64> %186, <2 x i64>* %36, align 8, !tbaa !13
  %187 = icmp eq i8* %180, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %184
  store i8* %180, i8** %24, align 8, !tbaa !14
  store i64 %185, i64* %25, align 8, !tbaa !13
  br label %190

189:                                              ; preds = %184, %182
  store %union.anon* %20, %union.anon** %21, align 8, !tbaa !14
  br label %190

190:                                              ; preds = %164, %174, %188, %189
  %191 = phi i8* [ %178, %174 ], [ %180, %188 ], [ %23, %189 ], [ %23, %164 ]
  store i64 0, i64* %22, align 8, !tbaa !5
  store i8 0, i8* %191, align 1, !tbaa !13
  %192 = load i8*, i8** %24, align 8, !tbaa !14
  %193 = icmp eq i8* %192, %23
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  call void @_ZdlPv(i8* noundef %192) #8
  br label %195

195:                                              ; preds = %190, %194
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #8
  br label %206

196:                                              ; preds = %156, %160
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #8
  br label %210

197:                                              ; preds = %120
  br i1 %133, label %198, label %201

198:                                              ; preds = %197
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %127, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %199 unwind label %118

199:                                              ; preds = %198
  %200 = load i8*, i8** %11, align 8, !tbaa !14
  br label %201

201:                                              ; preds = %197, %199
  %202 = phi i8* [ %200, %199 ], [ %129, %197 ]
  %203 = getelementptr inbounds i8, i8* %202, i64 %127
  store i8 %126, i8* %203, align 1, !tbaa !13
  store i64 %128, i64* %12, align 8, !tbaa !5
  %204 = load i8*, i8** %11, align 8, !tbaa !14
  %205 = getelementptr inbounds i8, i8* %204, i64 %128
  store i8 0, i8* %205, align 1, !tbaa !13
  br label %206

206:                                              ; preds = %201, %112, %195
  %207 = add nuw i64 %44, 2
  %208 = trunc i64 %207 to i32
  %209 = icmp slt i32 %208, %7
  br i1 %209, label %43, label %215, !llvm.loop !22

210:                                              ; preds = %196, %118, %117
  %211 = phi { i8*, i32 } [ %119, %118 ], [ %59, %117 ], [ %157, %196 ]
  %212 = load i8*, i8** %11, align 8, !tbaa !14
  %213 = icmp eq i8* %212, %10
  br i1 %213, label %216, label %214

214:                                              ; preds = %210
  call void @_ZdlPv(i8* noundef %212) #8
  br label %216

215:                                              ; preds = %206, %2
  ret void

216:                                              ; preds = %214, %210
  resume { i8*, i32 } %211
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DECODE_MEDIAN_STRING_ORIGINAL_STRING_processed.cpp() #3 section ".text.startup" {
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
!5 = !{!6, !11, i64 8}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !7, i64 0, !11, i64 8, !9, i64 16}
!7 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!7, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!6, !8, i64 0}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_: argument 0"}
!17 = distinct !{!17, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_"}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_: argument 0"}
!21 = distinct !{!21, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_"}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
