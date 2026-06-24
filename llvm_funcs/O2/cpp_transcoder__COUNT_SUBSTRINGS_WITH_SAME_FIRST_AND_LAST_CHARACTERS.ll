; ModuleID = 'benchmark/cpp_transcoder/COUNT_SUBSTRINGS_WITH_SAME_FIRST_AND_LAST_CHARACTERS/COUNT_SUBSTRINGS_WITH_SAME_FIRST_AND_LAST_CHARACTERS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_SUBSTRINGS_WITH_SAME_FIRST_AND_LAST_CHARACTERS/COUNT_SUBSTRINGS_WITH_SAME_FIRST_AND_LAST_CHARACTERS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_SUBSTRINGS_WITH_SAME_FIRST_AND_LAST_CHARACTERS_processed.cpp, i8* null }]

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
  br i1 %5, label %6, label %104

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %8 = and i64 %3, 4294967295
  %9 = load i8*, i8** %7, align 8, !tbaa !12
  br label %10

10:                                               ; preds = %106, %6
  %11 = phi i64 [ 0, %6 ], [ %108, %106 ]
  %12 = phi i32 [ 0, %6 ], [ %107, %106 ]
  %13 = xor i64 %11, -1
  %14 = add nsw i64 %8, %13
  %15 = add i64 %14, -8
  %16 = lshr i64 %15, 3
  %17 = add nuw nsw i64 %16, 1
  %18 = xor i64 %11, -1
  %19 = add nsw i64 %8, %18
  %20 = getelementptr inbounds i8, i8* %9, i64 %11
  %21 = load i8, i8* %20, align 1, !tbaa !13
  %22 = add nsw i32 %12, 1
  %23 = add nuw nsw i64 %11, 1
  %24 = icmp eq i64 %23, %8
  br i1 %24, label %106, label %25, !llvm.loop !14

25:                                               ; preds = %10
  %26 = icmp ult i64 %19, 8
  br i1 %26, label %101, label %27

27:                                               ; preds = %25
  %28 = and i64 %19, -8
  %29 = add i64 %23, %28
  %30 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %22, i64 0
  %31 = insertelement <4 x i8> poison, i8 %21, i64 0
  %32 = shufflevector <4 x i8> %31, <4 x i8> poison, <4 x i32> zeroinitializer
  %33 = insertelement <4 x i8> poison, i8 %21, i64 0
  %34 = shufflevector <4 x i8> %33, <4 x i8> poison, <4 x i32> zeroinitializer
  %35 = and i64 %17, 1
  %36 = icmp ult i64 %15, 8
  br i1 %36, label %74, label %37

37:                                               ; preds = %27
  %38 = and i64 %17, 4611686018427387902
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %71, %39 ]
  %41 = phi <4 x i32> [ %30, %37 ], [ %69, %39 ]
  %42 = phi <4 x i32> [ zeroinitializer, %37 ], [ %70, %39 ]
  %43 = phi i64 [ 0, %37 ], [ %72, %39 ]
  %44 = add i64 %23, %40
  %45 = getelementptr inbounds i8, i8* %9, i64 %44
  %46 = bitcast i8* %45 to <4 x i8>*
  %47 = load <4 x i8>, <4 x i8>* %46, align 1, !tbaa !13
  %48 = getelementptr inbounds i8, i8* %45, i64 4
  %49 = bitcast i8* %48 to <4 x i8>*
  %50 = load <4 x i8>, <4 x i8>* %49, align 1, !tbaa !13
  %51 = icmp eq <4 x i8> %32, %47
  %52 = icmp eq <4 x i8> %34, %50
  %53 = zext <4 x i1> %51 to <4 x i32>
  %54 = zext <4 x i1> %52 to <4 x i32>
  %55 = add <4 x i32> %41, %53
  %56 = add <4 x i32> %42, %54
  %57 = or i64 %40, 8
  %58 = add i64 %23, %57
  %59 = getelementptr inbounds i8, i8* %9, i64 %58
  %60 = bitcast i8* %59 to <4 x i8>*
  %61 = load <4 x i8>, <4 x i8>* %60, align 1, !tbaa !13
  %62 = getelementptr inbounds i8, i8* %59, i64 4
  %63 = bitcast i8* %62 to <4 x i8>*
  %64 = load <4 x i8>, <4 x i8>* %63, align 1, !tbaa !13
  %65 = icmp eq <4 x i8> %32, %61
  %66 = icmp eq <4 x i8> %34, %64
  %67 = zext <4 x i1> %65 to <4 x i32>
  %68 = zext <4 x i1> %66 to <4 x i32>
  %69 = add <4 x i32> %55, %67
  %70 = add <4 x i32> %56, %68
  %71 = add nuw i64 %40, 16
  %72 = add i64 %43, 2
  %73 = icmp eq i64 %72, %38
  br i1 %73, label %74, label %39, !llvm.loop !16

74:                                               ; preds = %39, %27
  %75 = phi <4 x i32> [ undef, %27 ], [ %69, %39 ]
  %76 = phi <4 x i32> [ undef, %27 ], [ %70, %39 ]
  %77 = phi i64 [ 0, %27 ], [ %71, %39 ]
  %78 = phi <4 x i32> [ %30, %27 ], [ %69, %39 ]
  %79 = phi <4 x i32> [ zeroinitializer, %27 ], [ %70, %39 ]
  %80 = icmp eq i64 %35, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %74
  %82 = add i64 %23, %77
  %83 = getelementptr inbounds i8, i8* %9, i64 %82
  %84 = bitcast i8* %83 to <4 x i8>*
  %85 = load <4 x i8>, <4 x i8>* %84, align 1, !tbaa !13
  %86 = getelementptr inbounds i8, i8* %83, i64 4
  %87 = bitcast i8* %86 to <4 x i8>*
  %88 = load <4 x i8>, <4 x i8>* %87, align 1, !tbaa !13
  %89 = icmp eq <4 x i8> %32, %85
  %90 = icmp eq <4 x i8> %34, %88
  %91 = zext <4 x i1> %89 to <4 x i32>
  %92 = zext <4 x i1> %90 to <4 x i32>
  %93 = add <4 x i32> %78, %91
  %94 = add <4 x i32> %79, %92
  br label %95

95:                                               ; preds = %74, %81
  %96 = phi <4 x i32> [ %75, %74 ], [ %93, %81 ]
  %97 = phi <4 x i32> [ %76, %74 ], [ %94, %81 ]
  %98 = add <4 x i32> %97, %96
  %99 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %98)
  %100 = icmp eq i64 %19, %28
  br i1 %100, label %106, label %101

101:                                              ; preds = %25, %95
  %102 = phi i64 [ %23, %25 ], [ %29, %95 ]
  %103 = phi i32 [ %22, %25 ], [ %99, %95 ]
  br label %110

104:                                              ; preds = %106, %1
  %105 = phi i32 [ 0, %1 ], [ %107, %106 ]
  ret i32 %105

106:                                              ; preds = %110, %95, %10
  %107 = phi i32 [ %22, %10 ], [ %99, %95 ], [ %117, %110 ]
  %108 = add nuw nsw i64 %11, 1
  %109 = icmp eq i64 %108, %8
  br i1 %109, label %104, label %10, !llvm.loop !18

110:                                              ; preds = %101, %110
  %111 = phi i64 [ %118, %110 ], [ %102, %101 ]
  %112 = phi i32 [ %117, %110 ], [ %103, %101 ]
  %113 = getelementptr inbounds i8, i8* %9, i64 %111
  %114 = load i8, i8* %113, align 1, !tbaa !13
  %115 = icmp eq i8 %21, %114
  %116 = zext i1 %115 to i32
  %117 = add nsw i32 %112, %116
  %118 = add nuw nsw i64 %111, 1
  %119 = icmp eq i64 %118, %8
  br i1 %119, label %106, label %110, !llvm.loop !19
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_SUBSTRINGS_WITH_SAME_FIRST_AND_LAST_CHARACTERS_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone willreturn }
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
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15, !17}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15, !20, !17}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
