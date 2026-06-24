; ModuleID = 'benchmark/cpp_transcoder/LENGTH_LONGEST_SUB_STRING_CAN_MAKE_REMOVED/LENGTH_LONGEST_SUB_STRING_CAN_MAKE_REMOVED_processed.cpp'
source_filename = "benchmark/cpp_transcoder/LENGTH_LONGEST_SUB_STRING_CAN_MAKE_REMOVED/LENGTH_LONGEST_SUB_STRING_CAN_MAKE_REMOVED_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"struct.std::pair" = type { i8, i32 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LENGTH_LONGEST_SUB_STRING_CAN_MAKE_REMOVED_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef 8) #8
  %3 = bitcast i8* %2 to %"struct.std::pair"*
  %4 = bitcast i8* %2 to i64*
  store i64 -4294967232, i64* %4, align 4
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !5
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, i8* %2, i64 8
  %10 = bitcast i8* %9 to %"struct.std::pair"*
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  br label %20

12:                                               ; preds = %205
  %13 = icmp eq %"struct.std::pair"* %176, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1, %12
  %15 = phi %"struct.std::pair"* [ %176, %12 ], [ %3, %1 ]
  %16 = phi i32 [ %212, %12 ], [ 0, %1 ]
  %17 = getelementptr %"struct.std::pair", %"struct.std::pair"* %15, i64 0, i32 0
  tail call void @_ZdlPv(i8* noundef %17) #9
  br label %18

18:                                               ; preds = %12, %14
  %19 = phi i32 [ %212, %12 ], [ %16, %14 ]
  ret i32 %19

20:                                               ; preds = %8, %205
  %21 = phi i64 [ 0, %8 ], [ %213, %205 ]
  %22 = phi %"struct.std::pair"* [ %3, %8 ], [ %176, %205 ]
  %23 = phi %"struct.std::pair"* [ %10, %8 ], [ %206, %205 ]
  %24 = phi %"struct.std::pair"* [ %10, %8 ], [ %174, %205 ]
  %25 = phi i32 [ 0, %8 ], [ %212, %205 ]
  %26 = ptrtoint %"struct.std::pair"* %23 to i64
  %27 = ptrtoint %"struct.std::pair"* %22 to i64
  %28 = load i8*, i8** %11, align 8, !tbaa !12
  %29 = getelementptr inbounds i8, i8* %28, i64 %21
  %30 = load i8, i8* %29, align 1, !tbaa !13
  %31 = icmp eq %"struct.std::pair"* %23, %24
  br i1 %31, label %37, label %32

32:                                               ; preds = %20
  %33 = bitcast %"struct.std::pair"* %23 to i64*
  %34 = shl nuw nsw i64 %21, 32
  %35 = zext i8 %30 to i64
  %36 = or i64 %34, %35
  store i64 %36, i64* %33, align 4
  br label %173

37:                                               ; preds = %20
  %38 = ptrtoint %"struct.std::pair"* %23 to i64
  %39 = ptrtoint %"struct.std::pair"* %22 to i64
  %40 = sub i64 %38, %39
  %41 = ashr exact i64 %40, 3
  %42 = icmp eq i64 %40, 9223372036854775800
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  invoke void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #10
          to label %44 unwind label %218

44:                                               ; preds = %43
  unreachable

45:                                               ; preds = %37
  %46 = icmp eq i64 %40, 0
  %47 = select i1 %46, i64 1, i64 %41
  %48 = add nsw i64 %47, %41
  %49 = icmp ult i64 %48, %41
  %50 = icmp ugt i64 %48, 1152921504606846975
  %51 = or i1 %49, %50
  %52 = select i1 %51, i64 1152921504606846975, i64 %48
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %45
  %55 = shl nuw nsw i64 %52, 3
  %56 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef %55) #8
          to label %57 unwind label %216

57:                                               ; preds = %54
  %58 = bitcast i8* %56 to %"struct.std::pair"*
  br label %59

59:                                               ; preds = %57, %45
  %60 = phi %"struct.std::pair"* [ %58, %57 ], [ null, %45 ]
  %61 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %60, i64 %41
  %62 = bitcast %"struct.std::pair"* %61 to i64*
  %63 = shl nuw nsw i64 %21, 32
  %64 = zext i8 %30 to i64
  %65 = or i64 %63, %64
  store i64 %65, i64* %62, align 4
  %66 = icmp eq %"struct.std::pair"* %22, %23
  br i1 %66, label %166, label %67

67:                                               ; preds = %59
  %68 = add i64 %26, -8
  %69 = sub i64 %68, %27
  %70 = lshr i64 %69, 3
  %71 = add nuw nsw i64 %70, 1
  %72 = icmp ult i64 %69, 24
  br i1 %72, label %154, label %73

73:                                               ; preds = %67
  %74 = and i64 %71, 4611686018427387900
  %75 = getelementptr %"struct.std::pair", %"struct.std::pair"* %60, i64 %74
  %76 = getelementptr %"struct.std::pair", %"struct.std::pair"* %22, i64 %74
  %77 = add nsw i64 %74, -4
  %78 = lshr exact i64 %77, 2
  %79 = add nuw nsw i64 %78, 1
  %80 = and i64 %79, 3
  %81 = icmp ult i64 %77, 12
  br i1 %81, label %133, label %82

82:                                               ; preds = %73
  %83 = and i64 %79, 9223372036854775804
  br label %84

84:                                               ; preds = %84, %82
  %85 = phi i64 [ 0, %82 ], [ %130, %84 ]
  %86 = phi i64 [ 0, %82 ], [ %131, %84 ]
  %87 = getelementptr %"struct.std::pair", %"struct.std::pair"* %60, i64 %85
  %88 = getelementptr %"struct.std::pair", %"struct.std::pair"* %22, i64 %85
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17) #9
  %89 = bitcast %"struct.std::pair"* %88 to <2 x i64>*
  %90 = load <2 x i64>, <2 x i64>* %89, align 4, !alias.scope !17, !noalias !14
  %91 = getelementptr %"struct.std::pair", %"struct.std::pair"* %88, i64 2
  %92 = bitcast %"struct.std::pair"* %91 to <2 x i64>*
  %93 = load <2 x i64>, <2 x i64>* %92, align 4, !alias.scope !17, !noalias !14
  %94 = bitcast %"struct.std::pair"* %87 to <2 x i64>*
  store <2 x i64> %90, <2 x i64>* %94, align 4, !alias.scope !14, !noalias !17
  %95 = getelementptr %"struct.std::pair", %"struct.std::pair"* %87, i64 2
  %96 = bitcast %"struct.std::pair"* %95 to <2 x i64>*
  store <2 x i64> %93, <2 x i64>* %96, align 4, !alias.scope !14, !noalias !17
  %97 = or i64 %85, 4
  %98 = getelementptr %"struct.std::pair", %"struct.std::pair"* %60, i64 %97
  %99 = getelementptr %"struct.std::pair", %"struct.std::pair"* %22, i64 %97
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21) #9
  %100 = bitcast %"struct.std::pair"* %99 to <2 x i64>*
  %101 = load <2 x i64>, <2 x i64>* %100, align 4, !alias.scope !21, !noalias !19
  %102 = getelementptr %"struct.std::pair", %"struct.std::pair"* %99, i64 2
  %103 = bitcast %"struct.std::pair"* %102 to <2 x i64>*
  %104 = load <2 x i64>, <2 x i64>* %103, align 4, !alias.scope !21, !noalias !19
  %105 = bitcast %"struct.std::pair"* %98 to <2 x i64>*
  store <2 x i64> %101, <2 x i64>* %105, align 4, !alias.scope !19, !noalias !21
  %106 = getelementptr %"struct.std::pair", %"struct.std::pair"* %98, i64 2
  %107 = bitcast %"struct.std::pair"* %106 to <2 x i64>*
  store <2 x i64> %104, <2 x i64>* %107, align 4, !alias.scope !19, !noalias !21
  %108 = or i64 %85, 8
  %109 = getelementptr %"struct.std::pair", %"struct.std::pair"* %60, i64 %108
  %110 = getelementptr %"struct.std::pair", %"struct.std::pair"* %22, i64 %108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25) #9
  %111 = bitcast %"struct.std::pair"* %110 to <2 x i64>*
  %112 = load <2 x i64>, <2 x i64>* %111, align 4, !alias.scope !25, !noalias !23
  %113 = getelementptr %"struct.std::pair", %"struct.std::pair"* %110, i64 2
  %114 = bitcast %"struct.std::pair"* %113 to <2 x i64>*
  %115 = load <2 x i64>, <2 x i64>* %114, align 4, !alias.scope !25, !noalias !23
  %116 = bitcast %"struct.std::pair"* %109 to <2 x i64>*
  store <2 x i64> %112, <2 x i64>* %116, align 4, !alias.scope !23, !noalias !25
  %117 = getelementptr %"struct.std::pair", %"struct.std::pair"* %109, i64 2
  %118 = bitcast %"struct.std::pair"* %117 to <2 x i64>*
  store <2 x i64> %115, <2 x i64>* %118, align 4, !alias.scope !23, !noalias !25
  %119 = or i64 %85, 12
  %120 = getelementptr %"struct.std::pair", %"struct.std::pair"* %60, i64 %119
  %121 = getelementptr %"struct.std::pair", %"struct.std::pair"* %22, i64 %119
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29) #9
  %122 = bitcast %"struct.std::pair"* %121 to <2 x i64>*
  %123 = load <2 x i64>, <2 x i64>* %122, align 4, !alias.scope !29, !noalias !27
  %124 = getelementptr %"struct.std::pair", %"struct.std::pair"* %121, i64 2
  %125 = bitcast %"struct.std::pair"* %124 to <2 x i64>*
  %126 = load <2 x i64>, <2 x i64>* %125, align 4, !alias.scope !29, !noalias !27
  %127 = bitcast %"struct.std::pair"* %120 to <2 x i64>*
  store <2 x i64> %123, <2 x i64>* %127, align 4, !alias.scope !27, !noalias !29
  %128 = getelementptr %"struct.std::pair", %"struct.std::pair"* %120, i64 2
  %129 = bitcast %"struct.std::pair"* %128 to <2 x i64>*
  store <2 x i64> %126, <2 x i64>* %129, align 4, !alias.scope !27, !noalias !29
  %130 = add nuw i64 %85, 16
  %131 = add nuw i64 %86, 4
  %132 = icmp eq i64 %131, %83
  br i1 %132, label %133, label %84, !llvm.loop !31

133:                                              ; preds = %84, %73
  %134 = phi i64 [ 0, %73 ], [ %130, %84 ]
  %135 = icmp eq i64 %80, 0
  br i1 %135, label %152, label %136

136:                                              ; preds = %133, %136
  %137 = phi i64 [ %149, %136 ], [ %134, %133 ]
  %138 = phi i64 [ %150, %136 ], [ 0, %133 ]
  %139 = getelementptr %"struct.std::pair", %"struct.std::pair"* %60, i64 %137
  %140 = getelementptr %"struct.std::pair", %"struct.std::pair"* %22, i64 %137
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17) #9
  %141 = bitcast %"struct.std::pair"* %140 to <2 x i64>*
  %142 = load <2 x i64>, <2 x i64>* %141, align 4, !alias.scope !17, !noalias !14
  %143 = getelementptr %"struct.std::pair", %"struct.std::pair"* %140, i64 2
  %144 = bitcast %"struct.std::pair"* %143 to <2 x i64>*
  %145 = load <2 x i64>, <2 x i64>* %144, align 4, !alias.scope !17, !noalias !14
  %146 = bitcast %"struct.std::pair"* %139 to <2 x i64>*
  store <2 x i64> %142, <2 x i64>* %146, align 4, !alias.scope !14, !noalias !17
  %147 = getelementptr %"struct.std::pair", %"struct.std::pair"* %139, i64 2
  %148 = bitcast %"struct.std::pair"* %147 to <2 x i64>*
  store <2 x i64> %145, <2 x i64>* %148, align 4, !alias.scope !14, !noalias !17
  %149 = add nuw i64 %137, 4
  %150 = add i64 %138, 1
  %151 = icmp eq i64 %150, %80
  br i1 %151, label %152, label %136, !llvm.loop !34

152:                                              ; preds = %136, %133
  %153 = icmp eq i64 %71, %74
  br i1 %153, label %166, label %154

154:                                              ; preds = %67, %152
  %155 = phi %"struct.std::pair"* [ %60, %67 ], [ %75, %152 ]
  %156 = phi %"struct.std::pair"* [ %22, %67 ], [ %76, %152 ]
  br label %157

157:                                              ; preds = %154, %157
  %158 = phi %"struct.std::pair"* [ %164, %157 ], [ %155, %154 ]
  %159 = phi %"struct.std::pair"* [ %163, %157 ], [ %156, %154 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14) #9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17) #9
  %160 = bitcast %"struct.std::pair"* %159 to i64*
  %161 = bitcast %"struct.std::pair"* %158 to i64*
  %162 = load i64, i64* %160, align 4, !alias.scope !17, !noalias !14
  store i64 %162, i64* %161, align 4, !alias.scope !14, !noalias !17
  %163 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %159, i64 1
  %164 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %158, i64 1
  %165 = icmp eq %"struct.std::pair"* %163, %23
  br i1 %165, label %166, label %157, !llvm.loop !36

166:                                              ; preds = %157, %152, %59
  %167 = phi %"struct.std::pair"* [ %60, %59 ], [ %75, %152 ], [ %164, %157 ]
  %168 = icmp eq %"struct.std::pair"* %22, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %166
  %170 = getelementptr %"struct.std::pair", %"struct.std::pair"* %22, i64 0, i32 0
  tail call void @_ZdlPv(i8* noundef %170) #9
  br label %171

171:                                              ; preds = %169, %166
  %172 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %60, i64 %52
  br label %173

173:                                              ; preds = %171, %32
  %174 = phi %"struct.std::pair"* [ %172, %171 ], [ %24, %32 ]
  %175 = phi %"struct.std::pair"* [ %167, %171 ], [ %23, %32 ]
  %176 = phi %"struct.std::pair"* [ %60, %171 ], [ %22, %32 ]
  %177 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %175, i64 1
  %178 = ptrtoint %"struct.std::pair"* %176 to i64
  %179 = ptrtoint %"struct.std::pair"* %177 to i64
  %180 = sub i64 %179, %178
  %181 = icmp ugt i64 %180, 16
  br i1 %181, label %182, label %205

182:                                              ; preds = %173, %200
  %183 = phi i64 [ %203, %200 ], [ %180, %173 ]
  %184 = phi %"struct.std::pair"* [ %201, %200 ], [ %177, %173 ]
  %185 = ashr exact i64 %183, 3
  %186 = add nsw i64 %185, -3
  %187 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %176, i64 %186, i32 0
  %188 = load i8, i8* %187, align 4, !tbaa !38
  %189 = icmp eq i8 %188, 49
  br i1 %189, label %190, label %205

190:                                              ; preds = %182
  %191 = add nsw i64 %185, -2
  %192 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %176, i64 %191, i32 0
  %193 = load i8, i8* %192, align 4, !tbaa !38
  %194 = icmp eq i8 %193, 48
  br i1 %194, label %195, label %205

195:                                              ; preds = %190
  %196 = add nsw i64 %185, -1
  %197 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %176, i64 %196, i32 0
  %198 = load i8, i8* %197, align 4, !tbaa !38
  %199 = icmp eq i8 %198, 48
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %184, i64 -3
  %202 = ptrtoint %"struct.std::pair"* %201 to i64
  %203 = sub i64 %202, %178
  %204 = icmp ugt i64 %203, 16
  br i1 %204, label %182, label %205, !llvm.loop !41

205:                                              ; preds = %195, %190, %182, %200, %173
  %206 = phi %"struct.std::pair"* [ %177, %173 ], [ %201, %200 ], [ %184, %182 ], [ %184, %190 ], [ %184, %195 ]
  %207 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %206, i64 -1, i32 1
  %208 = load i32, i32* %207, align 4, !tbaa !42
  %209 = trunc i64 %21 to i32
  %210 = sub nsw i32 %209, %208
  %211 = icmp slt i32 %25, %210
  %212 = select i1 %211, i32 %210, i32 %25
  %213 = add nuw i64 %21, 1
  %214 = load i64, i64* %5, align 8, !tbaa !5
  %215 = icmp ugt i64 %214, %213
  br i1 %215, label %20, label %12, !llvm.loop !43

216:                                              ; preds = %54
  %217 = landingpad { i8*, i32 }
          cleanup
  br label %220

218:                                              ; preds = %43
  %219 = landingpad { i8*, i32 }
          cleanup
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi { i8*, i32 } [ %217, %216 ], [ %219, %218 ]
  %222 = icmp eq %"struct.std::pair"* %22, null
  br i1 %222, label %225, label %223

223:                                              ; preds = %220
  %224 = getelementptr %"struct.std::pair", %"struct.std::pair"* %22, i64 0, i32 0
  tail call void @_ZdlPv(i8* noundef %224) #9
  br label %225

225:                                              ; preds = %220, %223
  resume { i8*, i32 } %221
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LENGTH_LONGEST_SUB_STRING_CAN_MAKE_REMOVED_processed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #9
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #8 = { allocsize(0) }
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
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZSt19__relocate_object_aISt4pairIciES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!16 = distinct !{!16, !"_ZSt19__relocate_object_aISt4pairIciES1_SaIS1_EEvPT_PT0_RT1_"}
!17 = !{!18}
!18 = distinct !{!18, !16, !"_ZSt19__relocate_object_aISt4pairIciES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!19 = !{!20}
!20 = distinct !{!20, !16, !"_ZSt19__relocate_object_aISt4pairIciES1_SaIS1_EEvPT_PT0_RT1_: argument 0:It1"}
!21 = !{!22}
!22 = distinct !{!22, !16, !"_ZSt19__relocate_object_aISt4pairIciES1_SaIS1_EEvPT_PT0_RT1_: argument 1:It1"}
!23 = !{!24}
!24 = distinct !{!24, !16, !"_ZSt19__relocate_object_aISt4pairIciES1_SaIS1_EEvPT_PT0_RT1_: argument 0:It2"}
!25 = !{!26}
!26 = distinct !{!26, !16, !"_ZSt19__relocate_object_aISt4pairIciES1_SaIS1_EEvPT_PT0_RT1_: argument 1:It2"}
!27 = !{!28}
!28 = distinct !{!28, !16, !"_ZSt19__relocate_object_aISt4pairIciES1_SaIS1_EEvPT_PT0_RT1_: argument 0:It3"}
!29 = !{!30}
!30 = distinct !{!30, !16, !"_ZSt19__relocate_object_aISt4pairIciES1_SaIS1_EEvPT_PT0_RT1_: argument 1:It3"}
!31 = distinct !{!31, !32, !33}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !32, !37, !33}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!39, !9, i64 0}
!39 = !{!"_ZTSSt4pairIciE", !9, i64 0, !40, i64 4}
!40 = !{!"int", !9, i64 0}
!41 = distinct !{!41, !32}
!42 = !{!39, !40, i64 4}
!43 = distinct !{!43, !32}
