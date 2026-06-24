; ModuleID = 'llvm/cpp_transcoder/CHECK_CHARACTERS_GIVEN_STRING_CAN_REARRANGED_FORM_PALINDROME_1/CHECK_CHARACTERS_GIVEN_STRING_CAN_REARRANGED_FORM_PALINDROME_1_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/CHECK_CHARACTERS_GIVEN_STRING_CAN_REARRANGED_FORM_PALINDROME_1/CHECK_CHARACTERS_GIVEN_STRING_CAN_REARRANGED_FORM_PALINDROME_1_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_CHECK_CHARACTERS_GIVEN_STRING_CAN_REARRANGED_FORM_PALINDROME_1_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !5
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  br label %15

7:                                                ; preds = %193, %1
  %8 = phi i8* [ null, %1 ], [ %195, %193 ]
  %9 = phi i8* [ null, %1 ], [ %196, %193 ]
  %10 = phi i64 [ %3, %1 ], [ %198, %193 ]
  %11 = and i64 %10, 1
  %12 = icmp eq i64 %11, 0
  %13 = icmp eq i8* %9, %8
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %210, label %202

15:                                               ; preds = %5, %193
  %16 = phi i64 [ 0, %5 ], [ %197, %193 ]
  %17 = phi i8* [ null, %5 ], [ %196, %193 ]
  %18 = phi i8* [ null, %5 ], [ %195, %193 ]
  %19 = phi i8* [ null, %5 ], [ %194, %193 ]
  %20 = load i8*, i8** %6, align 8, !tbaa !12
  %21 = getelementptr inbounds i8, i8* %20, i64 %16
  %22 = ptrtoint i8* %18 to i64
  %23 = ptrtoint i8* %17 to i64
  %24 = sub i64 %22, %23
  %25 = icmp sgt i64 %24, 3
  br i1 %25, label %26, label %50

26:                                               ; preds = %15
  %27 = ashr i64 %24, 2
  %28 = load i8, i8* %21, align 1, !tbaa !13
  br label %29

29:                                               ; preds = %46, %26
  %30 = phi i64 [ %27, %26 ], [ %48, %46 ]
  %31 = phi i8* [ %17, %26 ], [ %47, %46 ]
  %32 = load i8, i8* %31, align 1, !tbaa !13
  %33 = icmp eq i8 %32, %28
  br i1 %33, label %79, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds i8, i8* %31, i64 1
  %36 = load i8, i8* %35, align 1, !tbaa !13
  %37 = icmp eq i8 %36, %28
  br i1 %37, label %77, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, i8* %31, i64 2
  %40 = load i8, i8* %39, align 1, !tbaa !13
  %41 = icmp eq i8 %40, %28
  br i1 %41, label %75, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, i8* %31, i64 3
  %44 = load i8, i8* %43, align 1, !tbaa !13
  %45 = icmp eq i8 %44, %28
  br i1 %45, label %73, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, i8* %31, i64 4
  %48 = add nsw i64 %30, -1
  %49 = icmp sgt i64 %30, 1
  br i1 %49, label %29, label %50, !llvm.loop !14

50:                                               ; preds = %46, %15
  %51 = phi i8* [ %17, %15 ], [ %47, %46 ]
  %52 = ptrtoint i8* %51 to i64
  %53 = sub i64 %22, %52
  switch i64 %53, label %72 [
    i64 3, label %54
    i64 2, label %60
    i64 1, label %67
  ]

54:                                               ; preds = %50
  %55 = load i8, i8* %51, align 1, !tbaa !13
  %56 = load i8, i8* %21, align 1, !tbaa !13
  %57 = icmp eq i8 %55, %56
  br i1 %57, label %79, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds i8, i8* %51, i64 1
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi i8* [ %51, %50 ], [ %59, %58 ]
  %62 = load i8, i8* %61, align 1, !tbaa !13
  %63 = load i8, i8* %21, align 1, !tbaa !13
  %64 = icmp eq i8 %62, %63
  br i1 %64, label %79, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds i8, i8* %61, i64 1
  br label %67

67:                                               ; preds = %65, %50
  %68 = phi i8* [ %51, %50 ], [ %66, %65 ]
  %69 = load i8, i8* %68, align 1, !tbaa !13
  %70 = load i8, i8* %21, align 1, !tbaa !13
  %71 = icmp eq i8 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %67, %50
  br label %79

73:                                               ; preds = %42
  %74 = getelementptr inbounds i8, i8* %31, i64 3
  br label %79

75:                                               ; preds = %38
  %76 = getelementptr inbounds i8, i8* %31, i64 2
  br label %79

77:                                               ; preds = %34
  %78 = getelementptr inbounds i8, i8* %31, i64 1
  br label %79

79:                                               ; preds = %29, %73, %75, %77, %72, %67, %60, %54
  %80 = phi i8* [ %18, %72 ], [ %51, %54 ], [ %61, %60 ], [ %68, %67 ], [ %74, %73 ], [ %76, %75 ], [ %78, %77 ], [ %31, %29 ]
  %81 = icmp eq i8* %80, %18
  br i1 %81, label %157, label %82

82:                                               ; preds = %79
  br i1 %25, label %83, label %107

83:                                               ; preds = %82
  %84 = ashr i64 %24, 2
  %85 = load i8, i8* %21, align 1, !tbaa !13
  br label %86

86:                                               ; preds = %103, %83
  %87 = phi i64 [ %84, %83 ], [ %105, %103 ]
  %88 = phi i8* [ %17, %83 ], [ %104, %103 ]
  %89 = load i8, i8* %88, align 1, !tbaa !13
  %90 = icmp eq i8 %89, %85
  br i1 %90, label %136, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds i8, i8* %88, i64 1
  %93 = load i8, i8* %92, align 1, !tbaa !13
  %94 = icmp eq i8 %93, %85
  br i1 %94, label %134, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds i8, i8* %88, i64 2
  %97 = load i8, i8* %96, align 1, !tbaa !13
  %98 = icmp eq i8 %97, %85
  br i1 %98, label %132, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds i8, i8* %88, i64 3
  %101 = load i8, i8* %100, align 1, !tbaa !13
  %102 = icmp eq i8 %101, %85
  br i1 %102, label %130, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds i8, i8* %88, i64 4
  %105 = add nsw i64 %87, -1
  %106 = icmp sgt i64 %87, 1
  br i1 %106, label %86, label %107, !llvm.loop !14

107:                                              ; preds = %103, %82
  %108 = phi i8* [ %17, %82 ], [ %104, %103 ]
  %109 = ptrtoint i8* %108 to i64
  %110 = sub i64 %22, %109
  switch i64 %110, label %129 [
    i64 3, label %111
    i64 2, label %117
    i64 1, label %124
  ]

111:                                              ; preds = %107
  %112 = load i8, i8* %108, align 1, !tbaa !13
  %113 = load i8, i8* %21, align 1, !tbaa !13
  %114 = icmp eq i8 %112, %113
  br i1 %114, label %136, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds i8, i8* %108, i64 1
  br label %117

117:                                              ; preds = %115, %107
  %118 = phi i8* [ %108, %107 ], [ %116, %115 ]
  %119 = load i8, i8* %118, align 1, !tbaa !13
  %120 = load i8, i8* %21, align 1, !tbaa !13
  %121 = icmp eq i8 %119, %120
  br i1 %121, label %136, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds i8, i8* %118, i64 1
  br label %124

124:                                              ; preds = %122, %107
  %125 = phi i8* [ %108, %107 ], [ %123, %122 ]
  %126 = load i8, i8* %125, align 1, !tbaa !13
  %127 = load i8, i8* %21, align 1, !tbaa !13
  %128 = icmp eq i8 %126, %127
  br i1 %128, label %136, label %129

129:                                              ; preds = %124, %107
  br label %136

130:                                              ; preds = %99
  %131 = getelementptr inbounds i8, i8* %88, i64 3
  br label %136

132:                                              ; preds = %95
  %133 = getelementptr inbounds i8, i8* %88, i64 2
  br label %136

134:                                              ; preds = %91
  %135 = getelementptr inbounds i8, i8* %88, i64 1
  br label %136

136:                                              ; preds = %86, %130, %132, %134, %129, %124, %117, %111
  %137 = phi i8* [ %18, %129 ], [ %108, %111 ], [ %118, %117 ], [ %125, %124 ], [ %131, %130 ], [ %133, %132 ], [ %135, %134 ], [ %88, %86 ]
  %138 = ptrtoint i8* %137 to i64
  %139 = sub i64 %138, %23
  %140 = getelementptr inbounds i8, i8* %17, i64 %139
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  %142 = icmp eq i8* %141, %18
  br i1 %142, label %148, label %143

143:                                              ; preds = %136
  %144 = ptrtoint i8* %141 to i64
  %145 = sub i64 %22, %144
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %140, i8* nonnull align 1 %141, i64 %145, i1 false) #8
  br label %148

148:                                              ; preds = %136, %143, %147
  %149 = getelementptr inbounds i8, i8* %18, i64 -1
  br label %193

150:                                              ; preds = %179
  %151 = landingpad { i8*, i32 }
          cleanup
  br label %154

152:                                              ; preds = %164, %177
  %153 = landingpad { i8*, i32 }
          cleanup
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi { i8*, i32 } [ %151, %150 ], [ %153, %152 ]
  %156 = icmp eq i8* %17, null
  br i1 %156, label %201, label %200

157:                                              ; preds = %79
  %158 = icmp eq i8* %18, %19
  br i1 %158, label %162, label %159

159:                                              ; preds = %157
  %160 = load i8, i8* %21, align 1, !tbaa !13
  store i8 %160, i8* %18, align 1, !tbaa !13
  %161 = getelementptr inbounds i8, i8* %18, i64 1
  br label %193

162:                                              ; preds = %157
  %163 = icmp eq i64 %24, 9223372036854775807
  br i1 %163, label %164, label %166

164:                                              ; preds = %162
  invoke void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #9
          to label %165 unwind label %152

165:                                              ; preds = %164
  unreachable

166:                                              ; preds = %162
  %167 = icmp eq i64 %24, 0
  %168 = select i1 %167, i64 1, i64 %24
  %169 = add i64 %168, %24
  %170 = icmp ult i64 %169, %24
  %171 = icmp slt i64 %169, 0
  %172 = or i1 %170, %171
  %173 = select i1 %172, i64 9223372036854775807, i64 %169
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %166
  %176 = icmp slt i64 %173, 0
  br i1 %176, label %177, label %179, !prof !17

177:                                              ; preds = %175
  invoke void @_ZSt17__throw_bad_allocv() #9
          to label %178 unwind label %152

178:                                              ; preds = %177
  unreachable

179:                                              ; preds = %175
  %180 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef %173) #10
          to label %181 unwind label %150

181:                                              ; preds = %179, %166
  %182 = phi i8* [ null, %166 ], [ %180, %179 ]
  %183 = getelementptr inbounds i8, i8* %182, i64 %24
  %184 = load i8, i8* %21, align 1, !tbaa !13
  store i8 %184, i8* %183, align 1, !tbaa !13
  %185 = icmp sgt i64 %24, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %182, i8* align 1 %17, i64 %24, i1 false) #8
  br label %187

187:                                              ; preds = %186, %181
  %188 = getelementptr inbounds i8, i8* %183, i64 1
  %189 = icmp eq i8* %17, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %187
  call void @_ZdlPv(i8* noundef nonnull %17) #8
  br label %191

191:                                              ; preds = %187, %190
  %192 = getelementptr inbounds i8, i8* %182, i64 %173
  br label %193

193:                                              ; preds = %191, %159, %148
  %194 = phi i8* [ %19, %148 ], [ %192, %191 ], [ %19, %159 ]
  %195 = phi i8* [ %149, %148 ], [ %188, %191 ], [ %161, %159 ]
  %196 = phi i8* [ %17, %148 ], [ %182, %191 ], [ %17, %159 ]
  %197 = add nuw i64 %16, 1
  %198 = load i64, i64* %2, align 8, !tbaa !5
  %199 = icmp ugt i64 %198, %197
  br i1 %199, label %15, label %7, !llvm.loop !18

200:                                              ; preds = %154
  call void @_ZdlPv(i8* noundef nonnull %17) #8
  br label %201

201:                                              ; preds = %154, %200
  resume { i8*, i32 } %155

202:                                              ; preds = %7
  %203 = xor i1 %12, true
  %204 = ptrtoint i8* %8 to i64
  %205 = ptrtoint i8* %9 to i64
  %206 = sub i64 %204, %205
  %207 = icmp eq i64 %206, 1
  %208 = select i1 %203, i1 %207, i1 false
  %209 = zext i1 %208 to i32
  br label %210

210:                                              ; preds = %202, %7
  %211 = phi i32 [ 1, %7 ], [ %209, %202 ]
  %212 = icmp eq i8* %9, null
  br i1 %212, label %214, label %213

213:                                              ; preds = %210
  call void @_ZdlPv(i8* noundef nonnull %9) #8
  br label %214

214:                                              ; preds = %210, %213
  ret i32 %211
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CHECK_CHARACTERS_GIVEN_STRING_CAN_REARRANGED_FORM_PALINDROME_1_reprocessed.cpp() #3 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { allocsize(0) }

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
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = distinct !{!18, !15, !16}
