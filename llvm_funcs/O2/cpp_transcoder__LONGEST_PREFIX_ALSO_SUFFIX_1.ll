; ModuleID = 'benchmark/cpp_transcoder/LONGEST_PREFIX_ALSO_SUFFIX_1/LONGEST_PREFIX_ALSO_SUFFIX_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/LONGEST_PREFIX_ALSO_SUFFIX_1/LONGEST_PREFIX_ALSO_SUFFIX_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LONGEST_PREFIX_ALSO_SUFFIX_1_processed.cpp, i8* null }]

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
  store i32 0, i32* %6, align 16, !tbaa !12
  %7 = icmp sgt i32 %4, 1
  br i1 %7, label %8, label %39

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8, !tbaa !14
  br label %11

11:                                               ; preds = %8, %35
  %12 = phi i32 [ 0, %8 ], [ %37, %35 ]
  %13 = phi i32 [ 1, %8 ], [ %36, %35 ]
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %10, i64 %14
  %16 = load i8, i8* %15, align 1, !tbaa !15
  %17 = sext i32 %12 to i64
  %18 = getelementptr inbounds i8, i8* %10, i64 %17
  %19 = load i8, i8* %18, align 1, !tbaa !15
  %20 = icmp eq i8 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = add nsw i32 %12, 1
  %23 = getelementptr inbounds i32, i32* %6, i64 %14
  store i32 %22, i32* %23, align 4, !tbaa !12
  %24 = add nsw i32 %13, 1
  br label %35

25:                                               ; preds = %11
  %26 = icmp eq i32 %12, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %25
  %28 = add nsw i32 %12, -1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %6, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !12
  br label %35

32:                                               ; preds = %25
  %33 = getelementptr inbounds i32, i32* %6, i64 %14
  store i32 0, i32* %33, align 4, !tbaa !12
  %34 = add nsw i32 %13, 1
  br label %35

35:                                               ; preds = %27, %32, %21
  %36 = phi i32 [ %24, %21 ], [ %13, %27 ], [ %34, %32 ]
  %37 = phi i32 [ %22, %21 ], [ %31, %27 ], [ 0, %32 ]
  %38 = icmp slt i32 %36, %4
  br i1 %38, label %11, label %39, !llvm.loop !16

39:                                               ; preds = %35, %1
  %40 = shl i64 %3, 32
  %41 = add i64 %40, -4294967296
  %42 = ashr exact i64 %41, 32
  %43 = getelementptr inbounds i32, i32* %6, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !12
  %45 = sdiv i32 %4, 2
  %46 = icmp sgt i32 %44, %45
  %47 = select i1 %46, i32 %45, i32 %44
  ret i32 %47
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LONGEST_PREFIX_ALSO_SUFFIX_1_processed.cpp() #4 section ".text.startup" {
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
!14 = !{!6, !8, i64 0}
!15 = !{!9, !9, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
