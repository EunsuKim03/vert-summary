; ModuleID = 'benchmark/cpp_transcoder/LENGTH_LONGEST_SUB_STRING_CAN_MAKE_REMOVED/LENGTH_LONGEST_SUB_STRING_CAN_MAKE_REMOVED_processed.cpp'
source_filename = "benchmark/cpp_transcoder/LENGTH_LONGEST_SUB_STRING_CAN_MAKE_REMOVED/LENGTH_LONGEST_SUB_STRING_CAN_MAKE_REMOVED_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::pair<char, int>, std::allocator<std::pair<char, int>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<char, int>, std::allocator<std::pair<char, int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<char, int>, std::allocator<std::pair<char, int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<char, int>, std::allocator<std::pair<char, int>>>::_Vector_impl_data" = type { %"struct.std::pair"*, %"struct.std::pair"*, %"struct.std::pair"* }
%"struct.std::pair" = type { i8, i32 }

$_ZNSt6vectorISt4pairIciESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LENGTH_LONGEST_SUB_STRING_CAN_MAKE_REMOVED_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::vector", align 8
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to %"struct.std::pair"*
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to %"struct.std::pair"*
  %7 = bitcast %"class.std::vector"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false) #10
  %8 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #10
  store i8 64, i8* %8, align 8, !tbaa !5
  %9 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %4, i64 0, i32 1
  store i32 -1, i32* %9, align 4, !tbaa !10
  %10 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %2, i64 0, i32 0, i32 0, i32 0, i32 1
  %11 = load %"struct.std::pair"*, %"struct.std::pair"** %10, align 8, !tbaa !11
  %12 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %2, i64 0, i32 0, i32 0, i32 0, i32 2
  %13 = load %"struct.std::pair"*, %"struct.std::pair"** %12, align 8, !tbaa !14
  %14 = icmp eq %"struct.std::pair"* %11, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = bitcast %"struct.std::pair"* %11 to i64*
  %17 = load i64, i64* %3, align 8
  store i64 %17, i64* %16, align 4
  %18 = load %"struct.std::pair"*, %"struct.std::pair"** %10, align 8, !tbaa !11
  %19 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %18, i64 1
  store %"struct.std::pair"* %19, %"struct.std::pair"** %10, align 8, !tbaa !11
  br label %21

20:                                               ; preds = %1
  invoke void @_ZNSt6vectorISt4pairIciESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %2, %"struct.std::pair"* %11, %"struct.std::pair"* noundef nonnull align 4 dereferenceable(8) %4)
          to label %21 unwind label %38

21:                                               ; preds = %15, %20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #10
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %23 = load i64, i64* %22, align 8, !tbaa !15
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = bitcast i64* %5 to i8*
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %28 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %6, i64 0, i32 1
  %29 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %2, i64 0, i32 0, i32 0, i32 0, i32 0
  br label %40

30:                                               ; preds = %89, %21
  %31 = phi i32 [ 0, %21 ], [ %96, %89 ]
  %32 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %2, i64 0, i32 0, i32 0, i32 0, i32 0
  %33 = load %"struct.std::pair"*, %"struct.std::pair"** %32, align 8, !tbaa !19
  %34 = icmp eq %"struct.std::pair"* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = getelementptr %"struct.std::pair", %"struct.std::pair"* %33, i64 0, i32 0
  call void @_ZdlPv(i8* noundef %36) #10
  br label %37

37:                                               ; preds = %30, %35
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #10
  ret i32 %31

38:                                               ; preds = %20
  %39 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #10
  br label %100

40:                                               ; preds = %25, %89
  %41 = phi i64 [ 0, %25 ], [ %97, %89 ]
  %42 = phi i32 [ 0, %25 ], [ %96, %89 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #10
  %43 = load i8*, i8** %27, align 8, !tbaa !20
  %44 = getelementptr inbounds i8, i8* %43, i64 %41
  %45 = load i8, i8* %44, align 1, !tbaa !21
  store i8 %45, i8* %26, align 8, !tbaa !5
  %46 = trunc i64 %41 to i32
  store i32 %46, i32* %28, align 4, !tbaa !10
  %47 = load %"struct.std::pair"*, %"struct.std::pair"** %10, align 8, !tbaa !11
  %48 = load %"struct.std::pair"*, %"struct.std::pair"** %12, align 8, !tbaa !14
  %49 = icmp eq %"struct.std::pair"* %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %40
  %51 = bitcast %"struct.std::pair"* %47 to i64*
  %52 = load i64, i64* %5, align 8
  store i64 %52, i64* %51, align 4
  %53 = load %"struct.std::pair"*, %"struct.std::pair"** %10, align 8, !tbaa !11
  %54 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %53, i64 1
  store %"struct.std::pair"* %54, %"struct.std::pair"** %10, align 8, !tbaa !11
  br label %56

55:                                               ; preds = %40
  invoke void @_ZNSt6vectorISt4pairIciESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %2, %"struct.std::pair"* %47, %"struct.std::pair"* noundef nonnull align 4 dereferenceable(8) %6)
          to label %56 unwind label %86

56:                                               ; preds = %50, %55
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #10
  %57 = load %"struct.std::pair"*, %"struct.std::pair"** %29, align 8, !tbaa !19
  %58 = ptrtoint %"struct.std::pair"* %57 to i64
  %59 = load %"struct.std::pair"*, %"struct.std::pair"** %10, align 8, !tbaa !11
  %60 = ptrtoint %"struct.std::pair"* %59 to i64
  %61 = sub i64 %60, %58
  %62 = icmp ugt i64 %61, 16
  br i1 %62, label %63, label %89

63:                                               ; preds = %56, %81
  %64 = phi i64 [ %84, %81 ], [ %61, %56 ]
  %65 = phi %"struct.std::pair"* [ %82, %81 ], [ %59, %56 ]
  %66 = ashr exact i64 %64, 3
  %67 = add nsw i64 %66, -3
  %68 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %57, i64 %67, i32 0
  %69 = load i8, i8* %68, align 4, !tbaa !5
  %70 = icmp eq i8 %69, 49
  br i1 %70, label %71, label %89

71:                                               ; preds = %63
  %72 = add nsw i64 %66, -2
  %73 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %57, i64 %72, i32 0
  %74 = load i8, i8* %73, align 4, !tbaa !5
  %75 = icmp eq i8 %74, 48
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = add nsw i64 %66, -1
  %78 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %57, i64 %77, i32 0
  %79 = load i8, i8* %78, align 4, !tbaa !5
  %80 = icmp eq i8 %79, 48
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %65, i64 -3
  store %"struct.std::pair"* %82, %"struct.std::pair"** %10, align 8, !tbaa !11
  %83 = ptrtoint %"struct.std::pair"* %82 to i64
  %84 = sub i64 %83, %58
  %85 = icmp ugt i64 %84, 16
  br i1 %85, label %63, label %89, !llvm.loop !22

86:                                               ; preds = %55
  %87 = landingpad { i8*, i32 }
          cleanup
  %88 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %88) #10
  br label %100

89:                                               ; preds = %76, %71, %63, %81, %56
  %90 = phi %"struct.std::pair"* [ %59, %56 ], [ %65, %76 ], [ %65, %71 ], [ %65, %63 ], [ %82, %81 ]
  %91 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %90, i64 -1, i32 1
  %92 = load i32, i32* %91, align 4, !tbaa !10
  %93 = trunc i64 %41 to i32
  %94 = sub nsw i32 %93, %92
  %95 = icmp slt i32 %42, %94
  %96 = select i1 %95, i32 %94, i32 %42
  %97 = add nuw i64 %41, 1
  %98 = load i64, i64* %22, align 8, !tbaa !15
  %99 = icmp ugt i64 %98, %97
  br i1 %99, label %40, label %30, !llvm.loop !25

100:                                              ; preds = %86, %38
  %101 = phi { i8*, i32 } [ %87, %86 ], [ %39, %38 ]
  %102 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %2, i64 0, i32 0, i32 0, i32 0, i32 0
  %103 = load %"struct.std::pair"*, %"struct.std::pair"** %102, align 8, !tbaa !19
  %104 = icmp eq %"struct.std::pair"* %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = getelementptr %"struct.std::pair", %"struct.std::pair"* %103, i64 0, i32 0
  call void @_ZdlPv(i8* noundef %106) #10
  br label %107

107:                                              ; preds = %100, %105
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #10
  resume { i8*, i32 } %101
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIciESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, %"struct.std::pair"* %1, %"struct.std::pair"* noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %5 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %7 = load %"struct.std::pair"*, %"struct.std::pair"** %6, align 8, !tbaa !19
  %8 = ptrtoint %"struct.std::pair"* %5 to i64
  %9 = ptrtoint %"struct.std::pair"* %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp eq i64 %10, 9223372036854775800
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #11
  unreachable

14:                                               ; preds = %3
  %15 = icmp eq i64 %10, 0
  %16 = select i1 %15, i64 1, i64 %11
  %17 = add nsw i64 %16, %11
  %18 = icmp ult i64 %17, %11
  %19 = icmp ugt i64 %17, 1152921504606846975
  %20 = or i1 %18, %19
  %21 = select i1 %20, i64 1152921504606846975, i64 %17
  %22 = ptrtoint %"struct.std::pair"* %1 to i64
  %23 = sub i64 %22, %9
  %24 = ashr exact i64 %23, 3
  %25 = icmp eq i64 %21, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %14
  %27 = icmp ugt i64 %21, 1152921504606846975
  br i1 %27, label %28, label %32, !prof !26

28:                                               ; preds = %26
  %29 = icmp ugt i64 %21, 2305843009213693951
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  call void @_ZSt28__throw_bad_array_new_lengthv() #11
  unreachable

31:                                               ; preds = %28
  call void @_ZSt17__throw_bad_allocv() #11
  unreachable

32:                                               ; preds = %26
  %33 = shl i64 %21, 3
  %34 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %33) #12
  %35 = bitcast i8* %34 to %"struct.std::pair"*
  br label %36

36:                                               ; preds = %14, %32
  %37 = phi %"struct.std::pair"* [ %35, %32 ], [ null, %14 ]
  %38 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %37, i64 %24
  %39 = bitcast %"struct.std::pair"* %2 to i64*
  %40 = bitcast %"struct.std::pair"* %38 to i64*
  %41 = load i64, i64* %39, align 4
  store i64 %41, i64* %40, align 4
  %42 = icmp eq %"struct.std::pair"* %7, %1
  br i1 %42, label %52, label %43

43:                                               ; preds = %36, %43
  %44 = phi %"struct.std::pair"* [ %50, %43 ], [ %37, %36 ]
  %45 = phi %"struct.std::pair"* [ %49, %43 ], [ %7, %36 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !27) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !30) #10
  %46 = bitcast %"struct.std::pair"* %45 to i64*
  %47 = bitcast %"struct.std::pair"* %44 to i64*
  %48 = load i64, i64* %46, align 4, !alias.scope !30, !noalias !27
  store i64 %48, i64* %47, align 4, !alias.scope !27, !noalias !30
  %49 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %45, i64 1
  %50 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %44, i64 1
  %51 = icmp eq %"struct.std::pair"* %49, %1
  br i1 %51, label %52, label %43, !llvm.loop !32

52:                                               ; preds = %43, %36
  %53 = phi %"struct.std::pair"* [ %37, %36 ], [ %50, %43 ]
  %54 = getelementptr %"struct.std::pair", %"struct.std::pair"* %53, i64 1
  %55 = icmp eq %"struct.std::pair"* %5, %1
  br i1 %55, label %65, label %56

56:                                               ; preds = %52, %56
  %57 = phi %"struct.std::pair"* [ %63, %56 ], [ %54, %52 ]
  %58 = phi %"struct.std::pair"* [ %62, %56 ], [ %1, %52 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !33) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !36) #10
  %59 = bitcast %"struct.std::pair"* %58 to i64*
  %60 = bitcast %"struct.std::pair"* %57 to i64*
  %61 = load i64, i64* %59, align 4, !alias.scope !36, !noalias !33
  store i64 %61, i64* %60, align 4, !alias.scope !33, !noalias !36
  %62 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %58, i64 1
  %63 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %57, i64 1
  %64 = icmp eq %"struct.std::pair"* %62, %5
  br i1 %64, label %65, label %56, !llvm.loop !32

65:                                               ; preds = %56, %52
  %66 = phi %"struct.std::pair"* [ %54, %52 ], [ %63, %56 ]
  %67 = icmp eq %"struct.std::pair"* %7, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = getelementptr %"struct.std::pair", %"struct.std::pair"* %7, i64 0, i32 0
  call void @_ZdlPv(i8* noundef %69) #10
  br label %70

70:                                               ; preds = %65, %68
  %71 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 2
  store %"struct.std::pair"* %37, %"struct.std::pair"** %6, align 8, !tbaa !19
  store %"struct.std::pair"* %66, %"struct.std::pair"** %4, align 8, !tbaa !11
  %72 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %37, i64 %21
  store %"struct.std::pair"* %72, %"struct.std::pair"** %71, align 8, !tbaa !14
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

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LENGTH_LONGEST_SUB_STRING_CAN_MAKE_REMOVED_processed.cpp() #3 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_ZTSSt4pairIciE", !7, i64 0, !9, i64 4}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!6, !9, i64 4}
!11 = !{!12, !13, i64 8}
!12 = !{!"_ZTSNSt12_Vector_baseISt4pairIciESaIS1_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!12, !13, i64 16}
!15 = !{!16, !18, i64 8}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !18, i64 8, !7, i64 16}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!18 = !{!"long", !7, i64 0}
!19 = !{!12, !13, i64 0}
!20 = !{!16, !13, i64 0}
!21 = !{!7, !7, i64 0}
!22 = distinct !{!22, !23, !24}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !23, !24}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZSt19__relocate_object_aISt4pairIciES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!29 = distinct !{!29, !"_ZSt19__relocate_object_aISt4pairIciES1_SaIS1_EEvPT_PT0_RT1_"}
!30 = !{!31}
!31 = distinct !{!31, !29, !"_ZSt19__relocate_object_aISt4pairIciES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!32 = distinct !{!32, !23, !24}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZSt19__relocate_object_aISt4pairIciES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!35 = distinct !{!35, !"_ZSt19__relocate_object_aISt4pairIciES1_SaIS1_EEvPT_PT0_RT1_"}
!36 = !{!37}
!37 = distinct !{!37, !35, !"_ZSt19__relocate_object_aISt4pairIciES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
