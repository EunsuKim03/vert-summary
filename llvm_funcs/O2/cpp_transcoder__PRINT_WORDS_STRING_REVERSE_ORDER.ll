; ModuleID = 'benchmark/cpp_transcoder/PRINT_WORDS_STRING_REVERSE_ORDER/PRINT_WORDS_STRING_REVERSE_ORDER_processed.cpp'
source_filename = "benchmark/cpp_transcoder/PRINT_WORDS_STRING_REVERSE_ORDER/PRINT_WORDS_STRING_REVERSE_ORDER_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_PRINT_WORDS_STRING_REVERSE_ORDER_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !5
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %7 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %6, %union.anon** %7, align 8, !tbaa !12
  %8 = bitcast %union.anon* %6 to i8*
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %10, align 8, !tbaa !5
  store i8 0, i8* %8, align 8, !tbaa !13
  %11 = add i32 %5, -1
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  br label %23

16:                                               ; preds = %88, %2
  %17 = phi i32 [ %5, %2 ], [ %89, %88 ]
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %115, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %22 = zext i32 %17 to i64
  br label %93

23:                                               ; preds = %13, %88
  %24 = phi i32 [ %5, %13 ], [ %92, %88 ]
  %25 = phi i32 [ %11, %13 ], [ %90, %88 ]
  %26 = phi i32 [ %5, %13 ], [ %89, %88 ]
  %27 = zext i32 %25 to i64
  %28 = load i8*, i8** %14, align 8, !tbaa !14
  %29 = getelementptr inbounds i8, i8* %28, i64 %27
  %30 = load i8, i8* %29, align 1, !tbaa !13
  %31 = icmp eq i8 %30, 32
  br i1 %31, label %32, label %88

32:                                               ; preds = %23
  %33 = icmp eq i32 %24, %26
  br i1 %33, label %72, label %34

34:                                               ; preds = %32
  %35 = sext i32 %24 to i64
  br label %36

36:                                               ; preds = %34, %59
  %37 = phi i8* [ %60, %59 ], [ %28, %34 ]
  %38 = phi i64 [ %39, %59 ], [ %35, %34 ]
  %39 = add nsw i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %37, i64 %38
  %41 = load i8, i8* %40, align 1, !tbaa !13
  %42 = load i64, i64* %10, align 8, !tbaa !5
  %43 = add i64 %42, 1
  %44 = load i8*, i8** %9, align 8, !tbaa !14
  %45 = icmp eq i8* %44, %8
  %46 = load i64, i64* %15, align 8
  %47 = select i1 %45, i64 15, i64 %46
  %48 = icmp ugt i64 %43, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %42, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %50 unwind label %63

50:                                               ; preds = %49
  %51 = load i8*, i8** %9, align 8, !tbaa !14
  br label %52

52:                                               ; preds = %36, %50
  %53 = phi i8* [ %51, %50 ], [ %44, %36 ]
  %54 = getelementptr inbounds i8, i8* %53, i64 %42
  store i8 %41, i8* %54, align 1, !tbaa !13
  store i64 %43, i64* %10, align 8, !tbaa !5
  %55 = load i8*, i8** %9, align 8, !tbaa !14
  %56 = getelementptr inbounds i8, i8* %55, i64 %43
  store i8 0, i8* %56, align 1, !tbaa !13
  %57 = trunc i64 %39 to i32
  %58 = icmp eq i32 %26, %57
  br i1 %58, label %72, label %59

59:                                               ; preds = %52
  %60 = load i8*, i8** %14, align 8, !tbaa !14
  br label %36

61:                                               ; preds = %106
  %62 = landingpad { i8*, i32 }
          cleanup
  br label %67

63:                                               ; preds = %49
  %64 = landingpad { i8*, i32 }
          cleanup
  br label %67

65:                                               ; preds = %80
  %66 = landingpad { i8*, i32 }
          cleanup
  br label %67

67:                                               ; preds = %63, %65, %61
  %68 = phi { i8*, i32 } [ %62, %61 ], [ %64, %63 ], [ %66, %65 ]
  %69 = load i8*, i8** %9, align 8, !tbaa !14
  %70 = icmp eq i8* %69, %8
  br i1 %70, label %116, label %71

71:                                               ; preds = %67
  tail call void @_ZdlPv(i8* noundef %69) #5
  br label %116

72:                                               ; preds = %52, %32
  %73 = load i64, i64* %10, align 8, !tbaa !5
  %74 = add i64 %73, 1
  %75 = load i8*, i8** %9, align 8, !tbaa !14
  %76 = icmp eq i8* %75, %8
  %77 = load i64, i64* %15, align 8
  %78 = select i1 %76, i64 15, i64 %77
  %79 = icmp ugt i64 %74, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %73, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %81 unwind label %65

81:                                               ; preds = %80
  %82 = load i8*, i8** %9, align 8, !tbaa !14
  br label %83

83:                                               ; preds = %72, %81
  %84 = phi i8* [ %82, %81 ], [ %75, %72 ]
  %85 = getelementptr inbounds i8, i8* %84, i64 %73
  store i8 32, i8* %85, align 1, !tbaa !13
  store i64 %74, i64* %10, align 8, !tbaa !5
  %86 = load i8*, i8** %9, align 8, !tbaa !14
  %87 = getelementptr inbounds i8, i8* %86, i64 %74
  store i8 0, i8* %87, align 1, !tbaa !13
  br label %88

88:                                               ; preds = %83, %23
  %89 = phi i32 [ %26, %23 ], [ %25, %83 ]
  %90 = add i32 %25, -1
  %91 = icmp sgt i32 %90, -1
  %92 = add i32 %24, -1
  br i1 %91, label %23, label %16, !llvm.loop !15

93:                                               ; preds = %19, %109
  %94 = phi i64 [ 0, %19 ], [ %95, %109 ]
  %95 = add nuw nsw i64 %94, 1
  %96 = load i8*, i8** %20, align 8, !tbaa !14
  %97 = getelementptr inbounds i8, i8* %96, i64 %94
  %98 = load i8, i8* %97, align 1, !tbaa !13
  %99 = load i64, i64* %10, align 8, !tbaa !5
  %100 = add i64 %99, 1
  %101 = load i8*, i8** %9, align 8, !tbaa !14
  %102 = icmp eq i8* %101, %8
  %103 = load i64, i64* %21, align 8
  %104 = select i1 %102, i64 15, i64 %103
  %105 = icmp ugt i64 %100, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %93
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %99, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %107 unwind label %61

107:                                              ; preds = %106
  %108 = load i8*, i8** %9, align 8, !tbaa !14
  br label %109

109:                                              ; preds = %93, %107
  %110 = phi i8* [ %108, %107 ], [ %101, %93 ]
  %111 = getelementptr inbounds i8, i8* %110, i64 %99
  store i8 %98, i8* %111, align 1, !tbaa !13
  store i64 %100, i64* %10, align 8, !tbaa !5
  %112 = load i8*, i8** %9, align 8, !tbaa !14
  %113 = getelementptr inbounds i8, i8* %112, i64 %100
  store i8 0, i8* %113, align 1, !tbaa !13
  %114 = icmp eq i64 %95, %22
  br i1 %114, label %115, label %93

115:                                              ; preds = %109, %16
  ret void

116:                                              ; preds = %71, %67
  resume { i8*, i32 } %68
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_PRINT_WORDS_STRING_REVERSE_ORDER_processed.cpp() #3 section ".text.startup" {
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
