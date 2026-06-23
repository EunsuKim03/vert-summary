; ModuleID = 'benchmark/cpp_transcoder/REPLACE_CHARACTER_C1_C2_C2_C1_STRING_S/REPLACE_CHARACTER_C1_C2_C2_C1_STRING_S_processed.cpp'
source_filename = "benchmark/cpp_transcoder/REPLACE_CHARACTER_C1_C2_C2_C1_STRING_S/REPLACE_CHARACTER_C1_C2_C2_C1_STRING_S_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_REPLACE_CHARACTER_C1_C2_C2_C1_STRING_S_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcc(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* noundef %1, i8 noundef signext %2, i8 noundef signext %3) local_unnamed_addr #3 personality i32 (...)* @__gxx_personality_v0 {
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !5
  %7 = trunc i64 %6 to i32
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %11 = and i64 %6, 4294967295
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %11, 1
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = sub nsw i64 %11, %12
  br label %47

16:                                               ; preds = %68, %9
  %17 = phi i64 [ 0, %9 ], [ %69, %68 ]
  %18 = icmp eq i64 %12, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** %10, align 8, !tbaa !12
  %21 = getelementptr inbounds i8, i8* %20, i64 %17
  %22 = load i8, i8* %21, align 1, !tbaa !13
  %23 = icmp eq i8 %22, %2
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = icmp eq i8 %22, %3
  br i1 %25, label %26, label %28

26:                                               ; preds = %24, %19
  %27 = phi i8 [ %3, %19 ], [ %2, %24 ]
  store i8 %27, i8* %21, align 1, !tbaa !13
  br label %28

28:                                               ; preds = %16, %26, %24, %4
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %30 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %29, %union.anon** %30, align 8, !tbaa !14
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8, !tbaa !12
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2
  %34 = bitcast %union.anon* %33 to i8*
  %35 = icmp eq i8* %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = bitcast %union.anon* %29 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %37, i8* noundef nonnull align 8 dereferenceable(16) %32, i64 16, i1 false) #6
  br label %43

38:                                               ; preds = %28
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  store i8* %32, i8** %39, align 8, !tbaa !12
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2, i32 0
  %41 = load i64, i64* %40, align 8, !tbaa !13
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %41, i64* %42, align 8, !tbaa !13
  br label %43

43:                                               ; preds = %36, %38
  %44 = load i64, i64* %5, align 8, !tbaa !5
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %44, i64* %45, align 8, !tbaa !5
  %46 = bitcast %"class.std::__cxx11::basic_string"* %1 to %union.anon**
  store %union.anon* %33, %union.anon** %46, align 8, !tbaa !12
  store i64 0, i64* %5, align 8, !tbaa !5
  store i8 0, i8* %34, align 8, !tbaa !13
  ret void

47:                                               ; preds = %68, %14
  %48 = phi i64 [ 0, %14 ], [ %69, %68 ]
  %49 = phi i64 [ 0, %14 ], [ %70, %68 ]
  %50 = load i8*, i8** %10, align 8, !tbaa !12
  %51 = getelementptr inbounds i8, i8* %50, i64 %48
  %52 = load i8, i8* %51, align 1, !tbaa !13
  %53 = icmp eq i8 %52, %2
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = icmp eq i8 %52, %3
  br i1 %55, label %56, label %58

56:                                               ; preds = %54, %47
  %57 = phi i8 [ %3, %47 ], [ %2, %54 ]
  store i8 %57, i8* %51, align 1, !tbaa !13
  br label %58

58:                                               ; preds = %56, %54
  %59 = or i64 %48, 1
  %60 = load i8*, i8** %10, align 8, !tbaa !12
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  %62 = load i8, i8* %61, align 1, !tbaa !13
  %63 = icmp eq i8 %62, %2
  br i1 %63, label %66, label %64

64:                                               ; preds = %58
  %65 = icmp eq i8 %62, %3
  br i1 %65, label %66, label %68

66:                                               ; preds = %64, %58
  %67 = phi i8 [ %3, %58 ], [ %2, %64 ]
  store i8 %67, i8* %61, align 1, !tbaa !13
  br label %68

68:                                               ; preds = %66, %64
  %69 = add nuw nsw i64 %48, 2
  %70 = add i64 %49, 2
  %71 = icmp eq i64 %70, %15
  br i1 %71, label %16, label %47, !llvm.loop !15
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_REPLACE_CHARACTER_C1_C2_C2_C1_STRING_S_processed.cpp() #5 section ".text.startup" {
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
!12 = !{!6, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!7, !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
