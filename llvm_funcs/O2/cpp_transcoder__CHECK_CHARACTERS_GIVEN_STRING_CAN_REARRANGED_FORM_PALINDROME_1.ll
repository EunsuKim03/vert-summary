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
  br i1 %4, label %209, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  br label %10

7:                                                ; preds = %188
  %8 = and i64 %193, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %197, label %199

10:                                               ; preds = %5, %188
  %11 = phi i64 [ 0, %5 ], [ %192, %188 ]
  %12 = phi i8* [ null, %5 ], [ %191, %188 ]
  %13 = phi i8* [ null, %5 ], [ %190, %188 ]
  %14 = phi i8* [ null, %5 ], [ %189, %188 ]
  %15 = load i8*, i8** %6, align 8, !tbaa !12
  %16 = getelementptr inbounds i8, i8* %15, i64 %11
  %17 = ptrtoint i8* %13 to i64
  %18 = ptrtoint i8* %12 to i64
  %19 = sub i64 %17, %18
  %20 = icmp sgt i64 %19, 3
  br i1 %20, label %21, label %47

21:                                               ; preds = %10
  %22 = lshr i64 %19, 2
  %23 = load i8, i8* %16, align 1, !tbaa !13
  br label %24

24:                                               ; preds = %41, %21
  %25 = phi i64 [ %22, %21 ], [ %43, %41 ]
  %26 = phi i8* [ %12, %21 ], [ %42, %41 ]
  %27 = load i8, i8* %26, align 1, !tbaa !13
  %28 = icmp eq i8 %27, %23
  br i1 %28, label %79, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, i8* %26, i64 1
  %31 = load i8, i8* %30, align 1, !tbaa !13
  %32 = icmp eq i8 %31, %23
  br i1 %32, label %77, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, i8* %26, i64 2
  %35 = load i8, i8* %34, align 1, !tbaa !13
  %36 = icmp eq i8 %35, %23
  br i1 %36, label %75, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, i8* %26, i64 3
  %39 = load i8, i8* %38, align 1, !tbaa !13
  %40 = icmp eq i8 %39, %23
  br i1 %40, label %73, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, i8* %26, i64 4
  %43 = add nsw i64 %25, -1
  %44 = icmp sgt i64 %25, 1
  br i1 %44, label %24, label %45, !llvm.loop !14

45:                                               ; preds = %41
  %46 = ptrtoint i8* %42 to i64
  br label %47

47:                                               ; preds = %45, %10
  %48 = phi i64 [ %46, %45 ], [ %18, %10 ]
  %49 = phi i8* [ %42, %45 ], [ %12, %10 ]
  %50 = sub i64 %17, %48
  switch i64 %50, label %156 [
    i64 3, label %55
    i64 2, label %53
    i64 1, label %51
  ]

51:                                               ; preds = %47
  %52 = load i8, i8* %16, align 1, !tbaa !13
  br label %68

53:                                               ; preds = %47
  %54 = load i8, i8* %16, align 1, !tbaa !13
  br label %61

55:                                               ; preds = %47
  %56 = load i8, i8* %49, align 1, !tbaa !13
  %57 = load i8, i8* %16, align 1, !tbaa !13
  %58 = icmp eq i8 %56, %57
  br i1 %58, label %79, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds i8, i8* %49, i64 1
  br label %61

61:                                               ; preds = %59, %53
  %62 = phi i8 [ %54, %53 ], [ %57, %59 ]
  %63 = phi i8* [ %49, %53 ], [ %60, %59 ]
  %64 = load i8, i8* %63, align 1, !tbaa !13
  %65 = icmp eq i8 %64, %62
  br i1 %65, label %79, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds i8, i8* %63, i64 1
  br label %68

68:                                               ; preds = %66, %51
  %69 = phi i8 [ %52, %51 ], [ %62, %66 ]
  %70 = phi i8* [ %49, %51 ], [ %67, %66 ]
  %71 = load i8, i8* %70, align 1, !tbaa !13
  %72 = icmp eq i8 %71, %69
  br i1 %72, label %79, label %156

73:                                               ; preds = %37
  %74 = getelementptr inbounds i8, i8* %26, i64 3
  br label %79

75:                                               ; preds = %33
  %76 = getelementptr inbounds i8, i8* %26, i64 2
  br label %79

77:                                               ; preds = %29
  %78 = getelementptr inbounds i8, i8* %26, i64 1
  br label %79

79:                                               ; preds = %24, %73, %75, %77, %68, %61, %55
  %80 = phi i8 [ %56, %55 ], [ %62, %61 ], [ %69, %68 ], [ %23, %77 ], [ %23, %75 ], [ %23, %73 ], [ %23, %24 ]
  %81 = phi i8* [ %49, %55 ], [ %63, %61 ], [ %70, %68 ], [ %78, %77 ], [ %76, %75 ], [ %74, %73 ], [ %26, %24 ]
  %82 = icmp eq i8* %81, %13
  br i1 %82, label %156, label %83

83:                                               ; preds = %79
  br i1 %20, label %84, label %109

84:                                               ; preds = %83
  %85 = lshr i64 %19, 2
  br label %86

86:                                               ; preds = %103, %84
  %87 = phi i64 [ %85, %84 ], [ %105, %103 ]
  %88 = phi i8* [ %12, %84 ], [ %104, %103 ]
  %89 = load i8, i8* %88, align 1, !tbaa !13
  %90 = icmp eq i8 %89, %80
  br i1 %90, label %135, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds i8, i8* %88, i64 1
  %93 = load i8, i8* %92, align 1, !tbaa !13
  %94 = icmp eq i8 %93, %80
  br i1 %94, label %133, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds i8, i8* %88, i64 2
  %97 = load i8, i8* %96, align 1, !tbaa !13
  %98 = icmp eq i8 %97, %80
  br i1 %98, label %131, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds i8, i8* %88, i64 3
  %101 = load i8, i8* %100, align 1, !tbaa !13
  %102 = icmp eq i8 %101, %80
  br i1 %102, label %129, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds i8, i8* %88, i64 4
  %105 = add nsw i64 %87, -1
  %106 = icmp sgt i64 %87, 1
  br i1 %106, label %86, label %107, !llvm.loop !14

107:                                              ; preds = %103
  %108 = ptrtoint i8* %104 to i64
  br label %109

109:                                              ; preds = %107, %83
  %110 = phi i64 [ %108, %107 ], [ %18, %83 ]
  %111 = phi i8* [ %104, %107 ], [ %12, %83 ]
  %112 = sub i64 %17, %110
  switch i64 %112, label %128 [
    i64 3, label %113
    i64 2, label %118
    i64 1, label %124
  ]

113:                                              ; preds = %109
  %114 = load i8, i8* %111, align 1, !tbaa !13
  %115 = icmp eq i8 %114, %80
  br i1 %115, label %135, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds i8, i8* %111, i64 1
  br label %118

118:                                              ; preds = %109, %116
  %119 = phi i8* [ %117, %116 ], [ %111, %109 ]
  %120 = load i8, i8* %119, align 1, !tbaa !13
  %121 = icmp eq i8 %120, %80
  br i1 %121, label %135, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds i8, i8* %119, i64 1
  br label %124

124:                                              ; preds = %109, %122
  %125 = phi i8* [ %123, %122 ], [ %111, %109 ]
  %126 = load i8, i8* %125, align 1, !tbaa !13
  %127 = icmp eq i8 %126, %80
  br i1 %127, label %135, label %128

128:                                              ; preds = %124, %109
  br label %135

129:                                              ; preds = %99
  %130 = getelementptr inbounds i8, i8* %88, i64 3
  br label %135

131:                                              ; preds = %95
  %132 = getelementptr inbounds i8, i8* %88, i64 2
  br label %135

133:                                              ; preds = %91
  %134 = getelementptr inbounds i8, i8* %88, i64 1
  br label %135

135:                                              ; preds = %86, %129, %131, %133, %128, %124, %118, %113
  %136 = phi i8* [ %13, %128 ], [ %111, %113 ], [ %119, %118 ], [ %125, %124 ], [ %130, %129 ], [ %132, %131 ], [ %134, %133 ], [ %88, %86 ]
  %137 = ptrtoint i8* %136 to i64
  %138 = sub i64 %137, %18
  %139 = getelementptr inbounds i8, i8* %12, i64 %138
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = icmp eq i8* %140, %13
  br i1 %141, label %147, label %142

142:                                              ; preds = %135
  %143 = ptrtoint i8* %140 to i64
  %144 = sub i64 %17, %143
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %142
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %139, i8* nonnull align 1 %140, i64 %144, i1 false) #8
  br label %147

147:                                              ; preds = %146, %142, %135
  %148 = getelementptr inbounds i8, i8* %13, i64 -1
  br label %188

149:                                              ; preds = %174
  %150 = landingpad { i8*, i32 }
          cleanup
  br label %153

151:                                              ; preds = %163
  %152 = landingpad { i8*, i32 }
          cleanup
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi { i8*, i32 } [ %150, %149 ], [ %152, %151 ]
  %155 = icmp eq i8* %12, null
  br i1 %155, label %196, label %195

156:                                              ; preds = %68, %47, %79
  %157 = icmp eq i8* %13, %14
  br i1 %157, label %161, label %158

158:                                              ; preds = %156
  %159 = load i8, i8* %16, align 1, !tbaa !13
  store i8 %159, i8* %13, align 1, !tbaa !13
  %160 = getelementptr inbounds i8, i8* %13, i64 1
  br label %188

161:                                              ; preds = %156
  %162 = icmp eq i64 %19, 9223372036854775807
  br i1 %162, label %163, label %165

163:                                              ; preds = %161
  invoke void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #9
          to label %164 unwind label %151

164:                                              ; preds = %163
  unreachable

165:                                              ; preds = %161
  %166 = icmp eq i64 %19, 0
  %167 = select i1 %166, i64 1, i64 %19
  %168 = add i64 %167, %19
  %169 = icmp ult i64 %168, %19
  %170 = icmp slt i64 %168, 0
  %171 = or i1 %169, %170
  %172 = select i1 %171, i64 9223372036854775807, i64 %168
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %165
  %175 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef %172) #10
          to label %176 unwind label %149

176:                                              ; preds = %174, %165
  %177 = phi i8* [ null, %165 ], [ %175, %174 ]
  %178 = getelementptr inbounds i8, i8* %177, i64 %19
  %179 = load i8, i8* %16, align 1, !tbaa !13
  store i8 %179, i8* %178, align 1, !tbaa !13
  %180 = icmp sgt i64 %19, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %177, i8* align 1 %12, i64 %19, i1 false) #8
  br label %182

182:                                              ; preds = %181, %176
  %183 = getelementptr inbounds i8, i8* %178, i64 1
  %184 = icmp eq i8* %12, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %182
  tail call void @_ZdlPv(i8* noundef nonnull %12) #8
  br label %186

186:                                              ; preds = %185, %182
  %187 = getelementptr inbounds i8, i8* %177, i64 %172
  br label %188

188:                                              ; preds = %186, %158, %147
  %189 = phi i8* [ %14, %147 ], [ %187, %186 ], [ %14, %158 ]
  %190 = phi i8* [ %148, %147 ], [ %183, %186 ], [ %160, %158 ]
  %191 = phi i8* [ %12, %147 ], [ %177, %186 ], [ %12, %158 ]
  %192 = add nuw i64 %11, 1
  %193 = load i64, i64* %2, align 8, !tbaa !5
  %194 = icmp ugt i64 %193, %192
  br i1 %194, label %10, label %7, !llvm.loop !16

195:                                              ; preds = %153
  tail call void @_ZdlPv(i8* noundef nonnull %12) #8
  br label %196

196:                                              ; preds = %153, %195
  resume { i8*, i32 } %154

197:                                              ; preds = %7
  %198 = icmp eq i8* %191, %190
  br i1 %198, label %205, label %204

199:                                              ; preds = %7
  %200 = ptrtoint i8* %190 to i64
  %201 = ptrtoint i8* %191 to i64
  %202 = sub i64 %200, %201
  %203 = icmp eq i64 %202, 1
  br i1 %203, label %205, label %204

204:                                              ; preds = %197, %199
  br label %205

205:                                              ; preds = %197, %199, %204
  %206 = phi i32 [ 0, %204 ], [ 1, %199 ], [ 1, %197 ]
  %207 = icmp eq i8* %191, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %205
  tail call void @_ZdlPv(i8* noundef nonnull %191) #8
  br label %209

209:                                              ; preds = %1, %205, %208
  %210 = phi i32 [ %206, %205 ], [ %206, %208 ], [ 1, %1 ]
  ret i32 %210
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CHECK_CHARACTERS_GIVEN_STRING_CAN_REARRANGED_FORM_PALINDROME_1_reprocessed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8
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
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
