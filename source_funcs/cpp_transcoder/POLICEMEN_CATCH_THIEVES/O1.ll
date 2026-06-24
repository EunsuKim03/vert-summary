; ModuleID = 'benchmark/cpp_transcoder/POLICEMEN_CATCH_THIEVES/POLICEMEN_CATCH_THIEVES_processed.cpp'
source_filename = "benchmark/cpp_transcoder/POLICEMEN_CATCH_THIEVES/POLICEMEN_CATCH_THIEVES_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { i32*, i32*, i32* }

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_POLICEMEN_CATCH_THIEVES_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldPcii(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::vector", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca i32, align 4
  %7 = bitcast %"class.std::vector"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false) #11
  %8 = bitcast %"class.std::vector"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false) #11
  %9 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #11
  store i32 0, i32* %6, align 4, !tbaa !5
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %4, i64 0, i32 0, i32 0, i32 0, i32 1
  %13 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %4, i64 0, i32 0, i32 0, i32 0, i32 2
  %14 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 0, i32 1
  %15 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 0, i32 2
  br label %35

16:                                               ; preds = %68, %3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #11
  %17 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %4, i64 0, i32 0, i32 0, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8, !tbaa !9
  %19 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %4, i64 0, i32 0, i32 0, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8, !tbaa !12
  %21 = ptrtoint i32* %18 to i64
  %22 = ptrtoint i32* %20 to i64
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 2
  %25 = icmp eq i64 %23, 0
  br i1 %25, label %103, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8, !tbaa !9
  %29 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8, !tbaa !12
  %31 = ptrtoint i32* %28 to i64
  %32 = ptrtoint i32* %30 to i64
  %33 = sub i64 %31, %32
  %34 = ashr exact i64 %33, 2
  br label %72

35:                                               ; preds = %11, %68
  %36 = phi i32 [ 0, %11 ], [ %70, %68 ]
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %0, i64 %37
  %39 = load i8, i8* %38, align 1, !tbaa !13
  switch i8 %39, label %68 [
    i8 80, label %40
    i8 84, label %59
  ]

40:                                               ; preds = %35
  %41 = load i32*, i32** %14, align 8, !tbaa !9
  %42 = load i32*, i32** %15, align 8, !tbaa !14
  %43 = icmp eq i32* %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  invoke void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %5, i32* %41, i32* noundef nonnull align 4 dereferenceable(4) %6)
          to label %68 unwind label %45

45:                                               ; preds = %63, %44
  %46 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #11
  %47 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8, !tbaa !12
  %49 = icmp eq i32* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = bitcast i32* %48 to i8*
  call void @_ZdlPv(i8* noundef nonnull %51) #11
  br label %52

52:                                               ; preds = %45, %50
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #11
  %53 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %4, i64 0, i32 0, i32 0, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8, !tbaa !12
  %55 = icmp eq i32* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = bitcast i32* %54 to i8*
  call void @_ZdlPv(i8* noundef nonnull %57) #11
  br label %58

58:                                               ; preds = %52, %56
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #11
  resume { i8*, i32 } %46

59:                                               ; preds = %35
  %60 = load i32*, i32** %12, align 8, !tbaa !9
  %61 = load i32*, i32** %13, align 8, !tbaa !14
  %62 = icmp eq i32* %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  invoke void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %4, i32* %60, i32* noundef nonnull align 4 dereferenceable(4) %6)
          to label %68 unwind label %45

64:                                               ; preds = %59, %40
  %65 = phi i32* [ %41, %40 ], [ %60, %59 ]
  %66 = phi i32** [ %14, %40 ], [ %12, %59 ]
  store i32 %36, i32* %65, align 4, !tbaa !5
  %67 = getelementptr inbounds i32, i32* %65, i64 1
  store i32* %67, i32** %66, align 8, !tbaa !9
  br label %68

68:                                               ; preds = %64, %63, %44, %35
  %69 = load i32, i32* %6, align 4, !tbaa !5
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4, !tbaa !5
  %71 = icmp slt i32 %70, %1
  br i1 %71, label %35, label %16, !llvm.loop !15

72:                                               ; preds = %26, %97
  %73 = phi i64 [ 0, %26 ], [ %101, %97 ]
  %74 = phi i32 [ 0, %26 ], [ %100, %97 ]
  %75 = phi i32 [ 0, %26 ], [ %99, %97 ]
  %76 = phi i32 [ 0, %26 ], [ %98, %97 ]
  %77 = sext i32 %74 to i64
  %78 = icmp ugt i64 %34, %77
  br i1 %78, label %79, label %103

79:                                               ; preds = %72
  %80 = getelementptr inbounds i32, i32* %20, i64 %73
  %81 = load i32, i32* %80, align 4, !tbaa !5
  %82 = getelementptr inbounds i32, i32* %30, i64 %77
  %83 = load i32, i32* %82, align 4, !tbaa !5
  %84 = sub nsw i32 %81, %83
  %85 = call i32 @llvm.abs.i32(i32 %84, i1 true)
  %86 = icmp sgt i32 %85, %2
  br i1 %86, label %91, label %87

87:                                               ; preds = %79
  %88 = add nsw i32 %76, 1
  %89 = add nsw i32 %75, 1
  %90 = add nsw i32 %74, 1
  br label %97

91:                                               ; preds = %79
  %92 = icmp slt i32 %81, %83
  br i1 %92, label %93, label %95

93:                                               ; preds = %91
  %94 = add nsw i32 %75, 1
  br label %97

95:                                               ; preds = %91
  %96 = add nsw i32 %74, 1
  br label %97

97:                                               ; preds = %93, %95, %87
  %98 = phi i32 [ %88, %87 ], [ %76, %93 ], [ %76, %95 ]
  %99 = phi i32 [ %89, %87 ], [ %94, %93 ], [ %75, %95 ]
  %100 = phi i32 [ %90, %87 ], [ %74, %93 ], [ %96, %95 ]
  %101 = sext i32 %99 to i64
  %102 = icmp ugt i64 %24, %101
  br i1 %102, label %72, label %103, !llvm.loop !18

103:                                              ; preds = %72, %97, %16
  %104 = phi i32 [ 0, %16 ], [ %76, %72 ], [ %98, %97 ]
  %105 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %4, i64 0, i32 0, i32 0, i32 0, i32 0
  %106 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %5, i64 0, i32 0, i32 0, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8, !tbaa !12
  %108 = icmp eq i32* %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %103
  %110 = bitcast i32* %107 to i8*
  call void @_ZdlPv(i8* noundef nonnull %110) #11
  br label %111

111:                                              ; preds = %103, %109
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #11
  %112 = load i32*, i32** %105, align 8, !tbaa !12
  %113 = icmp eq i32* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = bitcast i32* %112 to i8*
  call void @_ZdlPv(i8* noundef nonnull %115) #11
  br label %116

116:                                              ; preds = %111, %114
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #11
  ret i32 %104
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, i32* %1, i32* noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8, !tbaa !9
  %6 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8, !tbaa !12
  %8 = ptrtoint i32* %5 to i64
  %9 = ptrtoint i32* %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 2
  %12 = icmp eq i64 %10, 9223372036854775804
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #12
  unreachable

14:                                               ; preds = %3
  %15 = icmp eq i64 %10, 0
  %16 = select i1 %15, i64 1, i64 %11
  %17 = add nsw i64 %16, %11
  %18 = icmp ult i64 %17, %11
  %19 = icmp ugt i64 %17, 2305843009213693951
  %20 = or i1 %18, %19
  %21 = select i1 %20, i64 2305843009213693951, i64 %17
  %22 = ptrtoint i32* %1 to i64
  %23 = sub i64 %22, %9
  %24 = ashr exact i64 %23, 2
  %25 = icmp eq i64 %21, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %14
  %27 = icmp ugt i64 %21, 2305843009213693951
  br i1 %27, label %28, label %32, !prof !19

28:                                               ; preds = %26
  %29 = icmp ugt i64 %21, 4611686018427387903
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  call void @_ZSt28__throw_bad_array_new_lengthv() #12
  unreachable

31:                                               ; preds = %28
  call void @_ZSt17__throw_bad_allocv() #12
  unreachable

32:                                               ; preds = %26
  %33 = shl i64 %21, 2
  %34 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %33) #13
  %35 = bitcast i8* %34 to i32*
  br label %36

36:                                               ; preds = %14, %32
  %37 = phi i32* [ %35, %32 ], [ null, %14 ]
  %38 = getelementptr inbounds i32, i32* %37, i64 %24
  %39 = load i32, i32* %2, align 4, !tbaa !5
  store i32 %39, i32* %38, align 4, !tbaa !5
  %40 = icmp sgt i64 %23, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = bitcast i32* %37 to i8*
  %43 = bitcast i32* %7 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 %23, i1 false) #11
  br label %44

44:                                               ; preds = %36, %41
  %45 = getelementptr inbounds i32, i32* %38, i64 1
  %46 = sub i64 %8, %22
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = bitcast i32* %45 to i8*
  %50 = bitcast i32* %1 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %49, i8* align 4 %50, i64 %46, i1 false) #11
  br label %51

51:                                               ; preds = %44, %48
  %52 = icmp eq i32* %7, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %51
  %54 = bitcast i32* %7 to i8*
  call void @_ZdlPv(i8* noundef nonnull %54) #11
  br label %55

55:                                               ; preds = %51, %53
  %56 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 2
  %57 = ashr exact i64 %46, 2
  %58 = getelementptr inbounds i32, i32* %45, i64 %57
  store i32* %37, i32** %6, align 8, !tbaa !12
  store i32* %58, i32** %4, align 8, !tbaa !9
  %59 = getelementptr inbounds i32, i32* %37, i64 %21
  store i32* %59, i32** %56, align 8, !tbaa !14
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #8

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_POLICEMEN_CATCH_THIEVES_processed.cpp() #3 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #11
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 8}
!10 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!10, !11, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!10, !11, i64 16}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16, !17}
!19 = !{!"branch_weights", i32 1, i32 2000}
