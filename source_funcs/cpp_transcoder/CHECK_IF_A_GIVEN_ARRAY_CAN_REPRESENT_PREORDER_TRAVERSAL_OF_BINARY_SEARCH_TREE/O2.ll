; ModuleID = 'llvm/cpp_transcoder/CHECK_IF_A_GIVEN_ARRAY_CAN_REPRESENT_PREORDER_TRAVERSAL_OF_BINARY_SEARCH_TREE/CHECK_IF_A_GIVEN_ARRAY_CAN_REPRESENT_PREORDER_TRAVERSAL_OF_BINARY_SEARCH_TREE_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/CHECK_IF_A_GIVEN_ARRAY_CAN_REPRESENT_PREORDER_TRAVERSAL_OF_BINARY_SEARCH_TREE/CHECK_IF_A_GIVEN_ARRAY_CAN_REPRESENT_PREORDER_TRAVERSAL_OF_BINARY_SEARCH_TREE_reprocessed.cpp"
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
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_CHECK_IF_A_GIVEN_ARRAY_CAN_REPRESENT_PREORDER_TRAVERSAL_OF_BINARY_SEARCH_TREE_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldPii(i32* noundef %0, i32 noundef %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::stack", align 8
  %4 = bitcast %"class.std::stack"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %4) #13
  %5 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %5, i64 noundef 0)
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %80

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %9 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %10 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0
  %11 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %12 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  %13 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0
  %14 = zext i32 %1 to i64
  %15 = zext i32 %1 to i64
  br label %20

16:                                               ; preds = %74
  %17 = getelementptr inbounds i32, i32* %0, i64 %75
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = icmp slt i32 %18, %65
  br i1 %19, label %77, label %20, !llvm.loop !9

20:                                               ; preds = %7, %16
  %21 = phi i32* [ %0, %7 ], [ %17, %16 ]
  %22 = phi i32 [ -2147483648, %7 ], [ %65, %16 ]
  %23 = phi i64 [ 0, %7 ], [ %75, %16 ]
  %24 = load i32*, i32** %9, align 8, !tbaa !11
  %25 = load i32*, i32** %10, align 8, !tbaa !11
  %26 = icmp eq i32* %24, %25
  br i1 %26, label %64, label %27

27:                                               ; preds = %20
  %28 = load i32*, i32** %11, align 8, !tbaa !14, !noalias !15
  br label %29

29:                                               ; preds = %27, %56
  %30 = phi i32* [ %57, %56 ], [ %25, %27 ]
  %31 = phi i32* [ %58, %56 ], [ %28, %27 ]
  %32 = phi i32* [ %60, %56 ], [ %24, %27 ]
  %33 = phi i32 [ %59, %56 ], [ %22, %27 ]
  %34 = icmp eq i32* %32, %31
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32**, i32*** %8, align 8, !tbaa !18, !noalias !15
  %37 = getelementptr inbounds i32*, i32** %36, i64 -1
  %38 = load i32*, i32** %37, align 8, !tbaa !19
  %39 = getelementptr inbounds i32, i32* %38, i64 127
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = load i32, i32* %21, align 4, !tbaa !5
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %48, label %64

43:                                               ; preds = %29
  %44 = getelementptr inbounds i32, i32* %32, i64 -1
  %45 = load i32, i32* %44, align 4, !tbaa !5
  %46 = load i32, i32* %21, align 4, !tbaa !5
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %56, label %64

48:                                               ; preds = %35
  %49 = bitcast i32* %31 to i8*
  call void @_ZdlPv(i8* noundef %49) #13
  %50 = load i32**, i32*** %8, align 8, !tbaa !20
  %51 = getelementptr inbounds i32*, i32** %50, i64 -1
  store i32** %51, i32*** %8, align 8, !tbaa !18
  %52 = load i32*, i32** %51, align 8, !tbaa !19
  store i32* %52, i32** %11, align 8, !tbaa !14
  %53 = getelementptr inbounds i32, i32* %52, i64 128
  store i32* %53, i32** %12, align 8, !tbaa !23
  %54 = getelementptr inbounds i32, i32* %52, i64 127
  %55 = load i32*, i32** %10, align 8, !tbaa !11
  br label %56

56:                                               ; preds = %43, %48
  %57 = phi i32* [ %55, %48 ], [ %30, %43 ]
  %58 = phi i32* [ %52, %48 ], [ %31, %43 ]
  %59 = phi i32 [ %40, %48 ], [ %45, %43 ]
  %60 = phi i32* [ %54, %48 ], [ %44, %43 ]
  store i32* %60, i32** %9, align 8, !tbaa !24
  %61 = icmp eq i32* %60, %57
  br i1 %61, label %64, label %29, !llvm.loop !25

62:                                               ; preds = %73
  %63 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev(%"class.std::stack"* noundef nonnull align 8 dereferenceable(80) %3) #13
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %4) #13
  resume { i8*, i32 } %63

64:                                               ; preds = %35, %56, %43, %20
  %65 = phi i32 [ %22, %20 ], [ %33, %43 ], [ %59, %56 ], [ %33, %35 ]
  %66 = phi i32* [ %24, %20 ], [ %32, %43 ], [ %57, %56 ], [ %31, %35 ]
  %67 = load i32*, i32** %12, align 8, !tbaa !26
  %68 = getelementptr inbounds i32, i32* %67, i64 -1
  %69 = icmp eq i32* %66, %68
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %21, align 4, !tbaa !5
  store i32 %71, i32* %66, align 4, !tbaa !5
  %72 = getelementptr inbounds i32, i32* %66, i64 1
  store i32* %72, i32** %9, align 8, !tbaa !24
  br label %74

73:                                               ; preds = %64
  invoke void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %13, i32* noundef nonnull align 4 dereferenceable(4) %21)
          to label %74 unwind label %62

74:                                               ; preds = %70, %73
  %75 = add nuw nsw i64 %23, 1
  %76 = icmp eq i64 %75, %15
  br i1 %76, label %77, label %16, !llvm.loop !9

77:                                               ; preds = %16, %74
  %78 = icmp uge i64 %75, %14
  %79 = zext i1 %78 to i32
  br label %80

80:                                               ; preds = %77, %2
  %81 = phi i32 [ 1, %2 ], [ %79, %77 ]
  %82 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %83 = load i32**, i32*** %82, align 8, !tbaa !27
  %84 = icmp eq i32** %83, null
  br i1 %84, label %104, label %85

85:                                               ; preds = %80
  %86 = bitcast i32** %83 to i8*
  %87 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %88 = load i32**, i32*** %87, align 8, !tbaa !28
  %89 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %90 = load i32**, i32*** %89, align 8, !tbaa !20
  %91 = getelementptr inbounds i32*, i32** %90, i64 1
  %92 = icmp ult i32** %88, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %85, %93
  %94 = phi i32** [ %97, %93 ], [ %88, %85 ]
  %95 = bitcast i32** %94 to i8**
  %96 = load i8*, i8** %95, align 8, !tbaa !19
  call void @_ZdlPv(i8* noundef %96) #13
  %97 = getelementptr inbounds i32*, i32** %94, i64 1
  %98 = icmp ult i32** %94, %90
  br i1 %98, label %93, label %99, !llvm.loop !29

99:                                               ; preds = %93
  %100 = bitcast %"class.std::stack"* %3 to i8**
  %101 = load i8*, i8** %100, align 8, !tbaa !27
  br label %102

102:                                              ; preds = %99, %85
  %103 = phi i8* [ %101, %99 ], [ %86, %85 ]
  call void @_ZdlPv(i8* noundef %103) #13
  br label %104

104:                                              ; preds = %80, %102
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %4) #13
  ret i32 %81
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev(%"class.std::stack"* noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %3 = load i32**, i32*** %2, align 8, !tbaa !27
  %4 = icmp eq i32** %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = bitcast i32** %3 to i8*
  %7 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %8 = load i32**, i32*** %7, align 8, !tbaa !28
  %9 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %10 = load i32**, i32*** %9, align 8, !tbaa !20
  %11 = getelementptr inbounds i32*, i32** %10, i64 1
  %12 = icmp ult i32** %8, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %5, %13
  %14 = phi i32** [ %17, %13 ], [ %8, %5 ]
  %15 = bitcast i32** %14 to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !19
  tail call void @_ZdlPv(i8* noundef %16) #13
  %17 = getelementptr inbounds i32*, i32** %14, i64 1
  %18 = icmp ult i32** %14, %10
  br i1 %18, label %13, label %19, !llvm.loop !29

19:                                               ; preds = %13
  %20 = bitcast %"class.std::stack"* %0 to i8**
  %21 = load i8*, i8** %20, align 8, !tbaa !27
  br label %22

22:                                               ; preds = %19, %5
  %23 = phi i8* [ %21, %19 ], [ %6, %5 ]
  tail call void @_ZdlPv(i8* noundef %23) #13
  br label %24

24:                                               ; preds = %1, %22
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) local_unnamed_addr #6 comdat {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #13
  tail call void @_ZSt9terminatev() #14
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
  store i64 %7, i64* %8, align 8, !tbaa !30
  %9 = shl nuw nsw i64 %7, 3
  %10 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef %9) #15
  %11 = bitcast i8* %10 to i32**
  %12 = bitcast %"class.std::_Deque_base"* %0 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !27
  %13 = load i64, i64* %8, align 8, !tbaa !30
  %14 = sub i64 %13, %4
  %15 = lshr i64 %14, 1
  %16 = getelementptr inbounds i32*, i32** %11, i64 %15
  %17 = getelementptr inbounds i32*, i32** %16, i64 %4
  invoke void @_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0, i32** noundef nonnull %16, i32** noundef nonnull %17)
          to label %27 unwind label %18

18:                                               ; preds = %2
  %19 = landingpad { i8*, i32 }
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = tail call i8* @__cxa_begin_catch(i8* %20) #13
  %22 = load i8*, i8** %12, align 8, !tbaa !27
  tail call void @_ZdlPv(i8* noundef %22) #13
  %23 = bitcast %"class.std::_Deque_base"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #16
          to label %46 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { i8*, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %26 unwind label %43

26:                                               ; preds = %24
  resume { i8*, i32 } %25

27:                                               ; preds = %2
  %28 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 3
  store i32** %16, i32*** %28, align 8, !tbaa !18
  %29 = load i32*, i32** %16, align 8, !tbaa !19
  %30 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 1
  store i32* %29, i32** %30, align 8, !tbaa !14
  %31 = getelementptr inbounds i32, i32* %29, i64 128
  %32 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 2
  store i32* %31, i32** %32, align 8, !tbaa !23
  %33 = getelementptr inbounds i32*, i32** %17, i64 -1
  %34 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 3
  store i32** %33, i32*** %34, align 8, !tbaa !18
  %35 = load i32*, i32** %33, align 8, !tbaa !19
  %36 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 1
  store i32* %35, i32** %36, align 8, !tbaa !14
  %37 = getelementptr inbounds i32, i32* %35, i64 128
  %38 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 2
  store i32* %37, i32** %38, align 8, !tbaa !23
  %39 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 0
  store i32* %29, i32** %39, align 8, !tbaa !31
  %40 = and i64 %1, 127
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 0
  store i32* %41, i32** %42, align 8, !tbaa !24
  ret void

43:                                               ; preds = %24
  %44 = landingpad { i8*, i32 }
          catch i8* null
  %45 = extractvalue { i8*, i32 } %44, 0
  tail call void @__clang_call_terminate(i8* %45) #14
  unreachable

46:                                               ; preds = %18
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
  store i8* %7, i8** %9, align 8, !tbaa !19
  %10 = getelementptr inbounds i32*, i32** %6, i64 1
  %11 = icmp ult i32** %10, %2
  br i1 %11, label %5, label %27, !llvm.loop !32

12:                                               ; preds = %5
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  %15 = tail call i8* @__cxa_begin_catch(i8* %14) #13
  %16 = icmp ugt i32** %6, %1
  br i1 %16, label %17, label %23

17:                                               ; preds = %12, %17
  %18 = phi i32** [ %21, %17 ], [ %1, %12 ]
  %19 = bitcast i32** %18 to i8**
  %20 = load i8*, i8** %19, align 8, !tbaa !19
  tail call void @_ZdlPv(i8* noundef %20) #13
  %21 = getelementptr inbounds i32*, i32** %18, i64 1
  %22 = icmp ult i32** %21, %6
  br i1 %22, label %17, label %23, !llvm.loop !29

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
  tail call void @__clang_call_terminate(i8* %30) #14
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
  %4 = load i32**, i32*** %3, align 8, !tbaa !18
  %5 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %6 = load i32**, i32*** %5, align 8, !tbaa !18
  %7 = ptrtoint i32** %4 to i64
  %8 = ptrtoint i32** %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = icmp ne i32** %4, null
  %12 = sext i1 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = shl nsw i64 %13, 7
  %15 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %16 = load i32*, i32** %15, align 8, !tbaa !11
  %17 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %18 = load i32*, i32** %17, align 8, !tbaa !14
  %19 = ptrtoint i32* %16 to i64
  %20 = ptrtoint i32* %18 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 2
  %23 = add nsw i64 %14, %22
  %24 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 2
  %25 = load i32*, i32** %24, align 8, !tbaa !23
  %26 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 0
  %27 = load i32*, i32** %26, align 8, !tbaa !11
  %28 = ptrtoint i32* %25 to i64
  %29 = ptrtoint i32* %27 to i64
  %30 = sub i64 %28, %29
  %31 = ashr exact i64 %30, 2
  %32 = add nsw i64 %23, %31
  %33 = icmp eq i64 %32, 2305843009213693951
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #16
  unreachable

35:                                               ; preds = %2
  %36 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %37 = load i64, i64* %36, align 8, !tbaa !30
  %38 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8, !tbaa !27
  %40 = ptrtoint i32** %39 to i64
  %41 = sub i64 %7, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %37, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  tail call void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %46

46:                                               ; preds = %35, %45
  %47 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef 512) #15
  %48 = load i32**, i32*** %3, align 8, !tbaa !20
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  %50 = bitcast i32** %49 to i8**
  store i8* %47, i8** %50, align 8, !tbaa !19
  %51 = load i32*, i32** %15, align 8, !tbaa !24
  %52 = load i32, i32* %1, align 4, !tbaa !5
  store i32 %52, i32* %51, align 4, !tbaa !5
  %53 = load i32**, i32*** %3, align 8, !tbaa !20
  %54 = getelementptr inbounds i32*, i32** %53, i64 1
  store i32** %54, i32*** %3, align 8, !tbaa !18
  %55 = load i32*, i32** %54, align 8, !tbaa !19
  store i32* %55, i32** %17, align 8, !tbaa !14
  %56 = getelementptr inbounds i32, i32* %55, i64 128
  %57 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 2
  store i32* %56, i32** %57, align 8, !tbaa !23
  store i32* %55, i32** %15, align 8, !tbaa !24
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) local_unnamed_addr #10

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %5 = load i32**, i32*** %4, align 8, !tbaa !20
  %6 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %7 = load i32**, i32*** %6, align 8, !tbaa !28
  %8 = ptrtoint i32** %5 to i64
  %9 = ptrtoint i32** %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !tbaa !30
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %3
  %19 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8, !tbaa !27
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
  br i1 %30, label %75, label %32

32:                                               ; preds = %31
  %33 = bitcast i32** %25 to i8*
  %34 = bitcast i32** %7 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %33, i8* nonnull align 8 %34, i64 %29, i1 false) #13
  br label %75

35:                                               ; preds = %18
  br i1 %30, label %75, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds i32*, i32** %25, i64 %12
  %38 = ashr exact i64 %29, 3
  %39 = sub nsw i64 0, %38
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = bitcast i32** %40 to i8*
  %42 = bitcast i32** %7 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 %29, i1 false) #13
  br label %75

43:                                               ; preds = %3
  %44 = icmp ult i64 %15, %1
  %45 = select i1 %44, i64 %1, i64 %15
  %46 = add i64 %15, 2
  %47 = add i64 %46, %45
  %48 = icmp ugt i64 %47, 1152921504606846975
  br i1 %48, label %49, label %53, !prof !33

49:                                               ; preds = %43
  %50 = icmp ugt i64 %47, 2305843009213693951
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

52:                                               ; preds = %49
  tail call void @_ZSt17__throw_bad_allocv() #16
  unreachable

53:                                               ; preds = %43
  %54 = shl nuw nsw i64 %47, 3
  %55 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef %54) #15
  %56 = bitcast i8* %55 to i32**
  %57 = sub i64 %47, %13
  %58 = lshr i64 %57, 1
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = select i1 %2, i64 %1, i64 0
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  %62 = load i32**, i32*** %6, align 8, !tbaa !28
  %63 = load i32**, i32*** %4, align 8, !tbaa !20
  %64 = getelementptr inbounds i32*, i32** %63, i64 1
  %65 = ptrtoint i32** %64 to i64
  %66 = ptrtoint i32** %62 to i64
  %67 = sub i64 %65, %66
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %53
  %70 = bitcast i32** %61 to i8*
  %71 = bitcast i32** %62 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 8 %70, i8* align 8 %71, i64 %67, i1 false) #13
  br label %72

72:                                               ; preds = %53, %69
  %73 = bitcast %"class.std::deque"* %0 to i8**
  %74 = load i8*, i8** %73, align 8, !tbaa !27
  tail call void @_ZdlPv(i8* noundef %74) #13
  store i8* %55, i8** %73, align 8, !tbaa !27
  store i64 %47, i64* %14, align 8, !tbaa !30
  br label %75

75:                                               ; preds = %32, %31, %36, %35, %72
  %76 = phi i32** [ %61, %72 ], [ %25, %35 ], [ %25, %36 ], [ %25, %31 ], [ %25, %32 ]
  store i32** %76, i32*** %6, align 8, !tbaa !18
  %77 = load i32*, i32** %76, align 8, !tbaa !19
  %78 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 1
  store i32* %77, i32** %78, align 8, !tbaa !14
  %79 = getelementptr inbounds i32, i32* %77, i64 128
  %80 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 2
  store i32* %79, i32** %80, align 8, !tbaa !23
  %81 = getelementptr inbounds i32*, i32** %76, i64 %11
  store i32** %81, i32*** %4, align 8, !tbaa !18
  %82 = load i32*, i32** %81, align 8, !tbaa !19
  %83 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  store i32* %82, i32** %83, align 8, !tbaa !14
  %84 = getelementptr inbounds i32, i32* %82, i64 128
  %85 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 2
  store i32* %84, i32** %85, align 8, !tbaa !23
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #12

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CHECK_IF_A_GIVEN_ARRAY_CAN_REPRESENT_PREORDER_TRAVERSAL_OF_BINARY_SEARCH_TREE_reprocessed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #13
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSSt15_Deque_iteratorIiRiPiE", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!12, !13, i64 8}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZNSt5dequeIiSaIiEE3endEv: argument 0"}
!17 = distinct !{!17, !"_ZNSt5dequeIiSaIiEE3endEv"}
!18 = !{!12, !13, i64 24}
!19 = !{!13, !13, i64 0}
!20 = !{!21, !13, i64 72}
!21 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataE", !13, i64 0, !22, i64 8, !12, i64 16, !12, i64 48}
!22 = !{!"long", !7, i64 0}
!23 = !{!12, !13, i64 16}
!24 = !{!21, !13, i64 48}
!25 = distinct !{!25, !10}
!26 = !{!21, !13, i64 64}
!27 = !{!21, !13, i64 0}
!28 = !{!21, !13, i64 40}
!29 = distinct !{!29, !10}
!30 = !{!21, !22, i64 8}
!31 = !{!21, !13, i64 16}
!32 = distinct !{!32, !10}
!33 = !{!"branch_weights", i32 1, i32 2000}
