; ModuleID = 'benchmark/cpp_transcoder/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11_processed.cpp'
source_filename = "benchmark/cpp_transcoder/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11_processed.cpp, i8* null }]

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
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !12
  %9 = and i64 %3, 4294967295
  %10 = and i64 %3, 1
  %11 = icmp eq i64 %9, 1
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = sub nsw i64 %9, %10
  br label %30

14:                                               ; preds = %30
  %15 = mul nsw i32 %48, 10
  %16 = add nsw i32 %15, -48
  br label %17

17:                                               ; preds = %14, %6
  %18 = phi i32 [ undef, %6 ], [ %48, %14 ]
  %19 = phi i64 [ 0, %6 ], [ %49, %14 ]
  %20 = phi i32 [ -48, %6 ], [ %16, %14 ]
  %21 = icmp eq i64 %10, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds i8, i8* %8, i64 %19
  %24 = load i8, i8* %23, align 1, !tbaa !13
  %25 = sext i8 %24 to i32
  %26 = add nsw i32 %20, %25
  %27 = srem i32 %26, 11
  br label %28

28:                                               ; preds = %22, %17, %1
  %29 = phi i32 [ 0, %1 ], [ %18, %17 ], [ %27, %22 ]
  ret i32 %29

30:                                               ; preds = %30, %12
  %31 = phi i64 [ 0, %12 ], [ %49, %30 ]
  %32 = phi i32 [ 0, %12 ], [ %48, %30 ]
  %33 = phi i64 [ 0, %12 ], [ %50, %30 ]
  %34 = mul nsw i32 %32, 10
  %35 = getelementptr inbounds i8, i8* %8, i64 %31
  %36 = load i8, i8* %35, align 1, !tbaa !13
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %34, -48
  %39 = add nsw i32 %38, %37
  %40 = srem i32 %39, 11
  %41 = or i64 %31, 1
  %42 = mul nsw i32 %40, 10
  %43 = getelementptr inbounds i8, i8* %8, i64 %41
  %44 = load i8, i8* %43, align 1, !tbaa !13
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %42, -48
  %47 = add nsw i32 %46, %45
  %48 = srem i32 %47, 11
  %49 = add nuw nsw i64 %31, 2
  %50 = add i64 %33, 2
  %51 = icmp eq i64 %50, %13
  br i1 %51, label %14, label %30, !llvm.loop !14
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11_processed.cpp() #4 section ".text.startup" {
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
