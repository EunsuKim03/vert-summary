; ModuleID = 'benchmark/cpp_transcoder/STRING_CONTAINING_FIRST_LETTER_EVERY_WORD_GIVEN_STRING_SPACES/STRING_CONTAINING_FIRST_LETTER_EVERY_WORD_GIVEN_STRING_SPACES_processed.cpp'
source_filename = "benchmark/cpp_transcoder/STRING_CONTAINING_FIRST_LETTER_EVERY_WORD_GIVEN_STRING_SPACES/STRING_CONTAINING_FIRST_LETTER_EVERY_WORD_GIVEN_STRING_SPACES_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_STRING_CONTAINING_FIRST_LETTER_EVERY_WORD_GIVEN_STRING_SPACES_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %4 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %3, %union.anon** %4, align 8, !tbaa !5
  %5 = bitcast %union.anon* %3 to i8*
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %7, align 8, !tbaa !10
  store i8 0, i8* %5, align 8, !tbaa !13
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !10
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %52, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  br label %14

14:                                               ; preds = %11, %47
  %15 = phi i64 [ %9, %11 ], [ %48, %47 ]
  %16 = phi i64 [ 0, %11 ], [ %50, %47 ]
  %17 = phi i8 [ 1, %11 ], [ %49, %47 ]
  %18 = load i8*, i8** %12, align 8, !tbaa !14
  %19 = getelementptr inbounds i8, i8* %18, i64 %16
  %20 = load i8, i8* %19, align 1, !tbaa !13
  %21 = icmp eq i8 %20, 32
  br i1 %21, label %47, label %27

22:                                               ; preds = %38
  %23 = landingpad { i8*, i32 }
          cleanup
  %24 = load i8*, i8** %6, align 8, !tbaa !14
  %25 = icmp eq i8* %24, %5
  br i1 %25, label %53, label %26

26:                                               ; preds = %22
  tail call void @_ZdlPv(i8* noundef %24) #5
  br label %53

27:                                               ; preds = %14
  %28 = and i8 %17, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %7, align 8, !tbaa !10
  %32 = add i64 %31, 1
  %33 = load i8*, i8** %6, align 8, !tbaa !14
  %34 = icmp eq i8* %33, %5
  %35 = load i64, i64* %13, align 8
  %36 = select i1 %34, i64 15, i64 %35
  %37 = icmp ugt i64 %32, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %31, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %39 unwind label %22

39:                                               ; preds = %38
  %40 = load i8*, i8** %6, align 8, !tbaa !14
  br label %41

41:                                               ; preds = %30, %39
  %42 = phi i8* [ %40, %39 ], [ %33, %30 ]
  %43 = getelementptr inbounds i8, i8* %42, i64 %31
  store i8 %20, i8* %43, align 1, !tbaa !13
  store i64 %32, i64* %7, align 8, !tbaa !10
  %44 = load i8*, i8** %6, align 8, !tbaa !14
  %45 = getelementptr inbounds i8, i8* %44, i64 %32
  store i8 0, i8* %45, align 1, !tbaa !13
  %46 = load i64, i64* %8, align 8, !tbaa !10
  br label %47

47:                                               ; preds = %41, %14, %27
  %48 = phi i64 [ %15, %27 ], [ %15, %14 ], [ %46, %41 ]
  %49 = phi i8 [ %17, %27 ], [ 1, %14 ], [ 0, %41 ]
  %50 = add nuw i64 %16, 1
  %51 = icmp ugt i64 %48, %50
  br i1 %51, label %14, label %52, !llvm.loop !15

52:                                               ; preds = %47, %2
  ret void

53:                                               ; preds = %26, %22
  resume { i8*, i32 } %23
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_STRING_CONTAINING_FIRST_LETTER_EVERY_WORD_GIVEN_STRING_SPACES_processed.cpp() #3 section ".text.startup" {
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
