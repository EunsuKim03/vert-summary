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
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %6, align 8, !tbaa !10
  %7 = bitcast %union.anon* %3 to i8*
  store i8 0, i8* %7, align 8, !tbaa !13
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !10
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %50, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %13 = bitcast %union.anon* %3 to i8*
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  br label %15

15:                                               ; preds = %11, %45
  %16 = phi i64 [ 0, %11 ], [ %47, %45 ]
  %17 = phi i8 [ 1, %11 ], [ %46, %45 ]
  %18 = load i8*, i8** %12, align 8, !tbaa !14
  %19 = getelementptr inbounds i8, i8* %18, i64 %16
  %20 = load i8, i8* %19, align 1, !tbaa !13
  %21 = icmp eq i8 %20, 32
  br i1 %21, label %45, label %28

22:                                               ; preds = %39
  %23 = landingpad { i8*, i32 }
          cleanup
  %24 = bitcast %union.anon* %3 to i8*
  %25 = load i8*, i8** %5, align 8, !tbaa !14
  %26 = icmp eq i8* %25, %24
  br i1 %26, label %51, label %27

27:                                               ; preds = %22
  call void @_ZdlPv(i8* noundef %25) #5
  br label %51

28:                                               ; preds = %15
  %29 = and i8 %17, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %6, align 8, !tbaa !10
  %33 = add i64 %32, 1
  %34 = load i8*, i8** %5, align 8, !tbaa !14
  %35 = icmp eq i8* %34, %13
  %36 = load i64, i64* %14, align 8
  %37 = select i1 %35, i64 15, i64 %36
  %38 = icmp ugt i64 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %32, i64 noundef 0, i8* noundef null, i64 noundef 1)
          to label %40 unwind label %22

40:                                               ; preds = %39, %31
  %41 = load i8*, i8** %5, align 8, !tbaa !14
  %42 = getelementptr inbounds i8, i8* %41, i64 %32
  store i8 %20, i8* %42, align 1, !tbaa !13
  store i64 %33, i64* %6, align 8, !tbaa !10
  %43 = load i8*, i8** %5, align 8, !tbaa !14
  %44 = getelementptr inbounds i8, i8* %43, i64 %33
  store i8 0, i8* %44, align 1, !tbaa !13
  br label %45

45:                                               ; preds = %40, %15, %28
  %46 = phi i8 [ %17, %28 ], [ 1, %15 ], [ 0, %40 ]
  %47 = add nuw i64 %16, 1
  %48 = load i64, i64* %8, align 8, !tbaa !10
  %49 = icmp ugt i64 %48, %47
  br i1 %49, label %15, label %50, !llvm.loop !15

50:                                               ; preds = %45, %2
  ret void

51:                                               ; preds = %27, %22
  resume { i8*, i32 } %23
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_STRING_CONTAINING_FIRST_LETTER_EVERY_WORD_GIVEN_STRING_SPACES_processed.cpp() #3 section ".text.startup" {
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
