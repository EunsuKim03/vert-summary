; ModuleID = 'llvm/cpp_transcoder/SUM_TWO_LARGE_NUMBERS/SUM_TWO_LARGE_NUMBERS_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/SUM_TWO_LARGE_NUMBERS/SUM_TWO_LARGE_NUMBERS_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SUM_TWO_LARGE_NUMBERS_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* noundef %1, %"class.std::__cxx11::basic_string"* noundef %2) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !5
  %8 = icmp ugt i64 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) #5
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %12 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %11, %union.anon** %12, align 8, !tbaa !12
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %14, align 8, !tbaa !5
  %15 = bitcast %union.anon* %11 to i8*
  store i8 0, i8* %15, align 8, !tbaa !13
  %16 = load i64, i64* %4, align 8, !tbaa !5
  %17 = trunc i64 %16 to i32
  %18 = load i64, i64* %6, align 8, !tbaa !5
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !14
  %22 = getelementptr inbounds i8, i8* %21, i64 %16
  %23 = icmp ne i64 %16, 0
  %24 = getelementptr inbounds i8, i8* %22, i64 -1
  %25 = icmp ugt i8* %24, %21
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %35

27:                                               ; preds = %10, %27
  %28 = phi i8* [ %33, %27 ], [ %24, %10 ]
  %29 = phi i8* [ %32, %27 ], [ %21, %10 ]
  %30 = load i8, i8* %29, align 1, !tbaa !13
  %31 = load i8, i8* %28, align 1, !tbaa !13
  store i8 %31, i8* %29, align 1, !tbaa !13
  store i8 %30, i8* %28, align 1, !tbaa !13
  %32 = getelementptr inbounds i8, i8* %29, i64 1
  %33 = getelementptr inbounds i8, i8* %28, i64 -1
  %34 = icmp ult i8* %32, %33
  br i1 %34, label %27, label %35, !llvm.loop !15

35:                                               ; preds = %27, %10
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8, !tbaa !14
  %38 = load i64, i64* %6, align 8, !tbaa !5
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = icmp ne i64 %38, 0
  %41 = getelementptr inbounds i8, i8* %39, i64 -1
  %42 = icmp ugt i8* %41, %37
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %52

44:                                               ; preds = %35, %44
  %45 = phi i8* [ %50, %44 ], [ %41, %35 ]
  %46 = phi i8* [ %49, %44 ], [ %37, %35 ]
  %47 = load i8, i8* %46, align 1, !tbaa !13
  %48 = load i8, i8* %45, align 1, !tbaa !13
  store i8 %48, i8* %46, align 1, !tbaa !13
  store i8 %47, i8* %45, align 1, !tbaa !13
  %49 = getelementptr inbounds i8, i8* %46, i64 1
  %50 = getelementptr inbounds i8, i8* %45, i64 -1
  %51 = icmp ult i8* %49, %50
  br i1 %51, label %44, label %52, !llvm.loop !15

52:                                               ; preds = %44, %35
  %53 = icmp sgt i32 %17, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  %55 = bitcast %union.anon* %11 to i8*
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %57 = and i64 %16, 4294967295
  br label %66

58:                                               ; preds = %92, %52
  %59 = phi i32 [ 0, %52 ], [ %81, %92 ]
  %60 = icmp slt i32 %17, %19
  br i1 %60, label %61, label %101

61:                                               ; preds = %58
  %62 = bitcast %union.anon* %11 to i8*
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %64 = shl i64 %16, 32
  %65 = ashr exact i64 %64, 32
  br label %104

66:                                               ; preds = %54, %92
  %67 = phi i64 [ 0, %54 ], [ %97, %92 ]
  %68 = phi i32 [ 0, %54 ], [ %81, %92 ]
  %69 = load i8*, i8** %20, align 8, !tbaa !14
  %70 = getelementptr inbounds i8, i8* %69, i64 %67
  %71 = load i8, i8* %70, align 1, !tbaa !13
  %72 = sext i8 %71 to i32
  %73 = load i8*, i8** %36, align 8, !tbaa !14
  %74 = getelementptr inbounds i8, i8* %73, i64 %67
  %75 = load i8, i8* %74, align 1, !tbaa !13
  %76 = sext i8 %75 to i32
  %77 = add nsw i32 %68, -96
  %78 = add nsw i32 %77, %72
  %79 = add nsw i32 %78, %76
  %80 = srem i32 %79, 10
  %81 = sdiv i32 %79, 10
  %82 = trunc i32 %80 to i8
  %83 = add i8 %82, 48
  %84 = load i64, i64* %14, align 8, !tbaa !5
  %85 = add i64 %84, 1
  %86 = load i8*, i8** %13, align 8, !tbaa !14
  %87 = icmp eq i8* %86, %55
  %88 = load i64, i64* %56, align 8
  %89 = select i1 %87, i64 15, i64 %88
  %90 = icmp ugt i64 %85, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %66
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %84, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %92 unwind label %99

92:                                               ; preds = %91, %66
  %93 = load i8*, i8** %13, align 8, !tbaa !14
  %94 = getelementptr inbounds i8, i8* %93, i64 %84
  store i8 %83, i8* %94, align 1, !tbaa !13
  store i64 %85, i64* %14, align 8, !tbaa !5
  %95 = load i8*, i8** %13, align 8, !tbaa !14
  %96 = getelementptr inbounds i8, i8* %95, i64 %85
  store i8 0, i8* %96, align 1, !tbaa !13
  %97 = add nuw nsw i64 %67, 1
  %98 = icmp eq i64 %97, %57
  br i1 %98, label %58, label %66, !llvm.loop !18

99:                                               ; preds = %91
  %100 = landingpad { i8*, i32 }
          cleanup
  br label %171

101:                                              ; preds = %125, %58
  %102 = phi i32 [ %59, %58 ], [ %114, %125 ]
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %155, label %135

104:                                              ; preds = %61, %125
  %105 = phi i64 [ %65, %61 ], [ %130, %125 ]
  %106 = phi i32 [ %59, %61 ], [ %114, %125 ]
  %107 = load i8*, i8** %36, align 8, !tbaa !14
  %108 = getelementptr inbounds i8, i8* %107, i64 %105
  %109 = load i8, i8* %108, align 1, !tbaa !13
  %110 = sext i8 %109 to i32
  %111 = add nsw i32 %106, -48
  %112 = add nsw i32 %111, %110
  %113 = srem i32 %112, 10
  %114 = sdiv i32 %112, 10
  %115 = trunc i32 %113 to i8
  %116 = add i8 %115, 48
  %117 = load i64, i64* %14, align 8, !tbaa !5
  %118 = add i64 %117, 1
  %119 = load i8*, i8** %13, align 8, !tbaa !14
  %120 = icmp eq i8* %119, %62
  %121 = load i64, i64* %63, align 8
  %122 = select i1 %120, i64 15, i64 %121
  %123 = icmp ugt i64 %118, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %104
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %117, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %125 unwind label %133

125:                                              ; preds = %124, %104
  %126 = load i8*, i8** %13, align 8, !tbaa !14
  %127 = getelementptr inbounds i8, i8* %126, i64 %117
  store i8 %116, i8* %127, align 1, !tbaa !13
  store i64 %118, i64* %14, align 8, !tbaa !5
  %128 = load i8*, i8** %13, align 8, !tbaa !14
  %129 = getelementptr inbounds i8, i8* %128, i64 %118
  store i8 0, i8* %129, align 1, !tbaa !13
  %130 = add nsw i64 %105, 1
  %131 = trunc i64 %130 to i32
  %132 = icmp eq i32 %131, %19
  br i1 %132, label %101, label %104, !llvm.loop !19

133:                                              ; preds = %124
  %134 = landingpad { i8*, i32 }
          cleanup
  br label %171

135:                                              ; preds = %101
  %136 = trunc i32 %102 to i8
  %137 = add i8 %136, 48
  %138 = load i64, i64* %14, align 8, !tbaa !5
  %139 = add i64 %138, 1
  %140 = load i8*, i8** %13, align 8, !tbaa !14
  %141 = bitcast %union.anon* %11 to i8*
  %142 = icmp eq i8* %140, %141
  %143 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = select i1 %142, i64 15, i64 %144
  %146 = icmp ugt i64 %139, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %135
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %138, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %148 unwind label %153

148:                                              ; preds = %147, %135
  %149 = load i8*, i8** %13, align 8, !tbaa !14
  %150 = getelementptr inbounds i8, i8* %149, i64 %138
  store i8 %137, i8* %150, align 1, !tbaa !13
  store i64 %139, i64* %14, align 8, !tbaa !5
  %151 = load i8*, i8** %13, align 8, !tbaa !14
  %152 = getelementptr inbounds i8, i8* %151, i64 %139
  store i8 0, i8* %152, align 1, !tbaa !13
  br label %155

153:                                              ; preds = %147
  %154 = landingpad { i8*, i32 }
          cleanup
  br label %171

155:                                              ; preds = %148, %101
  %156 = load i8*, i8** %13, align 8, !tbaa !14
  %157 = load i64, i64* %14, align 8, !tbaa !5
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  %159 = icmp ne i64 %157, 0
  %160 = getelementptr inbounds i8, i8* %158, i64 -1
  %161 = icmp ugt i8* %160, %156
  %162 = select i1 %159, i1 %161, i1 false
  br i1 %162, label %163, label %177

163:                                              ; preds = %155, %163
  %164 = phi i8* [ %169, %163 ], [ %160, %155 ]
  %165 = phi i8* [ %168, %163 ], [ %156, %155 ]
  %166 = load i8, i8* %165, align 1, !tbaa !13
  %167 = load i8, i8* %164, align 1, !tbaa !13
  store i8 %167, i8* %165, align 1, !tbaa !13
  store i8 %166, i8* %164, align 1, !tbaa !13
  %168 = getelementptr inbounds i8, i8* %165, i64 1
  %169 = getelementptr inbounds i8, i8* %164, i64 -1
  %170 = icmp ult i8* %168, %169
  br i1 %170, label %163, label %177, !llvm.loop !15

171:                                              ; preds = %99, %133, %153
  %172 = phi { i8*, i32 } [ %100, %99 ], [ %134, %133 ], [ %154, %153 ]
  %173 = load i8*, i8** %13, align 8, !tbaa !14
  %174 = bitcast %union.anon* %11 to i8*
  %175 = icmp eq i8* %173, %174
  br i1 %175, label %178, label %176

176:                                              ; preds = %171
  call void @_ZdlPv(i8* noundef %173) #5
  br label %178

177:                                              ; preds = %163, %155
  ret void

178:                                              ; preds = %176, %171
  resume { i8*, i32 } %172
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SUM_TWO_LARGE_NUMBERS_reprocessed.cpp() #3 section ".text.startup" {
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
!14 = !{!6, !8, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16, !17}
!19 = distinct !{!19, !16, !17}
