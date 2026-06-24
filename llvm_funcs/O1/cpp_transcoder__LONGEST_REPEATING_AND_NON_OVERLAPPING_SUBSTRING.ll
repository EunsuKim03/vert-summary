; ModuleID = 'llvm/cpp_transcoder/LONGEST_REPEATING_AND_NON_OVERLAPPING_SUBSTRING/LONGEST_REPEATING_AND_NON_OVERLAPPING_SUBSTRING_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/LONGEST_REPEATING_AND_NON_OVERLAPPING_SUBSTRING/LONGEST_REPEATING_AND_NON_OVERLAPPING_SUBSTRING_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LONGEST_REPEATING_AND_NON_OVERLAPPING_SUBSTRING_reprocessed.cpp, i8* null }]

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
  %6 = add i64 %4, 1
  %7 = and i64 %6, 4294967295
  %8 = mul nuw i64 %7, %7
  %9 = alloca i32, i64 %8, align 16
  %10 = bitcast i32* %9 to i8*
  %11 = shl nuw i64 %8, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %11, i1 false)
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %13 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %12, %union.anon** %13, align 8, !tbaa !12
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %14, align 8, !tbaa !5
  %15 = bitcast %union.anon* %12 to i8*
  store i8 0, i8* %15, align 8, !tbaa !13
  %16 = icmp slt i32 %5, 1
  br i1 %16, label %75, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %19 = shl i64 %4, 32
  %20 = ashr exact i64 %19, 32
  %21 = add i64 %4, 1
  %22 = and i64 %21, 4294967295
  %23 = and i64 %4, 4294967295
  br label %24

24:                                               ; preds = %17, %42
  %25 = phi i64 [ 1, %17 ], [ %45, %42 ]
  %26 = phi i32 [ 0, %17 ], [ %44, %42 ]
  %27 = phi i32 [ 0, %17 ], [ %43, %42 ]
  %28 = trunc i64 %25 to i32
  %29 = icmp slt i64 %25, %20
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = add nsw i64 %25, -1
  %32 = load i8*, i8** %18, align 8, !tbaa !14
  %33 = getelementptr inbounds i8, i8* %32, i64 %31
  %34 = load i8, i8* %33, align 1, !tbaa !13
  %35 = mul nuw nsw i64 %7, %31
  %36 = getelementptr inbounds i32, i32* %9, i64 %35
  %37 = mul nuw nsw i64 %7, %25
  %38 = getelementptr inbounds i32, i32* %9, i64 %37
  %39 = mul nuw nsw i64 %7, %25
  %40 = getelementptr inbounds i32, i32* %9, i64 %39
  %41 = trunc i64 %25 to i32
  br label %47

42:                                               ; preds = %71, %24
  %43 = phi i32 [ %27, %24 ], [ %72, %71 ]
  %44 = phi i32 [ %26, %24 ], [ %73, %71 ]
  %45 = add nuw nsw i64 %25, 1
  %46 = icmp eq i64 %45, %22
  br i1 %46, label %75, label %24, !llvm.loop !15

47:                                               ; preds = %30, %71
  %48 = phi i64 [ %25, %30 ], [ %51, %71 ]
  %49 = phi i32 [ %26, %30 ], [ %73, %71 ]
  %50 = phi i32 [ %27, %30 ], [ %72, %71 ]
  %51 = add nuw nsw i64 %48, 1
  %52 = getelementptr inbounds i8, i8* %32, i64 %48
  %53 = load i8, i8* %52, align 1, !tbaa !13
  %54 = icmp eq i8 %34, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %47
  %56 = getelementptr inbounds i32, i32* %36, i64 %48
  %57 = load i32, i32* %56, align 4, !tbaa !18
  %58 = trunc i64 %51 to i32
  %59 = sub nsw i32 %58, %28
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = add nsw i32 %57, 1
  %63 = getelementptr inbounds i32, i32* %40, i64 %51
  store i32 %62, i32* %63, align 4, !tbaa !18
  %64 = icmp slt i32 %57, %49
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = sext i32 %50 to i64
  %67 = icmp slt i64 %25, %66
  %68 = select i1 %67, i32 %50, i32 %41
  br label %71

69:                                               ; preds = %55, %47
  %70 = getelementptr inbounds i32, i32* %38, i64 %51
  store i32 0, i32* %70, align 4, !tbaa !18
  br label %71

71:                                               ; preds = %69, %65, %61
  %72 = phi i32 [ %68, %65 ], [ %50, %61 ], [ %50, %69 ]
  %73 = phi i32 [ %62, %65 ], [ %49, %61 ], [ %49, %69 ]
  %74 = icmp eq i64 %51, %23
  br i1 %74, label %42, label %47, !llvm.loop !20

75:                                               ; preds = %42, %2
  %76 = phi i32 [ 0, %2 ], [ %43, %42 ]
  %77 = phi i32 [ 0, %2 ], [ %44, %42 ]
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %112

79:                                               ; preds = %75
  %80 = sub i32 %76, %77
  %81 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %82 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %84 = sext i32 %80 to i64
  %85 = sext i32 %76 to i64
  br label %86

86:                                               ; preds = %79, %100
  %87 = phi i64 [ %84, %79 ], [ %88, %100 ]
  %88 = add nsw i64 %87, 1
  %89 = load i8*, i8** %81, align 8, !tbaa !14
  %90 = getelementptr inbounds i8, i8* %89, i64 %87
  %91 = load i8, i8* %90, align 1, !tbaa !13
  %92 = load i64, i64* %14, align 8, !tbaa !5
  %93 = add i64 %92, 1
  %94 = load i8*, i8** %82, align 8, !tbaa !14
  %95 = icmp eq i8* %94, %15
  %96 = load i64, i64* %83, align 8
  %97 = select i1 %95, i64 15, i64 %96
  %98 = icmp ugt i64 %93, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %92, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %100 unwind label %106

100:                                              ; preds = %99, %86
  %101 = load i8*, i8** %82, align 8, !tbaa !14
  %102 = getelementptr inbounds i8, i8* %101, i64 %92
  store i8 %91, i8* %102, align 1, !tbaa !13
  store i64 %93, i64* %14, align 8, !tbaa !5
  %103 = load i8*, i8** %82, align 8, !tbaa !14
  %104 = getelementptr inbounds i8, i8* %103, i64 %93
  store i8 0, i8* %104, align 1, !tbaa !13
  %105 = icmp slt i64 %88, %85
  br i1 %105, label %86, label %112, !llvm.loop !21

106:                                              ; preds = %99
  %107 = landingpad { i8*, i32 }
          cleanup
  %108 = load i8*, i8** %82, align 8, !tbaa !14
  %109 = icmp eq i8* %108, %15
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  call void @_ZdlPv(i8* noundef %108) #6
  br label %111

111:                                              ; preds = %106, %110
  resume { i8*, i32 } %107

112:                                              ; preds = %100, %75
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LONGEST_REPEATING_AND_NON_OVERLAPPING_SUBSTRING_reprocessed.cpp() #3 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = !{!7, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!6, !8, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !9, i64 0}
!20 = distinct !{!20, !16, !17}
!21 = distinct !{!21, !16, !17}
