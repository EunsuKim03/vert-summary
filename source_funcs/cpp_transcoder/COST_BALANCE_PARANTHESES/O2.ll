; ModuleID = 'benchmark/cpp_transcoder/COST_BALANCE_PARANTHESES/COST_BALANCE_PARANTHESES_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COST_BALANCE_PARANTHESES/COST_BALANCE_PARANTHESES_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COST_BALANCE_PARANTHESES_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !5
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %38

5:                                                ; preds = %1
  %6 = tail call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %7 = bitcast %"class.std::basic_ostream"* %6 to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !12
  %9 = getelementptr i8, i8* %8, i64 -24
  %10 = bitcast i8* %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = bitcast %"class.std::basic_ostream"* %6 to i8*
  %13 = getelementptr inbounds i8, i8* %12, i64 %11
  %14 = getelementptr inbounds i8, i8* %13, i64 240
  %15 = bitcast i8* %14 to %"class.std::ctype"**
  %16 = load %"class.std::ctype"*, %"class.std::ctype"** %15, align 8, !tbaa !14
  %17 = icmp eq %"class.std::ctype"* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  tail call void @_ZSt16__throw_bad_castv() #8
  unreachable

19:                                               ; preds = %5
  %20 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %16, i64 0, i32 8
  %21 = load i8, i8* %20, align 8, !tbaa !17
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %16, i64 0, i32 9, i64 10
  %25 = load i8, i8* %24, align 1, !tbaa !19
  br label %32

26:                                               ; preds = %19
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* noundef nonnull align 8 dereferenceable(570) %16)
  %27 = bitcast %"class.std::ctype"* %16 to i8 (%"class.std::ctype"*, i8)***
  %28 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %27, align 8, !tbaa !12
  %29 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %28, i64 6
  %30 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %29, align 8
  %31 = tail call noundef signext i8 %30(%"class.std::ctype"* noundef nonnull align 8 dereferenceable(570) %16, i8 noundef signext 10)
  br label %32

32:                                               ; preds = %26, %23
  %33 = phi i8 [ %25, %23 ], [ %31, %26 ]
  %34 = tail call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext %33)
  %35 = tail call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %34)
  %36 = load i64, i64* %2, align 8, !tbaa !5
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %99, label %38

38:                                               ; preds = %1, %32
  %39 = phi i64 [ %36, %32 ], [ %3, %1 ]
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8, !tbaa !20
  %42 = icmp ult i64 %39, 8
  br i1 %42, label %77, label %43

43:                                               ; preds = %38
  %44 = and i64 %39, -8
  br label %45

45:                                               ; preds = %45, %43
  %46 = phi i64 [ 0, %43 ], [ %69, %45 ]
  %47 = phi <4 x i32> [ zeroinitializer, %43 ], [ %67, %45 ]
  %48 = phi <4 x i32> [ zeroinitializer, %43 ], [ %68, %45 ]
  %49 = phi <4 x i32> [ zeroinitializer, %43 ], [ %61, %45 ]
  %50 = phi <4 x i32> [ zeroinitializer, %43 ], [ %62, %45 ]
  %51 = getelementptr inbounds i8, i8* %41, i64 %46
  %52 = bitcast i8* %51 to <4 x i8>*
  %53 = load <4 x i8>, <4 x i8>* %52, align 1, !tbaa !19
  %54 = getelementptr inbounds i8, i8* %51, i64 4
  %55 = bitcast i8* %54 to <4 x i8>*
  %56 = load <4 x i8>, <4 x i8>* %55, align 1, !tbaa !19
  %57 = icmp eq <4 x i8> %53, <i8 40, i8 40, i8 40, i8 40>
  %58 = icmp eq <4 x i8> %56, <i8 40, i8 40, i8 40, i8 40>
  %59 = zext <4 x i1> %57 to <4 x i32>
  %60 = zext <4 x i1> %58 to <4 x i32>
  %61 = add <4 x i32> %49, %59
  %62 = add <4 x i32> %50, %60
  %63 = icmp eq <4 x i8> %53, <i8 41, i8 41, i8 41, i8 41>
  %64 = icmp eq <4 x i8> %56, <i8 41, i8 41, i8 41, i8 41>
  %65 = zext <4 x i1> %63 to <4 x i32>
  %66 = zext <4 x i1> %64 to <4 x i32>
  %67 = add <4 x i32> %47, %65
  %68 = add <4 x i32> %48, %66
  %69 = add nuw i64 %46, 8
  %70 = icmp eq i64 %69, %44
  br i1 %70, label %71, label %45, !llvm.loop !21

71:                                               ; preds = %45
  %72 = add <4 x i32> %62, %61
  %73 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %72)
  %74 = add <4 x i32> %68, %67
  %75 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %74)
  %76 = icmp eq i64 %39, %44
  br i1 %76, label %81, label %77

77:                                               ; preds = %38, %71
  %78 = phi i64 [ 0, %38 ], [ %44, %71 ]
  %79 = phi i32 [ 0, %38 ], [ %75, %71 ]
  %80 = phi i32 [ 0, %38 ], [ %73, %71 ]
  br label %85

81:                                               ; preds = %85, %71
  %82 = phi i32 [ %73, %71 ], [ %93, %85 ]
  %83 = phi i32 [ %75, %71 ], [ %96, %85 ]
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %99, label %158

85:                                               ; preds = %77, %85
  %86 = phi i64 [ %97, %85 ], [ %78, %77 ]
  %87 = phi i32 [ %96, %85 ], [ %79, %77 ]
  %88 = phi i32 [ %93, %85 ], [ %80, %77 ]
  %89 = getelementptr inbounds i8, i8* %41, i64 %86
  %90 = load i8, i8* %89, align 1, !tbaa !19
  %91 = icmp eq i8 %90, 40
  %92 = zext i1 %91 to i32
  %93 = add nuw nsw i32 %88, %92
  %94 = icmp eq i8 %90, 41
  %95 = zext i1 %94 to i32
  %96 = add nuw nsw i32 %87, %95
  %97 = add nuw nsw i64 %86, 1
  %98 = icmp eq i64 %97, %39
  br i1 %98, label %81, label %85, !llvm.loop !24

99:                                               ; preds = %32, %81
  %100 = tail call i8* @llvm.stacksave()
  %101 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8, !tbaa !20
  %103 = load i8, i8* %102, align 1, !tbaa !19
  %104 = icmp eq i8 %103, 40
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = load i64, i64* %2, align 8, !tbaa !5
  %108 = icmp ugt i64 %107, 1
  br i1 %108, label %109, label %131

109:                                              ; preds = %99
  %110 = select i1 %104, i32 1, i32 -1
  %111 = add i64 %107, -1
  %112 = and i64 %111, 1
  %113 = icmp eq i64 %107, 2
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = and i64 %111, -2
  br label %133

116:                                              ; preds = %133, %109
  %117 = phi i32 [ undef, %109 ], [ %154, %133 ]
  %118 = phi i32 [ %110, %109 ], [ %150, %133 ]
  %119 = phi i64 [ 1, %109 ], [ %155, %133 ]
  %120 = phi i32 [ %106, %109 ], [ %154, %133 ]
  %121 = icmp eq i64 %112, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds i8, i8* %102, i64 %119
  %124 = load i8, i8* %123, align 1, !tbaa !19
  %125 = icmp eq i8 %124, 40
  %126 = select i1 %125, i32 1, i32 -1
  %127 = add nsw i32 %118, %126
  %128 = icmp slt i32 %127, 0
  %129 = select i1 %128, i32 %127, i32 0
  %130 = sub i32 %120, %129
  br label %131

131:                                              ; preds = %122, %116, %99
  %132 = phi i32 [ %106, %99 ], [ %117, %116 ], [ %130, %122 ]
  tail call void @llvm.stackrestore(i8* %100)
  br label %158

133:                                              ; preds = %133, %114
  %134 = phi i32 [ %110, %114 ], [ %150, %133 ]
  %135 = phi i64 [ 1, %114 ], [ %155, %133 ]
  %136 = phi i32 [ %106, %114 ], [ %154, %133 ]
  %137 = phi i64 [ 0, %114 ], [ %156, %133 ]
  %138 = getelementptr inbounds i8, i8* %102, i64 %135
  %139 = load i8, i8* %138, align 1, !tbaa !19
  %140 = icmp eq i8 %139, 40
  %141 = select i1 %140, i32 1, i32 -1
  %142 = add nsw i32 %134, %141
  %143 = icmp slt i32 %142, 0
  %144 = select i1 %143, i32 %142, i32 0
  %145 = add nuw nsw i64 %135, 1
  %146 = getelementptr inbounds i8, i8* %102, i64 %145
  %147 = load i8, i8* %146, align 1, !tbaa !19
  %148 = icmp eq i8 %147, 40
  %149 = select i1 %148, i32 1, i32 -1
  %150 = add nsw i32 %142, %149
  %151 = icmp slt i32 %150, 0
  %152 = select i1 %151, i32 %150, i32 0
  %153 = add i32 %144, %152
  %154 = sub i32 %136, %153
  %155 = add nuw nsw i64 %135, 2
  %156 = add i64 %137, 2
  %157 = icmp eq i64 %156, %115
  br i1 %157, label %116, label %133, !llvm.loop !26

158:                                              ; preds = %81, %131
  %159 = phi i32 [ %132, %131 ], [ -1, %81 ]
  ret i32 %159
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COST_BALANCE_PARANTHESES_processed.cpp() #6 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #9
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone willreturn }
attributes #8 = { noreturn }
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
!13 = !{!"vtable pointer", !10, i64 0}
!14 = !{!15, !8, i64 240}
!15 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !8, i64 216, !9, i64 224, !16, i64 225, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256}
!16 = !{!"bool", !9, i64 0}
!17 = !{!18, !9, i64 56}
!18 = !{!"_ZTSSt5ctypeIcE", !8, i64 16, !16, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !9, i64 56, !9, i64 57, !9, i64 313, !9, i64 569}
!19 = !{!9, !9, i64 0}
!20 = !{!6, !8, i64 0}
!21 = distinct !{!21, !22, !23}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = distinct !{!24, !22, !25, !23}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !22}
