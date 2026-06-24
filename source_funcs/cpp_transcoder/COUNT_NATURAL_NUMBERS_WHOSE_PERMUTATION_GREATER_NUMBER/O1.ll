; ModuleID = 'llvm/cpp_transcoder/COUNT_NATURAL_NUMBERS_WHOSE_PERMUTATION_GREATER_NUMBER/COUNT_NATURAL_NUMBERS_WHOSE_PERMUTATION_GREATER_NUMBER_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/COUNT_NATURAL_NUMBERS_WHOSE_PERMUTATION_GREATER_NUMBER/COUNT_NATURAL_NUMBERS_WHOSE_PERMUTATION_GREATER_NUMBER_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::stack" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl" }
%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl" = type { %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data" }
%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data" = type { i32**, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { i32*, i32*, i32*, i32** }

$_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm = comdat any

$_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_ = comdat any

$_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_ = comdat any

$_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_NATURAL_NUMBERS_WHOSE_PERMUTATION_GREATER_NUMBER_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca i32, align 4
  %3 = alloca %"class.std::stack", align 8
  %4 = alloca i32, align 4
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #13
  %6 = bitcast %"class.std::stack"* %3 to i8*
  %7 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0
  store i32 1, i32* %2, align 4, !tbaa !5
  %8 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %9 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  %10 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0
  %11 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %12 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0
  %13 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %14 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %15 = bitcast i32** %13 to i8**
  %16 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %17 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  %18 = bitcast i32* %4 to i8*
  %19 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  %20 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0
  %21 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %22 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %23 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %24 = bitcast %"class.std::stack"* %3 to i8**
  br label %26

25:                                               ; preds = %117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #13
  ret i32 %101

26:                                               ; preds = %1, %117
  %27 = phi i32 [ 0, %1 ], [ %101, %117 ]
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %6) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %6, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %7, i64 noundef 0)
  %28 = load i32, i32* %2, align 4, !tbaa !5
  %29 = icmp sgt i32 %28, %0
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = load i32*, i32** %8, align 8, !tbaa !9
  %32 = load i32*, i32** %9, align 8, !tbaa !14
  %33 = getelementptr inbounds i32, i32* %32, i64 -1
  %34 = icmp eq i32* %31, %33
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  store i32 %28, i32* %31, align 4, !tbaa !5
  %36 = getelementptr inbounds i32, i32* %31, i64 1
  store i32* %36, i32** %8, align 8, !tbaa !9
  br label %38

37:                                               ; preds = %30
  invoke void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %10, i32* noundef nonnull align 4 dereferenceable(4) %2)
          to label %38 unwind label %40

38:                                               ; preds = %35, %37
  %39 = add nsw i32 %27, 1
  br label %42

40:                                               ; preds = %37
  %41 = landingpad { i8*, i32 }
          cleanup
  br label %121

42:                                               ; preds = %38, %26
  %43 = phi i32 [ %39, %38 ], [ %27, %26 ]
  %44 = load i32*, i32** %11, align 8, !tbaa !15
  %45 = load i32*, i32** %12, align 8, !tbaa !15
  %46 = icmp eq i32* %44, %45
  br i1 %46, label %100, label %51

47:                                               ; preds = %96
  %48 = load i32*, i32** %11, align 8, !tbaa !15
  %49 = load i32*, i32** %12, align 8, !tbaa !15
  %50 = icmp eq i32* %48, %49
  br i1 %50, label %100, label %51, !llvm.loop !16

51:                                               ; preds = %42, %47
  %52 = phi i32* [ %48, %47 ], [ %44, %42 ]
  %53 = phi i32 [ %97, %47 ], [ %43, %42 ]
  %54 = load i32*, i32** %13, align 8, !tbaa !19, !noalias !20
  %55 = icmp eq i32* %52, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32**, i32*** %14, align 8, !tbaa !23, !noalias !20
  %58 = getelementptr inbounds i32*, i32** %57, i64 -1
  %59 = load i32*, i32** %58, align 8, !tbaa !24
  %60 = getelementptr inbounds i32, i32* %59, i64 128
  br label %61

61:                                               ; preds = %51, %56
  %62 = phi i32* [ %60, %56 ], [ %52, %51 ]
  %63 = getelementptr inbounds i32, i32* %62, i64 -1
  %64 = load i32, i32* %63, align 4, !tbaa !5
  br i1 %55, label %67, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds i32, i32* %52, i64 -1
  br label %74

67:                                               ; preds = %61
  %68 = load i8*, i8** %15, align 8, !tbaa !25
  call void @_ZdlPv(i8* noundef %68) #13
  %69 = load i32**, i32*** %16, align 8, !tbaa !26
  %70 = getelementptr inbounds i32*, i32** %69, i64 -1
  store i32** %70, i32*** %16, align 8, !tbaa !23
  %71 = load i32*, i32** %70, align 8, !tbaa !24
  store i32* %71, i32** %13, align 8, !tbaa !19
  %72 = getelementptr inbounds i32, i32* %71, i64 128
  store i32* %72, i32** %17, align 8, !tbaa !27
  %73 = getelementptr inbounds i32, i32* %71, i64 127
  br label %74

74:                                               ; preds = %65, %67
  %75 = phi i32* [ %66, %65 ], [ %73, %67 ]
  store i32* %75, i32** %11, align 8, !tbaa !9
  %76 = srem i32 %64, 10
  %77 = mul nsw i32 %64, 10
  br label %78

78:                                               ; preds = %74, %96
  %79 = phi i32 [ %76, %74 ], [ %98, %96 ]
  %80 = phi i32 [ %53, %74 ], [ %97, %96 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #13
  %81 = add nsw i32 %79, %77
  store i32 %81, i32* %4, align 4, !tbaa !5
  %82 = icmp sgt i32 %81, %0
  br i1 %82, label %96, label %83

83:                                               ; preds = %78
  %84 = load i32*, i32** %11, align 8, !tbaa !9
  %85 = load i32*, i32** %19, align 8, !tbaa !14
  %86 = getelementptr inbounds i32, i32* %85, i64 -1
  %87 = icmp eq i32* %84, %86
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  store i32 %81, i32* %84, align 4, !tbaa !5
  %89 = getelementptr inbounds i32, i32* %84, i64 1
  store i32* %89, i32** %11, align 8, !tbaa !9
  br label %91

90:                                               ; preds = %83
  invoke void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %20, i32* noundef nonnull align 4 dereferenceable(4) %4)
          to label %91 unwind label %93

91:                                               ; preds = %88, %90
  %92 = add nsw i32 %80, 1
  br label %96

93:                                               ; preds = %90
  %94 = landingpad { i8*, i32 }
          cleanup
  %95 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %95) #13
  br label %121

96:                                               ; preds = %91, %78
  %97 = phi i32 [ %92, %91 ], [ %80, %78 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #13
  %98 = add nsw i32 %79, 1
  %99 = icmp eq i32 %98, 10
  br i1 %99, label %47, label %78, !llvm.loop !28

100:                                              ; preds = %47, %42
  %101 = phi i32 [ %43, %42 ], [ %97, %47 ]
  %102 = load i32**, i32*** %21, align 8, !tbaa !29
  %103 = icmp eq i32** %102, null
  br i1 %103, label %117, label %104

104:                                              ; preds = %100
  %105 = load i32**, i32*** %22, align 8, !tbaa !30
  %106 = load i32**, i32*** %23, align 8, !tbaa !26
  %107 = getelementptr inbounds i32*, i32** %106, i64 1
  %108 = icmp ult i32** %105, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %104, %109
  %110 = phi i32** [ %113, %109 ], [ %105, %104 ]
  %111 = bitcast i32** %110 to i8**
  %112 = load i8*, i8** %111, align 8, !tbaa !24
  call void @_ZdlPv(i8* noundef %112) #13
  %113 = getelementptr inbounds i32*, i32** %110, i64 1
  %114 = icmp ult i32** %110, %106
  br i1 %114, label %109, label %115, !llvm.loop !31

115:                                              ; preds = %109, %104
  %116 = load i8*, i8** %24, align 8, !tbaa !29
  call void @_ZdlPv(i8* noundef %116) #13
  br label %117

117:                                              ; preds = %100, %115
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %6) #13
  %118 = load i32, i32* %2, align 4, !tbaa !5
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %2, align 4, !tbaa !5
  %120 = icmp slt i32 %118, 9
  br i1 %120, label %26, label %25, !llvm.loop !32

121:                                              ; preds = %93, %40
  %122 = phi { i8*, i32 } [ %94, %93 ], [ %41, %40 ]
  %123 = bitcast %"class.std::stack"* %3 to i8*
  call void @_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev(%"class.std::stack"* noundef nonnull align 8 dereferenceable(80) %3) #13
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %123) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #13
  resume { i8*, i32 } %122
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev(%"class.std::stack"* noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %3 = load i32**, i32*** %2, align 8, !tbaa !29
  %4 = icmp eq i32** %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %7 = load i32**, i32*** %6, align 8, !tbaa !30
  %8 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %9 = load i32**, i32*** %8, align 8, !tbaa !26
  %10 = getelementptr inbounds i32*, i32** %9, i64 1
  %11 = icmp ult i32** %7, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %5, %12
  %13 = phi i32** [ %16, %12 ], [ %7, %5 ]
  %14 = bitcast i32** %13 to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !24
  call void @_ZdlPv(i8* noundef %15) #13
  %16 = getelementptr inbounds i32*, i32** %13, i64 1
  %17 = icmp ult i32** %13, %9
  br i1 %17, label %12, label %18, !llvm.loop !31

18:                                               ; preds = %12, %5
  %19 = bitcast %"class.std::stack"* %0 to i8**
  %20 = load i8*, i8** %19, align 8, !tbaa !29
  call void @_ZdlPv(i8* noundef %20) #13
  br label %21

21:                                               ; preds = %1, %18
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) local_unnamed_addr #6 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #13
  call void @_ZSt9terminatev() #14
  unreachable
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = lshr i64 %1, 7
  %4 = add nuw nsw i64 %3, 1
  %5 = icmp ugt i64 %3, 5
  %6 = select i1 %5, i64 %3, i64 5
  %7 = add nuw nsw i64 %6, 3
  %8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 1
  store i64 %7, i64* %8, align 8, !tbaa !33
  %9 = shl nuw nsw i64 %7, 3
  %10 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %9) #15
  %11 = bitcast i8* %10 to i32**
  %12 = bitcast %"class.std::_Deque_base"* %0 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !29
  %13 = load i64, i64* %8, align 8, !tbaa !33
  %14 = sub i64 %13, %4
  %15 = lshr i64 %14, 1
  %16 = getelementptr inbounds i32*, i32** %11, i64 %15
  %17 = getelementptr inbounds i32*, i32** %16, i64 %4
  invoke void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0, i32** noundef nonnull %16, i32** noundef nonnull %17)
          to label %28 unwind label %18

18:                                               ; preds = %2
  %19 = landingpad { i8*, i32 }
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = call i8* @__cxa_begin_catch(i8* %20) #13
  %22 = bitcast %"class.std::_Deque_base"* %0 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !29
  call void @_ZdlPv(i8* noundef %23) #13
  %24 = bitcast %"class.std::_Deque_base"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #16
          to label %51 unwind label %25

25:                                               ; preds = %18
  %26 = landingpad { i8*, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %27 unwind label %48

27:                                               ; preds = %25
  resume { i8*, i32 } %26

28:                                               ; preds = %2
  %29 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 3
  store i32** %16, i32*** %29, align 8, !tbaa !23
  %30 = load i32*, i32** %16, align 8, !tbaa !24
  %31 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 1
  store i32* %30, i32** %31, align 8, !tbaa !19
  %32 = getelementptr inbounds i32, i32* %30, i64 128
  %33 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 2
  store i32* %32, i32** %33, align 8, !tbaa !27
  %34 = getelementptr inbounds i32*, i32** %17, i64 -1
  %35 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 3
  store i32** %34, i32*** %35, align 8, !tbaa !23
  %36 = load i32*, i32** %34, align 8, !tbaa !24
  %37 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 1
  store i32* %36, i32** %37, align 8, !tbaa !19
  %38 = getelementptr inbounds i32, i32* %36, i64 128
  %39 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 2
  store i32* %38, i32** %39, align 8, !tbaa !27
  %40 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 1
  %41 = load i32*, i32** %40, align 8, !tbaa !34
  %42 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 0
  store i32* %41, i32** %42, align 8, !tbaa !35
  %43 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 1
  %44 = load i32*, i32** %43, align 8, !tbaa !25
  %45 = and i64 %1, 127
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 0
  store i32* %46, i32** %47, align 8, !tbaa !9
  ret void

48:                                               ; preds = %25
  %49 = landingpad { i8*, i32 }
          catch i8* null
  %50 = extractvalue { i8*, i32 } %49, 0
  call void @__clang_call_terminate(i8* %50) #14
  unreachable

51:                                               ; preds = %18
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0, i32** noundef %1, i32** noundef %2) local_unnamed_addr #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = icmp ult i32** %1, %2
  br i1 %4, label %5, label %27

5:                                                ; preds = %3, %8
  %6 = phi i32** [ %10, %8 ], [ %1, %3 ]
  %7 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef 512) #15
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = bitcast i32** %6 to i8**
  store i8* %7, i8** %9, align 8, !tbaa !24
  %10 = getelementptr inbounds i32*, i32** %6, i64 1
  %11 = icmp ult i32** %10, %2
  br i1 %11, label %5, label %27, !llvm.loop !36

12:                                               ; preds = %5
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  %15 = call i8* @__cxa_begin_catch(i8* %14) #13
  %16 = icmp ugt i32** %6, %1
  br i1 %16, label %17, label %23

17:                                               ; preds = %12, %17
  %18 = phi i32** [ %21, %17 ], [ %1, %12 ]
  %19 = bitcast i32** %18 to i8**
  %20 = load i8*, i8** %19, align 8, !tbaa !24
  call void @_ZdlPv(i8* noundef %20) #13
  %21 = getelementptr inbounds i32*, i32** %18, i64 1
  %22 = icmp ult i32** %21, %6
  br i1 %22, label %17, label %23, !llvm.loop !31

23:                                               ; preds = %17, %12
  invoke void @__cxa_rethrow() #16
          to label %31 unwind label %24

24:                                               ; preds = %23
  %25 = landingpad { i8*, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %26 unwind label %28

26:                                               ; preds = %24
  resume { i8*, i32 } %25

27:                                               ; preds = %8, %3
  ret void

28:                                               ; preds = %24
  %29 = landingpad { i8*, i32 }
          catch i8* null
  %30 = extractvalue { i8*, i32 } %29, 0
  call void @__clang_call_terminate(i8* %30) #14
  unreachable

31:                                               ; preds = %23
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #9 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %4 = load i32**, i32*** %3, align 8, !tbaa !23
  %5 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %6 = load i32**, i32*** %5, align 8, !tbaa !23
  %7 = ptrtoint i32** %4 to i64
  %8 = ptrtoint i32** %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = icmp ne i32** %4, null
  %12 = sext i1 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = shl nsw i64 %13, 7
  %15 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %16 = load i32*, i32** %15, align 8, !tbaa !15
  %17 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %18 = load i32*, i32** %17, align 8, !tbaa !19
  %19 = ptrtoint i32* %16 to i64
  %20 = ptrtoint i32* %18 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 2
  %23 = add nsw i64 %14, %22
  %24 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 2
  %25 = load i32*, i32** %24, align 8, !tbaa !27
  %26 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 0
  %27 = load i32*, i32** %26, align 8, !tbaa !15
  %28 = ptrtoint i32* %25 to i64
  %29 = ptrtoint i32* %27 to i64
  %30 = sub i64 %28, %29
  %31 = ashr exact i64 %30, 2
  %32 = add nsw i64 %23, %31
  %33 = icmp eq i64 %32, 2305843009213693951
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #16
  unreachable

35:                                               ; preds = %2
  %36 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %37 = load i64, i64* %36, align 8, !tbaa !33
  %38 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8, !tbaa !29
  %40 = ptrtoint i32** %39 to i64
  %41 = sub i64 %7, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %37, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  call void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %46

46:                                               ; preds = %35, %45
  %47 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 512) #15
  %48 = load i32**, i32*** %3, align 8, !tbaa !26
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  %50 = bitcast i32** %49 to i8**
  store i8* %47, i8** %50, align 8, !tbaa !24
  %51 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %52 = load i32*, i32** %51, align 8, !tbaa !9
  %53 = load i32, i32* %1, align 4, !tbaa !5
  store i32 %53, i32* %52, align 4, !tbaa !5
  %54 = load i32**, i32*** %3, align 8, !tbaa !26
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  %56 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  store i32** %55, i32*** %56, align 8, !tbaa !23
  %57 = load i32*, i32** %55, align 8, !tbaa !24
  %58 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  store i32* %57, i32** %58, align 8, !tbaa !19
  %59 = getelementptr inbounds i32, i32* %57, i64 128
  %60 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 2
  store i32* %59, i32** %60, align 8, !tbaa !27
  store i32* %57, i32** %51, align 8, !tbaa !9
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) local_unnamed_addr #10

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %5 = load i32**, i32*** %4, align 8, !tbaa !26
  %6 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %7 = load i32**, i32*** %6, align 8, !tbaa !30
  %8 = ptrtoint i32** %5 to i64
  %9 = ptrtoint i32** %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !tbaa !33
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %3
  %19 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8, !tbaa !29
  %21 = sub i64 %15, %13
  %22 = lshr i64 %21, 1
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = select i1 %2, i64 %1, i64 0
  %25 = getelementptr inbounds i32*, i32** %23, i64 %24
  %26 = icmp ult i32** %25, %7
  %27 = getelementptr inbounds i32*, i32** %5, i64 1
  %28 = ptrtoint i32** %27 to i64
  %29 = sub i64 %28, %9
  %30 = icmp eq i64 %29, 0
  br i1 %26, label %31, label %35

31:                                               ; preds = %18
  br i1 %30, label %76, label %32

32:                                               ; preds = %31
  %33 = bitcast i32** %25 to i8*
  %34 = bitcast i32** %7 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %33, i8* nonnull align 8 %34, i64 %29, i1 false) #13
  br label %76

35:                                               ; preds = %18
  br i1 %30, label %76, label %36

36:                                               ; preds = %35
  %37 = ashr exact i64 %29, 3
  %38 = getelementptr inbounds i32*, i32** %25, i64 %12
  %39 = sub nsw i64 0, %37
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  %41 = bitcast i32** %40 to i8*
  %42 = bitcast i32** %7 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 %29, i1 false) #13
  br label %76

43:                                               ; preds = %3
  %44 = icmp ult i64 %15, %1
  %45 = select i1 %44, i64 %1, i64 %15
  %46 = add i64 %15, 2
  %47 = add i64 %46, %45
  %48 = icmp ugt i64 %47, 1152921504606846975
  br i1 %48, label %49, label %53, !prof !37

49:                                               ; preds = %43
  %50 = icmp ugt i64 %47, 2305843009213693951
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

52:                                               ; preds = %49
  call void @_ZSt17__throw_bad_allocv() #16
  unreachable

53:                                               ; preds = %43
  %54 = shl i64 %47, 3
  %55 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %54) #15
  %56 = bitcast i8* %55 to i32**
  %57 = sub i64 %47, %13
  %58 = lshr i64 %57, 1
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = select i1 %2, i64 %1, i64 0
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  %62 = load i32**, i32*** %6, align 8, !tbaa !30
  %63 = load i32**, i32*** %4, align 8, !tbaa !26
  %64 = getelementptr inbounds i32*, i32** %63, i64 1
  %65 = ptrtoint i32** %64 to i64
  %66 = ptrtoint i32** %62 to i64
  %67 = sub i64 %65, %66
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %53
  %70 = bitcast i32** %61 to i8*
  %71 = bitcast i32** %62 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 8 %70, i8* align 8 %71, i64 %67, i1 false) #13
  br label %72

72:                                               ; preds = %53, %69
  %73 = bitcast %"class.std::deque"* %0 to i8**
  %74 = load i8*, i8** %73, align 8, !tbaa !29
  call void @_ZdlPv(i8* noundef %74) #13
  %75 = bitcast %"class.std::deque"* %0 to i8**
  store i8* %55, i8** %75, align 8, !tbaa !29
  store i64 %47, i64* %14, align 8, !tbaa !33
  br label %76

76:                                               ; preds = %36, %35, %32, %31, %72
  %77 = phi i32** [ %61, %72 ], [ %25, %31 ], [ %25, %32 ], [ %25, %35 ], [ %25, %36 ]
  %78 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  store i32** %77, i32*** %78, align 8, !tbaa !23
  %79 = load i32*, i32** %77, align 8, !tbaa !24
  %80 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 1
  store i32* %79, i32** %80, align 8, !tbaa !19
  %81 = getelementptr inbounds i32, i32* %79, i64 128
  %82 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 2
  store i32* %81, i32** %82, align 8, !tbaa !27
  %83 = getelementptr inbounds i32*, i32** %77, i64 %11
  %84 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  store i32** %83, i32*** %84, align 8, !tbaa !23
  %85 = load i32*, i32** %83, align 8, !tbaa !24
  %86 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  store i32* %85, i32** %86, align 8, !tbaa !19
  %87 = getelementptr inbounds i32, i32* %85, i64 128
  %88 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 2
  store i32* %87, i32** %88, align 8, !tbaa !27
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #12

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_NATURAL_NUMBERS_WHOSE_PERMUTATION_GREATER_NUMBER_reprocessed.cpp() #3 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #13
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind }
attributes #7 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { allocsize(0) }
attributes #16 = { noreturn }

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
!9 = !{!10, !11, i64 48}
!10 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataE", !11, i64 0, !12, i64 8, !13, i64 16, !13, i64 48}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!"_ZTSSt15_Deque_iteratorIiRiPiE", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!14 = !{!10, !11, i64 64}
!15 = !{!13, !11, i64 0}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!13, !11, i64 8}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZNSt5dequeIiSaIiEE3endEv: argument 0"}
!22 = distinct !{!22, !"_ZNSt5dequeIiSaIiEE3endEv"}
!23 = !{!13, !11, i64 24}
!24 = !{!11, !11, i64 0}
!25 = !{!10, !11, i64 56}
!26 = !{!10, !11, i64 72}
!27 = !{!13, !11, i64 16}
!28 = distinct !{!28, !17, !18}
!29 = !{!10, !11, i64 0}
!30 = !{!10, !11, i64 40}
!31 = distinct !{!31, !17, !18}
!32 = distinct !{!32, !17, !18}
!33 = !{!10, !12, i64 8}
!34 = !{!10, !11, i64 24}
!35 = !{!10, !11, i64 16}
!36 = distinct !{!36, !17, !18}
!37 = !{!"branch_weights", i32 1, i32 2000}
