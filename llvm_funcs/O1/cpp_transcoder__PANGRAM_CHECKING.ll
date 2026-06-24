; ModuleID = 'benchmark/cpp_transcoder/PANGRAM_CHECKING/PANGRAM_CHECKING_processed.cpp'
source_filename = "benchmark/cpp_transcoder/PANGRAM_CHECKING/PANGRAM_CHECKING_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_PANGRAM_CHECKING_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 8) #6
  %3 = bitcast i8* %2 to i64*
  %4 = bitcast i8* %2 to i64*
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !5
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8, !tbaa !12
  br label %15

11:                                               ; preds = %31, %1
  %12 = load i64, i64* %3, align 8, !tbaa !13
  %13 = and i64 %12, 1
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %62, label %48

15:                                               ; preds = %8, %31
  %16 = phi i64 [ 0, %8 ], [ %46, %31 ]
  %17 = phi i32 [ undef, %8 ], [ %32, %31 ]
  %18 = getelementptr inbounds i8, i8* %10, i64 %16
  %19 = load i8, i8* %18, align 1, !tbaa !14
  %20 = add i8 %19, -65
  %21 = icmp ult i8 %20, 26
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = sext i8 %19 to i32
  %24 = add nsw i32 %23, -65
  br label %31

25:                                               ; preds = %15
  %26 = add i8 %19, -97
  %27 = icmp ult i8 %26, 26
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = sext i8 %19 to i32
  %30 = add nsw i32 %29, -97
  br label %31

31:                                               ; preds = %25, %28, %22
  %32 = phi i32 [ %24, %22 ], [ %30, %28 ], [ %17, %25 ]
  %33 = sext i32 %32 to i64
  %34 = sdiv i64 %33, 64
  %35 = getelementptr inbounds i64, i64* %3, i64 %34
  %36 = srem i64 %33, 64
  %37 = icmp slt i64 %36, 0
  %38 = add nsw i64 %36, 64
  %39 = ashr i64 %36, 63
  %40 = getelementptr i64, i64* %35, i64 %39
  %41 = select i1 %37, i64 %38, i64 %36
  %42 = and i64 %41, 4294967295
  %43 = shl i64 1, %42
  %44 = load i64, i64* %40, align 8, !tbaa !13
  %45 = or i64 %43, %44
  store i64 %45, i64* %40, align 8, !tbaa !13
  %46 = add nuw nsw i64 %16, 1
  %47 = icmp eq i64 %46, %6
  br i1 %47, label %11, label %15, !llvm.loop !15

48:                                               ; preds = %11, %52
  %49 = phi i64 [ %50, %52 ], [ 0, %11 ]
  %50 = add nuw nsw i64 %49, 1
  %51 = icmp eq i64 %50, 26
  br i1 %51, label %59, label %52, !llvm.loop !18

52:                                               ; preds = %48
  %53 = lshr i64 %50, 6
  %54 = getelementptr inbounds i64, i64* %3, i64 %53
  %55 = shl i64 2, %49
  %56 = load i64, i64* %54, align 8, !tbaa !13
  %57 = and i64 %56, %55
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %48, !llvm.loop !18

59:                                               ; preds = %52, %48
  %60 = icmp ugt i64 %49, 24
  %61 = zext i1 %60 to i32
  br label %62

62:                                               ; preds = %59, %11
  %63 = phi i32 [ 0, %11 ], [ %61, %59 ]
  call void @_ZdlPv(i8* noundef nonnull %2) #7
  ret i32 %63
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_PANGRAM_CHECKING_processed.cpp() #3 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0) }
attributes #7 = { nounwind }

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
!13 = !{!11, !11, i64 0}
!14 = !{!9, !9, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16, !17}
