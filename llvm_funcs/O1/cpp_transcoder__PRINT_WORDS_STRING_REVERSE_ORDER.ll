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
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %9, align 8, !tbaa !5
  %10 = bitcast %union.anon* %6 to i8*
  store i8 0, i8* %10, align 8, !tbaa !13
  %11 = add i32 %5, -1
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %15 = bitcast %union.anon* %6 to i8*
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %17 = bitcast %union.anon* %6 to i8*
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %19 = sext i32 %11 to i64
  br label %28

20:                                               ; preds = %88, %2
  %21 = phi i32 [ %5, %2 ], [ %89, %88 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %114, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %25 = bitcast %union.anon* %6 to i8*
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %27 = zext i32 %21 to i64
  br label %94

28:                                               ; preds = %13, %88
  %29 = phi i64 [ %19, %13 ], [ %90, %88 ]
  %30 = phi i32 [ %5, %13 ], [ %93, %88 ]
  %31 = phi i32 [ %5, %13 ], [ %89, %88 ]
  %32 = load i8*, i8** %14, align 8, !tbaa !14
  %33 = getelementptr inbounds i8, i8* %32, i64 %29
  %34 = load i8, i8* %33, align 1, !tbaa !13
  %35 = icmp eq i8 %34, 32
  br i1 %35, label %36, label %88

36:                                               ; preds = %28
  %37 = icmp eq i32 %30, %31
  br i1 %37, label %73, label %38

38:                                               ; preds = %36
  %39 = sext i32 %30 to i64
  br label %40

40:                                               ; preds = %38, %54
  %41 = phi i64 [ %42, %54 ], [ %39, %38 ]
  %42 = add nsw i64 %41, 1
  %43 = load i8*, i8** %14, align 8, !tbaa !14
  %44 = getelementptr inbounds i8, i8* %43, i64 %41
  %45 = load i8, i8* %44, align 1, !tbaa !13
  %46 = load i64, i64* %9, align 8, !tbaa !5
  %47 = add i64 %46, 1
  %48 = load i8*, i8** %8, align 8, !tbaa !14
  %49 = icmp eq i8* %48, %15
  %50 = load i64, i64* %16, align 8
  %51 = select i1 %49, i64 15, i64 %50
  %52 = icmp ugt i64 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %46, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %54 unwind label %63

54:                                               ; preds = %53, %40
  %55 = load i8*, i8** %8, align 8, !tbaa !14
  %56 = getelementptr inbounds i8, i8* %55, i64 %46
  store i8 %45, i8* %56, align 1, !tbaa !13
  store i64 %47, i64* %9, align 8, !tbaa !5
  %57 = load i8*, i8** %8, align 8, !tbaa !14
  %58 = getelementptr inbounds i8, i8* %57, i64 %47
  store i8 0, i8* %58, align 1, !tbaa !13
  %59 = trunc i64 %42 to i32
  %60 = icmp eq i32 %31, %59
  br i1 %60, label %73, label %40

61:                                               ; preds = %107
  %62 = landingpad { i8*, i32 }
          cleanup
  br label %67

63:                                               ; preds = %53
  %64 = landingpad { i8*, i32 }
          cleanup
  br label %67

65:                                               ; preds = %81
  %66 = landingpad { i8*, i32 }
          cleanup
  br label %67

67:                                               ; preds = %63, %65, %61
  %68 = phi { i8*, i32 } [ %62, %61 ], [ %64, %63 ], [ %66, %65 ]
  %69 = load i8*, i8** %8, align 8, !tbaa !14
  %70 = bitcast %union.anon* %6 to i8*
  %71 = icmp eq i8* %69, %70
  br i1 %71, label %115, label %72

72:                                               ; preds = %67
  call void @_ZdlPv(i8* noundef %69) #5
  br label %115

73:                                               ; preds = %54, %36
  %74 = load i64, i64* %9, align 8, !tbaa !5
  %75 = add i64 %74, 1
  %76 = load i8*, i8** %8, align 8, !tbaa !14
  %77 = icmp eq i8* %76, %17
  %78 = load i64, i64* %18, align 8
  %79 = select i1 %77, i64 15, i64 %78
  %80 = icmp ugt i64 %75, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %74, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %82 unwind label %65

82:                                               ; preds = %81, %73
  %83 = load i8*, i8** %8, align 8, !tbaa !14
  %84 = getelementptr inbounds i8, i8* %83, i64 %74
  store i8 32, i8* %84, align 1, !tbaa !13
  store i64 %75, i64* %9, align 8, !tbaa !5
  %85 = load i8*, i8** %8, align 8, !tbaa !14
  %86 = getelementptr inbounds i8, i8* %85, i64 %75
  store i8 0, i8* %86, align 1, !tbaa !13
  %87 = trunc i64 %29 to i32
  br label %88

88:                                               ; preds = %82, %28
  %89 = phi i32 [ %31, %28 ], [ %87, %82 ]
  %90 = add nsw i64 %29, -1
  %91 = and i64 %90, 2147483648
  %92 = icmp eq i64 %91, 0
  %93 = add i32 %30, -1
  br i1 %92, label %28, label %20, !llvm.loop !15

94:                                               ; preds = %23, %108
  %95 = phi i64 [ 0, %23 ], [ %96, %108 ]
  %96 = add nuw nsw i64 %95, 1
  %97 = load i8*, i8** %24, align 8, !tbaa !14
  %98 = getelementptr inbounds i8, i8* %97, i64 %95
  %99 = load i8, i8* %98, align 1, !tbaa !13
  %100 = load i64, i64* %9, align 8, !tbaa !5
  %101 = add i64 %100, 1
  %102 = load i8*, i8** %8, align 8, !tbaa !14
  %103 = icmp eq i8* %102, %25
  %104 = load i64, i64* %26, align 8
  %105 = select i1 %103, i64 15, i64 %104
  %106 = icmp ugt i64 %101, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %94
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %100, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %108 unwind label %61

108:                                              ; preds = %107, %94
  %109 = load i8*, i8** %8, align 8, !tbaa !14
  %110 = getelementptr inbounds i8, i8* %109, i64 %100
  store i8 %99, i8* %110, align 1, !tbaa !13
  store i64 %101, i64* %9, align 8, !tbaa !5
  %111 = load i8*, i8** %8, align 8, !tbaa !14
  %112 = getelementptr inbounds i8, i8* %111, i64 %101
  store i8 0, i8* %112, align 1, !tbaa !13
  %113 = icmp eq i64 %96, %27
  br i1 %113, label %114, label %94

114:                                              ; preds = %108, %20
  ret void

115:                                              ; preds = %72, %67
  resume { i8*, i32 } %68
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_PRINT_WORDS_STRING_REVERSE_ORDER_processed.cpp() #3 section ".text.startup" {
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
