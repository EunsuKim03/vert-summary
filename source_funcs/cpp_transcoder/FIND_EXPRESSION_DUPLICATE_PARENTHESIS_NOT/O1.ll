; ModuleID = 'llvm/cpp_transcoder/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::stack" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<char, std::allocator<char>>::_Deque_impl" }
%"struct.std::_Deque_base<char, std::allocator<char>>::_Deque_impl" = type { %"struct.std::_Deque_base<char, std::allocator<char>>::_Deque_impl_data" }
%"struct.std::_Deque_base<char, std::allocator<char>>::_Deque_impl_data" = type { i8**, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { i8*, i8*, i8*, i8** }

$_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm = comdat any

$_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_ = comdat any

$_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_ = comdat any

$_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::stack", align 8
  %3 = alloca i8, align 1
  %4 = bitcast %"class.std::stack"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %4) #13
  %5 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %5, i64 noundef 0)
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !12
  %10 = getelementptr inbounds i8, i8* %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %93, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %14 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  %15 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0
  %16 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %17 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %18 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %19 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %20 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  %21 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %22 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %23 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  br label %24

24:                                               ; preds = %12, %89
  %25 = phi i1 [ %11, %12 ], [ %91, %89 ]
  %26 = phi i8* [ %7, %12 ], [ %90, %89 ]
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #13
  %27 = load i8, i8* %26, align 1, !tbaa !13
  store i8 %27, i8* %3, align 1, !tbaa !13
  %28 = icmp eq i8 %27, 41
  br i1 %28, label %29, label %78

29:                                               ; preds = %24
  %30 = load i8*, i8** %16, align 8, !tbaa !14, !noalias !16
  %31 = load i8*, i8** %17, align 8, !tbaa !19, !noalias !16
  %32 = icmp eq i8* %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i8**, i8*** %18, align 8, !tbaa !20, !noalias !16
  %35 = getelementptr inbounds i8*, i8** %34, i64 -1
  %36 = load i8*, i8** %35, align 8, !tbaa !21
  %37 = getelementptr inbounds i8, i8* %36, i64 512
  br label %38

38:                                               ; preds = %29, %33
  %39 = phi i8* [ %37, %33 ], [ %30, %29 ]
  %40 = getelementptr inbounds i8, i8* %39, i64 -1
  %41 = load i8, i8* %40, align 1, !tbaa !13
  br i1 %32, label %44, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, i8* %30, i64 -1
  br label %50

44:                                               ; preds = %38
  call void @_ZdlPv(i8* noundef %31) #13
  %45 = load i8**, i8*** %19, align 8, !tbaa !22
  %46 = getelementptr inbounds i8*, i8** %45, i64 -1
  store i8** %46, i8*** %19, align 8, !tbaa !20
  %47 = load i8*, i8** %46, align 8, !tbaa !21
  store i8* %47, i8** %17, align 8, !tbaa !19
  %48 = getelementptr inbounds i8, i8* %47, i64 512
  store i8* %48, i8** %20, align 8, !tbaa !24
  %49 = getelementptr inbounds i8, i8* %47, i64 511
  br label %50

50:                                               ; preds = %42, %44
  %51 = phi i8* [ %43, %42 ], [ %49, %44 ]
  store i8* %51, i8** %16, align 8, !tbaa !25
  %52 = icmp eq i8 %41, 40
  br i1 %52, label %92, label %53

53:                                               ; preds = %50, %74
  %54 = load i8*, i8** %16, align 8, !tbaa !14, !noalias !26
  %55 = load i8*, i8** %17, align 8, !tbaa !19, !noalias !26
  %56 = icmp eq i8* %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i8**, i8*** %21, align 8, !tbaa !20, !noalias !26
  %59 = getelementptr inbounds i8*, i8** %58, i64 -1
  %60 = load i8*, i8** %59, align 8, !tbaa !21
  %61 = getelementptr inbounds i8, i8* %60, i64 512
  br label %62

62:                                               ; preds = %53, %57
  %63 = phi i8* [ %61, %57 ], [ %54, %53 ]
  %64 = getelementptr inbounds i8, i8* %63, i64 -1
  %65 = load i8, i8* %64, align 1, !tbaa !13
  br i1 %56, label %68, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %54, i64 -1
  br label %74

68:                                               ; preds = %62
  call void @_ZdlPv(i8* noundef %55) #13
  %69 = load i8**, i8*** %22, align 8, !tbaa !22
  %70 = getelementptr inbounds i8*, i8** %69, i64 -1
  store i8** %70, i8*** %22, align 8, !tbaa !20
  %71 = load i8*, i8** %70, align 8, !tbaa !21
  store i8* %71, i8** %17, align 8, !tbaa !19
  %72 = getelementptr inbounds i8, i8* %71, i64 512
  store i8* %72, i8** %23, align 8, !tbaa !24
  %73 = getelementptr inbounds i8, i8* %71, i64 511
  br label %74

74:                                               ; preds = %66, %68
  %75 = phi i8* [ %67, %66 ], [ %73, %68 ]
  store i8* %75, i8** %16, align 8, !tbaa !25
  %76 = icmp eq i8 %65, 40
  br i1 %76, label %77, label %53, !llvm.loop !29

77:                                               ; preds = %74
  br i1 %52, label %92, label %89

78:                                               ; preds = %24
  %79 = load i8*, i8** %13, align 8, !tbaa !25
  %80 = load i8*, i8** %14, align 8, !tbaa !32
  %81 = getelementptr inbounds i8, i8* %80, i64 -1
  %82 = icmp eq i8* %79, %81
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  store i8 %27, i8* %79, align 1, !tbaa !13
  %84 = load i8*, i8** %13, align 8, !tbaa !25
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  store i8* %85, i8** %13, align 8, !tbaa !25
  br label %89

86:                                               ; preds = %78
  invoke void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %15, i8* noundef nonnull align 1 dereferenceable(1) %3)
          to label %89 unwind label %87

87:                                               ; preds = %86
  %88 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #13
  call void @_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev(%"class.std::stack"* noundef nonnull align 8 dereferenceable(80) %2) #13
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %4) #13
  resume { i8*, i32 } %88

89:                                               ; preds = %83, %86, %77
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #13
  %90 = getelementptr inbounds i8, i8* %26, i64 1
  %91 = icmp eq i8* %90, %10
  br i1 %91, label %93, label %24, !llvm.loop !33

92:                                               ; preds = %50, %77
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #13
  br label %93

93:                                               ; preds = %89, %1, %92
  %94 = phi i1 [ %25, %92 ], [ %11, %1 ], [ %91, %89 ]
  %95 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %96 = load i8**, i8*** %95, align 8, !tbaa !34
  %97 = icmp eq i8** %96, null
  br i1 %97, label %113, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %100 = load i8**, i8*** %99, align 8, !tbaa !35
  %101 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %102 = load i8**, i8*** %101, align 8, !tbaa !22
  %103 = getelementptr inbounds i8*, i8** %102, i64 1
  %104 = icmp ult i8** %100, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %98, %105
  %106 = phi i8** [ %108, %105 ], [ %100, %98 ]
  %107 = load i8*, i8** %106, align 8, !tbaa !21
  call void @_ZdlPv(i8* noundef %107) #13
  %108 = getelementptr inbounds i8*, i8** %106, i64 1
  %109 = icmp ult i8** %106, %102
  br i1 %109, label %105, label %110, !llvm.loop !36

110:                                              ; preds = %105, %98
  %111 = bitcast %"class.std::stack"* %2 to i8**
  %112 = load i8*, i8** %111, align 8, !tbaa !34
  call void @_ZdlPv(i8* noundef %112) #13
  br label %113

113:                                              ; preds = %93, %110
  %114 = xor i1 %94, true
  %115 = zext i1 %114 to i32
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %4) #13
  ret i32 %115
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev(%"class.std::stack"* noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %3 = load i8**, i8*** %2, align 8, !tbaa !34
  %4 = icmp eq i8** %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %7 = load i8**, i8*** %6, align 8, !tbaa !35
  %8 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %9 = load i8**, i8*** %8, align 8, !tbaa !22
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = icmp ult i8** %7, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %5, %12
  %13 = phi i8** [ %15, %12 ], [ %7, %5 ]
  %14 = load i8*, i8** %13, align 8, !tbaa !21
  call void @_ZdlPv(i8* noundef %14) #13
  %15 = getelementptr inbounds i8*, i8** %13, i64 1
  %16 = icmp ult i8** %13, %9
  br i1 %16, label %12, label %17, !llvm.loop !36

17:                                               ; preds = %12, %5
  %18 = bitcast %"class.std::stack"* %0 to i8**
  %19 = load i8*, i8** %18, align 8, !tbaa !34
  call void @_ZdlPv(i8* noundef %19) #13
  br label %20

20:                                               ; preds = %1, %17
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
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = lshr i64 %1, 9
  %4 = add nuw nsw i64 %3, 1
  %5 = icmp ugt i64 %3, 5
  %6 = select i1 %5, i64 %3, i64 5
  %7 = add nuw nsw i64 %6, 3
  %8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 1
  store i64 %7, i64* %8, align 8, !tbaa !37
  %9 = shl nuw nsw i64 %7, 3
  %10 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %9) #15
  %11 = bitcast i8* %10 to i8**
  %12 = bitcast %"class.std::_Deque_base"* %0 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !34
  %13 = load i64, i64* %8, align 8, !tbaa !37
  %14 = sub i64 %13, %4
  %15 = lshr i64 %14, 1
  %16 = getelementptr inbounds i8*, i8** %11, i64 %15
  %17 = getelementptr inbounds i8*, i8** %16, i64 %4
  invoke void @_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0, i8** noundef nonnull %16, i8** noundef nonnull %17)
          to label %28 unwind label %18

18:                                               ; preds = %2
  %19 = landingpad { i8*, i32 }
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = call i8* @__cxa_begin_catch(i8* %20) #13
  %22 = bitcast %"class.std::_Deque_base"* %0 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !34
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
  store i8** %16, i8*** %29, align 8, !tbaa !20
  %30 = load i8*, i8** %16, align 8, !tbaa !21
  %31 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 1
  store i8* %30, i8** %31, align 8, !tbaa !19
  %32 = getelementptr inbounds i8, i8* %30, i64 512
  %33 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 2
  store i8* %32, i8** %33, align 8, !tbaa !24
  %34 = getelementptr inbounds i8*, i8** %17, i64 -1
  %35 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 3
  store i8** %34, i8*** %35, align 8, !tbaa !20
  %36 = load i8*, i8** %34, align 8, !tbaa !21
  %37 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 1
  store i8* %36, i8** %37, align 8, !tbaa !19
  %38 = getelementptr inbounds i8, i8* %36, i64 512
  %39 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 2
  store i8* %38, i8** %39, align 8, !tbaa !24
  %40 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 1
  %41 = load i8*, i8** %40, align 8, !tbaa !38
  %42 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 0
  store i8* %41, i8** %42, align 8, !tbaa !39
  %43 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 1
  %44 = load i8*, i8** %43, align 8, !tbaa !40
  %45 = and i64 %1, 511
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 0
  store i8* %46, i8** %47, align 8, !tbaa !25
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
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0, i8** noundef %1, i8** noundef %2) local_unnamed_addr #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = icmp ult i8** %1, %2
  br i1 %4, label %5, label %25

5:                                                ; preds = %3, %8
  %6 = phi i8** [ %9, %8 ], [ %1, %3 ]
  %7 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef 512) #15
          to label %8 unwind label %11

8:                                                ; preds = %5
  store i8* %7, i8** %6, align 8, !tbaa !21
  %9 = getelementptr inbounds i8*, i8** %6, i64 1
  %10 = icmp ult i8** %9, %2
  br i1 %10, label %5, label %25, !llvm.loop !41

11:                                               ; preds = %5
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  %14 = call i8* @__cxa_begin_catch(i8* %13) #13
  %15 = icmp ugt i8** %6, %1
  br i1 %15, label %16, label %21

16:                                               ; preds = %11, %16
  %17 = phi i8** [ %19, %16 ], [ %1, %11 ]
  %18 = load i8*, i8** %17, align 8, !tbaa !21
  call void @_ZdlPv(i8* noundef %18) #13
  %19 = getelementptr inbounds i8*, i8** %17, i64 1
  %20 = icmp ult i8** %19, %6
  br i1 %20, label %16, label %21, !llvm.loop !36

21:                                               ; preds = %16, %11
  invoke void @__cxa_rethrow() #16
          to label %29 unwind label %22

22:                                               ; preds = %21
  %23 = landingpad { i8*, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %24 unwind label %26

24:                                               ; preds = %22
  resume { i8*, i32 } %23

25:                                               ; preds = %8, %3
  ret void

26:                                               ; preds = %22
  %27 = landingpad { i8*, i32 }
          catch i8* null
  %28 = extractvalue { i8*, i32 } %27, 0
  call void @__clang_call_terminate(i8* %28) #14
  unreachable

29:                                               ; preds = %21
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
define linkonce_odr dso_local void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, i8* noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #9 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %4 = load i8**, i8*** %3, align 8, !tbaa !20
  %5 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %6 = load i8**, i8*** %5, align 8, !tbaa !20
  %7 = ptrtoint i8** %4 to i64
  %8 = ptrtoint i8** %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = icmp ne i8** %4, null
  %12 = sext i1 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = shl nsw i64 %13, 9
  %15 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !14
  %17 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %18 = load i8*, i8** %17, align 8, !tbaa !19
  %19 = ptrtoint i8* %16 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 2
  %22 = load i8*, i8** %21, align 8, !tbaa !24
  %23 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 0
  %24 = load i8*, i8** %23, align 8, !tbaa !14
  %25 = ptrtoint i8* %22 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %19, %20
  %28 = add i64 %27, %25
  %29 = add i64 %28, %14
  %30 = sub i64 %29, %26
  %31 = icmp eq i64 %30, 9223372036854775807
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #16
  unreachable

33:                                               ; preds = %2
  %34 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %35 = load i64, i64* %34, align 8, !tbaa !37
  %36 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8, !tbaa !34
  %38 = ptrtoint i8** %37 to i64
  %39 = sub i64 %7, %38
  %40 = ashr exact i64 %39, 3
  %41 = sub i64 %35, %40
  %42 = icmp ult i64 %41, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  call void @_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %44

44:                                               ; preds = %33, %43
  %45 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 512) #15
  %46 = load i8**, i8*** %3, align 8, !tbaa !22
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  store i8* %45, i8** %47, align 8, !tbaa !21
  %48 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %49 = load i8*, i8** %48, align 8, !tbaa !25
  %50 = load i8, i8* %1, align 1, !tbaa !13
  store i8 %50, i8* %49, align 1, !tbaa !13
  %51 = load i8**, i8*** %3, align 8, !tbaa !22
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  store i8** %52, i8*** %53, align 8, !tbaa !20
  %54 = load i8*, i8** %52, align 8, !tbaa !21
  %55 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  store i8* %54, i8** %55, align 8, !tbaa !19
  %56 = getelementptr inbounds i8, i8* %54, i64 512
  %57 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 2
  store i8* %56, i8** %57, align 8, !tbaa !24
  store i8* %54, i8** %48, align 8, !tbaa !25
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) local_unnamed_addr #10

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %5 = load i8**, i8*** %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %7 = load i8**, i8*** %6, align 8, !tbaa !35
  %8 = ptrtoint i8** %5 to i64
  %9 = ptrtoint i8** %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !tbaa !37
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %3
  %19 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8, !tbaa !34
  %21 = sub i64 %15, %13
  %22 = lshr i64 %21, 1
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = select i1 %2, i64 %1, i64 0
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  %26 = icmp ult i8** %25, %7
  %27 = getelementptr inbounds i8*, i8** %5, i64 1
  %28 = ptrtoint i8** %27 to i64
  %29 = sub i64 %28, %9
  %30 = icmp eq i64 %29, 0
  br i1 %26, label %31, label %35

31:                                               ; preds = %18
  br i1 %30, label %76, label %32

32:                                               ; preds = %31
  %33 = bitcast i8** %25 to i8*
  %34 = bitcast i8** %7 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %33, i8* nonnull align 8 %34, i64 %29, i1 false) #13
  br label %76

35:                                               ; preds = %18
  br i1 %30, label %76, label %36

36:                                               ; preds = %35
  %37 = ashr exact i64 %29, 3
  %38 = getelementptr inbounds i8*, i8** %25, i64 %12
  %39 = sub nsw i64 0, %37
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  %41 = bitcast i8** %40 to i8*
  %42 = bitcast i8** %7 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 %29, i1 false) #13
  br label %76

43:                                               ; preds = %3
  %44 = icmp ult i64 %15, %1
  %45 = select i1 %44, i64 %1, i64 %15
  %46 = add i64 %15, 2
  %47 = add i64 %46, %45
  %48 = icmp ugt i64 %47, 1152921504606846975
  br i1 %48, label %49, label %53, !prof !42

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
  %56 = bitcast i8* %55 to i8**
  %57 = sub i64 %47, %13
  %58 = lshr i64 %57, 1
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = select i1 %2, i64 %1, i64 0
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  %62 = load i8**, i8*** %6, align 8, !tbaa !35
  %63 = load i8**, i8*** %4, align 8, !tbaa !22
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = ptrtoint i8** %64 to i64
  %66 = ptrtoint i8** %62 to i64
  %67 = sub i64 %65, %66
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %53
  %70 = bitcast i8** %61 to i8*
  %71 = bitcast i8** %62 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 8 %70, i8* align 8 %71, i64 %67, i1 false) #13
  br label %72

72:                                               ; preds = %53, %69
  %73 = bitcast %"class.std::deque"* %0 to i8**
  %74 = load i8*, i8** %73, align 8, !tbaa !34
  call void @_ZdlPv(i8* noundef %74) #13
  %75 = bitcast %"class.std::deque"* %0 to i8**
  store i8* %55, i8** %75, align 8, !tbaa !34
  store i64 %47, i64* %14, align 8, !tbaa !37
  br label %76

76:                                               ; preds = %36, %35, %32, %31, %72
  %77 = phi i8** [ %61, %72 ], [ %25, %31 ], [ %25, %32 ], [ %25, %35 ], [ %25, %36 ]
  %78 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  store i8** %77, i8*** %78, align 8, !tbaa !20
  %79 = load i8*, i8** %77, align 8, !tbaa !21
  %80 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 1
  store i8* %79, i8** %80, align 8, !tbaa !19
  %81 = getelementptr inbounds i8, i8* %79, i64 512
  %82 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 2
  store i8* %81, i8** %82, align 8, !tbaa !24
  %83 = getelementptr inbounds i8*, i8** %77, i64 %11
  %84 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  store i8** %83, i8*** %84, align 8, !tbaa !20
  %85 = load i8*, i8** %83, align 8, !tbaa !21
  %86 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  store i8* %85, i8** %86, align 8, !tbaa !19
  %87 = getelementptr inbounds i8, i8* %85, i64 512
  %88 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 2
  store i8* %87, i8** %88, align 8, !tbaa !24
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #12

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT_reprocessed.cpp() #3 section ".text.startup" {
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
!5 = !{!6, !8, i64 0}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !7, i64 0, !11, i64 8, !9, i64 16}
!7 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!6, !11, i64 8}
!13 = !{!9, !9, i64 0}
!14 = !{!15, !8, i64 0}
!15 = !{!"_ZTSSt15_Deque_iteratorIcRcPcE", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZNSt5dequeIcSaIcEE3endEv: argument 0"}
!18 = distinct !{!18, !"_ZNSt5dequeIcSaIcEE3endEv"}
!19 = !{!15, !8, i64 8}
!20 = !{!15, !8, i64 24}
!21 = !{!8, !8, i64 0}
!22 = !{!23, !8, i64 72}
!23 = !{!"_ZTSNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataE", !8, i64 0, !11, i64 8, !15, i64 16, !15, i64 48}
!24 = !{!15, !8, i64 16}
!25 = !{!23, !8, i64 48}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZNSt5dequeIcSaIcEE3endEv: argument 0"}
!28 = distinct !{!28, !"_ZNSt5dequeIcSaIcEE3endEv"}
!29 = distinct !{!29, !30, !31}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!23, !8, i64 64}
!33 = distinct !{!33, !31}
!34 = !{!23, !8, i64 0}
!35 = !{!23, !8, i64 40}
!36 = distinct !{!36, !30, !31}
!37 = !{!23, !11, i64 8}
!38 = !{!23, !8, i64 24}
!39 = !{!23, !8, i64 16}
!40 = !{!23, !8, i64 56}
!41 = distinct !{!41, !30, !31}
!42 = !{!"branch_weights", i32 1, i32 2000}
