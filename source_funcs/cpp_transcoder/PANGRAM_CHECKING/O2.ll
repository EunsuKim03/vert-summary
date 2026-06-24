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
  %2 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef 8) #6
  %3 = bitcast i8* %2 to i64*
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !5
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !tbaa !12
  br label %14

10:                                               ; preds = %31, %1
  %11 = load i64, i64* %3, align 8, !tbaa !13
  %12 = and i64 %11, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %73, label %48

14:                                               ; preds = %7, %31
  %15 = phi i64 [ 0, %7 ], [ %46, %31 ]
  %16 = phi i32 [ undef, %7 ], [ %32, %31 ]
  %17 = getelementptr inbounds i8, i8* %9, i64 %15
  %18 = load i8, i8* %17, align 1, !tbaa !14
  %19 = icmp sgt i8 %18, 64
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = icmp ult i8 %18, 91
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = zext i8 %18 to i32
  %24 = add nsw i32 %23, -65
  br label %31

25:                                               ; preds = %20
  %26 = add nsw i8 %18, -97
  %27 = icmp ult i8 %26, 26
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = zext i8 %18 to i32
  %30 = add nsw i32 %29, -97
  br label %31

31:                                               ; preds = %14, %22, %28, %25
  %32 = phi i32 [ %24, %22 ], [ %30, %28 ], [ %16, %25 ], [ %16, %14 ]
  %33 = sdiv i32 %32, 64
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %3, i64 %34
  %36 = srem i32 %32, 64
  %37 = sext i32 %36 to i64
  %38 = icmp slt i32 %36, 0
  %39 = add nsw i64 %37, 64
  %40 = ashr i64 %37, 63
  %41 = getelementptr i64, i64* %35, i64 %40
  %42 = select i1 %38, i64 %39, i64 %37
  %43 = shl nuw i64 1, %42
  %44 = load i64, i64* %41, align 8, !tbaa !13
  %45 = or i64 %43, %44
  store i64 %45, i64* %41, align 8, !tbaa !13
  %46 = add nuw nsw i64 %15, 1
  %47 = icmp eq i64 %46, %5
  br i1 %47, label %10, label %14, !llvm.loop !15

48:                                               ; preds = %10, %61
  %49 = phi i64 [ %59, %61 ], [ 0, %10 ]
  %50 = or i64 %49, 1
  %51 = lshr i64 %49, 6
  %52 = and i64 %51, 3
  %53 = getelementptr inbounds i64, i64* %3, i64 %52
  %54 = shl i64 2, %49
  %55 = load i64, i64* %53, align 8, !tbaa !13
  %56 = and i64 %55, %54
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %73, label %58, !llvm.loop !17

58:                                               ; preds = %48
  %59 = add nuw nsw i64 %49, 2
  %60 = icmp eq i64 %59, 26
  br i1 %60, label %71, label %61, !llvm.loop !17

61:                                               ; preds = %58
  %62 = lshr i64 %59, 6
  %63 = and i64 %62, 3
  %64 = getelementptr inbounds i64, i64* %3, i64 %63
  %65 = shl i64 2, %50
  %66 = load i64, i64* %64, align 8, !tbaa !13
  %67 = and i64 %66, %65
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %48, !llvm.loop !17

69:                                               ; preds = %61
  %70 = icmp ult i64 %50, 25
  br label %73

71:                                               ; preds = %58
  %72 = icmp ult i64 %50, 25
  br label %73

73:                                               ; preds = %69, %71, %48, %10
  %74 = phi i1 [ true, %10 ], [ %70, %69 ], [ %72, %71 ], [ true, %48 ]
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  tail call void @_ZdlPv(i8* noundef nonnull %2) #7
  ret i32 %76
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_PANGRAM_CHECKING_processed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
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
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
