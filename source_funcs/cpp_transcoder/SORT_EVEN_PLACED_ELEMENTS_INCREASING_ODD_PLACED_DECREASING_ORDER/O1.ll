; ModuleID = 'llvm/cpp_transcoder/SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER/SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER/SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { i32*, i32*, i32* }

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SC_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SC_T0_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_Z6f_goldPii(i32* noundef %0, i32 noundef %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca %"class.std::vector", align 8
  %5 = bitcast %"class.std::vector"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false) #12
  %6 = bitcast %"class.std::vector"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false) #12
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %4, i64 0, i32 0, i32 0, i32 0, i32 1
  %10 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %4, i64 0, i32 0, i32 0, i32 0, i32 2
  %11 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %3, i64 0, i32 0, i32 0, i32 0, i32 1
  %12 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %3, i64 0, i32 0, i32 0, i32 0, i32 2
  %13 = zext i32 %1 to i64
  br label %29

14:                                               ; preds = %51, %2
  %15 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %3, i64 0, i32 0, i32 0, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8, !tbaa !5
  %17 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %3, i64 0, i32 0, i32 0, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8, !tbaa !5
  %19 = icmp eq i32* %16, %18
  br i1 %19, label %54, label %20

20:                                               ; preds = %14
  %21 = ptrtoint i32* %18 to i64
  %22 = ptrtoint i32* %16 to i64
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 2
  %25 = call i64 @llvm.ctlz.i64(i64 %24, i1 true) #12, !range !9
  %26 = shl nuw nsw i64 %25, 1
  %27 = xor i64 %26, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(i32* %16, i32* %18, i64 noundef %27)
          to label %28 unwind label %92

28:                                               ; preds = %20
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(i32* %16, i32* %18)
          to label %54 unwind label %92

29:                                               ; preds = %8, %51
  %30 = phi i64 [ 0, %8 ], [ %52, %51 ]
  %31 = and i64 %30, 1
  %32 = icmp eq i64 %31, 0
  %33 = getelementptr inbounds i32, i32* %0, i64 %30
  br i1 %32, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32*, i32** %11, align 8, !tbaa !10
  %36 = load i32*, i32** %12, align 8, !tbaa !12
  %37 = icmp eq i32* %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  invoke void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %3, i32* %35, i32* noundef nonnull align 4 dereferenceable(4) %33)
          to label %51 unwind label %39

39:                                               ; preds = %45, %38
  %40 = landingpad { i8*, i32 }
          cleanup
  br label %120

41:                                               ; preds = %29
  %42 = load i32*, i32** %9, align 8, !tbaa !10
  %43 = load i32*, i32** %10, align 8, !tbaa !12
  %44 = icmp eq i32* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  invoke void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %4, i32* %42, i32* noundef nonnull align 4 dereferenceable(4) %33)
          to label %51 unwind label %39

46:                                               ; preds = %41, %34
  %47 = phi i32* [ %35, %34 ], [ %42, %41 ]
  %48 = phi i32** [ %11, %34 ], [ %9, %41 ]
  %49 = load i32, i32* %33, align 4, !tbaa !13
  store i32 %49, i32* %47, align 4, !tbaa !13
  %50 = getelementptr inbounds i32, i32* %47, i64 1
  store i32* %50, i32** %48, align 8, !tbaa !10
  br label %51

51:                                               ; preds = %46, %45, %38
  %52 = add nuw nsw i64 %30, 1
  %53 = icmp eq i64 %52, %13
  br i1 %53, label %14, label %29, !llvm.loop !15

54:                                               ; preds = %14, %28
  %55 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %4, i64 0, i32 0, i32 0, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8, !tbaa !5
  %57 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %4, i64 0, i32 0, i32 0, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8, !tbaa !5
  %59 = icmp eq i32* %56, %58
  br i1 %59, label %69, label %60

60:                                               ; preds = %54
  %61 = ptrtoint i32* %58 to i64
  %62 = ptrtoint i32* %56 to i64
  %63 = sub i64 %61, %62
  %64 = ashr exact i64 %63, 2
  %65 = call i64 @llvm.ctlz.i64(i64 %64, i1 true) #12, !range !9
  %66 = shl nuw nsw i64 %65, 1
  %67 = xor i64 %66, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SC_T0_T1_(i32* %56, i32* %58, i64 noundef %67)
          to label %68 unwind label %92

68:                                               ; preds = %60
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SC_T0_(i32* %56, i32* %58)
          to label %69 unwind label %92

69:                                               ; preds = %68, %54
  %70 = load i32*, i32** %17, align 8, !tbaa !10
  %71 = load i32*, i32** %15, align 8, !tbaa !18
  %72 = ptrtoint i32* %70 to i64
  %73 = ptrtoint i32* %71 to i64
  %74 = sub i64 %72, %73
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %69
  %77 = ashr i64 %74, 2
  %78 = call i64 @llvm.umax.i64(i64 %77, i64 1)
  br label %94

79:                                               ; preds = %94
  %80 = and i64 %98, 4294967295
  br label %81

81:                                               ; preds = %79, %69
  %82 = phi i64 [ 0, %69 ], [ %80, %79 ]
  %83 = load i32*, i32** %57, align 8, !tbaa !10
  %84 = load i32*, i32** %55, align 8, !tbaa !18
  %85 = ptrtoint i32* %83 to i64
  %86 = ptrtoint i32* %84 to i64
  %87 = sub i64 %85, %86
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %81
  %90 = ashr i64 %87, 2
  %91 = call i64 @llvm.umax.i64(i64 %90, i64 1)
  br label %111

92:                                               ; preds = %68, %60, %28, %20
  %93 = landingpad { i8*, i32 }
          cleanup
  br label %120

94:                                               ; preds = %76, %94
  %95 = phi i64 [ 0, %76 ], [ %98, %94 ]
  %96 = getelementptr inbounds i32, i32* %71, i64 %95
  %97 = load i32, i32* %96, align 4, !tbaa !13
  %98 = add nuw nsw i64 %95, 1
  %99 = getelementptr inbounds i32, i32* %0, i64 %95
  store i32 %97, i32* %99, align 4, !tbaa !13
  %100 = icmp eq i64 %98, %78
  br i1 %100, label %79, label %94, !llvm.loop !19

101:                                              ; preds = %111, %81
  %102 = icmp eq i32* %84, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %101
  %104 = bitcast i32* %84 to i8*
  call void @_ZdlPv(i8* noundef nonnull %104) #12
  br label %105

105:                                              ; preds = %101, %103
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12
  %106 = load i32*, i32** %15, align 8, !tbaa !18
  %107 = icmp eq i32* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = bitcast i32* %106 to i8*
  call void @_ZdlPv(i8* noundef nonnull %109) #12
  br label %110

110:                                              ; preds = %105, %108
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #12
  ret void

111:                                              ; preds = %89, %111
  %112 = phi i64 [ %82, %89 ], [ %116, %111 ]
  %113 = phi i64 [ 0, %89 ], [ %118, %111 ]
  %114 = getelementptr inbounds i32, i32* %84, i64 %113
  %115 = load i32, i32* %114, align 4, !tbaa !13
  %116 = add nuw i64 %112, 1
  %117 = getelementptr inbounds i32, i32* %0, i64 %112
  store i32 %115, i32* %117, align 4, !tbaa !13
  %118 = add nuw nsw i64 %113, 1
  %119 = icmp eq i64 %118, %91
  br i1 %119, label %101, label %111, !llvm.loop !20

120:                                              ; preds = %92, %39
  %121 = phi { i8*, i32 } [ %40, %39 ], [ %93, %92 ]
  %122 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %4, i64 0, i32 0, i32 0, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8, !tbaa !18
  %124 = icmp eq i32* %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %120
  %126 = bitcast i32* %123 to i8*
  call void @_ZdlPv(i8* noundef nonnull %126) #12
  br label %127

127:                                              ; preds = %120, %125
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12
  %128 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %3, i64 0, i32 0, i32 0, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8, !tbaa !18
  %130 = icmp eq i32* %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %127
  %132 = bitcast i32* %129 to i8*
  call void @_ZdlPv(i8* noundef nonnull %132) #12
  br label %133

133:                                              ; preds = %127, %131
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #12
  resume { i8*, i32 } %121
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
  %5 = load i32*, i32** %4, align 8, !tbaa !10
  %6 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8, !tbaa !18
  %8 = ptrtoint i32* %5 to i64
  %9 = ptrtoint i32* %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 2
  %12 = icmp eq i64 %10, 9223372036854775804
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #13
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
  br i1 %27, label %28, label %32, !prof !21

28:                                               ; preds = %26
  %29 = icmp ugt i64 %21, 4611686018427387903
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  call void @_ZSt28__throw_bad_array_new_lengthv() #13
  unreachable

31:                                               ; preds = %28
  call void @_ZSt17__throw_bad_allocv() #13
  unreachable

32:                                               ; preds = %26
  %33 = shl i64 %21, 2
  %34 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %33) #14
  %35 = bitcast i8* %34 to i32*
  br label %36

36:                                               ; preds = %14, %32
  %37 = phi i32* [ %35, %32 ], [ null, %14 ]
  %38 = getelementptr inbounds i32, i32* %37, i64 %24
  %39 = load i32, i32* %2, align 4, !tbaa !13
  store i32 %39, i32* %38, align 4, !tbaa !13
  %40 = icmp sgt i64 %23, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = bitcast i32* %37 to i8*
  %43 = bitcast i32* %7 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 %23, i1 false) #12
  br label %44

44:                                               ; preds = %36, %41
  %45 = getelementptr inbounds i32, i32* %38, i64 1
  %46 = sub i64 %8, %22
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = bitcast i32* %45 to i8*
  %50 = bitcast i32* %1 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %49, i8* align 4 %50, i64 %46, i1 false) #12
  br label %51

51:                                               ; preds = %44, %48
  %52 = icmp eq i32* %7, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %51
  %54 = bitcast i32* %7 to i8*
  call void @_ZdlPv(i8* noundef nonnull %54) #12
  br label %55

55:                                               ; preds = %51, %53
  %56 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 2
  %57 = ashr exact i64 %46, 2
  %58 = getelementptr inbounds i32, i32* %45, i64 %57
  store i32* %37, i32** %6, align 8, !tbaa !18
  store i32* %58, i32** %4, align 8, !tbaa !10
  %59 = getelementptr inbounds i32, i32* %37, i64 %21
  store i32* %59, i32** %56, align 8, !tbaa !12
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
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(i32* %0, i32* %1, i64 noundef %2) local_unnamed_addr #3 comdat {
  %4 = ptrtoint i32* %0 to i64
  %5 = ptrtoint i32* %1 to i64
  %6 = sub i64 %5, %4
  %7 = icmp sgt i64 %6, 64
  br i1 %7, label %8, label %183

8:                                                ; preds = %3
  %9 = getelementptr inbounds i32, i32* %0, i64 1
  br label %10

10:                                               ; preds = %8, %179
  %11 = phi i64 [ %6, %8 ], [ %181, %179 ]
  %12 = phi i64 [ %2, %8 ], [ %135, %179 ]
  %13 = phi i32* [ %1, %8 ], [ %167, %179 ]
  %14 = ashr exact i64 %11, 2
  %15 = icmp eq i64 %12, 0
  br i1 %15, label %16, label %134

16:                                               ; preds = %10
  %17 = ptrtoint i32* %0 to i64
  %18 = icmp slt i64 %11, 8
  br i1 %18, label %75, label %19

19:                                               ; preds = %16
  %20 = add nsw i64 %14, -2
  %21 = sdiv i64 %20, 2
  %22 = add nsw i64 %14, -1
  %23 = sdiv i64 %22, 2
  %24 = and i64 %11, 4
  %25 = icmp eq i64 %24, 0
  br label %26

26:                                               ; preds = %69, %19
  %27 = phi i64 [ %21, %19 ], [ %74, %69 ]
  %28 = getelementptr inbounds i32, i32* %0, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !13
  %30 = icmp sgt i64 %23, %27
  br i1 %30, label %31, label %46

31:                                               ; preds = %26, %31
  %32 = phi i64 [ %41, %31 ], [ %27, %26 ]
  %33 = shl i64 %32, 1
  %34 = add i64 %33, 2
  %35 = getelementptr inbounds i32, i32* %0, i64 %34
  %36 = or i64 %33, 1
  %37 = getelementptr inbounds i32, i32* %0, i64 %36
  %38 = load i32, i32* %35, align 4, !tbaa !13
  %39 = load i32, i32* %37, align 4, !tbaa !13
  %40 = icmp slt i32 %38, %39
  %41 = select i1 %40, i64 %36, i64 %34
  %42 = getelementptr inbounds i32, i32* %0, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !13
  %44 = getelementptr inbounds i32, i32* %0, i64 %32
  store i32 %43, i32* %44, align 4, !tbaa !13
  %45 = icmp slt i64 %41, %23
  br i1 %45, label %31, label %46, !llvm.loop !22

46:                                               ; preds = %31, %26
  %47 = phi i64 [ %27, %26 ], [ %41, %31 ]
  %48 = icmp eq i64 %47, %21
  %49 = select i1 %25, i1 %48, i1 false
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = shl i64 %47, 1
  %52 = or i64 %51, 1
  %53 = getelementptr inbounds i32, i32* %0, i64 %52
  %54 = load i32, i32* %53, align 4, !tbaa !13
  %55 = getelementptr inbounds i32, i32* %0, i64 %47
  store i32 %54, i32* %55, align 4, !tbaa !13
  br label %56

56:                                               ; preds = %50, %46
  %57 = phi i64 [ %52, %50 ], [ %47, %46 ]
  %58 = icmp sgt i64 %57, %27
  br i1 %58, label %59, label %69

59:                                               ; preds = %56, %66
  %60 = phi i64 [ %62, %66 ], [ %57, %56 ]
  %61 = add nsw i64 %60, -1
  %62 = sdiv i64 %61, 2
  %63 = getelementptr inbounds i32, i32* %0, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !13
  %65 = icmp slt i32 %64, %29
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = getelementptr inbounds i32, i32* %0, i64 %60
  store i32 %64, i32* %67, align 4, !tbaa !13
  %68 = icmp sgt i64 %62, %27
  br i1 %68, label %59, label %69, !llvm.loop !23

69:                                               ; preds = %66, %59, %56
  %70 = phi i64 [ %57, %56 ], [ %60, %59 ], [ %62, %66 ]
  %71 = getelementptr inbounds i32, i32* %0, i64 %70
  store i32 %29, i32* %71, align 4, !tbaa !13
  %72 = icmp eq i64 %27, 0
  %73 = add nsw i64 %27, -1
  %74 = select i1 %72, i64 0, i64 %73
  br i1 %72, label %75, label %26, !llvm.loop !24

75:                                               ; preds = %69, %16
  %76 = icmp sgt i64 %11, 4
  br i1 %76, label %77, label %183

77:                                               ; preds = %75, %130
  %78 = phi i32* [ %79, %130 ], [ %13, %75 ]
  %79 = getelementptr inbounds i32, i32* %78, i64 -1
  %80 = load i32, i32* %79, align 4, !tbaa !13
  %81 = load i32, i32* %0, align 4, !tbaa !13
  store i32 %81, i32* %79, align 4, !tbaa !13
  %82 = ptrtoint i32* %79 to i64
  %83 = sub i64 %82, %17
  %84 = ashr exact i64 %83, 2
  %85 = add nsw i64 %84, -1
  %86 = sdiv i64 %85, 2
  %87 = icmp sgt i64 %83, 8
  br i1 %87, label %88, label %103

88:                                               ; preds = %77, %88
  %89 = phi i64 [ %98, %88 ], [ 0, %77 ]
  %90 = shl i64 %89, 1
  %91 = add i64 %90, 2
  %92 = getelementptr inbounds i32, i32* %0, i64 %91
  %93 = or i64 %90, 1
  %94 = getelementptr inbounds i32, i32* %0, i64 %93
  %95 = load i32, i32* %92, align 4, !tbaa !13
  %96 = load i32, i32* %94, align 4, !tbaa !13
  %97 = icmp slt i32 %95, %96
  %98 = select i1 %97, i64 %93, i64 %91
  %99 = getelementptr inbounds i32, i32* %0, i64 %98
  %100 = load i32, i32* %99, align 4, !tbaa !13
  %101 = getelementptr inbounds i32, i32* %0, i64 %89
  store i32 %100, i32* %101, align 4, !tbaa !13
  %102 = icmp slt i64 %98, %86
  br i1 %102, label %88, label %103, !llvm.loop !22

103:                                              ; preds = %88, %77
  %104 = phi i64 [ 0, %77 ], [ %98, %88 ]
  %105 = and i64 %83, 4
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = add nsw i64 %84, -2
  %109 = sdiv i64 %108, 2
  %110 = icmp eq i64 %104, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = shl i64 %104, 1
  %113 = or i64 %112, 1
  %114 = getelementptr inbounds i32, i32* %0, i64 %113
  %115 = load i32, i32* %114, align 4, !tbaa !13
  %116 = getelementptr inbounds i32, i32* %0, i64 %104
  store i32 %115, i32* %116, align 4, !tbaa !13
  br label %117

117:                                              ; preds = %111, %107, %103
  %118 = phi i64 [ %113, %111 ], [ %104, %107 ], [ %104, %103 ]
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117, %127
  %121 = phi i64 [ %123, %127 ], [ %118, %117 ]
  %122 = add nsw i64 %121, -1
  %123 = sdiv i64 %122, 2
  %124 = getelementptr inbounds i32, i32* %0, i64 %123
  %125 = load i32, i32* %124, align 4, !tbaa !13
  %126 = icmp slt i32 %125, %80
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = getelementptr inbounds i32, i32* %0, i64 %121
  store i32 %125, i32* %128, align 4, !tbaa !13
  %129 = icmp sgt i64 %121, 2
  br i1 %129, label %120, label %130, !llvm.loop !23

130:                                              ; preds = %127, %120, %117
  %131 = phi i64 [ %118, %117 ], [ %121, %120 ], [ %123, %127 ]
  %132 = getelementptr inbounds i32, i32* %0, i64 %131
  store i32 %80, i32* %132, align 4, !tbaa !13
  %133 = icmp sgt i64 %83, 4
  br i1 %133, label %77, label %183, !llvm.loop !25

134:                                              ; preds = %10
  %135 = add nsw i64 %12, -1
  %136 = sdiv i64 %14, 2
  %137 = getelementptr inbounds i32, i32* %0, i64 %136
  %138 = getelementptr inbounds i32, i32* %13, i64 -1
  %139 = load i32, i32* %9, align 4, !tbaa !13
  %140 = load i32, i32* %137, align 4, !tbaa !13
  %141 = icmp slt i32 %139, %140
  %142 = load i32, i32* %138, align 4, !tbaa !13
  br i1 %141, label %143, label %152

143:                                              ; preds = %134
  %144 = icmp slt i32 %140, %142
  br i1 %144, label %145, label %147

145:                                              ; preds = %143
  %146 = load i32, i32* %0, align 4, !tbaa !13
  store i32 %140, i32* %0, align 4, !tbaa !13
  store i32 %146, i32* %137, align 4, !tbaa !13
  br label %161

147:                                              ; preds = %143
  %148 = icmp slt i32 %139, %142
  %149 = load i32, i32* %0, align 4, !tbaa !13
  br i1 %148, label %150, label %151

150:                                              ; preds = %147
  store i32 %142, i32* %0, align 4, !tbaa !13
  store i32 %149, i32* %138, align 4, !tbaa !13
  br label %161

151:                                              ; preds = %147
  store i32 %139, i32* %0, align 4, !tbaa !13
  store i32 %149, i32* %9, align 4, !tbaa !13
  br label %161

152:                                              ; preds = %134
  %153 = icmp slt i32 %139, %142
  br i1 %153, label %154, label %156

154:                                              ; preds = %152
  %155 = load i32, i32* %0, align 4, !tbaa !13
  store i32 %139, i32* %0, align 4, !tbaa !13
  store i32 %155, i32* %9, align 4, !tbaa !13
  br label %161

156:                                              ; preds = %152
  %157 = icmp slt i32 %140, %142
  %158 = load i32, i32* %0, align 4, !tbaa !13
  br i1 %157, label %159, label %160

159:                                              ; preds = %156
  store i32 %142, i32* %0, align 4, !tbaa !13
  store i32 %158, i32* %138, align 4, !tbaa !13
  br label %161

160:                                              ; preds = %156
  store i32 %140, i32* %0, align 4, !tbaa !13
  store i32 %158, i32* %137, align 4, !tbaa !13
  br label %161

161:                                              ; preds = %160, %159, %154, %151, %150, %145
  br label %162

162:                                              ; preds = %161, %178
  %163 = phi i32* [ %170, %178 ], [ %9, %161 ]
  %164 = phi i32* [ %173, %178 ], [ %13, %161 ]
  %165 = load i32, i32* %0, align 4, !tbaa !13
  br label %166

166:                                              ; preds = %166, %162
  %167 = phi i32* [ %163, %162 ], [ %170, %166 ]
  %168 = load i32, i32* %167, align 4, !tbaa !13
  %169 = icmp slt i32 %168, %165
  %170 = getelementptr inbounds i32, i32* %167, i64 1
  br i1 %169, label %166, label %171, !llvm.loop !26

171:                                              ; preds = %166, %171
  %172 = phi i32* [ %173, %171 ], [ %164, %166 ]
  %173 = getelementptr inbounds i32, i32* %172, i64 -1
  %174 = load i32, i32* %173, align 4, !tbaa !13
  %175 = icmp slt i32 %165, %174
  br i1 %175, label %171, label %176, !llvm.loop !27

176:                                              ; preds = %171
  %177 = icmp ult i32* %167, %173
  br i1 %177, label %178, label %179

178:                                              ; preds = %176
  store i32 %174, i32* %167, align 4, !tbaa !13
  store i32 %168, i32* %173, align 4, !tbaa !13
  br label %162, !llvm.loop !28

179:                                              ; preds = %176
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(i32* nonnull %167, i32* %13, i64 noundef %135)
  %180 = ptrtoint i32* %167 to i64
  %181 = sub i64 %180, %4
  %182 = icmp sgt i64 %181, 64
  br i1 %182, label %10, label %183, !llvm.loop !29

183:                                              ; preds = %179, %130, %3, %75
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(i32* %0, i32* %1) local_unnamed_addr #3 comdat {
  %3 = ptrtoint i32* %1 to i64
  %4 = ptrtoint i32* %0 to i64
  %5 = sub i64 %3, %4
  %6 = icmp sgt i64 %5, 64
  br i1 %6, label %7, label %54

7:                                                ; preds = %2
  %8 = bitcast i32* %0 to i8*
  %9 = getelementptr i32, i32* %0, i64 1
  %10 = bitcast i32* %9 to i8*
  br label %11

11:                                               ; preds = %30, %7
  %12 = phi i64 [ 1, %7 ], [ %32, %30 ]
  %13 = phi i32* [ %0, %7 ], [ %14, %30 ]
  %14 = getelementptr inbounds i32, i32* %0, i64 %12
  %15 = load i32, i32* %14, align 4, !tbaa !13
  %16 = load i32, i32* %0, align 4, !tbaa !13
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = shl nsw i64 %12, 2
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %10, i8* nonnull align 4 %8, i64 %19, i1 false) #12
  br label %30

20:                                               ; preds = %11
  %21 = load i32, i32* %13, align 4, !tbaa !13
  %22 = icmp slt i32 %15, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %20, %23
  %24 = phi i32 [ %28, %23 ], [ %21, %20 ]
  %25 = phi i32* [ %27, %23 ], [ %13, %20 ]
  %26 = phi i32* [ %25, %23 ], [ %14, %20 ]
  store i32 %24, i32* %26, align 4, !tbaa !13
  %27 = getelementptr inbounds i32, i32* %25, i64 -1
  %28 = load i32, i32* %27, align 4, !tbaa !13
  %29 = icmp slt i32 %15, %28
  br i1 %29, label %23, label %30, !llvm.loop !30

30:                                               ; preds = %23, %20, %18
  %31 = phi i32* [ %0, %18 ], [ %14, %20 ], [ %25, %23 ]
  store i32 %15, i32* %31, align 4, !tbaa !13
  %32 = add nuw nsw i64 %12, 1
  %33 = icmp eq i64 %32, 16
  br i1 %33, label %34, label %11, !llvm.loop !31

34:                                               ; preds = %30
  %35 = getelementptr inbounds i32, i32* %0, i64 16
  %36 = icmp eq i32* %35, %1
  br i1 %36, label %91, label %37

37:                                               ; preds = %34, %50
  %38 = phi i32* [ %52, %50 ], [ %35, %34 ]
  %39 = load i32, i32* %38, align 4, !tbaa !13
  %40 = getelementptr inbounds i32, i32* %38, i64 -1
  %41 = load i32, i32* %40, align 4, !tbaa !13
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37, %43
  %44 = phi i32 [ %48, %43 ], [ %41, %37 ]
  %45 = phi i32* [ %47, %43 ], [ %40, %37 ]
  %46 = phi i32* [ %45, %43 ], [ %38, %37 ]
  store i32 %44, i32* %46, align 4, !tbaa !13
  %47 = getelementptr inbounds i32, i32* %45, i64 -1
  %48 = load i32, i32* %47, align 4, !tbaa !13
  %49 = icmp slt i32 %39, %48
  br i1 %49, label %43, label %50, !llvm.loop !30

50:                                               ; preds = %43, %37
  %51 = phi i32* [ %38, %37 ], [ %45, %43 ]
  store i32 %39, i32* %51, align 4, !tbaa !13
  %52 = getelementptr inbounds i32, i32* %38, i64 1
  %53 = icmp eq i32* %52, %1
  br i1 %53, label %91, label %37, !llvm.loop !32

54:                                               ; preds = %2
  %55 = icmp eq i32* %0, %1
  br i1 %55, label %91, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds i32, i32* %0, i64 1
  %58 = icmp eq i32* %57, %1
  br i1 %58, label %91, label %59

59:                                               ; preds = %56
  %60 = bitcast i32* %0 to i8*
  br label %61

61:                                               ; preds = %87, %59
  %62 = phi i32* [ %57, %59 ], [ %89, %87 ]
  %63 = phi i32* [ %0, %59 ], [ %62, %87 ]
  %64 = load i32, i32* %62, align 4, !tbaa !13
  %65 = load i32, i32* %0, align 4, !tbaa !13
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = ptrtoint i32* %62 to i64
  %69 = sub i64 %68, %4
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %67
  %72 = ashr exact i64 %69, 2
  %73 = getelementptr inbounds i32, i32* %63, i64 2
  %74 = sub nsw i64 0, %72
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = bitcast i32* %75 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %76, i8* nonnull align 4 %60, i64 %69, i1 false) #12
  br label %87

77:                                               ; preds = %61
  %78 = load i32, i32* %63, align 4, !tbaa !13
  %79 = icmp slt i32 %64, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %77, %80
  %81 = phi i32 [ %85, %80 ], [ %78, %77 ]
  %82 = phi i32* [ %84, %80 ], [ %63, %77 ]
  %83 = phi i32* [ %82, %80 ], [ %62, %77 ]
  store i32 %81, i32* %83, align 4, !tbaa !13
  %84 = getelementptr inbounds i32, i32* %82, i64 -1
  %85 = load i32, i32* %84, align 4, !tbaa !13
  %86 = icmp slt i32 %64, %85
  br i1 %86, label %80, label %87, !llvm.loop !30

87:                                               ; preds = %80, %77, %67, %71
  %88 = phi i32* [ %0, %71 ], [ %0, %67 ], [ %62, %77 ], [ %82, %80 ]
  store i32 %64, i32* %88, align 4, !tbaa !13
  %89 = getelementptr inbounds i32, i32* %62, i64 1
  %90 = icmp eq i32* %89, %1
  br i1 %90, label %91, label %61, !llvm.loop !31

91:                                               ; preds = %87, %50, %56, %54, %34
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SC_T0_T1_(i32* %0, i32* %1, i64 noundef %2) local_unnamed_addr #3 comdat {
  %4 = ptrtoint i32* %0 to i64
  %5 = ptrtoint i32* %1 to i64
  %6 = sub i64 %5, %4
  %7 = icmp sgt i64 %6, 64
  br i1 %7, label %8, label %183

8:                                                ; preds = %3
  %9 = getelementptr inbounds i32, i32* %0, i64 1
  br label %10

10:                                               ; preds = %8, %179
  %11 = phi i64 [ %6, %8 ], [ %181, %179 ]
  %12 = phi i64 [ %2, %8 ], [ %135, %179 ]
  %13 = phi i32* [ %1, %8 ], [ %167, %179 ]
  %14 = ashr exact i64 %11, 2
  %15 = icmp eq i64 %12, 0
  br i1 %15, label %16, label %134

16:                                               ; preds = %10
  %17 = ptrtoint i32* %0 to i64
  %18 = icmp slt i64 %11, 8
  br i1 %18, label %75, label %19

19:                                               ; preds = %16
  %20 = add nsw i64 %14, -2
  %21 = sdiv i64 %20, 2
  %22 = add nsw i64 %14, -1
  %23 = sdiv i64 %22, 2
  %24 = and i64 %11, 4
  %25 = icmp eq i64 %24, 0
  br label %26

26:                                               ; preds = %69, %19
  %27 = phi i64 [ %21, %19 ], [ %74, %69 ]
  %28 = getelementptr inbounds i32, i32* %0, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !13
  %30 = icmp sgt i64 %23, %27
  br i1 %30, label %31, label %46

31:                                               ; preds = %26, %31
  %32 = phi i64 [ %41, %31 ], [ %27, %26 ]
  %33 = shl i64 %32, 1
  %34 = add i64 %33, 2
  %35 = getelementptr inbounds i32, i32* %0, i64 %34
  %36 = or i64 %33, 1
  %37 = getelementptr inbounds i32, i32* %0, i64 %36
  %38 = load i32, i32* %35, align 4, !tbaa !13
  %39 = load i32, i32* %37, align 4, !tbaa !13
  %40 = icmp sgt i32 %38, %39
  %41 = select i1 %40, i64 %36, i64 %34
  %42 = getelementptr inbounds i32, i32* %0, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !13
  %44 = getelementptr inbounds i32, i32* %0, i64 %32
  store i32 %43, i32* %44, align 4, !tbaa !13
  %45 = icmp slt i64 %41, %23
  br i1 %45, label %31, label %46, !llvm.loop !33

46:                                               ; preds = %31, %26
  %47 = phi i64 [ %27, %26 ], [ %41, %31 ]
  %48 = icmp eq i64 %47, %21
  %49 = select i1 %25, i1 %48, i1 false
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = shl i64 %47, 1
  %52 = or i64 %51, 1
  %53 = getelementptr inbounds i32, i32* %0, i64 %52
  %54 = load i32, i32* %53, align 4, !tbaa !13
  %55 = getelementptr inbounds i32, i32* %0, i64 %47
  store i32 %54, i32* %55, align 4, !tbaa !13
  br label %56

56:                                               ; preds = %50, %46
  %57 = phi i64 [ %52, %50 ], [ %47, %46 ]
  %58 = icmp sgt i64 %57, %27
  br i1 %58, label %59, label %69

59:                                               ; preds = %56, %66
  %60 = phi i64 [ %62, %66 ], [ %57, %56 ]
  %61 = add nsw i64 %60, -1
  %62 = sdiv i64 %61, 2
  %63 = getelementptr inbounds i32, i32* %0, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !13
  %65 = icmp sgt i32 %64, %29
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = getelementptr inbounds i32, i32* %0, i64 %60
  store i32 %64, i32* %67, align 4, !tbaa !13
  %68 = icmp sgt i64 %62, %27
  br i1 %68, label %59, label %69, !llvm.loop !34

69:                                               ; preds = %66, %59, %56
  %70 = phi i64 [ %57, %56 ], [ %60, %59 ], [ %62, %66 ]
  %71 = getelementptr inbounds i32, i32* %0, i64 %70
  store i32 %29, i32* %71, align 4, !tbaa !13
  %72 = icmp eq i64 %27, 0
  %73 = add nsw i64 %27, -1
  %74 = select i1 %72, i64 0, i64 %73
  br i1 %72, label %75, label %26, !llvm.loop !35

75:                                               ; preds = %69, %16
  %76 = icmp sgt i64 %11, 4
  br i1 %76, label %77, label %183

77:                                               ; preds = %75, %130
  %78 = phi i32* [ %79, %130 ], [ %13, %75 ]
  %79 = getelementptr inbounds i32, i32* %78, i64 -1
  %80 = load i32, i32* %79, align 4, !tbaa !13
  %81 = load i32, i32* %0, align 4, !tbaa !13
  store i32 %81, i32* %79, align 4, !tbaa !13
  %82 = ptrtoint i32* %79 to i64
  %83 = sub i64 %82, %17
  %84 = ashr exact i64 %83, 2
  %85 = add nsw i64 %84, -1
  %86 = sdiv i64 %85, 2
  %87 = icmp sgt i64 %83, 8
  br i1 %87, label %88, label %103

88:                                               ; preds = %77, %88
  %89 = phi i64 [ %98, %88 ], [ 0, %77 ]
  %90 = shl i64 %89, 1
  %91 = add i64 %90, 2
  %92 = getelementptr inbounds i32, i32* %0, i64 %91
  %93 = or i64 %90, 1
  %94 = getelementptr inbounds i32, i32* %0, i64 %93
  %95 = load i32, i32* %92, align 4, !tbaa !13
  %96 = load i32, i32* %94, align 4, !tbaa !13
  %97 = icmp sgt i32 %95, %96
  %98 = select i1 %97, i64 %93, i64 %91
  %99 = getelementptr inbounds i32, i32* %0, i64 %98
  %100 = load i32, i32* %99, align 4, !tbaa !13
  %101 = getelementptr inbounds i32, i32* %0, i64 %89
  store i32 %100, i32* %101, align 4, !tbaa !13
  %102 = icmp slt i64 %98, %86
  br i1 %102, label %88, label %103, !llvm.loop !33

103:                                              ; preds = %88, %77
  %104 = phi i64 [ 0, %77 ], [ %98, %88 ]
  %105 = and i64 %83, 4
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = add nsw i64 %84, -2
  %109 = sdiv i64 %108, 2
  %110 = icmp eq i64 %104, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = shl i64 %104, 1
  %113 = or i64 %112, 1
  %114 = getelementptr inbounds i32, i32* %0, i64 %113
  %115 = load i32, i32* %114, align 4, !tbaa !13
  %116 = getelementptr inbounds i32, i32* %0, i64 %104
  store i32 %115, i32* %116, align 4, !tbaa !13
  br label %117

117:                                              ; preds = %111, %107, %103
  %118 = phi i64 [ %113, %111 ], [ %104, %107 ], [ %104, %103 ]
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117, %127
  %121 = phi i64 [ %123, %127 ], [ %118, %117 ]
  %122 = add nsw i64 %121, -1
  %123 = sdiv i64 %122, 2
  %124 = getelementptr inbounds i32, i32* %0, i64 %123
  %125 = load i32, i32* %124, align 4, !tbaa !13
  %126 = icmp sgt i32 %125, %80
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = getelementptr inbounds i32, i32* %0, i64 %121
  store i32 %125, i32* %128, align 4, !tbaa !13
  %129 = icmp sgt i64 %121, 2
  br i1 %129, label %120, label %130, !llvm.loop !34

130:                                              ; preds = %127, %120, %117
  %131 = phi i64 [ %118, %117 ], [ %121, %120 ], [ %123, %127 ]
  %132 = getelementptr inbounds i32, i32* %0, i64 %131
  store i32 %80, i32* %132, align 4, !tbaa !13
  %133 = icmp sgt i64 %83, 4
  br i1 %133, label %77, label %183, !llvm.loop !36

134:                                              ; preds = %10
  %135 = add nsw i64 %12, -1
  %136 = sdiv i64 %14, 2
  %137 = getelementptr inbounds i32, i32* %0, i64 %136
  %138 = getelementptr inbounds i32, i32* %13, i64 -1
  %139 = load i32, i32* %9, align 4, !tbaa !13
  %140 = load i32, i32* %137, align 4, !tbaa !13
  %141 = icmp sgt i32 %139, %140
  %142 = load i32, i32* %138, align 4, !tbaa !13
  br i1 %141, label %143, label %152

143:                                              ; preds = %134
  %144 = icmp sgt i32 %140, %142
  br i1 %144, label %145, label %147

145:                                              ; preds = %143
  %146 = load i32, i32* %0, align 4, !tbaa !13
  store i32 %140, i32* %0, align 4, !tbaa !13
  store i32 %146, i32* %137, align 4, !tbaa !13
  br label %161

147:                                              ; preds = %143
  %148 = icmp sgt i32 %139, %142
  %149 = load i32, i32* %0, align 4, !tbaa !13
  br i1 %148, label %150, label %151

150:                                              ; preds = %147
  store i32 %142, i32* %0, align 4, !tbaa !13
  store i32 %149, i32* %138, align 4, !tbaa !13
  br label %161

151:                                              ; preds = %147
  store i32 %139, i32* %0, align 4, !tbaa !13
  store i32 %149, i32* %9, align 4, !tbaa !13
  br label %161

152:                                              ; preds = %134
  %153 = icmp sgt i32 %139, %142
  br i1 %153, label %154, label %156

154:                                              ; preds = %152
  %155 = load i32, i32* %0, align 4, !tbaa !13
  store i32 %139, i32* %0, align 4, !tbaa !13
  store i32 %155, i32* %9, align 4, !tbaa !13
  br label %161

156:                                              ; preds = %152
  %157 = icmp sgt i32 %140, %142
  %158 = load i32, i32* %0, align 4, !tbaa !13
  br i1 %157, label %159, label %160

159:                                              ; preds = %156
  store i32 %142, i32* %0, align 4, !tbaa !13
  store i32 %158, i32* %138, align 4, !tbaa !13
  br label %161

160:                                              ; preds = %156
  store i32 %140, i32* %0, align 4, !tbaa !13
  store i32 %158, i32* %137, align 4, !tbaa !13
  br label %161

161:                                              ; preds = %160, %159, %154, %151, %150, %145
  br label %162

162:                                              ; preds = %161, %178
  %163 = phi i32* [ %170, %178 ], [ %9, %161 ]
  %164 = phi i32* [ %173, %178 ], [ %13, %161 ]
  %165 = load i32, i32* %0, align 4, !tbaa !13
  br label %166

166:                                              ; preds = %166, %162
  %167 = phi i32* [ %163, %162 ], [ %170, %166 ]
  %168 = load i32, i32* %167, align 4, !tbaa !13
  %169 = icmp sgt i32 %168, %165
  %170 = getelementptr inbounds i32, i32* %167, i64 1
  br i1 %169, label %166, label %171, !llvm.loop !37

171:                                              ; preds = %166, %171
  %172 = phi i32* [ %173, %171 ], [ %164, %166 ]
  %173 = getelementptr inbounds i32, i32* %172, i64 -1
  %174 = load i32, i32* %173, align 4, !tbaa !13
  %175 = icmp sgt i32 %165, %174
  br i1 %175, label %171, label %176, !llvm.loop !38

176:                                              ; preds = %171
  %177 = icmp ult i32* %167, %173
  br i1 %177, label %178, label %179

178:                                              ; preds = %176
  store i32 %174, i32* %167, align 4, !tbaa !13
  store i32 %168, i32* %173, align 4, !tbaa !13
  br label %162, !llvm.loop !39

179:                                              ; preds = %176
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SC_T0_T1_(i32* nonnull %167, i32* %13, i64 noundef %135)
  %180 = ptrtoint i32* %167 to i64
  %181 = sub i64 %180, %4
  %182 = icmp sgt i64 %181, 64
  br i1 %182, label %10, label %183, !llvm.loop !40

183:                                              ; preds = %179, %130, %3, %75
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_SC_T0_(i32* %0, i32* %1) local_unnamed_addr #3 comdat {
  %3 = ptrtoint i32* %1 to i64
  %4 = ptrtoint i32* %0 to i64
  %5 = sub i64 %3, %4
  %6 = icmp sgt i64 %5, 64
  br i1 %6, label %7, label %54

7:                                                ; preds = %2
  %8 = bitcast i32* %0 to i8*
  %9 = getelementptr i32, i32* %0, i64 1
  %10 = bitcast i32* %9 to i8*
  br label %11

11:                                               ; preds = %30, %7
  %12 = phi i64 [ 1, %7 ], [ %32, %30 ]
  %13 = phi i32* [ %0, %7 ], [ %14, %30 ]
  %14 = getelementptr inbounds i32, i32* %0, i64 %12
  %15 = load i32, i32* %14, align 4, !tbaa !13
  %16 = load i32, i32* %0, align 4, !tbaa !13
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = shl nsw i64 %12, 2
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %10, i8* nonnull align 4 %8, i64 %19, i1 false) #12
  br label %30

20:                                               ; preds = %11
  %21 = load i32, i32* %13, align 4, !tbaa !13
  %22 = icmp sgt i32 %15, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %20, %23
  %24 = phi i32 [ %28, %23 ], [ %21, %20 ]
  %25 = phi i32* [ %27, %23 ], [ %13, %20 ]
  %26 = phi i32* [ %25, %23 ], [ %14, %20 ]
  store i32 %24, i32* %26, align 4, !tbaa !13
  %27 = getelementptr inbounds i32, i32* %25, i64 -1
  %28 = load i32, i32* %27, align 4, !tbaa !13
  %29 = icmp sgt i32 %15, %28
  br i1 %29, label %23, label %30, !llvm.loop !41

30:                                               ; preds = %23, %20, %18
  %31 = phi i32* [ %0, %18 ], [ %14, %20 ], [ %25, %23 ]
  store i32 %15, i32* %31, align 4, !tbaa !13
  %32 = add nuw nsw i64 %12, 1
  %33 = icmp eq i64 %32, 16
  br i1 %33, label %34, label %11, !llvm.loop !42

34:                                               ; preds = %30
  %35 = getelementptr inbounds i32, i32* %0, i64 16
  %36 = icmp eq i32* %35, %1
  br i1 %36, label %91, label %37

37:                                               ; preds = %34, %50
  %38 = phi i32* [ %52, %50 ], [ %35, %34 ]
  %39 = load i32, i32* %38, align 4, !tbaa !13
  %40 = getelementptr inbounds i32, i32* %38, i64 -1
  %41 = load i32, i32* %40, align 4, !tbaa !13
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37, %43
  %44 = phi i32 [ %48, %43 ], [ %41, %37 ]
  %45 = phi i32* [ %47, %43 ], [ %40, %37 ]
  %46 = phi i32* [ %45, %43 ], [ %38, %37 ]
  store i32 %44, i32* %46, align 4, !tbaa !13
  %47 = getelementptr inbounds i32, i32* %45, i64 -1
  %48 = load i32, i32* %47, align 4, !tbaa !13
  %49 = icmp sgt i32 %39, %48
  br i1 %49, label %43, label %50, !llvm.loop !41

50:                                               ; preds = %43, %37
  %51 = phi i32* [ %38, %37 ], [ %45, %43 ]
  store i32 %39, i32* %51, align 4, !tbaa !13
  %52 = getelementptr inbounds i32, i32* %38, i64 1
  %53 = icmp eq i32* %52, %1
  br i1 %53, label %91, label %37, !llvm.loop !43

54:                                               ; preds = %2
  %55 = icmp eq i32* %0, %1
  br i1 %55, label %91, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds i32, i32* %0, i64 1
  %58 = icmp eq i32* %57, %1
  br i1 %58, label %91, label %59

59:                                               ; preds = %56
  %60 = bitcast i32* %0 to i8*
  br label %61

61:                                               ; preds = %87, %59
  %62 = phi i32* [ %57, %59 ], [ %89, %87 ]
  %63 = phi i32* [ %0, %59 ], [ %62, %87 ]
  %64 = load i32, i32* %62, align 4, !tbaa !13
  %65 = load i32, i32* %0, align 4, !tbaa !13
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = ptrtoint i32* %62 to i64
  %69 = sub i64 %68, %4
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %67
  %72 = ashr exact i64 %69, 2
  %73 = getelementptr inbounds i32, i32* %63, i64 2
  %74 = sub nsw i64 0, %72
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = bitcast i32* %75 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %76, i8* nonnull align 4 %60, i64 %69, i1 false) #12
  br label %87

77:                                               ; preds = %61
  %78 = load i32, i32* %63, align 4, !tbaa !13
  %79 = icmp sgt i32 %64, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %77, %80
  %81 = phi i32 [ %85, %80 ], [ %78, %77 ]
  %82 = phi i32* [ %84, %80 ], [ %63, %77 ]
  %83 = phi i32* [ %82, %80 ], [ %62, %77 ]
  store i32 %81, i32* %83, align 4, !tbaa !13
  %84 = getelementptr inbounds i32, i32* %82, i64 -1
  %85 = load i32, i32* %84, align 4, !tbaa !13
  %86 = icmp sgt i32 %64, %85
  br i1 %86, label %80, label %87, !llvm.loop !41

87:                                               ; preds = %80, %77, %67, %71
  %88 = phi i32* [ %0, %71 ], [ %0, %67 ], [ %62, %77 ], [ %82, %80 ]
  store i32 %64, i32* %88, align 4, !tbaa !13
  %89 = getelementptr inbounds i32, i32* %62, i64 1
  %90 = icmp eq i32* %89, %1
  br i1 %90, label %91, label %61, !llvm.loop !42

91:                                               ; preds = %87, %50, %56, %54, %34
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SORT_EVEN_PLACED_ELEMENTS_INCREASING_ODD_PLACED_DECREASING_ORDER_reprocessed.cpp() #3 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{i64 0, i64 65}
!10 = !{!11, !6, i64 8}
!11 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !6, i64 0, !6, i64 8, !6, i64 16}
!12 = !{!11, !6, i64 16}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!11, !6, i64 0}
!19 = distinct !{!19, !16, !17}
!20 = distinct !{!20, !16, !17}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = distinct !{!22, !16, !17}
!23 = distinct !{!23, !16, !17}
!24 = distinct !{!24, !16, !17}
!25 = distinct !{!25, !16, !17}
!26 = distinct !{!26, !16, !17}
!27 = distinct !{!27, !16, !17}
!28 = distinct !{!28, !16, !17}
!29 = distinct !{!29, !16, !17}
!30 = distinct !{!30, !16, !17}
!31 = distinct !{!31, !16, !17}
!32 = distinct !{!32, !16, !17}
!33 = distinct !{!33, !16, !17}
!34 = distinct !{!34, !16, !17}
!35 = distinct !{!35, !16, !17}
!36 = distinct !{!36, !16, !17}
!37 = distinct !{!37, !16, !17}
!38 = distinct !{!38, !16, !17}
!39 = distinct !{!39, !16, !17}
!40 = distinct !{!40, !16, !17}
!41 = distinct !{!41, !16, !17}
!42 = distinct !{!42, !16, !17}
!43 = distinct !{!43, !16, !17}
