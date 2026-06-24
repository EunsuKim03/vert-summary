; ModuleID = 'benchmark/cpp_transcoder/LONGEST_PALINDROME_SUBSEQUENCE_SPACE/LONGEST_PALINDROME_SUBSEQUENCE_SPACE_processed.cpp'
source_filename = "benchmark/cpp_transcoder/LONGEST_PALINDROME_SUBSEQUENCE_SPACE/LONGEST_PALINDROME_SUBSEQUENCE_SPACE_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LONGEST_PALINDROME_SUBSEQUENCE_SPACE_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !5
  %4 = trunc i64 %3 to i32
  %5 = and i64 %3, 4294967295
  %6 = alloca i32, i64 %5, align 16
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  br label %12

12:                                               ; preds = %8, %29
  %13 = phi i64 [ %11, %8 ], [ %14, %29 ]
  %14 = add nsw i64 %13, -1
  %15 = icmp sgt i64 %13, %11
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds i32, i32* %6, i64 %14
  store i32 1, i32* %17, align 4, !tbaa !12
  %18 = icmp eq i64 %13, %11
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds i32, i32* %6, i64 %14
  br label %31

21:                                               ; preds = %29
  %22 = shl i64 %3, 32
  %23 = add i64 %22, -4294967296
  %24 = ashr exact i64 %23, 32
  %25 = getelementptr inbounds i32, i32* %6, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !12
  br label %27

27:                                               ; preds = %1, %21
  %28 = phi i32 [ %26, %21 ], [ undef, %1 ]
  ret i32 %28

29:                                               ; preds = %53, %16, %12
  %30 = icmp sgt i64 %13, 1
  br i1 %30, label %12, label %21, !llvm.loop !14

31:                                               ; preds = %19, %53
  %32 = phi i64 [ %13, %19 ], [ %55, %53 ]
  %33 = phi i32 [ 0, %19 ], [ %54, %53 ]
  %34 = icmp eq i64 %32, %14
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %20, align 4, !tbaa !12
  br label %53

36:                                               ; preds = %31
  %37 = load i8*, i8** %9, align 8, !tbaa !16
  %38 = getelementptr inbounds i8, i8* %37, i64 %14
  %39 = load i8, i8* %38, align 1, !tbaa !17
  %40 = getelementptr inbounds i8, i8* %37, i64 %32
  %41 = load i8, i8* %40, align 1, !tbaa !17
  %42 = icmp eq i8 %39, %41
  %43 = getelementptr inbounds i32, i32* %6, i64 %32
  %44 = load i32, i32* %43, align 4
  br i1 %42, label %45, label %47

45:                                               ; preds = %36
  %46 = add nsw i32 %33, 2
  store i32 %46, i32* %43, align 4, !tbaa !12
  br label %53

47:                                               ; preds = %36
  %48 = add nsw i64 %32, -1
  %49 = getelementptr inbounds i32, i32* %6, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, %44
  %52 = select i1 %51, i32 %44, i32 %50
  store i32 %52, i32* %43, align 4, !tbaa !12
  br label %53

53:                                               ; preds = %35, %47, %45
  %54 = phi i32 [ %33, %35 ], [ %44, %45 ], [ %44, %47 ]
  %55 = add nsw i64 %32, 1
  %56 = icmp eq i64 %55, %11
  br i1 %56, label %29, label %31, !llvm.loop !18
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LONGEST_PALINDROME_SUBSEQUENCE_SPACE_processed.cpp() #4 section ".text.startup" {
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
!5 = !{!6, !11, i64 8}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !7, i64 0, !11, i64 8, !9, i64 16}
!7 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!6, !8, i64 0}
!17 = !{!9, !9, i64 0}
!18 = distinct !{!18, !15, !19}
!19 = !{!"llvm.loop.peeled.count", i32 1}
