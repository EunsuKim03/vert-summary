; ModuleID = 'llvm/cpp_transcoder/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_CONVERT_DECIMAL_FRACTION_BINARY_NUMBER_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_Z6f_goldB5cxx11di(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i32 noundef %2) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %5 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %4, %union.anon** %5, align 8, !tbaa !5
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %7, align 8, !tbaa !10
  %8 = bitcast %union.anon* %4 to i8*
  store i8 0, i8* %8, align 8, !tbaa !13
  %9 = fptosi double %1 to i32
  %10 = sitofp i32 %9 to double
  %11 = fsub double %1, %10
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %3
  %14 = bitcast %union.anon* %4 to i8*
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  br label %16

16:                                               ; preds = %13, %30
  %17 = phi i32 [ %9, %13 ], [ %19, %30 ]
  %18 = srem i32 %17, 2
  %19 = sdiv i32 %17, 2
  %20 = trunc i32 %18 to i8
  %21 = add i8 %20, 48
  %22 = load i64, i64* %7, align 8, !tbaa !10
  %23 = add i64 %22, 1
  %24 = load i8*, i8** %6, align 8, !tbaa !14
  %25 = icmp eq i8* %24, %14
  %26 = load i64, i64* %15, align 8
  %27 = select i1 %25, i64 15, i64 %26
  %28 = icmp ugt i64 %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %22, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %30 unwind label %37

30:                                               ; preds = %29, %16
  %31 = load i8*, i8** %6, align 8, !tbaa !14
  %32 = getelementptr inbounds i8, i8* %31, i64 %22
  store i8 %21, i8* %32, align 1, !tbaa !13
  store i64 %23, i64* %7, align 8, !tbaa !10
  %33 = load i8*, i8** %6, align 8, !tbaa !14
  %34 = getelementptr inbounds i8, i8* %33, i64 %23
  store i8 0, i8* %34, align 1, !tbaa !13
  %35 = add i32 %17, 1
  %36 = icmp ult i32 %35, 3
  br i1 %36, label %39, label %16, !llvm.loop !15

37:                                               ; preds = %29
  %38 = landingpad { i8*, i32 }
          cleanup
  br label %112

39:                                               ; preds = %30, %3
  %40 = load i8*, i8** %6, align 8, !tbaa !14
  %41 = load i64, i64* %7, align 8, !tbaa !10
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = icmp ne i64 %41, 0
  %44 = getelementptr inbounds i8, i8* %42, i64 -1
  %45 = icmp ugt i8* %44, %40
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %55

47:                                               ; preds = %39, %47
  %48 = phi i8* [ %53, %47 ], [ %44, %39 ]
  %49 = phi i8* [ %52, %47 ], [ %40, %39 ]
  %50 = load i8, i8* %49, align 1, !tbaa !13
  %51 = load i8, i8* %48, align 1, !tbaa !13
  store i8 %51, i8* %49, align 1, !tbaa !13
  store i8 %50, i8* %48, align 1, !tbaa !13
  %52 = getelementptr inbounds i8, i8* %49, i64 1
  %53 = getelementptr inbounds i8, i8* %48, i64 -1
  %54 = icmp ult i8* %52, %53
  br i1 %54, label %47, label %55, !llvm.loop !18

55:                                               ; preds = %47, %39
  %56 = load i64, i64* %7, align 8, !tbaa !10
  %57 = add i64 %56, 1
  %58 = load i8*, i8** %6, align 8, !tbaa !14
  %59 = bitcast %union.anon* %4 to i8*
  %60 = icmp eq i8* %58, %59
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = select i1 %60, i64 15, i64 %62
  %64 = icmp ugt i64 %57, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %56, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %66 unwind label %89

66:                                               ; preds = %65, %55
  %67 = load i8*, i8** %6, align 8, !tbaa !14
  %68 = getelementptr inbounds i8, i8* %67, i64 %56
  store i8 46, i8* %68, align 1, !tbaa !13
  store i64 %57, i64* %7, align 8, !tbaa !10
  %69 = load i8*, i8** %6, align 8, !tbaa !14
  %70 = getelementptr inbounds i8, i8* %69, i64 %57
  store i8 0, i8* %70, align 1, !tbaa !13
  %71 = icmp eq i32 %2, 0
  br i1 %71, label %118, label %72

72:                                               ; preds = %66, %102
  %73 = phi i32 [ %75, %102 ], [ %2, %66 ]
  %74 = phi double [ %106, %102 ], [ %11, %66 ]
  %75 = add nsw i32 %73, -1
  %76 = fmul double %74, 2.000000e+00
  %77 = fptosi double %76 to i32
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %93

79:                                               ; preds = %72
  %80 = fadd double %76, -1.000000e+00
  %81 = load i64, i64* %7, align 8, !tbaa !10
  %82 = add i64 %81, 1
  %83 = load i8*, i8** %6, align 8, !tbaa !14
  %84 = icmp eq i8* %83, %59
  %85 = load i64, i64* %61, align 8
  %86 = select i1 %84, i64 15, i64 %85
  %87 = icmp ugt i64 %82, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %79
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %81, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %102 unwind label %91

89:                                               ; preds = %65
  %90 = landingpad { i8*, i32 }
          cleanup
  br label %112

91:                                               ; preds = %101, %88
  %92 = landingpad { i8*, i32 }
          cleanup
  br label %112

93:                                               ; preds = %72
  %94 = load i64, i64* %7, align 8, !tbaa !10
  %95 = add i64 %94, 1
  %96 = load i8*, i8** %6, align 8, !tbaa !14
  %97 = icmp eq i8* %96, %59
  %98 = load i64, i64* %61, align 8
  %99 = select i1 %97, i64 15, i64 %98
  %100 = icmp ugt i64 %95, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %94, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %102 unwind label %91

102:                                              ; preds = %93, %101, %79, %88
  %103 = phi i64 [ %81, %88 ], [ %81, %79 ], [ %94, %101 ], [ %94, %93 ]
  %104 = phi i8 [ 49, %88 ], [ 49, %79 ], [ 48, %101 ], [ 48, %93 ]
  %105 = phi i64 [ %82, %88 ], [ %82, %79 ], [ %95, %101 ], [ %95, %93 ]
  %106 = phi double [ %80, %88 ], [ %80, %79 ], [ %76, %101 ], [ %76, %93 ]
  %107 = load i8*, i8** %6, align 8, !tbaa !14
  %108 = getelementptr inbounds i8, i8* %107, i64 %103
  store i8 %104, i8* %108, align 1, !tbaa !13
  store i64 %105, i64* %7, align 8, !tbaa !10
  %109 = load i8*, i8** %6, align 8, !tbaa !14
  %110 = getelementptr inbounds i8, i8* %109, i64 %105
  store i8 0, i8* %110, align 1, !tbaa !13
  %111 = icmp eq i32 %75, 0
  br i1 %111, label %118, label %72, !llvm.loop !19

112:                                              ; preds = %91, %89, %37
  %113 = phi { i8*, i32 } [ %38, %37 ], [ %92, %91 ], [ %90, %89 ]
  %114 = load i8*, i8** %6, align 8, !tbaa !14
  %115 = bitcast %union.anon* %4 to i8*
  %116 = icmp eq i8* %114, %115
  br i1 %116, label %119, label %117

117:                                              ; preds = %112
  call void @_ZdlPv(i8* noundef %114) #5
  br label %119

118:                                              ; preds = %102, %66
  ret void

119:                                              ; preds = %117, %112
  resume { i8*, i32 } %113
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CONVERT_DECIMAL_FRACTION_BINARY_NUMBER_reprocessed.cpp() #3 section ".text.startup" {
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
!5 = !{!6, !7, i64 0}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !12, i64 8}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !6, i64 0, !12, i64 8, !8, i64 16}
!12 = !{!"long", !8, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!11, !7, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16, !17}
!19 = distinct !{!19, !16, !17}
