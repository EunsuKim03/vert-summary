; ModuleID = 'benchmark/cpp_transcoder/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING_processed.cpp, i8* null }]

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
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = add i64 %3, 4294967295
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %9 = shl i64 %3, 32
  %10 = ashr exact i64 %9, 32
  %11 = and i64 %7, 4294967295
  %12 = and i64 %3, 4294967295
  br label %19

13:                                               ; preds = %124, %105, %19
  %14 = phi i32 [ %22, %19 ], [ %107, %105 ], [ %125, %124 ]
  %15 = add nuw nsw i64 %21, 1
  %16 = icmp eq i64 %30, %11
  br i1 %16, label %17, label %19, !llvm.loop !12

17:                                               ; preds = %13, %1
  %18 = phi i32 [ -1, %1 ], [ %14, %13 ]
  ret i32 %18

19:                                               ; preds = %6, %13
  %20 = phi i64 [ 0, %6 ], [ %30, %13 ]
  %21 = phi i64 [ 1, %6 ], [ %15, %13 ]
  %22 = phi i32 [ -1, %6 ], [ %14, %13 ]
  %23 = xor i64 %20, -1
  %24 = add nsw i64 %12, %23
  %25 = add i64 %24, -4
  %26 = lshr i64 %25, 2
  %27 = add nuw nsw i64 %26, 1
  %28 = xor i64 %20, -1
  %29 = add nsw i64 %12, %28
  %30 = add nuw nsw i64 %20, 1
  %31 = icmp slt i64 %30, %10
  br i1 %31, label %32, label %13

32:                                               ; preds = %19
  %33 = load i8*, i8** %8, align 8, !tbaa !14
  %34 = getelementptr inbounds i8, i8* %33, i64 %20
  %35 = load i8, i8* %34, align 1, !tbaa !15
  %36 = xor i64 %20, -1
  %37 = icmp ult i64 %29, 4
  br i1 %37, label %109, label %38

38:                                               ; preds = %32
  %39 = and i64 %29, -4
  %40 = add i64 %21, %39
  %41 = insertelement <4 x i64> poison, i64 %21, i64 0
  %42 = shufflevector <4 x i64> %41, <4 x i64> poison, <4 x i32> zeroinitializer
  %43 = add nuw <4 x i64> %42, <i64 0, i64 1, i64 2, i64 3>
  %44 = insertelement <4 x i32> poison, i32 %22, i64 0
  %45 = shufflevector <4 x i32> %44, <4 x i32> poison, <4 x i32> zeroinitializer
  %46 = insertelement <4 x i8> poison, i8 %35, i64 0
  %47 = shufflevector <4 x i8> %46, <4 x i8> poison, <4 x i32> zeroinitializer
  %48 = insertelement <4 x i64> poison, i64 %36, i64 0
  %49 = shufflevector <4 x i64> %48, <4 x i64> poison, <4 x i32> zeroinitializer
  %50 = and i64 %27, 1
  %51 = icmp ult i64 %25, 4
  br i1 %51, label %87, label %52

52:                                               ; preds = %38
  %53 = and i64 %27, 9223372036854775806
  br label %54

54:                                               ; preds = %54, %52
  %55 = phi i64 [ 0, %52 ], [ %83, %54 ]
  %56 = phi <4 x i64> [ %43, %52 ], [ %84, %54 ]
  %57 = phi <4 x i32> [ %45, %52 ], [ %82, %54 ]
  %58 = phi i64 [ 0, %52 ], [ %85, %54 ]
  %59 = add i64 %21, %55
  %60 = getelementptr inbounds i8, i8* %33, i64 %59
  %61 = bitcast i8* %60 to <4 x i8>*
  %62 = load <4 x i8>, <4 x i8>* %61, align 1, !tbaa !15
  %63 = icmp eq <4 x i8> %47, %62
  %64 = add nsw <4 x i64> %56, %49
  %65 = trunc <4 x i64> %64 to <4 x i32>
  %66 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %65, i1 true)
  %67 = icmp slt <4 x i32> %57, %66
  %68 = select <4 x i1> %63, <4 x i1> %67, <4 x i1> zeroinitializer
  %69 = select <4 x i1> %68, <4 x i32> %66, <4 x i32> %57
  %70 = or i64 %55, 4
  %71 = add <4 x i64> %56, <i64 4, i64 4, i64 4, i64 4>
  %72 = add i64 %21, %70
  %73 = getelementptr inbounds i8, i8* %33, i64 %72
  %74 = bitcast i8* %73 to <4 x i8>*
  %75 = load <4 x i8>, <4 x i8>* %74, align 1, !tbaa !15
  %76 = icmp eq <4 x i8> %47, %75
  %77 = add nsw <4 x i64> %71, %49
  %78 = trunc <4 x i64> %77 to <4 x i32>
  %79 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %78, i1 true)
  %80 = icmp slt <4 x i32> %69, %79
  %81 = select <4 x i1> %76, <4 x i1> %80, <4 x i1> zeroinitializer
  %82 = select <4 x i1> %81, <4 x i32> %79, <4 x i32> %69
  %83 = add nuw i64 %55, 8
  %84 = add <4 x i64> %56, <i64 8, i64 8, i64 8, i64 8>
  %85 = add i64 %58, 2
  %86 = icmp eq i64 %85, %53
  br i1 %86, label %87, label %54, !llvm.loop !16

87:                                               ; preds = %54, %38
  %88 = phi <4 x i32> [ undef, %38 ], [ %82, %54 ]
  %89 = phi i64 [ 0, %38 ], [ %83, %54 ]
  %90 = phi <4 x i64> [ %43, %38 ], [ %84, %54 ]
  %91 = phi <4 x i32> [ %45, %38 ], [ %82, %54 ]
  %92 = icmp eq i64 %50, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %87
  %94 = add i64 %21, %89
  %95 = getelementptr inbounds i8, i8* %33, i64 %94
  %96 = bitcast i8* %95 to <4 x i8>*
  %97 = load <4 x i8>, <4 x i8>* %96, align 1, !tbaa !15
  %98 = icmp eq <4 x i8> %47, %97
  %99 = add nsw <4 x i64> %90, %49
  %100 = trunc <4 x i64> %99 to <4 x i32>
  %101 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %100, i1 true)
  %102 = icmp slt <4 x i32> %91, %101
  %103 = select <4 x i1> %98, <4 x i1> %102, <4 x i1> zeroinitializer
  %104 = select <4 x i1> %103, <4 x i32> %101, <4 x i32> %91
  br label %105

105:                                              ; preds = %87, %93
  %106 = phi <4 x i32> [ %88, %87 ], [ %104, %93 ]
  %107 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %106)
  %108 = icmp eq i64 %29, %39
  br i1 %108, label %13, label %109

109:                                              ; preds = %32, %105
  %110 = phi i64 [ %21, %32 ], [ %40, %105 ]
  %111 = phi i32 [ %22, %32 ], [ %107, %105 ]
  br label %112

112:                                              ; preds = %109, %124
  %113 = phi i64 [ %126, %124 ], [ %110, %109 ]
  %114 = phi i32 [ %125, %124 ], [ %111, %109 ]
  %115 = getelementptr inbounds i8, i8* %33, i64 %113
  %116 = load i8, i8* %115, align 1, !tbaa !15
  %117 = icmp eq i8 %35, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = add nsw i64 %113, %36
  %120 = trunc i64 %119 to i32
  %121 = tail call i32 @llvm.abs.i32(i32 %120, i1 true)
  %122 = icmp slt i32 %114, %121
  %123 = select i1 %122, i32 %121, i32 %114
  br label %124

124:                                              ; preds = %112, %118
  %125 = phi i32 [ %123, %118 ], [ %114, %112 ]
  %126 = add nuw nsw i64 %113, 1
  %127 = icmp eq i64 %126, %12
  br i1 %127, label %13, label %112, !llvm.loop !18
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #5

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #6

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nosync nounwind readnone willreturn }
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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!6, !8, i64 0}
!15 = !{!9, !9, i64 0}
!16 = distinct !{!16, !13, !17}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = distinct !{!18, !13, !19, !17}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
