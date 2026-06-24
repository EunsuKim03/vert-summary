; ModuleID = 'llvm/cpp_transcoder/PRINT_SHORTEST_COMMON_SUPERSEQUENCE/PRINT_SHORTEST_COMMON_SUPERSEQUENCE_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/PRINT_SHORTEST_COMMON_SUPERSEQUENCE/PRINT_SHORTEST_COMMON_SUPERSEQUENCE_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_PRINT_SHORTEST_COMMON_SUPERSEQUENCE_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %2) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !5
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !5
  %9 = trunc i64 %8 to i32
  %10 = add i64 %5, 1
  %11 = and i64 %10, 4294967295
  %12 = add i64 %8, 1
  %13 = and i64 %12, 4294967295
  %14 = mul nuw i64 %13, %11
  %15 = alloca i32, i64 %14, align 16
  %16 = icmp slt i32 %6, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %3
  %18 = icmp slt i32 %9, 0
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %21 = add i64 %8, 1
  %22 = add i64 %5, 1
  %23 = and i64 %22, 4294967295
  %24 = and i64 %21, 4294967295
  br label %25

25:                                               ; preds = %17, %59
  %26 = phi i64 [ 0, %17 ], [ %60, %59 ]
  br i1 %18, label %59, label %27

27:                                               ; preds = %25
  %28 = icmp eq i64 %26, 0
  %29 = add nsw i64 %26, -1
  %30 = mul nsw i64 %13, %29
  %31 = getelementptr inbounds i32, i32* %15, i64 %30
  %32 = mul nuw nsw i64 %13, %26
  %33 = getelementptr inbounds i32, i32* %15, i64 %32
  %34 = mul nsw i64 %13, %29
  %35 = getelementptr inbounds i32, i32* %15, i64 %34
  %36 = mul nuw nsw i64 %13, %26
  %37 = getelementptr inbounds i32, i32* %15, i64 %36
  %38 = mul nuw nsw i64 %13, %26
  %39 = getelementptr inbounds i32, i32* %15, i64 %38
  %40 = trunc i64 %26 to i32
  br label %62

41:                                               ; preds = %59, %3
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %43 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %42, %union.anon** %43, align 8, !tbaa !12
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %44, align 8, !tbaa !5
  %45 = bitcast %union.anon* %42 to i8*
  store i8 0, i8* %45, align 8, !tbaa !13
  %46 = icmp sgt i32 %6, 0
  %47 = icmp sgt i32 %9, 0
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %96

49:                                               ; preds = %41
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  br label %105

59:                                               ; preds = %93, %25
  %60 = add nuw nsw i64 %26, 1
  %61 = icmp eq i64 %60, %23
  br i1 %61, label %41, label %25, !llvm.loop !14

62:                                               ; preds = %27, %93
  %63 = phi i64 [ 0, %27 ], [ %94, %93 ]
  br i1 %28, label %64, label %67

64:                                               ; preds = %62
  %65 = getelementptr inbounds i32, i32* %15, i64 %63
  %66 = trunc i64 %63 to i32
  store i32 %66, i32* %65, align 4, !tbaa !17
  br label %93

67:                                               ; preds = %62
  %68 = icmp eq i64 %63, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  store i32 %40, i32* %39, align 4, !tbaa !17
  br label %93

70:                                               ; preds = %67
  %71 = load i8*, i8** %19, align 8, !tbaa !19
  %72 = getelementptr inbounds i8, i8* %71, i64 %29
  %73 = load i8, i8* %72, align 1, !tbaa !13
  %74 = add nsw i64 %63, -1
  %75 = load i8*, i8** %20, align 8, !tbaa !19
  %76 = getelementptr inbounds i8, i8* %75, i64 %74
  %77 = load i8, i8* %76, align 1, !tbaa !13
  %78 = icmp eq i8 %73, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = getelementptr inbounds i32, i32* %35, i64 %74
  %81 = load i32, i32* %80, align 4, !tbaa !17
  %82 = add nsw i32 %81, 1
  %83 = getelementptr inbounds i32, i32* %37, i64 %63
  store i32 %82, i32* %83, align 4, !tbaa !17
  br label %93

84:                                               ; preds = %70
  %85 = getelementptr inbounds i32, i32* %31, i64 %63
  %86 = getelementptr inbounds i32, i32* %33, i64 %74
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %85, align 4
  %89 = icmp slt i32 %87, %88
  %90 = select i1 %89, i32 %87, i32 %88
  %91 = add nsw i32 %90, 1
  %92 = getelementptr inbounds i32, i32* %33, i64 %63
  store i32 %91, i32* %92, align 4, !tbaa !17
  br label %93

93:                                               ; preds = %64, %79, %84, %69
  %94 = add nuw nsw i64 %63, 1
  %95 = icmp eq i64 %94, %24
  br i1 %95, label %59, label %62, !llvm.loop !20

96:                                               ; preds = %169, %41
  %97 = phi i32 [ %6, %41 ], [ %173, %169 ]
  %98 = phi i32 [ %9, %41 ], [ %174, %169 ]
  %99 = icmp sgt i32 %97, 0
  br i1 %99, label %100, label %182

100:                                              ; preds = %96
  %101 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %104 = zext i32 %97 to i64
  br label %189

105:                                              ; preds = %49, %169
  %106 = phi i32 [ %9, %49 ], [ %174, %169 ]
  %107 = phi i32 [ %6, %49 ], [ %173, %169 ]
  %108 = add nsw i32 %107, -1
  %109 = zext i32 %108 to i64
  %110 = load i8*, i8** %50, align 8, !tbaa !19
  %111 = getelementptr inbounds i8, i8* %110, i64 %109
  %112 = load i8, i8* %111, align 1, !tbaa !13
  %113 = add nsw i32 %106, -1
  %114 = zext i32 %113 to i64
  %115 = load i8*, i8** %51, align 8, !tbaa !19
  %116 = getelementptr inbounds i8, i8* %115, i64 %114
  %117 = load i8, i8* %116, align 1, !tbaa !13
  %118 = icmp eq i8 %112, %117
  br i1 %118, label %119, label %141

119:                                              ; preds = %105
  %120 = load i64, i64* %44, align 8, !tbaa !5
  %121 = add i64 %120, 1
  %122 = load i8*, i8** %56, align 8, !tbaa !19
  %123 = icmp eq i8* %122, %45
  %124 = load i64, i64* %57, align 8
  %125 = select i1 %123, i64 15, i64 %124
  %126 = icmp ugt i64 %121, %125
  br i1 %126, label %127, label %169

127:                                              ; preds = %119
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %120, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %169 unwind label %132

128:                                              ; preds = %224
  %129 = landingpad { i8*, i32 }
          cleanup
  br label %134

130:                                              ; preds = %203
  %131 = landingpad { i8*, i32 }
          cleanup
  br label %134

132:                                              ; preds = %168, %161, %127
  %133 = landingpad { i8*, i32 }
          cleanup
  br label %134

134:                                              ; preds = %130, %132, %128
  %135 = phi { i8*, i32 } [ %129, %128 ], [ %131, %130 ], [ %133, %132 ]
  %136 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8, !tbaa !19
  %138 = icmp eq i8* %137, %45
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  call void @_ZdlPv(i8* noundef %137) #5
  br label %140

140:                                              ; preds = %134, %139
  resume { i8*, i32 } %135

141:                                              ; preds = %105
  %142 = mul nuw nsw i64 %13, %109
  %143 = getelementptr inbounds i32, i32* %15, i64 %142
  %144 = sext i32 %106 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4, !tbaa !17
  %147 = sext i32 %107 to i64
  %148 = mul nsw i64 %13, %147
  %149 = getelementptr inbounds i32, i32* %15, i64 %148
  %150 = getelementptr inbounds i32, i32* %149, i64 %114
  %151 = load i32, i32* %150, align 4, !tbaa !17
  %152 = icmp sgt i32 %146, %151
  %153 = load i64, i64* %44, align 8, !tbaa !5
  %154 = add i64 %153, 1
  br i1 %152, label %155, label %162

155:                                              ; preds = %141
  %156 = load i8*, i8** %54, align 8, !tbaa !19
  %157 = icmp eq i8* %156, %45
  %158 = load i64, i64* %55, align 8
  %159 = select i1 %157, i64 15, i64 %158
  %160 = icmp ugt i64 %154, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %155
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %153, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %169 unwind label %132

162:                                              ; preds = %141
  %163 = load i8*, i8** %52, align 8, !tbaa !19
  %164 = icmp eq i8* %163, %45
  %165 = load i64, i64* %53, align 8
  %166 = select i1 %164, i64 15, i64 %165
  %167 = icmp ugt i64 %154, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %153, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %169 unwind label %132

169:                                              ; preds = %162, %168, %155, %161, %119, %127
  %170 = phi i64 [ %120, %127 ], [ %120, %119 ], [ %153, %161 ], [ %153, %155 ], [ %153, %168 ], [ %153, %162 ]
  %171 = phi i8 [ %112, %127 ], [ %112, %119 ], [ %117, %161 ], [ %117, %155 ], [ %112, %168 ], [ %112, %162 ]
  %172 = phi i64 [ %121, %127 ], [ %121, %119 ], [ %154, %161 ], [ %154, %155 ], [ %154, %168 ], [ %154, %162 ]
  %173 = phi i32 [ %108, %127 ], [ %108, %119 ], [ %107, %161 ], [ %107, %155 ], [ %108, %168 ], [ %108, %162 ]
  %174 = phi i32 [ %113, %127 ], [ %113, %119 ], [ %113, %161 ], [ %113, %155 ], [ %106, %168 ], [ %106, %162 ]
  %175 = load i8*, i8** %58, align 8, !tbaa !19
  %176 = getelementptr inbounds i8, i8* %175, i64 %170
  store i8 %171, i8* %176, align 1, !tbaa !13
  store i64 %172, i64* %44, align 8, !tbaa !5
  %177 = load i8*, i8** %58, align 8, !tbaa !19
  %178 = getelementptr inbounds i8, i8* %177, i64 %172
  store i8 0, i8* %178, align 1, !tbaa !13
  %179 = icmp sgt i32 %173, 0
  %180 = icmp sgt i32 %174, 0
  %181 = select i1 %179, i1 %180, i1 false
  br i1 %181, label %105, label %96, !llvm.loop !21

182:                                              ; preds = %204, %96
  %183 = icmp sgt i32 %98, 0
  br i1 %183, label %184, label %231

184:                                              ; preds = %182
  %185 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %186 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %187 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %188 = zext i32 %98 to i64
  br label %210

189:                                              ; preds = %100, %204
  %190 = phi i64 [ %104, %100 ], [ %191, %204 ]
  %191 = add nsw i64 %190, -1
  %192 = and i64 %191, 4294967295
  %193 = load i8*, i8** %101, align 8, !tbaa !19
  %194 = getelementptr inbounds i8, i8* %193, i64 %192
  %195 = load i8, i8* %194, align 1, !tbaa !13
  %196 = load i64, i64* %44, align 8, !tbaa !5
  %197 = add i64 %196, 1
  %198 = load i8*, i8** %102, align 8, !tbaa !19
  %199 = icmp eq i8* %198, %45
  %200 = load i64, i64* %103, align 8
  %201 = select i1 %199, i64 15, i64 %200
  %202 = icmp ugt i64 %197, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %189
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %196, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %204 unwind label %130

204:                                              ; preds = %203, %189
  %205 = load i8*, i8** %102, align 8, !tbaa !19
  %206 = getelementptr inbounds i8, i8* %205, i64 %196
  store i8 %195, i8* %206, align 1, !tbaa !13
  store i64 %197, i64* %44, align 8, !tbaa !5
  %207 = load i8*, i8** %102, align 8, !tbaa !19
  %208 = getelementptr inbounds i8, i8* %207, i64 %197
  store i8 0, i8* %208, align 1, !tbaa !13
  %209 = icmp sgt i64 %190, 1
  br i1 %209, label %189, label %182, !llvm.loop !22

210:                                              ; preds = %184, %225
  %211 = phi i64 [ %188, %184 ], [ %212, %225 ]
  %212 = add nsw i64 %211, -1
  %213 = and i64 %212, 4294967295
  %214 = load i8*, i8** %185, align 8, !tbaa !19
  %215 = getelementptr inbounds i8, i8* %214, i64 %213
  %216 = load i8, i8* %215, align 1, !tbaa !13
  %217 = load i64, i64* %44, align 8, !tbaa !5
  %218 = add i64 %217, 1
  %219 = load i8*, i8** %186, align 8, !tbaa !19
  %220 = icmp eq i8* %219, %45
  %221 = load i64, i64* %187, align 8
  %222 = select i1 %220, i64 15, i64 %221
  %223 = icmp ugt i64 %218, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %210
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %217, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %225 unwind label %128

225:                                              ; preds = %224, %210
  %226 = load i8*, i8** %186, align 8, !tbaa !19
  %227 = getelementptr inbounds i8, i8* %226, i64 %217
  store i8 %216, i8* %227, align 1, !tbaa !13
  store i64 %218, i64* %44, align 8, !tbaa !5
  %228 = load i8*, i8** %186, align 8, !tbaa !19
  %229 = getelementptr inbounds i8, i8* %228, i64 %218
  store i8 0, i8* %229, align 1, !tbaa !13
  %230 = icmp sgt i64 %211, 1
  br i1 %230, label %210, label %231, !llvm.loop !23

231:                                              ; preds = %225, %182
  %232 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8, !tbaa !19
  %234 = load i64, i64* %44, align 8, !tbaa !5
  %235 = getelementptr inbounds i8, i8* %233, i64 %234
  %236 = icmp ne i64 %234, 0
  %237 = getelementptr inbounds i8, i8* %235, i64 -1
  %238 = icmp ugt i8* %237, %233
  %239 = select i1 %236, i1 %238, i1 false
  br i1 %239, label %240, label %248

240:                                              ; preds = %231, %240
  %241 = phi i8* [ %246, %240 ], [ %237, %231 ]
  %242 = phi i8* [ %245, %240 ], [ %233, %231 ]
  %243 = load i8, i8* %242, align 1, !tbaa !13
  %244 = load i8, i8* %241, align 1, !tbaa !13
  store i8 %244, i8* %242, align 1, !tbaa !13
  store i8 %243, i8* %241, align 1, !tbaa !13
  %245 = getelementptr inbounds i8, i8* %242, i64 1
  %246 = getelementptr inbounds i8, i8* %241, i64 -1
  %247 = icmp ult i8* %245, %246
  br i1 %247, label %240, label %248, !llvm.loop !24

248:                                              ; preds = %240, %231
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_PRINT_SHORTEST_COMMON_SUPERSEQUENCE_reprocessed.cpp() #3 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !9, i64 0}
!19 = !{!6, !8, i64 0}
!20 = distinct !{!20, !15, !16}
!21 = distinct !{!21, !15, !16}
!22 = distinct !{!22, !15, !16}
!23 = distinct !{!23, !15, !16}
!24 = distinct !{!24, !15, !16}
