; ModuleID = 'llvm/cpp_transcoder/LONGEST_REPEATED_SUBSEQUENCE_1/LONGEST_REPEATED_SUBSEQUENCE_1_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/LONGEST_REPEATED_SUBSEQUENCE_1/LONGEST_REPEATED_SUBSEQUENCE_1_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LONGEST_REPEATED_SUBSEQUENCE_1_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !5
  %7 = trunc i64 %6 to i32
  %8 = add i64 %6, 1
  %9 = and i64 %8, 4294967295
  %10 = mul nuw i64 %9, %9
  %11 = alloca i32, i64 %10, align 16
  %12 = icmp slt i32 %7, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = shl nuw nsw i64 %9, 2
  %15 = add i64 %6, 1
  %16 = and i64 %15, 4294967295
  br label %17

17:                                               ; preds = %13, %17
  %18 = phi i64 [ 0, %13 ], [ %22, %17 ]
  %19 = mul nuw nsw i64 %9, %18
  %20 = getelementptr i32, i32* %11, i64 %19
  %21 = bitcast i32* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 %14, i1 false), !tbaa !12
  %22 = add nuw nsw i64 %18, 1
  %23 = icmp eq i64 %22, %16
  br i1 %23, label %24, label %17, !llvm.loop !14

24:                                               ; preds = %17, %2
  %25 = icmp slt i32 %7, 1
  br i1 %25, label %44, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %28 = add i32 %7, 1
  %29 = zext i32 %28 to i64
  %30 = load i8*, i8** %27, align 8, !tbaa !17
  %31 = zext i32 %28 to i64
  br label %32

32:                                               ; preds = %26, %67
  %33 = phi i64 [ 1, %26 ], [ %68, %67 ]
  %34 = add nsw i64 %33, -1
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  %36 = load i8, i8* %35, align 1, !tbaa !18
  %37 = mul nuw nsw i64 %9, %34
  %38 = getelementptr inbounds i32, i32* %11, i64 %37
  %39 = mul nuw nsw i64 %9, %33
  %40 = mul nuw nsw i64 %9, %33
  %41 = getelementptr inbounds i32, i32* %11, i64 %40
  %42 = mul nuw nsw i64 %9, %34
  %43 = getelementptr inbounds i32, i32* %11, i64 %42
  br label %70

44:                                               ; preds = %67, %24
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %46 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %45, %union.anon** %46, align 8, !tbaa !19
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %48, align 8, !tbaa !5
  %49 = bitcast %union.anon* %45 to i8*
  store i8 0, i8* %49, align 8, !tbaa !18
  %50 = icmp sgt i32 %7, 0
  br i1 %50, label %51, label %196

51:                                               ; preds = %44
  %52 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %55 = bitcast %"class.std::__cxx11::basic_string"* %4 to %union.anon**
  %56 = bitcast i64* %3 to i8*
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %60 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  %61 = bitcast %union.anon* %54 to i8*
  %62 = bitcast %union.anon* %45 to i8*
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %64 = getelementptr inbounds %union.anon, %union.anon* %54, i64 0, i32 0
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  %66 = icmp eq %"class.std::__cxx11::basic_string"* %4, %0
  br label %96

67:                                               ; preds = %89
  %68 = add nuw nsw i64 %33, 1
  %69 = icmp eq i64 %68, %29
  br i1 %69, label %44, label %32, !llvm.loop !20

70:                                               ; preds = %32, %89
  %71 = phi i64 [ 1, %32 ], [ %94, %89 ]
  %72 = add nsw i64 %71, -1
  %73 = getelementptr inbounds i8, i8* %30, i64 %72
  %74 = load i8, i8* %73, align 1, !tbaa !18
  %75 = icmp ne i8 %36, %74
  %76 = icmp eq i64 %33, %71
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds i32, i32* %38, i64 %72
  %80 = load i32, i32* %79, align 4, !tbaa !12
  %81 = add nsw i32 %80, 1
  br label %89

82:                                               ; preds = %70
  %83 = getelementptr inbounds i32, i32* %41, i64 %72
  %84 = getelementptr inbounds i32, i32* %43, i64 %71
  %85 = load i32, i32* %83, align 4
  %86 = load i32, i32* %84, align 4
  %87 = icmp slt i32 %85, %86
  %88 = select i1 %87, i32 %86, i32 %85
  br label %89

89:                                               ; preds = %78, %82
  %90 = phi i64 [ %39, %78 ], [ %40, %82 ]
  %91 = phi i32 [ %81, %78 ], [ %88, %82 ]
  %92 = getelementptr inbounds i32, i32* %11, i64 %90
  %93 = getelementptr inbounds i32, i32* %92, i64 %71
  store i32 %91, i32* %93, align 4, !tbaa !12
  %94 = add nuw nsw i64 %71, 1
  %95 = icmp eq i64 %94, %31
  br i1 %95, label %67, label %70, !llvm.loop !21

96:                                               ; preds = %51, %190
  %97 = phi i32 [ %7, %51 ], [ %192, %190 ]
  %98 = phi i32 [ %7, %51 ], [ %191, %190 ]
  %99 = sext i32 %98 to i64
  %100 = mul nsw i64 %9, %99
  %101 = getelementptr inbounds i32, i32* %11, i64 %100
  %102 = sext i32 %97 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4, !tbaa !12
  %105 = add nsw i32 %98, -1
  %106 = zext i32 %105 to i64
  %107 = mul nuw nsw i64 %9, %106
  %108 = getelementptr inbounds i32, i32* %11, i64 %107
  %109 = add nsw i32 %97, -1
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4, !tbaa !12
  %113 = add nsw i32 %112, 1
  %114 = icmp eq i32 %104, %113
  br i1 %114, label %115, label %184

115:                                              ; preds = %96
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %52) #9
  %116 = load i8*, i8** %53, align 8, !tbaa !17
  %117 = getelementptr inbounds i8, i8* %116, i64 %106
  %118 = load i8, i8* %117, align 1, !tbaa !18
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  store %union.anon* %54, %union.anon** %55, align 8, !tbaa !19, !alias.scope !22
  %119 = load i8*, i8** %47, align 8, !tbaa !17, !noalias !22
  %120 = load i64, i64* %48, align 8, !tbaa !5, !noalias !22
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %56) #9, !noalias !22
  store i64 %120, i64* %3, align 8, !tbaa !25, !noalias !22
  %121 = icmp ugt i64 %120, 15
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i64* noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %124 unwind label %176

124:                                              ; preds = %122
  store i8* %123, i8** %57, align 8, !tbaa !17, !alias.scope !22
  %125 = load i64, i64* %3, align 8, !tbaa !25, !noalias !22
  store i64 %125, i64* %58, align 8, !tbaa !18, !alias.scope !22
  br label %126

126:                                              ; preds = %124, %115
  %127 = load i8*, i8** %59, align 8, !tbaa !17, !alias.scope !22
  switch i64 %120, label %130 [
    i64 1, label %128
    i64 0, label %131
  ]

128:                                              ; preds = %126
  %129 = load i8, i8* %119, align 1, !tbaa !18
  store i8 %129, i8* %127, align 1, !tbaa !18
  br label %131

130:                                              ; preds = %126
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %127, i8* align 1 %119, i64 %120, i1 false) #9
  br label %131

131:                                              ; preds = %130, %128, %126
  %132 = load i64, i64* %3, align 8, !tbaa !25, !noalias !22
  store i64 %132, i64* %60, align 8, !tbaa !5, !alias.scope !22
  %133 = load i8*, i8** %59, align 8, !tbaa !17, !alias.scope !22
  %134 = getelementptr inbounds i8, i8* %133, i64 %132
  store i8 0, i8* %134, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %56) #9, !noalias !22
  %135 = load i64, i64* %60, align 8, !tbaa !5, !alias.scope !22
  %136 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %135, i64 noundef 0, i64 noundef 1, i8 noundef signext %118)
          to label %143 unwind label %137

137:                                              ; preds = %131
  %138 = landingpad { i8*, i32 }
          cleanup
  %139 = load i8*, i8** %59, align 8, !tbaa !17, !alias.scope !22
  %140 = bitcast %union.anon* %54 to i8*
  %141 = icmp eq i8* %139, %140
  br i1 %141, label %178, label %142

142:                                              ; preds = %137
  call void @_ZdlPv(i8* noundef %139) #9
  br label %178

143:                                              ; preds = %131
  %144 = load i8*, i8** %59, align 8, !tbaa !17
  %145 = icmp eq i8* %144, %61
  br i1 %145, label %146, label %160

146:                                              ; preds = %143
  br i1 %66, label %170, label %147, !prof !26

147:                                              ; preds = %146
  %148 = load i64, i64* %60, align 8, !tbaa !5
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %147
  %151 = load i8*, i8** %47, align 8, !tbaa !17
  %152 = icmp eq i64 %148, 1
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i8, i8* %144, align 1, !tbaa !18
  store i8 %154, i8* %151, align 1, !tbaa !18
  br label %156

155:                                              ; preds = %150
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %151, i8* align 1 %144, i64 %148, i1 false) #9
  br label %156

156:                                              ; preds = %155, %153, %147
  %157 = load i64, i64* %60, align 8, !tbaa !5
  store i64 %157, i64* %48, align 8, !tbaa !5
  %158 = load i8*, i8** %47, align 8, !tbaa !17
  %159 = getelementptr inbounds i8, i8* %158, i64 %157
  store i8 0, i8* %159, align 1, !tbaa !18
  br label %170

160:                                              ; preds = %143
  %161 = load i8*, i8** %47, align 8, !tbaa !17
  %162 = icmp eq i8* %161, %62
  %163 = load i64, i64* %63, align 8
  store i8* %144, i8** %47, align 8, !tbaa !17
  %164 = load i64, i64* %60, align 8, !tbaa !5
  store i64 %164, i64* %48, align 8, !tbaa !5
  %165 = load i64, i64* %64, align 8, !tbaa !18
  store i64 %165, i64* %63, align 8, !tbaa !18
  %166 = icmp eq i8* %161, null
  %167 = or i1 %162, %166
  br i1 %167, label %169, label %168

168:                                              ; preds = %160
  store i8* %161, i8** %59, align 8, !tbaa !17
  store i64 %163, i64* %65, align 8, !tbaa !18
  br label %170

169:                                              ; preds = %160
  store %union.anon* %54, %union.anon** %55, align 8, !tbaa !17
  br label %170

170:                                              ; preds = %146, %156, %168, %169
  store i64 0, i64* %60, align 8, !tbaa !5
  %171 = load i8*, i8** %59, align 8, !tbaa !17
  store i8 0, i8* %171, align 1, !tbaa !18
  %172 = load i8*, i8** %59, align 8, !tbaa !17
  %173 = icmp eq i8* %172, %61
  br i1 %173, label %175, label %174

174:                                              ; preds = %170
  call void @_ZdlPv(i8* noundef %172) #9
  br label %175

175:                                              ; preds = %170, %174
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %52) #9
  br label %190

176:                                              ; preds = %122
  %177 = landingpad { i8*, i32 }
          cleanup
  br label %178

178:                                              ; preds = %137, %142, %176
  %179 = phi { i8*, i32 } [ %177, %176 ], [ %138, %142 ], [ %138, %137 ]
  %180 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %180) #9
  %181 = load i8*, i8** %47, align 8, !tbaa !17
  %182 = bitcast %union.anon* %45 to i8*
  %183 = icmp eq i8* %181, %182
  br i1 %183, label %214, label %212

184:                                              ; preds = %96
  %185 = getelementptr inbounds i32, i32* %108, i64 %102
  %186 = load i32, i32* %185, align 4, !tbaa !12
  %187 = icmp eq i32 %104, %186
  %188 = select i1 %187, i32 %105, i32 %98
  %189 = select i1 %187, i32 %97, i32 %109
  br label %190

190:                                              ; preds = %184, %175
  %191 = phi i32 [ %105, %175 ], [ %188, %184 ]
  %192 = phi i32 [ %109, %175 ], [ %189, %184 ]
  %193 = icmp sgt i32 %191, 0
  %194 = icmp sgt i32 %192, 0
  %195 = select i1 %193, i1 %194, i1 false
  br i1 %195, label %96, label %196, !llvm.loop !27

196:                                              ; preds = %190, %44
  %197 = load i8*, i8** %47, align 8, !tbaa !17
  %198 = load i64, i64* %48, align 8, !tbaa !5
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  %200 = icmp ne i64 %198, 0
  %201 = getelementptr inbounds i8, i8* %199, i64 -1
  %202 = icmp ugt i8* %201, %197
  %203 = select i1 %200, i1 %202, i1 false
  br i1 %203, label %204, label %213

204:                                              ; preds = %196, %204
  %205 = phi i8* [ %210, %204 ], [ %201, %196 ]
  %206 = phi i8* [ %209, %204 ], [ %197, %196 ]
  %207 = load i8, i8* %206, align 1, !tbaa !18
  %208 = load i8, i8* %205, align 1, !tbaa !18
  store i8 %208, i8* %206, align 1, !tbaa !18
  store i8 %207, i8* %205, align 1, !tbaa !18
  %209 = getelementptr inbounds i8, i8* %206, i64 1
  %210 = getelementptr inbounds i8, i8* %205, i64 -1
  %211 = icmp ult i8* %209, %210
  br i1 %211, label %204, label %213, !llvm.loop !28

212:                                              ; preds = %178
  call void @_ZdlPv(i8* noundef %181) #9
  br label %214

213:                                              ; preds = %204, %196
  ret void

214:                                              ; preds = %212, %178
  resume { i8*, i32 } %179
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

declare noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64* noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LONGEST_REPEATED_SUBSEQUENCE_1_reprocessed.cpp() #3 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #9
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !9, i64 0}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!6, !8, i64 0}
!18 = !{!9, !9, i64 0}
!19 = !{!7, !8, i64 0}
!20 = distinct !{!20, !15, !16}
!21 = distinct !{!21, !15, !16}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_: argument 0"}
!24 = distinct !{!24, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_"}
!25 = !{!11, !11, i64 0}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = distinct !{!27, !15, !16}
!28 = distinct !{!28, !15, !16}
