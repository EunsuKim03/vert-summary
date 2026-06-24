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
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %11, align 8, !tbaa !5
  %12 = bitcast %union.anon* %8 to i8*
  store i8 0, i8* %12, align 8, !tbaa !13
  %13 = and i32 %7, 1
  %14 = icmp eq i32 %13, 0
  %15 = icmp sgt i32 %7, 0
  br i1 %15, label %16, label %225

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %18 = bitcast %union.anon* %8 to i8*
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %21 = bitcast %union.anon* %8 to i8*
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %23 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %25 = bitcast %"class.std::__cxx11::basic_string"* %4 to %union.anon**
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  %27 = bitcast %union.anon* %24 to i8*
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %29 = getelementptr inbounds %union.anon, %union.anon* %24, i64 0, i32 0
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  %31 = icmp eq %"class.std::__cxx11::basic_string"* %4, %0
  %32 = bitcast %"class.std::__cxx11::basic_string"* %3 to i8*
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2
  %35 = bitcast %"class.std::__cxx11::basic_string"* %3 to %union.anon**
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %37 = bitcast %union.anon* %34 to i8*
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %39 = bitcast %union.anon* %8 to i8*
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %41 = getelementptr inbounds %union.anon, %union.anon* %34, i64 0, i32 0
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2, i32 0
  %43 = icmp eq %"class.std::__cxx11::basic_string"* %3, %0
  %44 = bitcast %union.anon* %8 to i8*
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  br label %46

46:                                               ; preds = %16, %215
  %47 = phi i64 [ 0, %16 ], [ %216, %215 ]
  br i1 %14, label %48, label %122

48:                                               ; preds = %46
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %32) #8
  %49 = load i8*, i8** %33, align 8, !tbaa !14
  %50 = getelementptr inbounds i8, i8* %49, i64 %47
  %51 = load i8, i8* %50, align 1, !tbaa !13
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  store %union.anon* %34, %union.anon** %35, align 8, !tbaa !12, !alias.scope !15
  store i64 0, i64* %36, align 8, !tbaa !5, !alias.scope !15
  store i8 0, i8* %37, align 8, !tbaa !13, !alias.scope !15
  %52 = load i64, i64* %11, align 8, !tbaa !5, !noalias !15
  %53 = add i64 %52, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %53)
          to label %54 unwind label %61

54:                                               ; preds = %48
  %55 = load i64, i64* %36, align 8, !tbaa !5, !alias.scope !15
  %56 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %55, i64 noundef 0, i64 noundef 1, i8 noundef signext %51)
          to label %57 unwind label %61

57:                                               ; preds = %54
  %58 = load i8*, i8** %10, align 8, !tbaa !14, !noalias !15
  %59 = load i64, i64* %11, align 8, !tbaa !5, !noalias !15
  %60 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3, i8* noundef %58, i64 noundef %59)
          to label %69 unwind label %61

61:                                               ; preds = %57, %54, %48
  %62 = landingpad { i8*, i32 }
          cleanup
  %63 = bitcast %"class.std::__cxx11::basic_string"* %3 to i8*
  %64 = bitcast %union.anon* %34 to i8*
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8, !tbaa !14, !alias.scope !15
  %67 = icmp eq i8* %66, %64
  br i1 %67, label %119, label %68

68:                                               ; preds = %61
  call void @_ZdlPv(i8* noundef %66) #8
  br label %119

69:                                               ; preds = %57
  %70 = load i8*, i8** %38, align 8, !tbaa !14
  %71 = icmp eq i8* %70, %37
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  br i1 %43, label %96, label %73, !prof !18

73:                                               ; preds = %72
  %74 = load i64, i64* %36, align 8, !tbaa !5
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i8*, i8** %10, align 8, !tbaa !14
  %78 = icmp eq i64 %74, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i8, i8* %70, align 1, !tbaa !13
  store i8 %80, i8* %77, align 1, !tbaa !13
  br label %82

81:                                               ; preds = %76
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %77, i8* align 1 %70, i64 %74, i1 false) #8
  br label %82

82:                                               ; preds = %81, %79, %73
  %83 = load i64, i64* %36, align 8, !tbaa !5
  store i64 %83, i64* %11, align 8, !tbaa !5
  %84 = load i8*, i8** %10, align 8, !tbaa !14
  %85 = getelementptr inbounds i8, i8* %84, i64 %83
  store i8 0, i8* %85, align 1, !tbaa !13
  br label %96

86:                                               ; preds = %69
  %87 = load i8*, i8** %10, align 8, !tbaa !14
  %88 = icmp eq i8* %87, %39
  %89 = load i64, i64* %40, align 8
  store i8* %70, i8** %10, align 8, !tbaa !14
  %90 = load i64, i64* %36, align 8, !tbaa !5
  store i64 %90, i64* %11, align 8, !tbaa !5
  %91 = load i64, i64* %41, align 8, !tbaa !13
  store i64 %91, i64* %40, align 8, !tbaa !13
  %92 = icmp eq i8* %87, null
  %93 = or i1 %88, %92
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  store i8* %87, i8** %38, align 8, !tbaa !14
  store i64 %89, i64* %42, align 8, !tbaa !13
  br label %96

95:                                               ; preds = %86
  store %union.anon* %34, %union.anon** %35, align 8, !tbaa !14
  br label %96

96:                                               ; preds = %72, %82, %94, %95
  store i64 0, i64* %36, align 8, !tbaa !5
  %97 = load i8*, i8** %38, align 8, !tbaa !14
  store i8 0, i8* %97, align 1, !tbaa !13
  %98 = load i8*, i8** %38, align 8, !tbaa !14
  %99 = icmp eq i8* %98, %37
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  call void @_ZdlPv(i8* noundef %98) #8
  br label %101

101:                                              ; preds = %96, %100
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %32) #8
  %102 = or i64 %47, 1
  %103 = load i8*, i8** %33, align 8, !tbaa !14
  %104 = getelementptr inbounds i8, i8* %103, i64 %102
  %105 = load i8, i8* %104, align 1, !tbaa !13
  %106 = load i64, i64* %11, align 8, !tbaa !5
  %107 = add i64 %106, 1
  %108 = load i8*, i8** %10, align 8, !tbaa !14
  %109 = icmp eq i8* %108, %44
  %110 = load i64, i64* %45, align 8
  %111 = select i1 %109, i64 15, i64 %110
  %112 = icmp ugt i64 %107, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %101
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %106, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %114 unwind label %120

114:                                              ; preds = %113, %101
  %115 = load i8*, i8** %10, align 8, !tbaa !14
  %116 = getelementptr inbounds i8, i8* %115, i64 %106
  store i8 %105, i8* %116, align 1, !tbaa !13
  store i64 %107, i64* %11, align 8, !tbaa !5
  %117 = load i8*, i8** %10, align 8, !tbaa !14
  %118 = getelementptr inbounds i8, i8* %117, i64 %107
  store i8 0, i8* %118, align 1, !tbaa !13
  br label %215

119:                                              ; preds = %61, %68
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %63) #8
  br label %219

120:                                              ; preds = %209, %137, %113
  %121 = landingpad { i8*, i32 }
          cleanup
  br label %219

122:                                              ; preds = %46
  %123 = trunc i64 %47 to i32
  %124 = sub nsw i32 %7, %123
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %126, label %198

126:                                              ; preds = %122
  %127 = load i8*, i8** %20, align 8, !tbaa !14
  %128 = getelementptr inbounds i8, i8* %127, i64 %47
  %129 = load i8, i8* %128, align 1, !tbaa !13
  %130 = load i64, i64* %11, align 8, !tbaa !5
  %131 = add i64 %130, 1
  %132 = load i8*, i8** %10, align 8, !tbaa !14
  %133 = icmp eq i8* %132, %21
  %134 = load i64, i64* %22, align 8
  %135 = select i1 %133, i64 15, i64 %134
  %136 = icmp ugt i64 %131, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %126
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %130, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %138 unwind label %120

138:                                              ; preds = %137, %126
  %139 = load i8*, i8** %10, align 8, !tbaa !14
  %140 = getelementptr inbounds i8, i8* %139, i64 %130
  store i8 %129, i8* %140, align 1, !tbaa !13
  store i64 %131, i64* %11, align 8, !tbaa !5
  %141 = load i8*, i8** %10, align 8, !tbaa !14
  %142 = getelementptr inbounds i8, i8* %141, i64 %131
  store i8 0, i8* %142, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %23) #8
  %143 = or i64 %47, 1
  %144 = load i8*, i8** %20, align 8, !tbaa !14
  %145 = getelementptr inbounds i8, i8* %144, i64 %143
  %146 = load i8, i8* %145, align 1, !tbaa !13
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  store %union.anon* %24, %union.anon** %25, align 8, !tbaa !12, !alias.scope !19
  store i64 0, i64* %26, align 8, !tbaa !5, !alias.scope !19
  store i8 0, i8* %27, align 8, !tbaa !13, !alias.scope !19
  %147 = load i64, i64* %11, align 8, !tbaa !5, !noalias !19
  %148 = add i64 %147, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %148)
          to label %149 unwind label %156

149:                                              ; preds = %138
  %150 = load i64, i64* %26, align 8, !tbaa !5, !alias.scope !19
  %151 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %150, i64 noundef 0, i64 noundef 1, i8 noundef signext %146)
          to label %152 unwind label %156

152:                                              ; preds = %149
  %153 = load i8*, i8** %10, align 8, !tbaa !14, !noalias !19
  %154 = load i64, i64* %11, align 8, !tbaa !5, !noalias !19
  %155 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i8* noundef %153, i64 noundef %154)
          to label %164 unwind label %156

156:                                              ; preds = %152, %149, %138
  %157 = landingpad { i8*, i32 }
          cleanup
  %158 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  %159 = bitcast %union.anon* %24 to i8*
  %160 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8, !tbaa !14, !alias.scope !19
  %162 = icmp eq i8* %161, %159
  br i1 %162, label %197, label %163

163:                                              ; preds = %156
  call void @_ZdlPv(i8* noundef %161) #8
  br label %197

164:                                              ; preds = %152
  %165 = load i8*, i8** %28, align 8, !tbaa !14
  %166 = icmp eq i8* %165, %27
  br i1 %166, label %167, label %181

167:                                              ; preds = %164
  br i1 %31, label %191, label %168, !prof !18

168:                                              ; preds = %167
  %169 = load i64, i64* %26, align 8, !tbaa !5
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %168
  %172 = load i8*, i8** %10, align 8, !tbaa !14
  %173 = icmp eq i64 %169, 1
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i8, i8* %165, align 1, !tbaa !13
  store i8 %175, i8* %172, align 1, !tbaa !13
  br label %177

176:                                              ; preds = %171
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %172, i8* align 1 %165, i64 %169, i1 false) #8
  br label %177

177:                                              ; preds = %176, %174, %168
  %178 = load i64, i64* %26, align 8, !tbaa !5
  store i64 %178, i64* %11, align 8, !tbaa !5
  %179 = load i8*, i8** %10, align 8, !tbaa !14
  %180 = getelementptr inbounds i8, i8* %179, i64 %178
  store i8 0, i8* %180, align 1, !tbaa !13
  br label %191

181:                                              ; preds = %164
  %182 = load i8*, i8** %10, align 8, !tbaa !14
  %183 = icmp eq i8* %182, %21
  %184 = load i64, i64* %22, align 8
  store i8* %165, i8** %10, align 8, !tbaa !14
  %185 = load i64, i64* %26, align 8, !tbaa !5
  store i64 %185, i64* %11, align 8, !tbaa !5
  %186 = load i64, i64* %29, align 8, !tbaa !13
  store i64 %186, i64* %22, align 8, !tbaa !13
  %187 = icmp eq i8* %182, null
  %188 = or i1 %183, %187
  br i1 %188, label %190, label %189

189:                                              ; preds = %181
  store i8* %182, i8** %28, align 8, !tbaa !14
  store i64 %184, i64* %30, align 8, !tbaa !13
  br label %191

190:                                              ; preds = %181
  store %union.anon* %24, %union.anon** %25, align 8, !tbaa !14
  br label %191

191:                                              ; preds = %167, %177, %189, %190
  store i64 0, i64* %26, align 8, !tbaa !5
  %192 = load i8*, i8** %28, align 8, !tbaa !14
  store i8 0, i8* %192, align 1, !tbaa !13
  %193 = load i8*, i8** %28, align 8, !tbaa !14
  %194 = icmp eq i8* %193, %27
  br i1 %194, label %196, label %195

195:                                              ; preds = %191
  call void @_ZdlPv(i8* noundef %193) #8
  br label %196

196:                                              ; preds = %191, %195
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23) #8
  br label %215

197:                                              ; preds = %156, %163
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %158) #8
  br label %219

198:                                              ; preds = %122
  %199 = load i8*, i8** %17, align 8, !tbaa !14
  %200 = getelementptr inbounds i8, i8* %199, i64 %47
  %201 = load i8, i8* %200, align 1, !tbaa !13
  %202 = load i64, i64* %11, align 8, !tbaa !5
  %203 = add i64 %202, 1
  %204 = load i8*, i8** %10, align 8, !tbaa !14
  %205 = icmp eq i8* %204, %18
  %206 = load i64, i64* %19, align 8
  %207 = select i1 %205, i64 15, i64 %206
  %208 = icmp ugt i64 %203, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %198
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %202, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %210 unwind label %120

210:                                              ; preds = %209, %198
  %211 = load i8*, i8** %10, align 8, !tbaa !14
  %212 = getelementptr inbounds i8, i8* %211, i64 %202
  store i8 %201, i8* %212, align 1, !tbaa !13
  store i64 %203, i64* %11, align 8, !tbaa !5
  %213 = load i8*, i8** %10, align 8, !tbaa !14
  %214 = getelementptr inbounds i8, i8* %213, i64 %203
  store i8 0, i8* %214, align 1, !tbaa !13
  br label %215

215:                                              ; preds = %210, %114, %196
  %216 = add nuw i64 %47, 2
  %217 = trunc i64 %216 to i32
  %218 = icmp slt i32 %217, %7
  br i1 %218, label %46, label %225, !llvm.loop !22

219:                                              ; preds = %197, %120, %119
  %220 = phi { i8*, i32 } [ %121, %120 ], [ %62, %119 ], [ %157, %197 ]
  %221 = load i8*, i8** %10, align 8, !tbaa !14
  %222 = bitcast %union.anon* %8 to i8*
  %223 = icmp eq i8* %221, %222
  br i1 %223, label %226, label %224

224:                                              ; preds = %219
  call void @_ZdlPv(i8* noundef %221) #8
  br label %226

225:                                              ; preds = %215, %2
  ret void

226:                                              ; preds = %224, %219
  resume { i8*, i32 } %220
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
!22 = distinct !{!22, !23, !24}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.unroll.disable"}
