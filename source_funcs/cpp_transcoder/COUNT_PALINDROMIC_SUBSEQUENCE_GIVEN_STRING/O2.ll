; ModuleID = 'llvm/cpp_transcoder/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !5
  %4 = trunc i64 %3 to i32
  %5 = add i64 %3, 1
  %6 = and i64 %5, 4294967295
  %7 = mul nuw i64 %6, %6
  %8 = alloca i32, i64 %7, align 16
  %9 = bitcast i32* %8 to i8*
  %10 = shl nuw i64 %7, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false)
  %11 = icmp sgt i32 %4, 0
  br i1 %11, label %12, label %62

12:                                               ; preds = %1
  %13 = and i64 %3, 4294967295
  %14 = add nsw i64 %13, -1
  %15 = and i64 %3, 3
  %16 = icmp ult i64 %14, 3
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = sub nsw i64 %13, %15
  br label %39

19:                                               ; preds = %39, %12
  %20 = phi i64 [ 0, %12 ], [ %57, %39 ]
  %21 = icmp eq i64 %15, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ %28, %22 ], [ %20, %19 ]
  %24 = phi i64 [ %29, %22 ], [ 0, %19 ]
  %25 = mul nuw nsw i64 %6, %23
  %26 = getelementptr inbounds i32, i32* %8, i64 %25
  %27 = getelementptr inbounds i32, i32* %26, i64 %23
  store i32 1, i32* %27, align 4, !tbaa !12
  %28 = add nuw nsw i64 %23, 1
  %29 = add i64 %24, 1
  %30 = icmp eq i64 %29, %15
  br i1 %30, label %31, label %22, !llvm.loop !14

31:                                               ; preds = %22, %19
  %32 = icmp slt i32 %4, 2
  br i1 %32, label %62, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %35 = add i64 %3, 1
  %36 = and i64 %35, 4294967295
  %37 = load i8*, i8** %34, align 8, !tbaa !16
  %38 = and i64 %3, 4294967295
  br label %60

39:                                               ; preds = %39, %17
  %40 = phi i64 [ 0, %17 ], [ %57, %39 ]
  %41 = phi i64 [ 0, %17 ], [ %58, %39 ]
  %42 = mul nuw nsw i64 %6, %40
  %43 = getelementptr inbounds i32, i32* %8, i64 %42
  %44 = getelementptr inbounds i32, i32* %43, i64 %40
  store i32 1, i32* %44, align 16, !tbaa !12
  %45 = or i64 %40, 1
  %46 = mul nuw nsw i64 %6, %45
  %47 = getelementptr inbounds i32, i32* %8, i64 %46
  %48 = getelementptr inbounds i32, i32* %47, i64 %45
  store i32 1, i32* %48, align 4, !tbaa !12
  %49 = or i64 %40, 2
  %50 = mul nuw nsw i64 %6, %49
  %51 = getelementptr inbounds i32, i32* %8, i64 %50
  %52 = getelementptr inbounds i32, i32* %51, i64 %49
  store i32 1, i32* %52, align 8, !tbaa !12
  %53 = or i64 %40, 3
  %54 = mul nuw nsw i64 %6, %53
  %55 = getelementptr inbounds i32, i32* %8, i64 %54
  %56 = getelementptr inbounds i32, i32* %55, i64 %53
  store i32 1, i32* %56, align 4, !tbaa !12
  %57 = add nuw nsw i64 %40, 4
  %58 = add i64 %41, 4
  %59 = icmp eq i64 %58, %18
  br i1 %59, label %19, label %39, !llvm.loop !17

60:                                               ; preds = %68, %33
  %61 = phi i64 [ 2, %33 ], [ %69, %68 ]
  br label %71

62:                                               ; preds = %68, %1, %31
  %63 = shl i64 %3, 32
  %64 = add i64 %63, -4294967296
  %65 = ashr exact i64 %64, 32
  %66 = getelementptr inbounds i32, i32* %8, i64 %65
  %67 = load i32, i32* %66, align 4, !tbaa !12
  ret i32 %67

68:                                               ; preds = %98
  %69 = add nuw nsw i64 %61, 1
  %70 = icmp eq i64 %69, %36
  br i1 %70, label %62, label %60, !llvm.loop !19

71:                                               ; preds = %60, %98
  %72 = phi i64 [ 0, %60 ], [ %85, %98 ]
  %73 = add nuw nsw i64 %72, %61
  %74 = add nsw i64 %73, -1
  %75 = getelementptr inbounds i8, i8* %37, i64 %72
  %76 = load i8, i8* %75, align 1, !tbaa !20
  %77 = getelementptr inbounds i8, i8* %37, i64 %74
  %78 = load i8, i8* %77, align 1, !tbaa !20
  %79 = icmp eq i8 %76, %78
  %80 = mul nuw nsw i64 %6, %72
  %81 = getelementptr inbounds i32, i32* %8, i64 %80
  %82 = add nsw i64 %73, -2
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4, !tbaa !12
  %85 = add nuw nsw i64 %72, 1
  %86 = mul nuw nsw i64 %6, %85
  %87 = getelementptr inbounds i32, i32* %8, i64 %86
  %88 = getelementptr inbounds i32, i32* %87, i64 %74
  %89 = load i32, i32* %88, align 4, !tbaa !12
  br i1 %79, label %90, label %93

90:                                               ; preds = %71
  %91 = add i32 %84, 1
  %92 = add i32 %91, %89
  br label %98

93:                                               ; preds = %71
  %94 = add nsw i32 %89, %84
  %95 = getelementptr inbounds i32, i32* %87, i64 %82
  %96 = load i32, i32* %95, align 4, !tbaa !12
  %97 = sub i32 %94, %96
  br label %98

98:                                               ; preds = %93, %90
  %99 = phi i32 [ %97, %93 ], [ %92, %90 ]
  %100 = getelementptr inbounds i32, i32* %81, i64 %74
  store i32 %99, i32* %100, align 4, !tbaa !12
  %101 = icmp eq i64 %85, %38
  br i1 %101, label %68, label %71, !llvm.loop !21
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING_reprocessed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!6, !8, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = !{!9, !9, i64 0}
!21 = distinct !{!21, !18}
