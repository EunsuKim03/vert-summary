; ModuleID = 'benchmark/cpp_transcoder/FIND_PATTERNS_101_GIVEN_STRING/FIND_PATTERNS_101_GIVEN_STRING_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FIND_PATTERNS_101_GIVEN_STRING/FIND_PATTERNS_101_GIVEN_STRING_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_PATTERNS_101_GIVEN_STRING_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %3 = load i8*, i8** %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !12
  %6 = icmp ugt i64 %5, 1
  br i1 %6, label %7, label %39

7:                                                ; preds = %1, %31
  %8 = phi i64 [ %37, %31 ], [ 1, %1 ]
  %9 = phi i32 [ %33, %31 ], [ 0, %1 ]
  %10 = phi i32 [ %36, %31 ], [ 1, %1 ]
  %11 = phi i8* [ %35, %31 ], [ %3, %1 ]
  %12 = load i8, i8* %11, align 1, !tbaa !13
  %13 = getelementptr inbounds i8, i8* %3, i64 %8
  %14 = load i8, i8* %13, align 1, !tbaa !13
  %15 = icmp eq i8 %14, 48
  %16 = icmp eq i8 %12, 49
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %31

18:                                               ; preds = %7
  %19 = sext i32 %10 to i64
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ %19, %18 ], [ %25, %20 ]
  %22 = getelementptr inbounds i8, i8* %3, i64 %21
  %23 = load i8, i8* %22, align 1, !tbaa !13
  %24 = icmp eq i8 %23, 48
  %25 = add i64 %21, 1
  br i1 %24, label %20, label %26, !llvm.loop !14

26:                                               ; preds = %20
  %27 = trunc i64 %21 to i32
  %28 = icmp eq i8 %23, 49
  %29 = zext i1 %28 to i32
  %30 = add nsw i32 %9, %29
  br label %31

31:                                               ; preds = %26, %7
  %32 = phi i32 [ %10, %7 ], [ %27, %26 ]
  %33 = phi i32 [ %9, %7 ], [ %30, %26 ]
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %3, i64 %34
  %36 = add nsw i32 %32, 1
  %37 = sext i32 %36 to i64
  %38 = icmp ugt i64 %5, %37
  br i1 %38, label %7, label %39, !llvm.loop !16

39:                                               ; preds = %31, %1
  %40 = phi i32 [ 0, %1 ], [ %33, %31 ]
  ret i32 %40
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_PATTERNS_101_GIVEN_STRING_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !8, i64 0}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !7, i64 0, !11, i64 8, !9, i64 16}
!7 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!6, !11, i64 8}
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
