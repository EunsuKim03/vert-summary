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
  %6 = bitcast %union.anon* %4 to i8*
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %8, align 8, !tbaa !10
  store i8 0, i8* %6, align 8, !tbaa !13
  %9 = fptosi double %1 to i32
  %10 = sitofp i32 %9 to double
  %11 = fsub double %1, %10
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %62, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  br label %15

15:                                               ; preds = %38, %13
  %16 = phi i8* [ %6, %13 ], [ %40, %38 ]
  %17 = phi i64 [ 0, %13 ], [ %39, %38 ]
  %18 = phi i32 [ %9, %13 ], [ %20, %38 ]
  %19 = srem i32 %18, 2
  %20 = sdiv i32 %18, 2
  %21 = trunc i32 %19 to i8
  %22 = add nsw i8 %21, 48
  %23 = add i64 %17, 1
  %24 = icmp eq i8* %16, %6
  %25 = load i64, i64* %14, align 8
  %26 = select i1 %24, i64 15, i64 %25
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %17, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %29 unwind label %41

29:                                               ; preds = %28
  %30 = load i8*, i8** %7, align 8, !tbaa !14
  br label %31

31:                                               ; preds = %29, %15
  %32 = phi i8* [ %30, %29 ], [ %16, %15 ]
  %33 = getelementptr inbounds i8, i8* %32, i64 %17
  store i8 %22, i8* %33, align 1, !tbaa !13
  store i64 %23, i64* %8, align 8, !tbaa !10
  %34 = load i8*, i8** %7, align 8, !tbaa !14
  %35 = getelementptr inbounds i8, i8* %34, i64 %23
  store i8 0, i8* %35, align 1, !tbaa !13
  %36 = add i32 %18, 1
  %37 = icmp ult i32 %36, 3
  br i1 %37, label %43, label %38, !llvm.loop !15

38:                                               ; preds = %31
  %39 = load i64, i64* %8, align 8, !tbaa !10
  %40 = load i8*, i8** %7, align 8, !tbaa !14
  br label %15

41:                                               ; preds = %28
  %42 = landingpad { i8*, i32 }
          cleanup
  br label %126

43:                                               ; preds = %31
  %44 = load i8*, i8** %7, align 8, !tbaa !14
  %45 = load i64, i64* %8, align 8, !tbaa !10
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = icmp ne i64 %45, 0
  %48 = getelementptr inbounds i8, i8* %46, i64 -1
  %49 = icmp ugt i8* %48, %44
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %62

51:                                               ; preds = %43, %51
  %52 = phi i8* [ %57, %51 ], [ %48, %43 ]
  %53 = phi i8* [ %56, %51 ], [ %44, %43 ]
  %54 = load i8, i8* %53, align 1, !tbaa !13
  %55 = load i8, i8* %52, align 1, !tbaa !13
  store i8 %55, i8* %53, align 1, !tbaa !13
  store i8 %54, i8* %52, align 1, !tbaa !13
  %56 = getelementptr inbounds i8, i8* %53, i64 1
  %57 = getelementptr inbounds i8, i8* %52, i64 -1
  %58 = icmp ult i8* %56, %57
  br i1 %58, label %51, label %59, !llvm.loop !17

59:                                               ; preds = %51
  %60 = load i64, i64* %8, align 8, !tbaa !10
  %61 = load i8*, i8** %7, align 8, !tbaa !14
  br label %62

62:                                               ; preds = %3, %59, %43
  %63 = phi i8* [ %61, %59 ], [ %44, %43 ], [ %6, %3 ]
  %64 = phi i64 [ %60, %59 ], [ %45, %43 ], [ 0, %3 ]
  %65 = add i64 %64, 1
  %66 = icmp eq i8* %63, %6
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = select i1 %66, i64 15, i64 %68
  %70 = icmp ugt i64 %65, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %64, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %72 unwind label %102

72:                                               ; preds = %71
  %73 = load i8*, i8** %7, align 8, !tbaa !14
  br label %74

74:                                               ; preds = %62, %72
  %75 = phi i8* [ %73, %72 ], [ %63, %62 ]
  %76 = getelementptr inbounds i8, i8* %75, i64 %64
  store i8 46, i8* %76, align 1, !tbaa !13
  store i64 %65, i64* %8, align 8, !tbaa !10
  %77 = load i8*, i8** %7, align 8, !tbaa !14
  %78 = getelementptr inbounds i8, i8* %77, i64 %65
  store i8 0, i8* %78, align 1, !tbaa !13
  %79 = icmp eq i32 %2, 0
  br i1 %79, label %131, label %80

80:                                               ; preds = %74, %120
  %81 = phi i32 [ %83, %120 ], [ %2, %74 ]
  %82 = phi double [ %122, %120 ], [ %11, %74 ]
  %83 = add nsw i32 %81, -1
  %84 = fmul double %82, 2.000000e+00
  %85 = fptosi double %84 to i32
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %106

87:                                               ; preds = %80
  %88 = fadd double %84, -1.000000e+00
  %89 = load i64, i64* %8, align 8, !tbaa !10
  %90 = add i64 %89, 1
  %91 = load i8*, i8** %7, align 8, !tbaa !14
  %92 = icmp eq i8* %91, %6
  %93 = load i64, i64* %67, align 8
  %94 = select i1 %92, i64 15, i64 %93
  %95 = icmp ugt i64 %90, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %89, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %97 unwind label %104

97:                                               ; preds = %96
  %98 = load i8*, i8** %7, align 8, !tbaa !14
  br label %99

99:                                               ; preds = %87, %97
  %100 = phi i8* [ %98, %97 ], [ %91, %87 ]
  %101 = getelementptr inbounds i8, i8* %100, i64 %89
  store i8 49, i8* %101, align 1, !tbaa !13
  br label %120

102:                                              ; preds = %71
  %103 = landingpad { i8*, i32 }
          cleanup
  br label %126

104:                                              ; preds = %114, %96
  %105 = landingpad { i8*, i32 }
          cleanup
  br label %126

106:                                              ; preds = %80
  %107 = load i64, i64* %8, align 8, !tbaa !10
  %108 = add i64 %107, 1
  %109 = load i8*, i8** %7, align 8, !tbaa !14
  %110 = icmp eq i8* %109, %6
  %111 = load i64, i64* %67, align 8
  %112 = select i1 %110, i64 15, i64 %111
  %113 = icmp ugt i64 %108, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %107, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %115 unwind label %104

115:                                              ; preds = %114
  %116 = load i8*, i8** %7, align 8, !tbaa !14
  br label %117

117:                                              ; preds = %106, %115
  %118 = phi i8* [ %116, %115 ], [ %109, %106 ]
  %119 = getelementptr inbounds i8, i8* %118, i64 %107
  store i8 48, i8* %119, align 1, !tbaa !13
  br label %120

120:                                              ; preds = %117, %99
  %121 = phi i64 [ %108, %117 ], [ %90, %99 ]
  %122 = phi double [ %84, %117 ], [ %88, %99 ]
  store i64 %121, i64* %8, align 8, !tbaa !10
  %123 = load i8*, i8** %7, align 8, !tbaa !14
  %124 = getelementptr inbounds i8, i8* %123, i64 %121
  store i8 0, i8* %124, align 1, !tbaa !13
  %125 = icmp eq i32 %83, 0
  br i1 %125, label %131, label %80, !llvm.loop !18

126:                                              ; preds = %104, %102, %41
  %127 = phi { i8*, i32 } [ %42, %41 ], [ %105, %104 ], [ %103, %102 ]
  %128 = load i8*, i8** %7, align 8, !tbaa !14
  %129 = icmp eq i8* %128, %6
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  tail call void @_ZdlPv(i8* noundef %128) #5
  br label %132

131:                                              ; preds = %120, %74
  ret void

132:                                              ; preds = %130, %126
  resume { i8*, i32 } %127
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CONVERT_DECIMAL_FRACTION_BINARY_NUMBER_reprocessed.cpp() #3 section ".text.startup" {
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
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
