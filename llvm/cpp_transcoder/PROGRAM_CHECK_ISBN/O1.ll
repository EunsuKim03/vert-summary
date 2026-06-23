; ModuleID = 'benchmark/cpp_transcoder/PROGRAM_CHECK_ISBN/PROGRAM_CHECK_ISBN_processed.cpp'
source_filename = "benchmark/cpp_transcoder/PROGRAM_CHECK_ISBN/PROGRAM_CHECK_ISBN_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_PROGRAM_CHECK_ISBN_processed.cpp, i8* null }]

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
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %57

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !12
  %9 = load i8, i8* %8, align 1, !tbaa !13
  %10 = add i8 %9, -58
  %11 = icmp ult i8 %10, -10
  %12 = sext i8 %9 to i32
  %13 = mul nsw i32 %12, 10
  %14 = add nsw i32 %13, -480
  %15 = select i1 %11, i32 0, i32 %14
  br i1 %11, label %36, label %16

16:                                               ; preds = %6, %21
  %17 = phi i32 [ %32, %21 ], [ %15, %6 ]
  %18 = phi i64 [ %19, %21 ], [ 0, %6 ]
  %19 = add nuw nsw i64 %18, 1
  %20 = icmp eq i64 %19, 9
  br i1 %20, label %33, label %21, !llvm.loop !14

21:                                               ; preds = %16
  %22 = getelementptr inbounds i8, i8* %8, i64 %19
  %23 = load i8, i8* %22, align 1, !tbaa !13
  %24 = add i8 %23, -58
  %25 = icmp ult i8 %24, -10
  %26 = sext i8 %23 to i32
  %27 = add nsw i32 %26, -48
  %28 = trunc i64 %19 to i32
  %29 = sub i32 10, %28
  %30 = mul nsw i32 %27, %29
  %31 = select i1 %25, i32 0, i32 %30
  %32 = add nsw i32 %31, %17
  br i1 %25, label %33, label %16, !llvm.loop !14

33:                                               ; preds = %16, %21
  %34 = phi i32 [ %32, %21 ], [ %17, %16 ]
  %35 = icmp ult i64 %18, 8
  br label %36

36:                                               ; preds = %33, %6
  %37 = phi i32 [ %15, %6 ], [ %34, %33 ]
  %38 = phi i1 [ true, %6 ], [ %35, %33 ]
  br i1 %38, label %57, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8, !tbaa !12
  %42 = getelementptr inbounds i8, i8* %41, i64 9
  %43 = load i8, i8* %42, align 1, !tbaa !13
  %44 = icmp ne i8 %43, 88
  %45 = add i8 %43, -58
  %46 = icmp ult i8 %45, -10
  %47 = and i1 %44, %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %39
  %49 = sext i8 %43 to i32
  %50 = icmp eq i8 %43, 88
  %51 = add nsw i32 %49, -48
  %52 = select i1 %50, i32 10, i32 %51
  %53 = add nsw i32 %52, %37
  %54 = srem i32 %53, 11
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  br label %57

57:                                               ; preds = %36, %39, %48, %1
  %58 = phi i32 [ 0, %1 ], [ 0, %36 ], [ %56, %48 ], [ 0, %39 ]
  ret i32 %58
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_PROGRAM_CHECK_ISBN_processed.cpp() #4 section ".text.startup" {
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
