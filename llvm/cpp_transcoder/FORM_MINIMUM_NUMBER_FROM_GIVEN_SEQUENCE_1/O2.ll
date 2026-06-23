; ModuleID = 'benchmark/cpp_transcoder/FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1/FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1/FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !5
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, 8
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %10 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %9, %union.anon** %10, align 8, !tbaa !12
  %11 = bitcast %union.anon* %9 to i16*
  store i16 12589, i16* %11, align 8
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 2, i64* %12, align 8, !tbaa !5
  %13 = bitcast %union.anon* %9 to i8*
  %14 = getelementptr inbounds i8, i8* %13, i64 2
  store i8 0, i8* %14, align 2, !tbaa !13
  br label %81

15:                                               ; preds = %2
  %16 = bitcast %"class.std::__cxx11::basic_string"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #6
  %17 = shl i64 %5, 32
  %18 = add i64 %17, 4294967296
  %19 = ashr exact i64 %18, 32
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2
  %21 = bitcast %"class.std::__cxx11::basic_string"* %3 to %union.anon**
  store %union.anon* %20, %union.anon** %21, align 8, !tbaa !12
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %19, i8 noundef signext 32)
  %22 = icmp slt i32 %6, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %26 = and i64 %5, 4294967295
  %27 = add i64 %5, 1
  %28 = and i64 %27, 4294967295
  br label %47

29:                                               ; preds = %77, %15
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %31 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %30, %union.anon** %31, align 8, !tbaa !12
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8, !tbaa !14
  %34 = bitcast %union.anon* %20 to i8*
  %35 = icmp eq i8* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = bitcast %union.anon* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %37, i8* noundef nonnull align 8 dereferenceable(16) %33, i64 16, i1 false) #6
  br label %43

38:                                               ; preds = %29
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  store i8* %33, i8** %39, align 8, !tbaa !14
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2, i32 0
  %41 = load i64, i64* %40, align 8, !tbaa !13
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %41, i64* %42, align 8, !tbaa !13
  br label %43

43:                                               ; preds = %36, %38
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %45 = load i64, i64* %44, align 8, !tbaa !5
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %45, i64* %46, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #6
  br label %81

47:                                               ; preds = %23, %77
  %48 = phi i64 [ 0, %23 ], [ %79, %77 ]
  %49 = phi i32 [ 1, %23 ], [ %78, %77 ]
  %50 = icmp eq i64 %48, %26
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %24, align 8, !tbaa !14
  %53 = getelementptr inbounds i8, i8* %52, i64 %48
  %54 = load i8, i8* %53, align 1, !tbaa !13
  %55 = icmp eq i8 %54, 73
  br i1 %55, label %56, label %77

56:                                               ; preds = %47, %51
  %57 = trunc i64 %48 to i32
  br label %58

58:                                               ; preds = %69, %56
  %59 = phi i32 [ %57, %56 ], [ %61, %69 ]
  %60 = phi i32 [ %49, %56 ], [ %62, %69 ]
  %61 = add nsw i32 %59, -1
  %62 = add nsw i32 %60, 1
  %63 = trunc i32 %60 to i8
  %64 = add i8 %63, 48
  %65 = zext i32 %59 to i64
  %66 = load i8*, i8** %25, align 8, !tbaa !14
  %67 = getelementptr inbounds i8, i8* %66, i64 %65
  store i8 %64, i8* %67, align 1, !tbaa !13
  %68 = icmp eq i32 %59, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %58
  %70 = zext i32 %61 to i64
  %71 = load i8*, i8** %24, align 8, !tbaa !14
  %72 = getelementptr inbounds i8, i8* %71, i64 %70
  %73 = load i8, i8* %72, align 1, !tbaa !13
  %74 = icmp ne i8 %73, 73
  %75 = icmp sgt i32 %59, 0
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %58, label %77, !llvm.loop !15

77:                                               ; preds = %69, %58, %51
  %78 = phi i32 [ %49, %51 ], [ %62, %58 ], [ %62, %69 ]
  %79 = add nuw nsw i64 %48, 1
  %80 = icmp eq i64 %79, %28
  br i1 %80, label %29, label %47, !llvm.loop !17

81:                                               ; preds = %43, %8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1_processed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
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
!12 = !{!7, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!6, !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
