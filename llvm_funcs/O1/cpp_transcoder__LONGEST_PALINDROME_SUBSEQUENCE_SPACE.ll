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
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = shl i64 %3, 32
  %13 = ashr exact i64 %12, 32
  %14 = shl i64 %3, 32
  %15 = ashr exact i64 %14, 32
  br label %16

16:                                               ; preds = %8, %26
  %17 = phi i64 [ %11, %8 ], [ %18, %26 ]
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, %13
  br i1 %19, label %26, label %28

20:                                               ; preds = %26, %1
  %21 = shl i64 %3, 32
  %22 = add i64 %21, -4294967296
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds i32, i32* %6, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !12
  ret i32 %25

26:                                               ; preds = %51, %16
  %27 = icmp sgt i64 %17, 1
  br i1 %27, label %16, label %20, !llvm.loop !14

28:                                               ; preds = %16, %51
  %29 = phi i64 [ %53, %51 ], [ %18, %16 ]
  %30 = phi i32 [ %52, %51 ], [ 0, %16 ]
  %31 = icmp eq i64 %29, %18
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = getelementptr inbounds i32, i32* %6, i64 %29
  store i32 1, i32* %33, align 4, !tbaa !12
  br label %51

34:                                               ; preds = %28
  %35 = load i8*, i8** %9, align 8, !tbaa !17
  %36 = getelementptr inbounds i8, i8* %35, i64 %18
  %37 = load i8, i8* %36, align 1, !tbaa !18
  %38 = getelementptr inbounds i8, i8* %35, i64 %29
  %39 = load i8, i8* %38, align 1, !tbaa !18
  %40 = icmp eq i8 %37, %39
  %41 = getelementptr inbounds i32, i32* %6, i64 %29
  %42 = load i32, i32* %41, align 4
  br i1 %40, label %43, label %45

43:                                               ; preds = %34
  %44 = add nsw i32 %30, 2
  store i32 %44, i32* %41, align 4, !tbaa !12
  br label %51

45:                                               ; preds = %34
  %46 = add nsw i64 %29, -1
  %47 = getelementptr inbounds i32, i32* %6, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, %42
  %50 = select i1 %49, i32 %42, i32 %48
  store i32 %50, i32* %41, align 4, !tbaa !12
  br label %51

51:                                               ; preds = %32, %45, %43
  %52 = phi i32 [ %30, %32 ], [ %42, %43 ], [ %42, %45 ]
  %53 = add nsw i64 %29, 1
  %54 = icmp eq i64 %53, %15
  br i1 %54, label %26, label %28, !llvm.loop !19
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LONGEST_PALINDROME_SUBSEQUENCE_SPACE_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
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
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!6, !8, i64 0}
!18 = !{!9, !9, i64 0}
!19 = distinct !{!19, !15, !16}
