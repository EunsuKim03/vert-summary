; ModuleID = 'benchmark/cpp_transcoder/MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING_1/MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING_1/MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef signext i8 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !5
  %4 = trunc i64 %3 to i32
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8, !tbaa !12
  %7 = load i8, i8* %6, align 1, !tbaa !13
  %8 = icmp sgt i32 %4, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = shl i64 %3, 32
  %11 = add i64 %10, -4294967296
  %12 = ashr exact i64 %11, 32
  %13 = and i64 %3, 4294967295
  br label %16

14:                                               ; preds = %36, %1
  %15 = phi i8 [ %7, %1 ], [ %38, %36 ]
  ret i8 %15

16:                                               ; preds = %9, %36
  %17 = phi i64 [ 0, %9 ], [ %40, %36 ]
  %18 = phi i32 [ 1, %9 ], [ %39, %36 ]
  %19 = phi i8 [ %7, %9 ], [ %38, %36 ]
  %20 = phi i32 [ 0, %9 ], [ %37, %36 ]
  %21 = icmp slt i64 %17, %12
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = getelementptr inbounds i8, i8* %6, i64 %17
  %24 = load i8, i8* %23, align 1, !tbaa !13
  %25 = add nuw nsw i64 %17, 1
  %26 = getelementptr inbounds i8, i8* %6, i64 %25
  %27 = load i8, i8* %26, align 1, !tbaa !13
  %28 = icmp eq i8 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = add nsw i32 %18, 1
  br label %36

31:                                               ; preds = %22, %16
  %32 = icmp sgt i32 %18, %20
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, i8* %6, i64 %17
  %35 = load i8, i8* %34, align 1, !tbaa !13
  br label %36

36:                                               ; preds = %31, %33, %29
  %37 = phi i32 [ %20, %29 ], [ %18, %33 ], [ %20, %31 ]
  %38 = phi i8 [ %19, %29 ], [ %35, %33 ], [ %19, %31 ]
  %39 = phi i32 [ %30, %29 ], [ 1, %33 ], [ 1, %31 ]
  %40 = add nuw nsw i64 %17, 1
  %41 = icmp eq i64 %40, %13
  br i1 %41, label %14, label %16, !llvm.loop !14
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING_1_processed.cpp() #4 section ".text.startup" {
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
!12 = !{!6, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
