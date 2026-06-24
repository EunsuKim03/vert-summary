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
  br i1 %16, label %112, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %19 = shl i64 %4, 32
  %20 = ashr exact i64 %19, 32
  %21 = add i64 %4, 1
  %22 = and i64 %21, 4294967295
  %23 = and i64 %4, 4294967295
  br label %24

24:                                               ; preds = %17, %39
  %25 = phi i64 [ 1, %17 ], [ %42, %39 ]
  %26 = phi i32 [ 0, %17 ], [ %41, %39 ]
  %27 = phi i32 [ 0, %17 ], [ %40, %39 ]
  %28 = trunc i64 %25 to i32
  %29 = icmp slt i64 %25, %20
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = add nsw i64 %25, -1
  %32 = load i8*, i8** %18, align 8, !tbaa !14
  %33 = getelementptr inbounds i8, i8* %32, i64 %31
  %34 = load i8, i8* %33, align 1, !tbaa !13
  %35 = mul nuw nsw i64 %7, %31
  %36 = getelementptr inbounds i32, i32* %9, i64 %35
  %37 = mul nuw nsw i64 %7, %25
  %38 = getelementptr inbounds i32, i32* %9, i64 %37
  br label %44

39:                                               ; preds = %68, %24
  %40 = phi i32 [ %27, %24 ], [ %69, %68 ]
  %41 = phi i32 [ %26, %24 ], [ %70, %68 ]
  %42 = add nuw nsw i64 %25, 1
  %43 = icmp eq i64 %42, %22
  br i1 %43, label %72, label %24, !llvm.loop !15

44:                                               ; preds = %30, %68
  %45 = phi i64 [ %25, %30 ], [ %48, %68 ]
  %46 = phi i32 [ %26, %30 ], [ %70, %68 ]
  %47 = phi i32 [ %27, %30 ], [ %69, %68 ]
  %48 = add nuw nsw i64 %45, 1
  %49 = getelementptr inbounds i8, i8* %32, i64 %45
  %50 = load i8, i8* %49, align 1, !tbaa !13
  %51 = icmp eq i8 %34, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %44
  %53 = getelementptr inbounds i32, i32* %36, i64 %45
  %54 = load i32, i32* %53, align 4, !tbaa !17
  %55 = trunc i64 %48 to i32
  %56 = sub nsw i32 %55, %28
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = add nsw i32 %54, 1
  %60 = getelementptr inbounds i32, i32* %38, i64 %48
  store i32 %59, i32* %60, align 4, !tbaa !17
  %61 = icmp slt i32 %54, %46
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = sext i32 %47 to i64
  %64 = icmp slt i64 %25, %63
  %65 = select i1 %64, i32 %47, i32 %28
  br label %68

66:                                               ; preds = %52, %44
  %67 = getelementptr inbounds i32, i32* %38, i64 %48
  store i32 0, i32* %67, align 4, !tbaa !17
  br label %68

68:                                               ; preds = %66, %62, %58
  %69 = phi i32 [ %65, %62 ], [ %47, %58 ], [ %47, %66 ]
  %70 = phi i32 [ %59, %62 ], [ %46, %58 ], [ %46, %66 ]
  %71 = icmp eq i64 %48, %23
  br i1 %71, label %39, label %44, !llvm.loop !19

72:                                               ; preds = %39
  %73 = icmp sgt i32 %41, 0
  br i1 %73, label %74, label %112

74:                                               ; preds = %72
  %75 = sub i32 %40, %41
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %77 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %79 = sext i32 %75 to i64
  %80 = sext i32 %40 to i64
  br label %81

81:                                               ; preds = %103, %74
  %82 = phi i8* [ %15, %74 ], [ %105, %103 ]
  %83 = phi i64 [ 0, %74 ], [ %104, %103 ]
  %84 = phi i64 [ %79, %74 ], [ %85, %103 ]
  %85 = add nsw i64 %84, 1
  %86 = load i8*, i8** %76, align 8, !tbaa !14
  %87 = getelementptr inbounds i8, i8* %86, i64 %84
  %88 = load i8, i8* %87, align 1, !tbaa !13
  %89 = add i64 %83, 1
  %90 = icmp eq i8* %82, %15
  %91 = load i64, i64* %78, align 8
  %92 = select i1 %90, i64 15, i64 %91
  %93 = icmp ugt i64 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %81
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %83, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %95 unwind label %106

95:                                               ; preds = %94
  %96 = load i8*, i8** %77, align 8, !tbaa !14
  br label %97

97:                                               ; preds = %95, %81
  %98 = phi i8* [ %96, %95 ], [ %82, %81 ]
  %99 = getelementptr inbounds i8, i8* %98, i64 %83
  store i8 %88, i8* %99, align 1, !tbaa !13
  store i64 %89, i64* %14, align 8, !tbaa !5
  %100 = load i8*, i8** %77, align 8, !tbaa !14
  %101 = getelementptr inbounds i8, i8* %100, i64 %89
  store i8 0, i8* %101, align 1, !tbaa !13
  %102 = icmp slt i64 %85, %80
  br i1 %102, label %103, label %112, !llvm.loop !20

103:                                              ; preds = %97
  %104 = load i64, i64* %14, align 8, !tbaa !5
  %105 = load i8*, i8** %77, align 8, !tbaa !14
  br label %81

106:                                              ; preds = %94
  %107 = landingpad { i8*, i32 }
          cleanup
  %108 = load i8*, i8** %77, align 8, !tbaa !14
  %109 = icmp eq i8* %108, %15
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  tail call void @_ZdlPv(i8* noundef %108) #6
  br label %111

111:                                              ; preds = %106, %110
  resume { i8*, i32 } %107

112:                                              ; preds = %97, %2, %72
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
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
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
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !9, i64 0}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
