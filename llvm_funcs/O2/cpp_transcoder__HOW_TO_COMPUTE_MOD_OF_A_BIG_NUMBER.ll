; ModuleID = 'benchmark/cpp_transcoder/HOW_TO_COMPUTE_MOD_OF_A_BIG_NUMBER/HOW_TO_COMPUTE_MOD_OF_A_BIG_NUMBER_processed.cpp'
source_filename = "benchmark/cpp_transcoder/HOW_TO_COMPUTE_MOD_OF_A_BIG_NUMBER/HOW_TO_COMPUTE_MOD_OF_A_BIG_NUMBER_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_HOW_TO_COMPUTE_MOD_OF_A_BIG_NUMBER_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !5
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !12
  %9 = and i64 %4, 1
  %10 = icmp eq i64 %4, 1
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = and i64 %4, -2
  br label %29

13:                                               ; preds = %29
  %14 = mul i32 %47, 10
  %15 = add i32 %14, -48
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi i32 [ undef, %6 ], [ %47, %13 ]
  %18 = phi i64 [ 0, %6 ], [ %48, %13 ]
  %19 = phi i32 [ -48, %6 ], [ %15, %13 ]
  %20 = icmp eq i64 %9, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds i8, i8* %8, i64 %18
  %23 = load i8, i8* %22, align 1, !tbaa !13
  %24 = sext i8 %23 to i32
  %25 = add i32 %19, %24
  %26 = srem i32 %25, %1
  br label %27

27:                                               ; preds = %21, %16, %2
  %28 = phi i32 [ 0, %2 ], [ %17, %16 ], [ %26, %21 ]
  ret i32 %28

29:                                               ; preds = %29, %11
  %30 = phi i64 [ 0, %11 ], [ %48, %29 ]
  %31 = phi i32 [ 0, %11 ], [ %47, %29 ]
  %32 = phi i64 [ 0, %11 ], [ %49, %29 ]
  %33 = mul nsw i32 %31, 10
  %34 = getelementptr inbounds i8, i8* %8, i64 %30
  %35 = load i8, i8* %34, align 1, !tbaa !13
  %36 = sext i8 %35 to i32
  %37 = add i32 %33, -48
  %38 = add i32 %37, %36
  %39 = srem i32 %38, %1
  %40 = or i64 %30, 1
  %41 = mul nsw i32 %39, 10
  %42 = getelementptr inbounds i8, i8* %8, i64 %40
  %43 = load i8, i8* %42, align 1, !tbaa !13
  %44 = sext i8 %43 to i32
  %45 = add i32 %41, -48
  %46 = add i32 %45, %44
  %47 = srem i32 %46, %1
  %48 = add nuw nsw i64 %30, 2
  %49 = add i64 %32, 2
  %50 = icmp eq i64 %49, %12
  br i1 %50, label %13, label %29, !llvm.loop !14
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_HOW_TO_COMPUTE_MOD_OF_A_BIG_NUMBER_processed.cpp() #4 section ".text.startup" {
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
!12 = !{!6, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
