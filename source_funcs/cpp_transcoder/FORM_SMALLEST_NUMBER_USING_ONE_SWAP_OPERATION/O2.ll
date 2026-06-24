; ModuleID = 'benchmark/cpp_transcoder/FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION/FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION/FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* noundef %1) local_unnamed_addr #3 personality i32 (...)* @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !5
  %5 = trunc i64 %4 to i32
  %6 = and i64 %4, 4294967295
  %7 = alloca i32, i64 %6, align 16
  %8 = add nsw i32 %5, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  store i32 -1, i32* %10, align 4, !tbaa !12
  %11 = icmp sgt i32 %5, 2
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = add i64 %4, 4294967294
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8, !tbaa !14
  %16 = and i64 %13, 4294967295
  br label %23

17:                                               ; preds = %43, %2
  %18 = icmp sgt i32 %5, 1
  br i1 %18, label %19, label %105

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !14
  %22 = and i64 %4, 4294967295
  br label %53

23:                                               ; preds = %12, %43
  %24 = phi i64 [ %16, %12 ], [ %45, %43 ]
  %25 = phi i32 [ %8, %12 ], [ %44, %43 ]
  %26 = getelementptr inbounds i8, i8* %15, i64 %24
  %27 = load i8, i8* %26, align 1, !tbaa !15
  %28 = sext i32 %25 to i64
  %29 = getelementptr inbounds i8, i8* %15, i64 %28
  %30 = load i8, i8* %29, align 1, !tbaa !15
  %31 = icmp slt i8 %27, %30
  br i1 %31, label %34, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds i32, i32* %7, i64 %24
  store i32 %25, i32* %33, align 4, !tbaa !12
  br label %43

34:                                               ; preds = %23
  %35 = add nuw nsw i64 %24, 1
  %36 = getelementptr inbounds i8, i8* %15, i64 %35
  %37 = load i8, i8* %36, align 1, !tbaa !15
  %38 = icmp eq i8 %27, %37
  %39 = getelementptr inbounds i32, i32* %7, i64 %24
  br i1 %38, label %40, label %41

40:                                               ; preds = %34
  store i32 %25, i32* %39, align 4, !tbaa !12
  br label %43

41:                                               ; preds = %34
  store i32 -1, i32* %39, align 4, !tbaa !12
  %42 = trunc i64 %24 to i32
  br label %43

43:                                               ; preds = %32, %41, %40
  %44 = phi i32 [ %25, %32 ], [ %25, %40 ], [ %42, %41 ]
  %45 = add nsw i64 %24, -1
  %46 = icmp sgt i64 %24, 1
  br i1 %46, label %23, label %17, !llvm.loop !16

47:                                               ; preds = %73
  %48 = icmp eq i32 %74, -1
  br i1 %48, label %49, label %77

49:                                               ; preds = %47
  br i1 %18, label %50, label %105

50:                                               ; preds = %49
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %52 = and i64 %4, 4294967295
  br label %84

53:                                               ; preds = %19, %73
  %54 = phi i64 [ 1, %19 ], [ %75, %73 ]
  %55 = phi i32 [ -1, %19 ], [ %74, %73 ]
  %56 = getelementptr inbounds i8, i8* %21, i64 %54
  %57 = load i8, i8* %56, align 1, !tbaa !15
  %58 = icmp eq i8 %57, 48
  br i1 %58, label %73, label %59

59:                                               ; preds = %53
  %60 = icmp eq i32 %55, -1
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = load i8, i8* %21, align 1, !tbaa !15
  %63 = icmp slt i8 %57, %62
  %64 = trunc i64 %54 to i32
  %65 = select i1 %63, i32 %64, i32 -1
  br label %73

66:                                               ; preds = %59
  %67 = sext i32 %55 to i64
  %68 = getelementptr inbounds i8, i8* %21, i64 %67
  %69 = load i8, i8* %68, align 1, !tbaa !15
  %70 = icmp sgt i8 %57, %69
  %71 = trunc i64 %54 to i32
  %72 = select i1 %70, i32 %55, i32 %71
  br label %73

73:                                               ; preds = %66, %61, %53
  %74 = phi i32 [ %55, %53 ], [ %65, %61 ], [ %72, %66 ]
  %75 = add nuw nsw i64 %54, 1
  %76 = icmp eq i64 %75, %22
  br i1 %76, label %47, label %53, !llvm.loop !18

77:                                               ; preds = %47
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8, !tbaa !14
  %80 = sext i32 %74 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i8, i8* %79, align 1, !tbaa !15
  %83 = load i8, i8* %81, align 1, !tbaa !15
  store i8 %83, i8* %79, align 1, !tbaa !15
  store i8 %82, i8* %81, align 1, !tbaa !15
  br label %105

84:                                               ; preds = %50, %102
  %85 = phi i64 [ 1, %50 ], [ %103, %102 ]
  %86 = getelementptr inbounds i32, i32* %7, i64 %85
  %87 = load i32, i32* %86, align 4, !tbaa !12
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %102, label %89

89:                                               ; preds = %84
  %90 = load i8*, i8** %51, align 8, !tbaa !14
  %91 = getelementptr inbounds i8, i8* %90, i64 %85
  %92 = load i8, i8* %91, align 1, !tbaa !15
  %93 = sext i32 %87 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = load i8, i8* %94, align 1, !tbaa !15
  %96 = icmp eq i8 %92, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %89
  %98 = sext i32 %87 to i64
  %99 = getelementptr inbounds i8, i8* %90, i64 %98
  %100 = and i64 %85, 4294967295
  %101 = getelementptr inbounds i8, i8* %90, i64 %100
  store i8 %95, i8* %101, align 1, !tbaa !15
  store i8 %92, i8* %99, align 1, !tbaa !15
  br label %105

102:                                              ; preds = %84, %89
  %103 = add nuw nsw i64 %85, 1
  %104 = icmp eq i64 %103, %52
  br i1 %104, label %105, label %84, !llvm.loop !19

105:                                              ; preds = %102, %17, %49, %97, %77
  %106 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %107 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %106, %union.anon** %107, align 8, !tbaa !20
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8, !tbaa !14
  %110 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2
  %111 = bitcast %union.anon* %110 to i8*
  %112 = icmp eq i8* %109, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = bitcast %union.anon* %106 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %114, i8* noundef nonnull align 8 dereferenceable(16) %109, i64 16, i1 false) #6
  br label %120

115:                                              ; preds = %105
  %116 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  store i8* %109, i8** %116, align 8, !tbaa !14
  %117 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2, i32 0
  %118 = load i64, i64* %117, align 8, !tbaa !15
  %119 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %118, i64* %119, align 8, !tbaa !15
  br label %120

120:                                              ; preds = %113, %115
  %121 = load i64, i64* %3, align 8, !tbaa !5
  %122 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %121, i64* %122, align 8, !tbaa !5
  %123 = bitcast %"class.std::__cxx11::basic_string"* %1 to %union.anon**
  store %union.anon* %110, %union.anon** %123, align 8, !tbaa !14
  store i64 0, i64* %3, align 8, !tbaa !5
  store i8 0, i8* %111, align 8, !tbaa !15
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION_processed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!13 = !{!"int", !9, i64 0}
!14 = !{!6, !8, i64 0}
!15 = !{!9, !9, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = !{!7, !8, i64 0}
