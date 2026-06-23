; ModuleID = 'benchmark/cpp_transcoder/DIVIDE_LARGE_NUMBER_REPRESENTED_STRING/DIVIDE_LARGE_NUMBER_REPRESENTED_STRING_processed.cpp'
source_filename = "benchmark/cpp_transcoder/DIVIDE_LARGE_NUMBER_REPRESENTED_STRING/DIVIDE_LARGE_NUMBER_REPRESENTED_STRING_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DIVIDE_LARGE_NUMBER_REPRESENTED_STRING_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #7
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %7 = bitcast %"class.std::__cxx11::basic_string"* %4 to %union.anon**
  store %union.anon* %6, %union.anon** %7, align 8, !tbaa !5
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  store i64 0, i64* %8, align 8, !tbaa !10
  %9 = bitcast %union.anon* %6 to i8*
  store i8 0, i8* %9, align 8, !tbaa !13
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8, !tbaa !14
  %12 = load i8, i8* %11, align 1, !tbaa !13
  %13 = sext i8 %12 to i32
  %14 = add nsw i32 %13, -48
  %15 = icmp slt i32 %14, %2
  br i1 %15, label %27, label %18

16:                                               ; preds = %27
  %17 = and i64 %31, 4294967295
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi i64 [ 0, %3 ], [ %17, %16 ]
  %20 = phi i32 [ %14, %3 ], [ %36, %16 ]
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %22 = load i64, i64* %21, align 8, !tbaa !10
  %23 = icmp ugt i64 %22, %19
  br i1 %23, label %24, label %95

24:                                               ; preds = %18
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  br label %42

27:                                               ; preds = %3, %27
  %28 = phi i64 [ %31, %27 ], [ 0, %3 ]
  %29 = phi i32 [ %36, %27 ], [ %14, %3 ]
  %30 = mul nsw i32 %29, 10
  %31 = add nuw nsw i64 %28, 1
  %32 = getelementptr inbounds i8, i8* %11, i64 %31
  %33 = load i8, i8* %32, align 1, !tbaa !13
  %34 = sext i8 %33 to i32
  %35 = add i32 %30, -48
  %36 = add i32 %35, %34
  %37 = icmp slt i32 %36, %2
  br i1 %37, label %27, label %16, !llvm.loop !15

38:                                               ; preds = %56
  %39 = landingpad { i8*, i32 }
          cleanup
  %40 = load i8*, i8** %25, align 8, !tbaa !14
  %41 = icmp eq i8* %40, %9
  br i1 %41, label %107, label %106

42:                                               ; preds = %67, %24
  %43 = phi i8* [ %9, %24 ], [ %76, %67 ]
  %44 = phi i64 [ 0, %24 ], [ %75, %67 ]
  %45 = phi i64 [ %19, %24 ], [ %64, %67 ]
  %46 = phi i32 [ %20, %24 ], [ %74, %67 ]
  %47 = sdiv i32 %46, %2
  %48 = srem i32 %46, %2
  %49 = trunc i32 %47 to i8
  %50 = add i8 %49, 48
  %51 = add i64 %44, 1
  %52 = icmp eq i8* %43, %9
  %53 = load i64, i64* %26, align 8
  %54 = select i1 %52, i64 15, i64 %53
  %55 = icmp ugt i64 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %44, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %57 unwind label %38

57:                                               ; preds = %56
  %58 = load i8*, i8** %25, align 8, !tbaa !14
  br label %59

59:                                               ; preds = %57, %42
  %60 = phi i8* [ %58, %57 ], [ %43, %42 ]
  %61 = getelementptr inbounds i8, i8* %60, i64 %44
  store i8 %50, i8* %61, align 1, !tbaa !13
  store i64 %51, i64* %8, align 8, !tbaa !10
  %62 = load i8*, i8** %25, align 8, !tbaa !14
  %63 = getelementptr inbounds i8, i8* %62, i64 %51
  store i8 0, i8* %63, align 1, !tbaa !13
  %64 = add nuw i64 %45, 1
  %65 = load i64, i64* %21, align 8, !tbaa !10
  %66 = icmp ugt i64 %65, %64
  br i1 %66, label %67, label %77, !llvm.loop !17

67:                                               ; preds = %59
  %68 = mul nsw i32 %48, 10
  %69 = add i32 %68, -48
  %70 = load i8*, i8** %10, align 8, !tbaa !14
  %71 = getelementptr inbounds i8, i8* %70, i64 %64
  %72 = load i8, i8* %71, align 1, !tbaa !13
  %73 = sext i8 %72 to i32
  %74 = add i32 %69, %73
  %75 = load i64, i64* %8, align 8, !tbaa !10
  %76 = load i8*, i8** %25, align 8, !tbaa !14
  br label %42

77:                                               ; preds = %59
  %78 = load i64, i64* %8, align 8, !tbaa !10
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %95, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %82 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %81, %union.anon** %82, align 8, !tbaa !5
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8, !tbaa !14
  %85 = icmp eq i8* %84, %9
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = bitcast %union.anon* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %87, i8* noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false) #7
  br label %93

88:                                               ; preds = %80
  %89 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  store i8* %84, i8** %89, align 8, !tbaa !14
  %90 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  %91 = load i64, i64* %90, align 8, !tbaa !13
  %92 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %91, i64* %92, align 8, !tbaa !13
  br label %93

93:                                               ; preds = %88, %86
  %94 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %78, i64* %94, align 8, !tbaa !10
  br label %105

95:                                               ; preds = %18, %77
  %96 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %97 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %96, %union.anon** %97, align 8, !tbaa !5
  %98 = bitcast %union.anon* %96 to i8*
  store i8 48, i8* %98, align 8, !tbaa !13
  %99 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 1, i64* %99, align 8, !tbaa !10
  %100 = getelementptr inbounds i8, i8* %98, i64 1
  store i8 0, i8* %100, align 1, !tbaa !13
  %101 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8, !tbaa !14
  %103 = icmp eq i8* %102, %9
  br i1 %103, label %105, label %104

104:                                              ; preds = %95
  call void @_ZdlPv(i8* noundef %102) #7
  br label %105

105:                                              ; preds = %93, %95, %104
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #7
  ret void

106:                                              ; preds = %38
  call void @_ZdlPv(i8* noundef %40) #7
  br label %107

107:                                              ; preds = %38, %106
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #7
  resume { i8*, i32 } %39
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DIVIDE_LARGE_NUMBER_REPRESENTED_STRING_processed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nounwind }

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
