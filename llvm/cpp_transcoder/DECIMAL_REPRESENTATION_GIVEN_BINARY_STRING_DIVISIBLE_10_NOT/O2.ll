; ModuleID = 'benchmark/cpp_transcoder/DECIMAL_REPRESENTATION_GIVEN_BINARY_STRING_DIVISIBLE_10_NOT/DECIMAL_REPRESENTATION_GIVEN_BINARY_STRING_DIVISIBLE_10_NOT_processed.cpp'
source_filename = "benchmark/cpp_transcoder/DECIMAL_REPRESENTATION_GIVEN_BINARY_STRING_DIVISIBLE_10_NOT/DECIMAL_REPRESENTATION_GIVEN_BINARY_STRING_DIVISIBLE_10_NOT_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DECIMAL_REPRESENTATION_GIVEN_BINARY_STRING_DIVISIBLE_10_NOT_processed.cpp, i8* null }]

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
  %5 = shl i64 %3, 32
  %6 = add i64 %5, -4294967296
  %7 = ashr exact i64 %6, 32
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !tbaa !12
  %10 = getelementptr inbounds i8, i8* %9, i64 %7
  %11 = load i8, i8* %10, align 1, !tbaa !13
  %12 = icmp eq i8 %11, 49
  br i1 %12, label %46, label %13

13:                                               ; preds = %1
  %14 = icmp sgt i32 %4, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = add i64 %3, 4294967294
  %17 = and i64 %16, 4294967295
  br label %23

18:                                               ; preds = %42, %13
  %19 = phi i32 [ 0, %13 ], [ %43, %42 ]
  %20 = srem i32 %19, 10
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  br label %46

23:                                               ; preds = %15, %42
  %24 = phi i64 [ %17, %15 ], [ %44, %42 ]
  %25 = phi i32 [ 0, %15 ], [ %43, %42 ]
  %26 = getelementptr inbounds i8, i8* %9, i64 %24
  %27 = load i8, i8* %26, align 1, !tbaa !13
  %28 = icmp eq i8 %27, 49
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = trunc i64 %24 to i32
  %31 = xor i32 %30, -1
  %32 = add i32 %31, %4
  %33 = srem i32 %32, 4
  switch i32 %33, label %42 [
    i32 1, label %34
    i32 2, label %36
    i32 3, label %38
    i32 0, label %40
  ]

34:                                               ; preds = %29
  %35 = add nsw i32 %25, 2
  br label %42

36:                                               ; preds = %29
  %37 = add nsw i32 %25, 4
  br label %42

38:                                               ; preds = %29
  %39 = add nsw i32 %25, 8
  br label %42

40:                                               ; preds = %29
  %41 = add nsw i32 %25, 6
  br label %42

42:                                               ; preds = %34, %38, %40, %36, %29, %23
  %43 = phi i32 [ %25, %23 ], [ %35, %34 ], [ %37, %36 ], [ %39, %38 ], [ %41, %40 ], [ %25, %29 ]
  %44 = add nsw i64 %24, -1
  %45 = icmp sgt i64 %24, 0
  br i1 %45, label %23, label %18, !llvm.loop !14

46:                                               ; preds = %1, %18
  %47 = phi i32 [ %22, %18 ], [ 0, %1 ]
  ret i32 %47
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DECIMAL_REPRESENTATION_GIVEN_BINARY_STRING_DIVISIBLE_10_NOT_processed.cpp() #4 section ".text.startup" {
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
