; ModuleID = 'llvm/cpp_transcoder/SUM_TWO_LARGE_NUMBERS_1/SUM_TWO_LARGE_NUMBERS_1_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/SUM_TWO_LARGE_NUMBERS_1/SUM_TWO_LARGE_NUMBERS_1_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SUM_TWO_LARGE_NUMBERS_1_reprocessed.cpp, i8* null }]

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
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) #5
  %10 = load i64, i64* %4, align 8, !tbaa !5
  %11 = load i64, i64* %6, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i64 [ %11, %9 ], [ %7, %3 ]
  %14 = phi i64 [ %10, %9 ], [ %5, %3 ]
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %16 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %15, %union.anon** %16, align 8, !tbaa !12
  %17 = bitcast %union.anon* %15 to i8*
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %19, align 8, !tbaa !5
  store i8 0, i8* %17, align 8, !tbaa !13
  %20 = trunc i64 %14 to i32
  %21 = trunc i64 %13 to i32
  %22 = sub i32 %21, %20
  %23 = icmp sgt i32 %20, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %12
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %28 = shl i64 %14, 32
  %29 = ashr exact i64 %28, 32
  br label %37

30:                                               ; preds = %69, %12
  %31 = phi i32 [ 0, %12 ], [ %58, %69 ]
  %32 = icmp sgt i32 %22, 0
  br i1 %32, label %33, label %80

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %36 = zext i32 %22 to i64
  br label %83

37:                                               ; preds = %75, %24
  %38 = phi i8* [ %17, %24 ], [ %77, %75 ]
  %39 = phi i64 [ 0, %24 ], [ %76, %75 ]
  %40 = phi i64 [ %29, %24 ], [ %42, %75 ]
  %41 = phi i32 [ 0, %24 ], [ %58, %75 ]
  %42 = add nsw i64 %40, -1
  %43 = trunc i64 %42 to i32
  %44 = load i8*, i8** %25, align 8, !tbaa !14
  %45 = getelementptr inbounds i8, i8* %44, i64 %42
  %46 = load i8, i8* %45, align 1, !tbaa !13
  %47 = sext i8 %46 to i32
  %48 = add nsw i32 %22, %43
  %49 = sext i32 %48 to i64
  %50 = load i8*, i8** %26, align 8, !tbaa !14
  %51 = getelementptr inbounds i8, i8* %50, i64 %49
  %52 = load i8, i8* %51, align 1, !tbaa !13
  %53 = sext i8 %52 to i32
  %54 = add nsw i32 %41, -96
  %55 = add nsw i32 %54, %47
  %56 = add nsw i32 %55, %53
  %57 = srem i32 %56, 10
  %58 = sdiv i32 %56, 10
  %59 = trunc i32 %57 to i8
  %60 = add nsw i8 %59, 48
  %61 = add i64 %39, 1
  %62 = icmp eq i8* %38, %17
  %63 = load i64, i64* %27, align 8
  %64 = select i1 %62, i64 15, i64 %63
  %65 = icmp ugt i64 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %39, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %67 unwind label %78

67:                                               ; preds = %66
  %68 = load i8*, i8** %18, align 8, !tbaa !14
  br label %69

69:                                               ; preds = %67, %37
  %70 = phi i8* [ %68, %67 ], [ %38, %37 ]
  %71 = getelementptr inbounds i8, i8* %70, i64 %39
  store i8 %60, i8* %71, align 1, !tbaa !13
  store i64 %61, i64* %19, align 8, !tbaa !5
  %72 = load i8*, i8** %18, align 8, !tbaa !14
  %73 = getelementptr inbounds i8, i8* %72, i64 %61
  store i8 0, i8* %73, align 1, !tbaa !13
  %74 = icmp sgt i64 %40, 1
  br i1 %74, label %75, label %30, !llvm.loop !15

75:                                               ; preds = %69
  %76 = load i64, i64* %19, align 8, !tbaa !5
  %77 = load i8*, i8** %18, align 8, !tbaa !14
  br label %37

78:                                               ; preds = %66
  %79 = landingpad { i8*, i32 }
          cleanup
  br label %154

80:                                               ; preds = %108, %30
  %81 = phi i32 [ %31, %30 ], [ %95, %108 ]
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %138, label %117

83:                                               ; preds = %33, %108
  %84 = phi i64 [ %36, %33 ], [ %86, %108 ]
  %85 = phi i32 [ %31, %33 ], [ %95, %108 ]
  %86 = add nsw i64 %84, -1
  %87 = and i64 %86, 4294967295
  %88 = load i8*, i8** %34, align 8, !tbaa !14
  %89 = getelementptr inbounds i8, i8* %88, i64 %87
  %90 = load i8, i8* %89, align 1, !tbaa !13
  %91 = sext i8 %90 to i32
  %92 = add nsw i32 %85, -48
  %93 = add nsw i32 %92, %91
  %94 = srem i32 %93, 10
  %95 = sdiv i32 %93, 10
  %96 = trunc i32 %94 to i8
  %97 = add nsw i8 %96, 48
  %98 = load i64, i64* %19, align 8, !tbaa !5
  %99 = add i64 %98, 1
  %100 = load i8*, i8** %18, align 8, !tbaa !14
  %101 = icmp eq i8* %100, %17
  %102 = load i64, i64* %35, align 8
  %103 = select i1 %101, i64 15, i64 %102
  %104 = icmp ugt i64 %99, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %83
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %98, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %106 unwind label %115

106:                                              ; preds = %105
  %107 = load i8*, i8** %18, align 8, !tbaa !14
  br label %108

108:                                              ; preds = %106, %83
  %109 = phi i8* [ %107, %106 ], [ %100, %83 ]
  %110 = getelementptr inbounds i8, i8* %109, i64 %98
  store i8 %97, i8* %110, align 1, !tbaa !13
  store i64 %99, i64* %19, align 8, !tbaa !5
  %111 = load i8*, i8** %18, align 8, !tbaa !14
  %112 = getelementptr inbounds i8, i8* %111, i64 %99
  store i8 0, i8* %112, align 1, !tbaa !13
  %113 = trunc i64 %84 to i32
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %83, label %80, !llvm.loop !17

115:                                              ; preds = %105
  %116 = landingpad { i8*, i32 }
          cleanup
  br label %154

117:                                              ; preds = %80
  %118 = trunc i32 %81 to i8
  %119 = add i8 %118, 48
  %120 = load i64, i64* %19, align 8, !tbaa !5
  %121 = add i64 %120, 1
  %122 = load i8*, i8** %18, align 8, !tbaa !14
  %123 = icmp eq i8* %122, %17
  %124 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = select i1 %123, i64 15, i64 %125
  %127 = icmp ugt i64 %121, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %117
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %120, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %129 unwind label %136

129:                                              ; preds = %128
  %130 = load i8*, i8** %18, align 8, !tbaa !14
  br label %131

131:                                              ; preds = %117, %129
  %132 = phi i8* [ %130, %129 ], [ %122, %117 ]
  %133 = getelementptr inbounds i8, i8* %132, i64 %120
  store i8 %119, i8* %133, align 1, !tbaa !13
  store i64 %121, i64* %19, align 8, !tbaa !5
  %134 = load i8*, i8** %18, align 8, !tbaa !14
  %135 = getelementptr inbounds i8, i8* %134, i64 %121
  store i8 0, i8* %135, align 1, !tbaa !13
  br label %138

136:                                              ; preds = %128
  %137 = landingpad { i8*, i32 }
          cleanup
  br label %154

138:                                              ; preds = %131, %80
  %139 = load i8*, i8** %18, align 8, !tbaa !14
  %140 = load i64, i64* %19, align 8, !tbaa !5
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  %142 = icmp ne i64 %140, 0
  %143 = getelementptr inbounds i8, i8* %141, i64 -1
  %144 = icmp ugt i8* %143, %139
  %145 = select i1 %142, i1 %144, i1 false
  br i1 %145, label %146, label %159

146:                                              ; preds = %138, %146
  %147 = phi i8* [ %152, %146 ], [ %143, %138 ]
  %148 = phi i8* [ %151, %146 ], [ %139, %138 ]
  %149 = load i8, i8* %148, align 1, !tbaa !13
  %150 = load i8, i8* %147, align 1, !tbaa !13
  store i8 %150, i8* %148, align 1, !tbaa !13
  store i8 %149, i8* %147, align 1, !tbaa !13
  %151 = getelementptr inbounds i8, i8* %148, i64 1
  %152 = getelementptr inbounds i8, i8* %147, i64 -1
  %153 = icmp ult i8* %151, %152
  br i1 %153, label %146, label %159, !llvm.loop !18

154:                                              ; preds = %136, %115, %78
  %155 = phi { i8*, i32 } [ %79, %78 ], [ %116, %115 ], [ %137, %136 ]
  %156 = load i8*, i8** %18, align 8, !tbaa !14
  %157 = icmp eq i8* %156, %17
  br i1 %157, label %160, label %158

158:                                              ; preds = %154
  tail call void @_ZdlPv(i8* noundef %156) #5
  br label %160

159:                                              ; preds = %146, %138
  ret void

160:                                              ; preds = %158, %154
  resume { i8*, i32 } %155
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SUM_TWO_LARGE_NUMBERS_1_reprocessed.cpp() #3 section ".text.startup" {
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
!14 = !{!6, !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
