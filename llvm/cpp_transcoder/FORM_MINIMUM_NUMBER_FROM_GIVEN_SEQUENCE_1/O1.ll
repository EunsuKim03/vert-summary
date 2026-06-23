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
  br label %79

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
  br i1 %22, label %30, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %27 = and i64 %5, 4294967295
  %28 = add i64 %5, 1
  %29 = and i64 %28, 4294967295
  br label %48

30:                                               ; preds = %75, %15
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %32 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %31, %union.anon** %32, align 8, !tbaa !12
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8, !tbaa !14
  %35 = bitcast %union.anon* %20 to i8*
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = bitcast %union.anon* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %38, i8* noundef nonnull align 8 dereferenceable(16) %35, i64 16, i1 false) #6
  br label %44

39:                                               ; preds = %30
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  store i8* %34, i8** %40, align 8, !tbaa !14
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2, i32 0
  %42 = load i64, i64* %41, align 8, !tbaa !13
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %42, i64* %43, align 8, !tbaa !13
  br label %44

44:                                               ; preds = %37, %39
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %46 = load i64, i64* %45, align 8, !tbaa !5
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %46, i64* %47, align 8, !tbaa !5
  store %union.anon* %20, %union.anon** %21, align 8, !tbaa !14
  store i64 0, i64* %45, align 8, !tbaa !5
  store i8 0, i8* %35, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #6
  br label %79

48:                                               ; preds = %23, %75
  %49 = phi i64 [ 0, %23 ], [ %77, %75 ]
  %50 = phi i32 [ 1, %23 ], [ %76, %75 ]
  %51 = icmp eq i64 %49, %27
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %24, align 8, !tbaa !14
  %54 = getelementptr inbounds i8, i8* %53, i64 %49
  %55 = load i8, i8* %54, align 1, !tbaa !13
  %56 = icmp eq i8 %55, 73
  br i1 %56, label %57, label %75

57:                                               ; preds = %48, %52
  br label %58

58:                                               ; preds = %57, %68
  %59 = phi i64 [ %61, %68 ], [ %49, %57 ]
  %60 = phi i32 [ %62, %68 ], [ %50, %57 ]
  %61 = add i64 %59, -1
  %62 = add nsw i32 %60, 1
  %63 = trunc i32 %60 to i8
  %64 = add i8 %63, 48
  %65 = load i8*, i8** %25, align 8, !tbaa !14
  %66 = getelementptr inbounds i8, i8* %65, i64 %59
  store i8 %64, i8* %66, align 1, !tbaa !13
  %67 = icmp eq i64 %59, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %58
  %69 = load i8*, i8** %26, align 8, !tbaa !14
  %70 = getelementptr inbounds i8, i8* %69, i64 %61
  %71 = load i8, i8* %70, align 1, !tbaa !13
  %72 = icmp ne i8 %71, 73
  %73 = icmp sgt i64 %59, 0
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %58, label %75, !llvm.loop !15

75:                                               ; preds = %68, %58, %52
  %76 = phi i32 [ %50, %52 ], [ %62, %58 ], [ %62, %68 ]
  %77 = add nuw nsw i64 %49, 1
  %78 = icmp eq i64 %77, %29
  br i1 %78, label %30, label %48, !llvm.loop !18

79:                                               ; preds = %44, %8
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
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
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
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16, !17}
