; ModuleID = 'benchmark/cpp_transcoder/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !5
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !5
  %8 = trunc i64 %7 to i32
  %9 = icmp sgt i32 %5, %8
  br i1 %9, label %96, label %10

10:                                               ; preds = %2
  %11 = add i64 %4, 1
  %12 = and i64 %11, 4294967295
  %13 = add i64 %7, 1
  %14 = and i64 %13, 4294967295
  %15 = call i8* @llvm.stacksave()
  %16 = mul nuw i64 %14, %12
  %17 = alloca i32, i64 %16, align 16
  %18 = icmp slt i32 %5, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %10
  %20 = add i64 %4, 1
  %21 = and i64 %20, 4294967295
  br label %27

22:                                               ; preds = %27, %10
  %23 = icmp slt i32 %8, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %22
  %25 = add i64 %7, 1
  %26 = and i64 %25, 4294967295
  br label %43

27:                                               ; preds = %19, %27
  %28 = phi i64 [ 1, %19 ], [ %31, %27 ]
  %29 = mul nuw nsw i64 %14, %28
  %30 = getelementptr inbounds i32, i32* %17, i64 %29
  store i32 0, i32* %30, align 4, !tbaa !12
  %31 = add nuw nsw i64 %28, 1
  %32 = icmp eq i64 %31, %21
  br i1 %32, label %22, label %27, !llvm.loop !14

33:                                               ; preds = %43, %22
  %34 = icmp slt i32 %5, 1
  br i1 %34, label %62, label %35

35:                                               ; preds = %33
  %36 = icmp slt i32 %8, 1
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %39 = add i64 %7, 1
  %40 = add i64 %4, 1
  %41 = and i64 %40, 4294967295
  %42 = and i64 %39, 4294967295
  br label %48

43:                                               ; preds = %24, %43
  %44 = phi i64 [ 0, %24 ], [ %46, %43 ]
  %45 = getelementptr inbounds i32, i32* %17, i64 %44
  store i32 1, i32* %45, align 4, !tbaa !12
  %46 = add nuw nsw i64 %44, 1
  %47 = icmp eq i64 %46, %26
  br i1 %47, label %33, label %43, !llvm.loop !17

48:                                               ; preds = %35, %71
  %49 = phi i64 [ 1, %35 ], [ %72, %71 ]
  br i1 %36, label %71, label %50

50:                                               ; preds = %48
  %51 = add nsw i64 %49, -1
  %52 = load i8*, i8** %37, align 8, !tbaa !18
  %53 = getelementptr inbounds i8, i8* %52, i64 %51
  %54 = load i8, i8* %53, align 1, !tbaa !19
  %55 = load i8*, i8** %38, align 8, !tbaa !18
  %56 = mul nuw nsw i64 %14, %49
  %57 = getelementptr inbounds i32, i32* %17, i64 %56
  %58 = mul nuw nsw i64 %14, %49
  %59 = getelementptr inbounds i32, i32* %17, i64 %58
  %60 = mul nuw nsw i64 %14, %51
  %61 = getelementptr inbounds i32, i32* %17, i64 %60
  br label %74

62:                                               ; preds = %71, %33
  %63 = shl i64 %4, 32
  %64 = ashr exact i64 %63, 32
  %65 = mul nsw i64 %14, %64
  %66 = getelementptr inbounds i32, i32* %17, i64 %65
  %67 = shl i64 %7, 32
  %68 = ashr exact i64 %67, 32
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4, !tbaa !12
  call void @llvm.stackrestore(i8* %15)
  br label %96

71:                                               ; preds = %89, %48
  %72 = add nuw nsw i64 %49, 1
  %73 = icmp eq i64 %72, %41
  br i1 %73, label %62, label %48, !llvm.loop !20

74:                                               ; preds = %50, %89
  %75 = phi i64 [ 1, %50 ], [ %94, %89 ]
  %76 = add nsw i64 %75, -1
  %77 = getelementptr inbounds i8, i8* %55, i64 %76
  %78 = load i8, i8* %77, align 1, !tbaa !19
  %79 = icmp eq i8 %54, %78
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds i32, i32* %57, i64 %76
  %82 = load i32, i32* %81, align 4, !tbaa !12
  br label %89

83:                                               ; preds = %74
  %84 = getelementptr inbounds i32, i32* %59, i64 %76
  %85 = load i32, i32* %84, align 4, !tbaa !12
  %86 = getelementptr inbounds i32, i32* %61, i64 %76
  %87 = load i32, i32* %86, align 4, !tbaa !12
  %88 = add nsw i32 %87, %85
  br label %89

89:                                               ; preds = %80, %83
  %90 = phi i64 [ %56, %80 ], [ %58, %83 ]
  %91 = phi i32 [ %82, %80 ], [ %88, %83 ]
  %92 = getelementptr inbounds i32, i32* %17, i64 %90
  %93 = getelementptr inbounds i32, i32* %92, i64 %75
  store i32 %91, i32* %93, align 4, !tbaa !12
  %94 = add nuw nsw i64 %75, 1
  %95 = icmp eq i64 %94, %42
  br i1 %95, label %71, label %74, !llvm.loop !21

96:                                               ; preds = %2, %62
  %97 = phi i32 [ %70, %62 ], [ 0, %2 ]
  ret i32 %97
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE_processed.cpp() #5 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn }
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
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !15, !16}
!18 = !{!6, !8, i64 0}
!19 = !{!9, !9, i64 0}
!20 = distinct !{!20, !15, !16}
!21 = distinct !{!21, !15, !16}
