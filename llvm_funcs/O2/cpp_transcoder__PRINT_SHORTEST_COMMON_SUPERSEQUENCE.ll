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
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %19 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %18, %union.anon** %19, align 8, !tbaa !12
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %20, align 8, !tbaa !5
  %21 = bitcast %union.anon* %18 to i8*
  store i8 0, i8* %21, align 8, !tbaa !13
  br label %184

22:                                               ; preds = %3
  %23 = icmp slt i32 %9, 0
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %26 = add i64 %8, 1
  %27 = add i64 %5, 1
  %28 = and i64 %27, 4294967295
  %29 = and i64 %26, 4294967295
  %30 = icmp eq i64 %29, 1
  br label %31

31:                                               ; preds = %22, %57
  %32 = phi i64 [ 0, %22 ], [ %58, %57 ]
  br i1 %23, label %57, label %33

33:                                               ; preds = %31
  %34 = icmp eq i64 %32, 0
  %35 = add nsw i64 %32, -1
  %36 = mul nsw i64 %13, %35
  %37 = getelementptr inbounds i32, i32* %15, i64 %36
  %38 = mul nuw nsw i64 %13, %32
  %39 = getelementptr inbounds i32, i32* %15, i64 %38
  br i1 %34, label %42, label %40

40:                                               ; preds = %33
  %41 = trunc i64 %32 to i32
  store i32 %41, i32* %39, align 4, !tbaa !14
  br label %43

42:                                               ; preds = %33
  store i32 0, i32* %15, align 16, !tbaa !14
  br label %43

43:                                               ; preds = %42, %40
  br i1 %30, label %57, label %60

44:                                               ; preds = %57
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %46 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %45, %union.anon** %46, align 8, !tbaa !12
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %47, align 8, !tbaa !5
  %48 = bitcast %union.anon* %45 to i8*
  store i8 0, i8* %48, align 8, !tbaa !13
  %49 = icmp sgt i32 %6, 0
  %50 = icmp sgt i32 %9, 0
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %91

52:                                               ; preds = %44
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  br label %100

57:                                               ; preds = %88, %43, %31
  %58 = add nuw nsw i64 %32, 1
  %59 = icmp eq i64 %58, %28
  br i1 %59, label %44, label %31, !llvm.loop !16

60:                                               ; preds = %43, %88
  %61 = phi i64 [ %89, %88 ], [ 1, %43 ]
  br i1 %34, label %62, label %65

62:                                               ; preds = %60
  %63 = getelementptr inbounds i32, i32* %15, i64 %61
  %64 = trunc i64 %61 to i32
  store i32 %64, i32* %63, align 4, !tbaa !14
  br label %88

65:                                               ; preds = %60
  %66 = load i8*, i8** %24, align 8, !tbaa !18
  %67 = getelementptr inbounds i8, i8* %66, i64 %35
  %68 = load i8, i8* %67, align 1, !tbaa !13
  %69 = add nsw i64 %61, -1
  %70 = load i8*, i8** %25, align 8, !tbaa !18
  %71 = getelementptr inbounds i8, i8* %70, i64 %69
  %72 = load i8, i8* %71, align 1, !tbaa !13
  %73 = icmp eq i8 %68, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %65
  %75 = getelementptr inbounds i32, i32* %37, i64 %69
  %76 = load i32, i32* %75, align 4, !tbaa !14
  %77 = add nsw i32 %76, 1
  %78 = getelementptr inbounds i32, i32* %39, i64 %61
  store i32 %77, i32* %78, align 4, !tbaa !14
  br label %88

79:                                               ; preds = %65
  %80 = getelementptr inbounds i32, i32* %37, i64 %61
  %81 = getelementptr inbounds i32, i32* %39, i64 %69
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %80, align 4
  %84 = icmp slt i32 %82, %83
  %85 = select i1 %84, i32 %82, i32 %83
  %86 = add nsw i32 %85, 1
  %87 = getelementptr inbounds i32, i32* %39, i64 %61
  store i32 %86, i32* %87, align 4, !tbaa !14
  br label %88

88:                                               ; preds = %62, %74, %79
  %89 = add nuw nsw i64 %61, 1
  %90 = icmp eq i64 %89, %29
  br i1 %90, label %57, label %60, !llvm.loop !19

91:                                               ; preds = %175, %44
  %92 = phi i32 [ %6, %44 ], [ %177, %175 ]
  %93 = phi i32 [ %9, %44 ], [ %178, %175 ]
  %94 = icmp sgt i32 %92, 0
  br i1 %94, label %95, label %184

95:                                               ; preds = %91
  %96 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %97 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %98 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %99 = zext i32 %92 to i64
  br label %194

100:                                              ; preds = %52, %175
  %101 = phi i32 [ %9, %52 ], [ %178, %175 ]
  %102 = phi i32 [ %6, %52 ], [ %177, %175 ]
  %103 = add nsw i32 %102, -1
  %104 = zext i32 %103 to i64
  %105 = load i8*, i8** %53, align 8, !tbaa !18
  %106 = getelementptr inbounds i8, i8* %105, i64 %104
  %107 = load i8, i8* %106, align 1, !tbaa !13
  %108 = add nsw i32 %101, -1
  %109 = zext i32 %108 to i64
  %110 = load i8*, i8** %54, align 8, !tbaa !18
  %111 = getelementptr inbounds i8, i8* %110, i64 %109
  %112 = load i8, i8* %111, align 1, !tbaa !13
  %113 = icmp eq i8 %107, %112
  br i1 %113, label %114, label %142

114:                                              ; preds = %100
  %115 = load i64, i64* %47, align 8, !tbaa !5
  %116 = add i64 %115, 1
  %117 = load i8*, i8** %55, align 8, !tbaa !18
  %118 = icmp eq i8* %117, %48
  %119 = load i64, i64* %56, align 8
  %120 = select i1 %118, i64 15, i64 %119
  %121 = icmp ugt i64 %116, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %115, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %123 unwind label %132

123:                                              ; preds = %122
  %124 = load i8*, i8** %55, align 8, !tbaa !18
  br label %125

125:                                              ; preds = %123, %114
  %126 = phi i8* [ %124, %123 ], [ %117, %114 ]
  %127 = getelementptr inbounds i8, i8* %126, i64 %115
  store i8 %107, i8* %127, align 1, !tbaa !13
  br label %175

128:                                              ; preds = %231
  %129 = landingpad { i8*, i32 }
          cleanup
  br label %134

130:                                              ; preds = %208
  %131 = landingpad { i8*, i32 }
          cleanup
  br label %134

132:                                              ; preds = %169, %162, %122
  %133 = landingpad { i8*, i32 }
          cleanup
  br label %134

134:                                              ; preds = %130, %132, %128
  %135 = phi i8* [ %186, %128 ], [ %48, %130 ], [ %48, %132 ]
  %136 = phi { i8*, i32 } [ %129, %128 ], [ %131, %130 ], [ %133, %132 ]
  %137 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8, !tbaa !18
  %139 = icmp eq i8* %138, %135
  br i1 %139, label %141, label %140

140:                                              ; preds = %134
  tail call void @_ZdlPv(i8* noundef %138) #5
  br label %141

141:                                              ; preds = %134, %140
  resume { i8*, i32 } %136

142:                                              ; preds = %100
  %143 = mul nuw nsw i64 %13, %104
  %144 = getelementptr inbounds i32, i32* %15, i64 %143
  %145 = zext i32 %101 to i64
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4, !tbaa !14
  %148 = zext i32 %102 to i64
  %149 = mul nuw nsw i64 %13, %148
  %150 = getelementptr inbounds i32, i32* %15, i64 %149
  %151 = getelementptr inbounds i32, i32* %150, i64 %109
  %152 = load i32, i32* %151, align 4, !tbaa !14
  %153 = icmp sgt i32 %147, %152
  %154 = load i64, i64* %47, align 8, !tbaa !5
  %155 = add i64 %154, 1
  %156 = load i8*, i8** %55, align 8, !tbaa !18
  %157 = icmp eq i8* %156, %48
  %158 = load i64, i64* %56, align 8
  %159 = select i1 %157, i64 15, i64 %158
  %160 = icmp ugt i64 %155, %159
  br i1 %153, label %161, label %168

161:                                              ; preds = %142
  br i1 %160, label %162, label %165

162:                                              ; preds = %161
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %154, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %163 unwind label %132

163:                                              ; preds = %162
  %164 = load i8*, i8** %55, align 8, !tbaa !18
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i8* [ %164, %163 ], [ %156, %161 ]
  %167 = getelementptr inbounds i8, i8* %166, i64 %154
  store i8 %112, i8* %167, align 1, !tbaa !13
  br label %175

168:                                              ; preds = %142
  br i1 %160, label %169, label %172

169:                                              ; preds = %168
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %154, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %170 unwind label %132

170:                                              ; preds = %169
  %171 = load i8*, i8** %55, align 8, !tbaa !18
  br label %172

172:                                              ; preds = %170, %168
  %173 = phi i8* [ %171, %170 ], [ %156, %168 ]
  %174 = getelementptr inbounds i8, i8* %173, i64 %154
  store i8 %107, i8* %174, align 1, !tbaa !13
  br label %175

175:                                              ; preds = %165, %172, %125
  %176 = phi i64 [ %155, %165 ], [ %155, %172 ], [ %116, %125 ]
  %177 = phi i32 [ %102, %165 ], [ %103, %172 ], [ %103, %125 ]
  %178 = phi i32 [ %108, %165 ], [ %101, %172 ], [ %108, %125 ]
  store i64 %176, i64* %47, align 8, !tbaa !5
  %179 = load i8*, i8** %55, align 8, !tbaa !18
  %180 = getelementptr inbounds i8, i8* %179, i64 %176
  store i8 0, i8* %180, align 1, !tbaa !13
  %181 = icmp ne i32 %177, 0
  %182 = icmp sgt i32 %178, 0
  %183 = select i1 %181, i1 %182, i1 false
  br i1 %183, label %100, label %91, !llvm.loop !21

184:                                              ; preds = %211, %17, %91
  %185 = phi i32 [ %93, %91 ], [ %9, %17 ], [ %93, %211 ]
  %186 = phi i8* [ %48, %91 ], [ %21, %17 ], [ %48, %211 ]
  %187 = phi i64* [ %47, %91 ], [ %20, %17 ], [ %47, %211 ]
  %188 = icmp sgt i32 %185, 0
  br i1 %188, label %189, label %240

189:                                              ; preds = %184
  %190 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %191 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %192 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %193 = zext i32 %185 to i64
  br label %217

194:                                              ; preds = %95, %211
  %195 = phi i64 [ %99, %95 ], [ %196, %211 ]
  %196 = add nsw i64 %195, -1
  %197 = and i64 %196, 4294967295
  %198 = load i8*, i8** %96, align 8, !tbaa !18
  %199 = getelementptr inbounds i8, i8* %198, i64 %197
  %200 = load i8, i8* %199, align 1, !tbaa !13
  %201 = load i64, i64* %47, align 8, !tbaa !5
  %202 = add i64 %201, 1
  %203 = load i8*, i8** %97, align 8, !tbaa !18
  %204 = icmp eq i8* %203, %48
  %205 = load i64, i64* %98, align 8
  %206 = select i1 %204, i64 15, i64 %205
  %207 = icmp ugt i64 %202, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %194
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %201, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %209 unwind label %130

209:                                              ; preds = %208
  %210 = load i8*, i8** %97, align 8, !tbaa !18
  br label %211

211:                                              ; preds = %209, %194
  %212 = phi i8* [ %210, %209 ], [ %203, %194 ]
  %213 = getelementptr inbounds i8, i8* %212, i64 %201
  store i8 %200, i8* %213, align 1, !tbaa !13
  store i64 %202, i64* %47, align 8, !tbaa !5
  %214 = load i8*, i8** %97, align 8, !tbaa !18
  %215 = getelementptr inbounds i8, i8* %214, i64 %202
  store i8 0, i8* %215, align 1, !tbaa !13
  %216 = icmp ugt i64 %195, 1
  br i1 %216, label %194, label %184, !llvm.loop !22

217:                                              ; preds = %189, %234
  %218 = phi i64 [ %193, %189 ], [ %219, %234 ]
  %219 = add nsw i64 %218, -1
  %220 = and i64 %219, 4294967295
  %221 = load i8*, i8** %190, align 8, !tbaa !18
  %222 = getelementptr inbounds i8, i8* %221, i64 %220
  %223 = load i8, i8* %222, align 1, !tbaa !13
  %224 = load i64, i64* %187, align 8, !tbaa !5
  %225 = add i64 %224, 1
  %226 = load i8*, i8** %191, align 8, !tbaa !18
  %227 = icmp eq i8* %226, %186
  %228 = load i64, i64* %192, align 8
  %229 = select i1 %227, i64 15, i64 %228
  %230 = icmp ugt i64 %225, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %217
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %224, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %232 unwind label %128

232:                                              ; preds = %231
  %233 = load i8*, i8** %191, align 8, !tbaa !18
  br label %234

234:                                              ; preds = %232, %217
  %235 = phi i8* [ %233, %232 ], [ %226, %217 ]
  %236 = getelementptr inbounds i8, i8* %235, i64 %224
  store i8 %223, i8* %236, align 1, !tbaa !13
  store i64 %225, i64* %187, align 8, !tbaa !5
  %237 = load i8*, i8** %191, align 8, !tbaa !18
  %238 = getelementptr inbounds i8, i8* %237, i64 %225
  store i8 0, i8* %238, align 1, !tbaa !13
  %239 = icmp ugt i64 %218, 1
  br i1 %239, label %217, label %240, !llvm.loop !23

240:                                              ; preds = %234, %184
  %241 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8, !tbaa !18
  %243 = load i64, i64* %187, align 8, !tbaa !5
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  %245 = icmp ne i64 %243, 0
  %246 = getelementptr inbounds i8, i8* %244, i64 -1
  %247 = icmp ugt i8* %246, %242
  %248 = select i1 %245, i1 %247, i1 false
  br i1 %248, label %249, label %257

249:                                              ; preds = %240, %249
  %250 = phi i8* [ %255, %249 ], [ %246, %240 ]
  %251 = phi i8* [ %254, %249 ], [ %242, %240 ]
  %252 = load i8, i8* %251, align 1, !tbaa !13
  %253 = load i8, i8* %250, align 1, !tbaa !13
  store i8 %253, i8* %251, align 1, !tbaa !13
  store i8 %252, i8* %250, align 1, !tbaa !13
  %254 = getelementptr inbounds i8, i8* %251, i64 1
  %255 = getelementptr inbounds i8, i8* %250, i64 -1
  %256 = icmp ult i8* %254, %255
  br i1 %256, label %249, label %257, !llvm.loop !24

257:                                              ; preds = %249, %240
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_PRINT_SHORTEST_COMMON_SUPERSEQUENCE_reprocessed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
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
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !9, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!6, !8, i64 0}
!19 = distinct !{!19, !17, !20}
!20 = !{!"llvm.loop.peeled.count", i32 1}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
