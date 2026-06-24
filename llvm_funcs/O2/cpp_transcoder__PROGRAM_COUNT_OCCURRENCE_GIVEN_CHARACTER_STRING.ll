; ModuleID = 'benchmark/cpp_transcoder/PROGRAM_COUNT_OCCURRENCE_GIVEN_CHARACTER_STRING/PROGRAM_COUNT_OCCURRENCE_GIVEN_CHARACTER_STRING_processed.cpp'
source_filename = "benchmark/cpp_transcoder/PROGRAM_COUNT_OCCURRENCE_GIVEN_CHARACTER_STRING/PROGRAM_COUNT_OCCURRENCE_GIVEN_CHARACTER_STRING_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_PROGRAM_COUNT_OCCURRENCE_GIVEN_CHARACTER_STRING_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0, i8 noundef signext %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !5
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %85, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !12
  %9 = icmp ult i64 %4, 8
  br i1 %9, label %82, label %10

10:                                               ; preds = %6
  %11 = and i64 %4, -8
  %12 = insertelement <4 x i8> poison, i8 %1, i64 0
  %13 = shufflevector <4 x i8> %12, <4 x i8> poison, <4 x i32> zeroinitializer
  %14 = insertelement <4 x i8> poison, i8 %1, i64 0
  %15 = shufflevector <4 x i8> %14, <4 x i8> poison, <4 x i32> zeroinitializer
  %16 = add i64 %11, -8
  %17 = lshr exact i64 %16, 3
  %18 = add nuw nsw i64 %17, 1
  %19 = and i64 %18, 1
  %20 = icmp eq i64 %16, 0
  br i1 %20, label %56, label %21

21:                                               ; preds = %10
  %22 = and i64 %18, 4611686018427387902
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i64 [ 0, %21 ], [ %53, %23 ]
  %25 = phi <4 x i32> [ zeroinitializer, %21 ], [ %51, %23 ]
  %26 = phi <4 x i32> [ zeroinitializer, %21 ], [ %52, %23 ]
  %27 = phi i64 [ 0, %21 ], [ %54, %23 ]
  %28 = getelementptr inbounds i8, i8* %8, i64 %24
  %29 = bitcast i8* %28 to <4 x i8>*
  %30 = load <4 x i8>, <4 x i8>* %29, align 1, !tbaa !13
  %31 = getelementptr inbounds i8, i8* %28, i64 4
  %32 = bitcast i8* %31 to <4 x i8>*
  %33 = load <4 x i8>, <4 x i8>* %32, align 1, !tbaa !13
  %34 = icmp eq <4 x i8> %30, %13
  %35 = icmp eq <4 x i8> %33, %15
  %36 = zext <4 x i1> %34 to <4 x i32>
  %37 = zext <4 x i1> %35 to <4 x i32>
  %38 = add <4 x i32> %25, %36
  %39 = add <4 x i32> %26, %37
  %40 = or i64 %24, 8
  %41 = getelementptr inbounds i8, i8* %8, i64 %40
  %42 = bitcast i8* %41 to <4 x i8>*
  %43 = load <4 x i8>, <4 x i8>* %42, align 1, !tbaa !13
  %44 = getelementptr inbounds i8, i8* %41, i64 4
  %45 = bitcast i8* %44 to <4 x i8>*
  %46 = load <4 x i8>, <4 x i8>* %45, align 1, !tbaa !13
  %47 = icmp eq <4 x i8> %43, %13
  %48 = icmp eq <4 x i8> %46, %15
  %49 = zext <4 x i1> %47 to <4 x i32>
  %50 = zext <4 x i1> %48 to <4 x i32>
  %51 = add <4 x i32> %38, %49
  %52 = add <4 x i32> %39, %50
  %53 = add nuw i64 %24, 16
  %54 = add i64 %27, 2
  %55 = icmp eq i64 %54, %22
  br i1 %55, label %56, label %23, !llvm.loop !14

56:                                               ; preds = %23, %10
  %57 = phi <4 x i32> [ undef, %10 ], [ %51, %23 ]
  %58 = phi <4 x i32> [ undef, %10 ], [ %52, %23 ]
  %59 = phi i64 [ 0, %10 ], [ %53, %23 ]
  %60 = phi <4 x i32> [ zeroinitializer, %10 ], [ %51, %23 ]
  %61 = phi <4 x i32> [ zeroinitializer, %10 ], [ %52, %23 ]
  %62 = icmp eq i64 %19, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds i8, i8* %8, i64 %59
  %65 = bitcast i8* %64 to <4 x i8>*
  %66 = load <4 x i8>, <4 x i8>* %65, align 1, !tbaa !13
  %67 = getelementptr inbounds i8, i8* %64, i64 4
  %68 = bitcast i8* %67 to <4 x i8>*
  %69 = load <4 x i8>, <4 x i8>* %68, align 1, !tbaa !13
  %70 = icmp eq <4 x i8> %66, %13
  %71 = icmp eq <4 x i8> %69, %15
  %72 = zext <4 x i1> %70 to <4 x i32>
  %73 = zext <4 x i1> %71 to <4 x i32>
  %74 = add <4 x i32> %60, %72
  %75 = add <4 x i32> %61, %73
  br label %76

76:                                               ; preds = %56, %63
  %77 = phi <4 x i32> [ %57, %56 ], [ %74, %63 ]
  %78 = phi <4 x i32> [ %58, %56 ], [ %75, %63 ]
  %79 = add <4 x i32> %78, %77
  %80 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %79)
  %81 = icmp eq i64 %4, %11
  br i1 %81, label %85, label %82

82:                                               ; preds = %6, %76
  %83 = phi i64 [ 0, %6 ], [ %11, %76 ]
  %84 = phi i32 [ 0, %6 ], [ %80, %76 ]
  br label %87

85:                                               ; preds = %87, %76, %2
  %86 = phi i32 [ 0, %2 ], [ %80, %76 ], [ %94, %87 ]
  ret i32 %86

87:                                               ; preds = %82, %87
  %88 = phi i64 [ %95, %87 ], [ %83, %82 ]
  %89 = phi i32 [ %94, %87 ], [ %84, %82 ]
  %90 = getelementptr inbounds i8, i8* %8, i64 %88
  %91 = load i8, i8* %90, align 1, !tbaa !13
  %92 = icmp eq i8 %91, %1
  %93 = zext i1 %92 to i32
  %94 = add nuw nsw i32 %89, %93
  %95 = add nuw nsw i64 %88, 1
  %96 = icmp eq i64 %95, %4
  br i1 %96, label %85, label %87, !llvm.loop !17
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_PROGRAM_COUNT_OCCURRENCE_GIVEN_CHARACTER_STRING_processed.cpp() #4 section ".text.startup" {
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
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = distinct !{!17, !15, !18, !16}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
