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
  %20 = sub i32 %19, %17
  %21 = icmp sgt i32 %17, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %10
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %25 = bitcast %union.anon* %11 to i8*
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %27 = shl i64 %16, 32
  %28 = ashr exact i64 %27, 32
  br label %37

29:                                               ; preds = %67, %10
  %30 = phi i32 [ 0, %10 ], [ %56, %67 ]
  %31 = icmp sgt i32 %20, 0
  br i1 %31, label %32, label %75

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %34 = bitcast %union.anon* %11 to i8*
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %36 = sext i32 %20 to i64
  br label %78

37:                                               ; preds = %22, %67
  %38 = phi i64 [ %28, %22 ], [ %40, %67 ]
  %39 = phi i32 [ 0, %22 ], [ %56, %67 ]
  %40 = add nsw i64 %38, -1
  %41 = trunc i64 %40 to i32
  %42 = load i8*, i8** %23, align 8, !tbaa !14
  %43 = getelementptr inbounds i8, i8* %42, i64 %40
  %44 = load i8, i8* %43, align 1, !tbaa !13
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %20, %41
  %47 = sext i32 %46 to i64
  %48 = load i8*, i8** %24, align 8, !tbaa !14
  %49 = getelementptr inbounds i8, i8* %48, i64 %47
  %50 = load i8, i8* %49, align 1, !tbaa !13
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %39, -96
  %53 = add nsw i32 %52, %45
  %54 = add nsw i32 %53, %51
  %55 = srem i32 %54, 10
  %56 = sdiv i32 %54, 10
  %57 = trunc i32 %55 to i8
  %58 = add i8 %57, 48
  %59 = load i64, i64* %14, align 8, !tbaa !5
  %60 = add i64 %59, 1
  %61 = load i8*, i8** %13, align 8, !tbaa !14
  %62 = icmp eq i8* %61, %25
  %63 = load i64, i64* %26, align 8
  %64 = select i1 %62, i64 15, i64 %63
  %65 = icmp ugt i64 %60, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %59, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %67 unwind label %73

67:                                               ; preds = %66, %37
  %68 = load i8*, i8** %13, align 8, !tbaa !14
  %69 = getelementptr inbounds i8, i8* %68, i64 %59
  store i8 %58, i8* %69, align 1, !tbaa !13
  store i64 %60, i64* %14, align 8, !tbaa !5
  %70 = load i8*, i8** %13, align 8, !tbaa !14
  %71 = getelementptr inbounds i8, i8* %70, i64 %60
  store i8 0, i8* %71, align 1, !tbaa !13
  %72 = icmp sgt i64 %38, 1
  br i1 %72, label %37, label %29, !llvm.loop !15

73:                                               ; preds = %66
  %74 = landingpad { i8*, i32 }
          cleanup
  br label %144

75:                                               ; preds = %100, %29
  %76 = phi i32 [ %30, %29 ], [ %89, %100 ]
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %128, label %108

78:                                               ; preds = %32, %100
  %79 = phi i64 [ %36, %32 ], [ %81, %100 ]
  %80 = phi i32 [ %30, %32 ], [ %89, %100 ]
  %81 = add nsw i64 %79, -1
  %82 = load i8*, i8** %33, align 8, !tbaa !14
  %83 = getelementptr inbounds i8, i8* %82, i64 %81
  %84 = load i8, i8* %83, align 1, !tbaa !13
  %85 = sext i8 %84 to i32
  %86 = add nsw i32 %80, -48
  %87 = add nsw i32 %86, %85
  %88 = srem i32 %87, 10
  %89 = sdiv i32 %87, 10
  %90 = trunc i32 %88 to i8
  %91 = add i8 %90, 48
  %92 = load i64, i64* %14, align 8, !tbaa !5
  %93 = add i64 %92, 1
  %94 = load i8*, i8** %13, align 8, !tbaa !14
  %95 = icmp eq i8* %94, %34
  %96 = load i64, i64* %35, align 8
  %97 = select i1 %95, i64 15, i64 %96
  %98 = icmp ugt i64 %93, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %78
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %92, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %100 unwind label %106

100:                                              ; preds = %99, %78
  %101 = load i8*, i8** %13, align 8, !tbaa !14
  %102 = getelementptr inbounds i8, i8* %101, i64 %92
  store i8 %91, i8* %102, align 1, !tbaa !13
  store i64 %93, i64* %14, align 8, !tbaa !5
  %103 = load i8*, i8** %13, align 8, !tbaa !14
  %104 = getelementptr inbounds i8, i8* %103, i64 %93
  store i8 0, i8* %104, align 1, !tbaa !13
  %105 = icmp sgt i64 %79, 1
  br i1 %105, label %78, label %75, !llvm.loop !18

106:                                              ; preds = %99
  %107 = landingpad { i8*, i32 }
          cleanup
  br label %144

108:                                              ; preds = %75
  %109 = trunc i32 %76 to i8
  %110 = add i8 %109, 48
  %111 = load i64, i64* %14, align 8, !tbaa !5
  %112 = add i64 %111, 1
  %113 = load i8*, i8** %13, align 8, !tbaa !14
  %114 = bitcast %union.anon* %11 to i8*
  %115 = icmp eq i8* %113, %114
  %116 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = select i1 %115, i64 15, i64 %117
  %119 = icmp ugt i64 %112, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %108
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %111, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %121 unwind label %126

121:                                              ; preds = %120, %108
  %122 = load i8*, i8** %13, align 8, !tbaa !14
  %123 = getelementptr inbounds i8, i8* %122, i64 %111
  store i8 %110, i8* %123, align 1, !tbaa !13
  store i64 %112, i64* %14, align 8, !tbaa !5
  %124 = load i8*, i8** %13, align 8, !tbaa !14
  %125 = getelementptr inbounds i8, i8* %124, i64 %112
  store i8 0, i8* %125, align 1, !tbaa !13
  br label %128

126:                                              ; preds = %120
  %127 = landingpad { i8*, i32 }
          cleanup
  br label %144

128:                                              ; preds = %121, %75
  %129 = load i8*, i8** %13, align 8, !tbaa !14
  %130 = load i64, i64* %14, align 8, !tbaa !5
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = icmp ne i64 %130, 0
  %133 = getelementptr inbounds i8, i8* %131, i64 -1
  %134 = icmp ugt i8* %133, %129
  %135 = select i1 %132, i1 %134, i1 false
  br i1 %135, label %136, label %150

136:                                              ; preds = %128, %136
  %137 = phi i8* [ %142, %136 ], [ %133, %128 ]
  %138 = phi i8* [ %141, %136 ], [ %129, %128 ]
  %139 = load i8, i8* %138, align 1, !tbaa !13
  %140 = load i8, i8* %137, align 1, !tbaa !13
  store i8 %140, i8* %138, align 1, !tbaa !13
  store i8 %139, i8* %137, align 1, !tbaa !13
  %141 = getelementptr inbounds i8, i8* %138, i64 1
  %142 = getelementptr inbounds i8, i8* %137, i64 -1
  %143 = icmp ult i8* %141, %142
  br i1 %143, label %136, label %150, !llvm.loop !19

144:                                              ; preds = %126, %106, %73
  %145 = phi { i8*, i32 } [ %74, %73 ], [ %107, %106 ], [ %127, %126 ]
  %146 = load i8*, i8** %13, align 8, !tbaa !14
  %147 = bitcast %union.anon* %11 to i8*
  %148 = icmp eq i8* %146, %147
  br i1 %148, label %151, label %149

149:                                              ; preds = %144
  call void @_ZdlPv(i8* noundef %146) #5
  br label %151

150:                                              ; preds = %136, %128
  ret void

151:                                              ; preds = %149, %144
  resume { i8*, i32 } %145
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SUM_TWO_LARGE_NUMBERS_1_reprocessed.cpp() #3 section ".text.startup" {
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
