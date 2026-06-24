; ModuleID = 'llvm/cpp_transcoder/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(i32 noundef %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !5
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !5
  %9 = add i64 %5, 1
  %10 = and i64 %9, 4294967295
  %11 = add i64 %8, 1
  %12 = and i64 %11, 4294967295
  %13 = mul nuw i64 %12, %10
  %14 = alloca i32, i64 %13, align 16
  %15 = alloca i32, i64 %13, align 16
  %16 = bitcast i32* %14 to i8*
  %17 = shl nuw i64 %13, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %16, i8 0, i64 %17, i1 false)
  %18 = bitcast i32* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %18, i8 0, i64 %17, i1 false)
  %19 = icmp slt i32 %6, 1
  br i1 %19, label %45, label %20

20:                                               ; preds = %3
  %21 = trunc i64 %8 to i32
  %22 = icmp slt i32 %21, 1
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %25 = sext i32 %0 to i64
  %26 = add i64 %8, 1
  %27 = add i64 %5, 1
  %28 = and i64 %27, 4294967295
  %29 = and i64 %26, 4294967295
  br label %30

30:                                               ; preds = %20, %54
  %31 = phi i64 [ 1, %20 ], [ %55, %54 ]
  br i1 %22, label %54, label %32

32:                                               ; preds = %30
  %33 = add nsw i64 %31, -1
  %34 = mul nuw nsw i64 %12, %33
  %35 = getelementptr inbounds i32, i32* %14, i64 %34
  %36 = mul nuw nsw i64 %12, %31
  %37 = getelementptr inbounds i32, i32* %14, i64 %36
  %38 = load i8*, i8** %23, align 8, !tbaa !12
  %39 = getelementptr inbounds i8, i8* %38, i64 %33
  %40 = load i8, i8* %39, align 1, !tbaa !13
  %41 = load i8*, i8** %24, align 8, !tbaa !12
  %42 = getelementptr inbounds i32, i32* %15, i64 %34
  %43 = getelementptr inbounds i32, i32* %15, i64 %36
  %44 = getelementptr inbounds i32, i32* %15, i64 %36
  br label %57

45:                                               ; preds = %54, %3
  %46 = shl i64 %5, 32
  %47 = ashr exact i64 %46, 32
  %48 = mul nsw i64 %12, %47
  %49 = getelementptr inbounds i32, i32* %14, i64 %48
  %50 = shl i64 %8, 32
  %51 = ashr exact i64 %50, 32
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !14
  ret i32 %53

54:                                               ; preds = %97, %30
  %55 = add nuw nsw i64 %31, 1
  %56 = icmp eq i64 %55, %28
  br i1 %56, label %45, label %30, !llvm.loop !16

57:                                               ; preds = %32, %97
  %58 = phi i64 [ 1, %32 ], [ %98, %97 ]
  %59 = getelementptr inbounds i32, i32* %35, i64 %58
  %60 = add nsw i64 %58, -1
  %61 = getelementptr inbounds i32, i32* %37, i64 %60
  %62 = load i32, i32* %59, align 4
  %63 = load i32, i32* %61, align 4
  %64 = icmp slt i32 %62, %63
  %65 = select i1 %64, i32 %63, i32 %62
  %66 = getelementptr inbounds i32, i32* %37, i64 %58
  store i32 %65, i32* %66, align 4, !tbaa !14
  %67 = getelementptr inbounds i8, i8* %41, i64 %60
  %68 = load i8, i8* %67, align 1, !tbaa !13
  %69 = icmp eq i8 %40, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %57
  %71 = getelementptr inbounds i32, i32* %42, i64 %60
  %72 = load i32, i32* %71, align 4, !tbaa !14
  %73 = add nsw i32 %72, 1
  %74 = getelementptr inbounds i32, i32* %43, i64 %58
  store i32 %73, i32* %74, align 4, !tbaa !14
  br label %75

75:                                               ; preds = %70, %57
  %76 = getelementptr inbounds i32, i32* %44, i64 %58
  %77 = load i32, i32* %76, align 4, !tbaa !14
  %78 = icmp slt i32 %77, %0
  br i1 %78, label %97, label %79

79:                                               ; preds = %75
  %80 = add i32 %77, 1
  br label %81

81:                                               ; preds = %79, %81
  %82 = phi i64 [ %25, %79 ], [ %94, %81 ]
  %83 = sub nsw i64 %31, %82
  %84 = mul nsw i64 %12, %83
  %85 = getelementptr inbounds i32, i32* %14, i64 %84
  %86 = sub nsw i64 %58, %82
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4, !tbaa !14
  %89 = trunc i64 %82 to i32
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %66, align 4, !tbaa !14
  %92 = icmp slt i32 %91, %90
  %93 = select i1 %92, i32 %90, i32 %91
  store i32 %93, i32* %66, align 4, !tbaa !14
  %94 = add nsw i64 %82, 1
  %95 = trunc i64 %94 to i32
  %96 = icmp eq i32 %80, %95
  br i1 %96, label %97, label %81, !llvm.loop !19

97:                                               ; preds = %81, %75
  %98 = add nuw nsw i64 %58, 1
  %99 = icmp eq i64 %98, %29
  br i1 %99, label %54, label %57, !llvm.loop !20
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K_reprocessed.cpp() #5 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
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
!12 = !{!6, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !9, i64 0}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !17, !18}
!20 = distinct !{!20, !17, !18}
