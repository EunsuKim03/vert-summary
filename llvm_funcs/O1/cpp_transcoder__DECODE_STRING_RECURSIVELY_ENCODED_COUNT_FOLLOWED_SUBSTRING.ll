; ModuleID = 'llvm/cpp_transcoder/DECODE_STRING_RECURSIVELY_ENCODED_COUNT_FOLLOWED_SUBSTRING/DECODE_STRING_RECURSIVELY_ENCODED_COUNT_FOLLOWED_SUBSTRING_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/DECODE_STRING_RECURSIVELY_ENCODED_COUNT_FOLLOWED_SUBSTRING/DECODE_STRING_RECURSIVELY_ENCODED_COUNT_FOLLOWED_SUBSTRING_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::stack" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl" }
%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl" = type { %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data" }
%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data" = type { i32**, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { i32*, i32*, i32*, i32** }
%"class.std::stack.3" = type { %"class.std::deque.4" }
%"class.std::deque.4" = type { %"class.std::_Deque_base.5" }
%"class.std::_Deque_base.5" = type { %"struct.std::_Deque_base<char, std::allocator<char>>::_Deque_impl" }
%"struct.std::_Deque_base<char, std::allocator<char>>::_Deque_impl" = type { %"struct.std::_Deque_base<char, std::allocator<char>>::_Deque_impl_data" }
%"struct.std::_Deque_base<char, std::allocator<char>>::_Deque_impl_data" = type { i8**, i64, %"struct.std::_Deque_iterator.6", %"struct.std::_Deque_iterator.6" }
%"struct.std::_Deque_iterator.6" = type { i8*, i8*, i8*, i8** }

$_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev = comdat any

$_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm = comdat any

$_ZNSt11_Deque_baseIiSaIiEE15_M_create_nodesEPPiS3_ = comdat any

$_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm = comdat any

$_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_ = comdat any

$_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_ = comdat any

$_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb = comdat any

$_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_ = comdat any

$_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb = comdat any

$_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJiEEEvDpOT_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DECODE_STRING_RECURSIVELY_ENCODED_COUNT_FOLLOWED_SUBSTRING_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::stack", align 8
  %5 = alloca %"class.std::stack.3", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca i32, align 4
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca i32, align 4
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = bitcast %"class.std::stack"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %12) #14
  %13 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %12, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIiSaIiEE17_M_initialize_mapEm(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %13, i64 noundef 0)
  %14 = bitcast %"class.std::stack.3"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %14) #14
  %15 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %14, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(%"class.std::_Deque_base.5"* noundef nonnull align 8 dereferenceable(80) %15, i64 noundef 0)
          to label %16 unwind label %116

16:                                               ; preds = %2
  %17 = bitcast %"class.std::__cxx11::basic_string"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #14
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %19 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  store %union.anon* %18, %union.anon** %19, align 8, !tbaa !5
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  store i64 0, i64* %21, align 8, !tbaa !10
  %22 = bitcast %union.anon* %18 to i8*
  store i8 0, i8* %22, align 8, !tbaa !13
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %24 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %23, %union.anon** %24, align 8, !tbaa !5
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %26, align 8, !tbaa !10
  %27 = bitcast %union.anon* %23 to i8*
  store i8 0, i8* %27, align 8, !tbaa !13
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %29 = load i64, i64* %28, align 8, !tbaa !10
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %94, label %31

31:                                               ; preds = %16
  %32 = bitcast i32* %7 to i8*
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %34 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %35 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  %36 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0
  %37 = bitcast i32* %10 to i8*
  %38 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %39 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  %40 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0
  %41 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %42 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  %43 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0
  %44 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %45 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0
  %46 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %47 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %48 = bitcast i32** %46 to i8**
  %49 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %50 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  %51 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %52 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0
  %53 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %54 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %55 = bitcast %"class.std::__cxx11::basic_string"* %8 to i8*
  %56 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2
  %58 = bitcast %"class.std::__cxx11::basic_string"* %8 to %union.anon**
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 1
  %60 = bitcast %union.anon* %57 to i8*
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  %62 = bitcast %union.anon* %18 to i8*
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  %64 = getelementptr inbounds %union.anon, %union.anon* %57, i64 0, i32 0
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2, i32 0
  %66 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %67 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  %68 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %69 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %70 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %71 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  %72 = bitcast %"class.std::__cxx11::basic_string"* %9 to i8*
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 2
  %74 = bitcast %"class.std::__cxx11::basic_string"* %9 to %union.anon**
  %75 = bitcast i64* %3 to i8*
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 0, i32 0
  %77 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 2, i32 0
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 0, i32 0
  %79 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 1
  %80 = bitcast %union.anon* %73 to i8*
  %81 = bitcast %union.anon* %23 to i8*
  %82 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %83 = getelementptr inbounds %union.anon, %union.anon* %73, i64 0, i32 0
  %84 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 2, i32 0
  %85 = icmp eq %"class.std::__cxx11::basic_string"* %9, %0
  %86 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  %87 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0
  %88 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %89 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  %90 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0
  %91 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %92 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  %93 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0
  br label %118

94:                                               ; preds = %452, %16
  %95 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %96 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0
  %97 = load i8*, i8** %95, align 8, !tbaa !14
  %98 = load i8*, i8** %96, align 8, !tbaa !14
  %99 = icmp eq i8* %97, %98
  br i1 %99, label %540, label %100

100:                                              ; preds = %94
  %101 = bitcast %"class.std::__cxx11::basic_string"* %11 to i8*
  %102 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %103 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %104 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2
  %105 = bitcast %"class.std::__cxx11::basic_string"* %11 to %union.anon**
  %106 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 1
  %107 = bitcast %union.anon* %104 to i8*
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 0, i32 0
  %109 = bitcast %union.anon* %23 to i8*
  %110 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %111 = getelementptr inbounds %union.anon, %union.anon* %104, i64 0, i32 0
  %112 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2, i32 0
  %113 = icmp eq %"class.std::__cxx11::basic_string"* %11, %0
  %114 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %115 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  br label %461

116:                                              ; preds = %2
  %117 = landingpad { i8*, i32 }
          cleanup
  br label %597

118:                                              ; preds = %31, %452
  %119 = phi i64 [ 0, %31 ], [ %455, %452 ]
  %120 = phi i32 [ 0, %31 ], [ %454, %452 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #14
  store i32 0, i32* %7, align 4, !tbaa !16
  %121 = load i8*, i8** %33, align 8, !tbaa !18
  %122 = getelementptr inbounds i8, i8* %121, i64 %119
  %123 = load i8, i8* %122, align 1, !tbaa !13
  %124 = add i8 %123, -48
  %125 = icmp ult i8 %124, 10
  br i1 %125, label %126, label %162

126:                                              ; preds = %118
  %127 = sext i32 %120 to i64
  %128 = getelementptr inbounds i8, i8* %121, i64 %127
  %129 = load i8, i8* %128, align 1, !tbaa !13
  %130 = add i8 %129, -48
  %131 = icmp ult i8 %130, 10
  br i1 %131, label %132, label %151

132:                                              ; preds = %126
  %133 = sext i32 %120 to i64
  br label %134

134:                                              ; preds = %132, %134
  %135 = phi i64 [ %133, %132 ], [ %142, %134 ]
  %136 = phi i8 [ %129, %132 ], [ %144, %134 ]
  %137 = load i32, i32* %7, align 4, !tbaa !16
  %138 = mul nsw i32 %137, 10
  %139 = sext i8 %136 to i32
  %140 = add nsw i32 %139, -48
  %141 = add i32 %140, %138
  store i32 %141, i32* %7, align 4, !tbaa !16
  %142 = add i64 %135, 1
  %143 = getelementptr inbounds i8, i8* %121, i64 %142
  %144 = load i8, i8* %143, align 1, !tbaa !13
  %145 = add i8 %144, -48
  %146 = icmp ult i8 %145, 10
  br i1 %146, label %134, label %149, !llvm.loop !19

147:                                              ; preds = %451, %430, %421, %384, %163, %161
  %148 = landingpad { i8*, i32 }
          cleanup
  br label %458

149:                                              ; preds = %134
  %150 = trunc i64 %142 to i32
  br label %151

151:                                              ; preds = %149, %126
  %152 = phi i32 [ %120, %126 ], [ %150, %149 ]
  %153 = add nsw i32 %152, -1
  %154 = load i32*, i32** %91, align 8, !tbaa !22
  %155 = load i32*, i32** %92, align 8, !tbaa !25
  %156 = getelementptr inbounds i32, i32* %155, i64 -1
  %157 = icmp eq i32* %154, %156
  br i1 %157, label %161, label %158

158:                                              ; preds = %151
  %159 = load i32, i32* %7, align 4, !tbaa !16
  store i32 %159, i32* %154, align 4, !tbaa !16
  %160 = getelementptr inbounds i32, i32* %154, i64 1
  store i32* %160, i32** %91, align 8, !tbaa !22
  br label %452

161:                                              ; preds = %151
  invoke void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %93, i32* noundef nonnull align 4 dereferenceable(4) %7)
          to label %452 unwind label %147

162:                                              ; preds = %118
  switch i8 %123, label %443 [
    i8 93, label %163
    i8 91, label %406
  ]

163:                                              ; preds = %162
  %164 = load i64, i64* %21, align 8, !tbaa !10
  %165 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef %164, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef 0)
          to label %166 unwind label %147

166:                                              ; preds = %163
  store i32 0, i32* %7, align 4, !tbaa !16
  %167 = load i32*, i32** %44, align 8, !tbaa !26
  %168 = load i32*, i32** %45, align 8, !tbaa !26
  %169 = icmp eq i32* %167, %168
  br i1 %169, label %191, label %170

170:                                              ; preds = %166
  %171 = load i32*, i32** %46, align 8, !tbaa !27, !noalias !28
  %172 = icmp eq i32* %167, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %170
  %174 = load i32**, i32*** %47, align 8, !tbaa !31, !noalias !28
  %175 = getelementptr inbounds i32*, i32** %174, i64 -1
  %176 = load i32*, i32** %175, align 8, !tbaa !32
  %177 = getelementptr inbounds i32, i32* %176, i64 127
  %178 = load i32, i32* %177, align 4, !tbaa !16
  store i32 %178, i32* %7, align 4, !tbaa !16
  %179 = load i8*, i8** %48, align 8, !tbaa !33
  call void @_ZdlPv(i8* noundef %179) #14
  %180 = load i32**, i32*** %49, align 8, !tbaa !34
  %181 = getelementptr inbounds i32*, i32** %180, i64 -1
  store i32** %181, i32*** %49, align 8, !tbaa !31
  %182 = load i32*, i32** %181, align 8, !tbaa !32
  store i32* %182, i32** %46, align 8, !tbaa !27
  %183 = getelementptr inbounds i32, i32* %182, i64 128
  store i32* %183, i32** %50, align 8, !tbaa !35
  %184 = getelementptr inbounds i32, i32* %182, i64 127
  br label %189

185:                                              ; preds = %170
  %186 = getelementptr inbounds i32, i32* %167, i64 -1
  %187 = load i32, i32* %186, align 4, !tbaa !16
  store i32 %187, i32* %7, align 4, !tbaa !16
  %188 = getelementptr inbounds i32, i32* %167, i64 -1
  br label %189

189:                                              ; preds = %185, %173
  %190 = phi i32* [ %188, %185 ], [ %184, %173 ]
  store i32* %190, i32** %44, align 8, !tbaa !22
  br label %191

191:                                              ; preds = %189, %166
  %192 = load i8*, i8** %51, align 8, !tbaa !14
  %193 = load i8*, i8** %52, align 8, !tbaa !14
  %194 = icmp eq i8* %192, %193
  br i1 %194, label %310, label %195

195:                                              ; preds = %191, %280
  %196 = phi i1 [ %283, %280 ], [ %194, %191 ]
  %197 = phi i8* [ %281, %280 ], [ %192, %191 ]
  %198 = load i8*, i8** %53, align 8, !tbaa !36, !noalias !37
  %199 = icmp eq i8* %197, %198
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = load i8**, i8*** %54, align 8, !tbaa !40, !noalias !37
  %202 = getelementptr inbounds i8*, i8** %201, i64 -1
  %203 = load i8*, i8** %202, align 8, !tbaa !32
  %204 = getelementptr inbounds i8, i8* %203, i64 512
  br label %205

205:                                              ; preds = %195, %200
  %206 = phi i8* [ %204, %200 ], [ %197, %195 ]
  %207 = getelementptr inbounds i8, i8* %206, i64 -1
  %208 = load i8, i8* %207, align 1, !tbaa !13
  %209 = icmp eq i8 %208, 91
  br i1 %209, label %285, label %210

210:                                              ; preds = %205
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %55) #14
  br i1 %199, label %211, label %216

211:                                              ; preds = %210
  %212 = load i8**, i8*** %56, align 8, !tbaa !40, !noalias !41
  %213 = getelementptr inbounds i8*, i8** %212, i64 -1
  %214 = load i8*, i8** %213, align 8, !tbaa !32
  %215 = getelementptr inbounds i8, i8* %214, i64 512
  br label %216

216:                                              ; preds = %210, %211
  %217 = phi i8* [ %215, %211 ], [ %197, %210 ]
  %218 = getelementptr inbounds i8, i8* %217, i64 -1
  %219 = load i8, i8* %218, align 1, !tbaa !13
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  store %union.anon* %57, %union.anon** %58, align 8, !tbaa !5, !alias.scope !44
  store i64 0, i64* %59, align 8, !tbaa !10, !alias.scope !44
  store i8 0, i8* %60, align 8, !tbaa !13, !alias.scope !44
  %220 = load i64, i64* %21, align 8, !tbaa !10, !noalias !44
  %221 = add i64 %220, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %221)
          to label %222 unwind label %229

222:                                              ; preds = %216
  %223 = load i64, i64* %59, align 8, !tbaa !10, !alias.scope !44
  %224 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %223, i64 noundef 0, i64 noundef 1, i8 noundef signext %219)
          to label %225 unwind label %229

225:                                              ; preds = %222
  %226 = load i8*, i8** %20, align 8, !tbaa !18, !noalias !44
  %227 = load i64, i64* %21, align 8, !tbaa !10, !noalias !44
  %228 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef %226, i64 noundef %227)
          to label %237 unwind label %229

229:                                              ; preds = %225, %222, %216
  %230 = landingpad { i8*, i32 }
          cleanup
  %231 = bitcast %"class.std::__cxx11::basic_string"* %8 to i8*
  %232 = bitcast %union.anon* %57 to i8*
  %233 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8, !tbaa !18, !alias.scope !44
  %235 = icmp eq i8* %234, %232
  br i1 %235, label %284, label %236

236:                                              ; preds = %229
  call void @_ZdlPv(i8* noundef %234) #14
  br label %284

237:                                              ; preds = %225
  %238 = load i8*, i8** %61, align 8, !tbaa !18
  %239 = icmp eq i8* %238, %60
  br i1 %239, label %240, label %253

240:                                              ; preds = %237
  %241 = load i64, i64* %59, align 8, !tbaa !10
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %249, label %243

243:                                              ; preds = %240
  %244 = load i8*, i8** %20, align 8, !tbaa !18
  %245 = icmp eq i64 %241, 1
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = load i8, i8* %238, align 1, !tbaa !13
  store i8 %247, i8* %244, align 1, !tbaa !13
  br label %249

248:                                              ; preds = %243
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %244, i8* align 1 %238, i64 %241, i1 false) #14
  br label %249

249:                                              ; preds = %248, %246, %240
  %250 = load i64, i64* %59, align 8, !tbaa !10
  store i64 %250, i64* %21, align 8, !tbaa !10
  %251 = load i8*, i8** %20, align 8, !tbaa !18
  %252 = getelementptr inbounds i8, i8* %251, i64 %250
  store i8 0, i8* %252, align 1, !tbaa !13
  br label %263

253:                                              ; preds = %237
  %254 = load i8*, i8** %20, align 8, !tbaa !18
  %255 = icmp eq i8* %254, %62
  %256 = load i64, i64* %63, align 8
  store i8* %238, i8** %20, align 8, !tbaa !18
  %257 = load i64, i64* %59, align 8, !tbaa !10
  store i64 %257, i64* %21, align 8, !tbaa !10
  %258 = load i64, i64* %64, align 8, !tbaa !13
  store i64 %258, i64* %63, align 8, !tbaa !13
  %259 = icmp eq i8* %254, null
  %260 = or i1 %255, %259
  br i1 %260, label %262, label %261

261:                                              ; preds = %253
  store i8* %254, i8** %61, align 8, !tbaa !18
  store i64 %256, i64* %65, align 8, !tbaa !13
  br label %263

262:                                              ; preds = %253
  store %union.anon* %57, %union.anon** %58, align 8, !tbaa !18
  br label %263

263:                                              ; preds = %249, %261, %262
  store i64 0, i64* %59, align 8, !tbaa !10
  %264 = load i8*, i8** %61, align 8, !tbaa !18
  store i8 0, i8* %264, align 1, !tbaa !13
  %265 = load i8*, i8** %61, align 8, !tbaa !18
  %266 = icmp eq i8* %265, %60
  br i1 %266, label %268, label %267

267:                                              ; preds = %263
  call void @_ZdlPv(i8* noundef %265) #14
  br label %268

268:                                              ; preds = %263, %267
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %55) #14
  %269 = load i8*, i8** %51, align 8, !tbaa !47
  %270 = load i8*, i8** %53, align 8, !tbaa !49
  %271 = icmp eq i8* %269, %270
  br i1 %271, label %274, label %272

272:                                              ; preds = %268
  %273 = getelementptr inbounds i8, i8* %269, i64 -1
  br label %280

274:                                              ; preds = %268
  call void @_ZdlPv(i8* noundef %270) #14
  %275 = load i8**, i8*** %66, align 8, !tbaa !50
  %276 = getelementptr inbounds i8*, i8** %275, i64 -1
  store i8** %276, i8*** %66, align 8, !tbaa !40
  %277 = load i8*, i8** %276, align 8, !tbaa !32
  store i8* %277, i8** %53, align 8, !tbaa !36
  %278 = getelementptr inbounds i8, i8* %277, i64 512
  store i8* %278, i8** %67, align 8, !tbaa !51
  %279 = getelementptr inbounds i8, i8* %277, i64 511
  br label %280

280:                                              ; preds = %272, %274
  %281 = phi i8* [ %273, %272 ], [ %279, %274 ]
  store i8* %281, i8** %51, align 8, !tbaa !47
  %282 = load i8*, i8** %52, align 8, !tbaa !14
  %283 = icmp eq i8* %281, %282
  br i1 %283, label %310, label %195, !llvm.loop !52

284:                                              ; preds = %229, %236
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %231) #14
  br label %458

285:                                              ; preds = %205
  br i1 %196, label %310, label %286

286:                                              ; preds = %285
  %287 = load i8*, i8** %68, align 8, !tbaa !36, !noalias !53
  %288 = icmp eq i8* %197, %287
  br i1 %288, label %289, label %294

289:                                              ; preds = %286
  %290 = load i8**, i8*** %69, align 8, !tbaa !40, !noalias !53
  %291 = getelementptr inbounds i8*, i8** %290, i64 -1
  %292 = load i8*, i8** %291, align 8, !tbaa !32
  %293 = getelementptr inbounds i8, i8* %292, i64 512
  br label %294

294:                                              ; preds = %286, %289
  %295 = phi i8* [ %293, %289 ], [ %197, %286 ]
  %296 = getelementptr inbounds i8, i8* %295, i64 -1
  %297 = load i8, i8* %296, align 1, !tbaa !13
  %298 = icmp eq i8 %297, 91
  br i1 %298, label %299, label %310

299:                                              ; preds = %294
  br i1 %288, label %302, label %300

300:                                              ; preds = %299
  %301 = getelementptr inbounds i8, i8* %197, i64 -1
  br label %308

302:                                              ; preds = %299
  call void @_ZdlPv(i8* noundef %287) #14
  %303 = load i8**, i8*** %70, align 8, !tbaa !50
  %304 = getelementptr inbounds i8*, i8** %303, i64 -1
  store i8** %304, i8*** %70, align 8, !tbaa !40
  %305 = load i8*, i8** %304, align 8, !tbaa !32
  store i8* %305, i8** %68, align 8, !tbaa !36
  %306 = getelementptr inbounds i8, i8* %305, i64 512
  store i8* %306, i8** %71, align 8, !tbaa !51
  %307 = getelementptr inbounds i8, i8* %305, i64 511
  br label %308

308:                                              ; preds = %300, %302
  %309 = phi i8* [ %301, %300 ], [ %307, %302 ]
  store i8* %309, i8** %51, align 8, !tbaa !47
  br label %310

310:                                              ; preds = %280, %191, %308, %294, %285
  %311 = load i32, i32* %7, align 4, !tbaa !16
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %316, label %313

313:                                              ; preds = %375, %310
  %314 = load i64, i64* %26, align 8, !tbaa !10
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %384, label %387

316:                                              ; preds = %310, %375
  %317 = phi i32 [ %376, %375 ], [ 0, %310 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %72) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  store %union.anon* %73, %union.anon** %74, align 8, !tbaa !5, !alias.scope !56
  %318 = load i8*, i8** %25, align 8, !tbaa !18, !noalias !56
  %319 = load i64, i64* %26, align 8, !tbaa !10, !noalias !56
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %75) #14, !noalias !56
  store i64 %319, i64* %3, align 8, !tbaa !59, !noalias !56
  %320 = icmp ugt i64 %319, 15
  br i1 %320, label %321, label %325

321:                                              ; preds = %316
  %322 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9, i64* noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %323 unwind label %379

323:                                              ; preds = %321
  store i8* %322, i8** %76, align 8, !tbaa !18, !alias.scope !56
  %324 = load i64, i64* %3, align 8, !tbaa !59, !noalias !56
  store i64 %324, i64* %77, align 8, !tbaa !13, !alias.scope !56
  br label %325

325:                                              ; preds = %323, %316
  %326 = load i8*, i8** %78, align 8, !tbaa !18, !alias.scope !56
  switch i64 %319, label %329 [
    i64 1, label %327
    i64 0, label %330
  ]

327:                                              ; preds = %325
  %328 = load i8, i8* %318, align 1, !tbaa !13
  store i8 %328, i8* %326, align 1, !tbaa !13
  br label %330

329:                                              ; preds = %325
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %326, i8* align 1 %318, i64 %319, i1 false) #14
  br label %330

330:                                              ; preds = %329, %327, %325
  %331 = load i64, i64* %3, align 8, !tbaa !59, !noalias !56
  store i64 %331, i64* %79, align 8, !tbaa !10, !alias.scope !56
  %332 = load i8*, i8** %78, align 8, !tbaa !18, !alias.scope !56
  %333 = getelementptr inbounds i8, i8* %332, i64 %331
  store i8 0, i8* %333, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %75) #14, !noalias !56
  %334 = load i8*, i8** %20, align 8, !tbaa !18, !noalias !56
  %335 = load i64, i64* %21, align 8, !tbaa !10, !noalias !56
  %336 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef %334, i64 noundef %335)
          to label %343 unwind label %337

337:                                              ; preds = %330
  %338 = landingpad { i8*, i32 }
          cleanup
  %339 = load i8*, i8** %78, align 8, !tbaa !18, !alias.scope !56
  %340 = bitcast %union.anon* %73 to i8*
  %341 = icmp eq i8* %339, %340
  br i1 %341, label %381, label %342

342:                                              ; preds = %337
  call void @_ZdlPv(i8* noundef %339) #14
  br label %381

343:                                              ; preds = %330
  %344 = load i8*, i8** %78, align 8, !tbaa !18
  %345 = icmp eq i8* %344, %80
  br i1 %345, label %346, label %360

346:                                              ; preds = %343
  br i1 %85, label %370, label %347, !prof !60

347:                                              ; preds = %346
  %348 = load i64, i64* %79, align 8, !tbaa !10
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %356, label %350

350:                                              ; preds = %347
  %351 = load i8*, i8** %25, align 8, !tbaa !18
  %352 = icmp eq i64 %348, 1
  br i1 %352, label %353, label %355

353:                                              ; preds = %350
  %354 = load i8, i8* %344, align 1, !tbaa !13
  store i8 %354, i8* %351, align 1, !tbaa !13
  br label %356

355:                                              ; preds = %350
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %351, i8* align 1 %344, i64 %348, i1 false) #14
  br label %356

356:                                              ; preds = %355, %353, %347
  %357 = load i64, i64* %79, align 8, !tbaa !10
  store i64 %357, i64* %26, align 8, !tbaa !10
  %358 = load i8*, i8** %25, align 8, !tbaa !18
  %359 = getelementptr inbounds i8, i8* %358, i64 %357
  store i8 0, i8* %359, align 1, !tbaa !13
  br label %370

360:                                              ; preds = %343
  %361 = load i8*, i8** %25, align 8, !tbaa !18
  %362 = icmp eq i8* %361, %81
  %363 = load i64, i64* %82, align 8
  store i8* %344, i8** %25, align 8, !tbaa !18
  %364 = load i64, i64* %79, align 8, !tbaa !10
  store i64 %364, i64* %26, align 8, !tbaa !10
  %365 = load i64, i64* %83, align 8, !tbaa !13
  store i64 %365, i64* %82, align 8, !tbaa !13
  %366 = icmp eq i8* %361, null
  %367 = or i1 %362, %366
  br i1 %367, label %369, label %368

368:                                              ; preds = %360
  store i8* %361, i8** %78, align 8, !tbaa !18
  store i64 %363, i64* %84, align 8, !tbaa !13
  br label %370

369:                                              ; preds = %360
  store %union.anon* %73, %union.anon** %74, align 8, !tbaa !18
  br label %370

370:                                              ; preds = %346, %356, %368, %369
  store i64 0, i64* %79, align 8, !tbaa !10
  %371 = load i8*, i8** %78, align 8, !tbaa !18
  store i8 0, i8* %371, align 1, !tbaa !13
  %372 = load i8*, i8** %78, align 8, !tbaa !18
  %373 = icmp eq i8* %372, %80
  br i1 %373, label %375, label %374

374:                                              ; preds = %370
  call void @_ZdlPv(i8* noundef %372) #14
  br label %375

375:                                              ; preds = %370, %374
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %72) #14
  %376 = add nuw nsw i32 %317, 1
  %377 = load i32, i32* %7, align 4, !tbaa !16
  %378 = icmp slt i32 %376, %377
  br i1 %378, label %316, label %313, !llvm.loop !61

379:                                              ; preds = %321
  %380 = landingpad { i8*, i32 }
          cleanup
  br label %381

381:                                              ; preds = %337, %342, %379
  %382 = phi { i8*, i32 } [ %380, %379 ], [ %338, %342 ], [ %338, %337 ]
  %383 = bitcast %"class.std::__cxx11::basic_string"* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %383) #14
  br label %458

384:                                              ; preds = %400, %313
  %385 = phi i64 [ %314, %313 ], [ %402, %400 ]
  %386 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %385, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef 0)
          to label %452 unwind label %147

387:                                              ; preds = %313, %400
  %388 = phi i64 [ %401, %400 ], [ 0, %313 ]
  %389 = load i8*, i8** %25, align 8, !tbaa !18
  %390 = getelementptr inbounds i8, i8* %389, i64 %388
  %391 = load i8*, i8** %51, align 8, !tbaa !47
  %392 = load i8*, i8** %86, align 8, !tbaa !62
  %393 = getelementptr inbounds i8, i8* %392, i64 -1
  %394 = icmp eq i8* %391, %393
  br i1 %394, label %399, label %395

395:                                              ; preds = %387
  %396 = load i8, i8* %390, align 1, !tbaa !13
  store i8 %396, i8* %391, align 1, !tbaa !13
  %397 = load i8*, i8** %51, align 8, !tbaa !47
  %398 = getelementptr inbounds i8, i8* %397, i64 1
  store i8* %398, i8** %51, align 8, !tbaa !47
  br label %400

399:                                              ; preds = %387
  invoke void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_(%"class.std::deque.4"* noundef nonnull align 8 dereferenceable(80) %87, i8* noundef nonnull align 1 dereferenceable(1) %390)
          to label %400 unwind label %404

400:                                              ; preds = %395, %399
  %401 = add nuw i64 %388, 1
  %402 = load i64, i64* %26, align 8, !tbaa !10
  %403 = icmp ugt i64 %402, %401
  br i1 %403, label %387, label %384, !llvm.loop !63

404:                                              ; preds = %399
  %405 = landingpad { i8*, i32 }
          cleanup
  br label %458

406:                                              ; preds = %162
  %407 = add nsw i32 %120, -1
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i8, i8* %121, i64 %408
  %410 = load i8, i8* %409, align 1, !tbaa !13
  %411 = add i8 %410, -48
  %412 = icmp ult i8 %411, 10
  br i1 %412, label %413, label %422

413:                                              ; preds = %406
  %414 = load i8*, i8** %41, align 8, !tbaa !47
  %415 = load i8*, i8** %42, align 8, !tbaa !62
  %416 = getelementptr inbounds i8, i8* %415, i64 -1
  %417 = icmp eq i8* %414, %416
  br i1 %417, label %421, label %418

418:                                              ; preds = %413
  store i8 %123, i8* %414, align 1, !tbaa !13
  %419 = load i8*, i8** %41, align 8, !tbaa !47
  %420 = getelementptr inbounds i8, i8* %419, i64 1
  store i8* %420, i8** %41, align 8, !tbaa !47
  br label %452

421:                                              ; preds = %413
  invoke void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_(%"class.std::deque.4"* noundef nonnull align 8 dereferenceable(80) %43, i8* noundef nonnull align 1 dereferenceable(1) %122)
          to label %452 unwind label %147

422:                                              ; preds = %406
  %423 = load i8*, i8** %34, align 8, !tbaa !47
  %424 = load i8*, i8** %35, align 8, !tbaa !62
  %425 = getelementptr inbounds i8, i8* %424, i64 -1
  %426 = icmp eq i8* %423, %425
  br i1 %426, label %430, label %427

427:                                              ; preds = %422
  store i8 %123, i8* %423, align 1, !tbaa !13
  %428 = load i8*, i8** %34, align 8, !tbaa !47
  %429 = getelementptr inbounds i8, i8* %428, i64 1
  store i8* %429, i8** %34, align 8, !tbaa !47
  br label %431

430:                                              ; preds = %422
  invoke void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_(%"class.std::deque.4"* noundef nonnull align 8 dereferenceable(80) %36, i8* noundef nonnull align 1 dereferenceable(1) %122)
          to label %431 unwind label %147

431:                                              ; preds = %427, %430
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %37) #14
  store i32 1, i32* %10, align 4, !tbaa !16
  %432 = load i32*, i32** %38, align 8, !tbaa !22
  %433 = load i32*, i32** %39, align 8, !tbaa !25
  %434 = getelementptr inbounds i32, i32* %433, i64 -1
  %435 = icmp eq i32* %432, %434
  br i1 %435, label %438, label %436

436:                                              ; preds = %431
  store i32 1, i32* %432, align 4, !tbaa !16
  %437 = getelementptr inbounds i32, i32* %432, i64 1
  store i32* %437, i32** %38, align 8, !tbaa !22
  br label %439

438:                                              ; preds = %431
  invoke void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJiEEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %40, i32* noundef nonnull align 4 dereferenceable(4) %10)
          to label %439 unwind label %440

439:                                              ; preds = %436, %438
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #14
  br label %452

440:                                              ; preds = %438
  %441 = landingpad { i8*, i32 }
          cleanup
  %442 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %442) #14
  br label %458

443:                                              ; preds = %162
  %444 = load i8*, i8** %88, align 8, !tbaa !47
  %445 = load i8*, i8** %89, align 8, !tbaa !62
  %446 = getelementptr inbounds i8, i8* %445, i64 -1
  %447 = icmp eq i8* %444, %446
  br i1 %447, label %451, label %448

448:                                              ; preds = %443
  store i8 %123, i8* %444, align 1, !tbaa !13
  %449 = load i8*, i8** %88, align 8, !tbaa !47
  %450 = getelementptr inbounds i8, i8* %449, i64 1
  store i8* %450, i8** %88, align 8, !tbaa !47
  br label %452

451:                                              ; preds = %443
  invoke void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_(%"class.std::deque.4"* noundef nonnull align 8 dereferenceable(80) %90, i8* noundef nonnull align 1 dereferenceable(1) %122)
          to label %452 unwind label %147

452:                                              ; preds = %448, %451, %418, %421, %384, %158, %161, %439
  %453 = phi i32 [ %120, %439 ], [ %153, %161 ], [ %153, %158 ], [ %120, %384 ], [ %120, %421 ], [ %120, %418 ], [ %120, %451 ], [ %120, %448 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #14
  %454 = add nsw i32 %453, 1
  %455 = sext i32 %454 to i64
  %456 = load i64, i64* %28, align 8, !tbaa !10
  %457 = icmp ugt i64 %456, %455
  br i1 %457, label %118, label %94, !llvm.loop !64

458:                                              ; preds = %440, %404, %381, %284, %147
  %459 = phi { i8*, i32 } [ %148, %147 ], [ %382, %381 ], [ %405, %404 ], [ %230, %284 ], [ %441, %440 ]
  %460 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %460) #14
  br label %585

461:                                              ; preds = %100, %535
  %462 = phi i8* [ %97, %100 ], [ %536, %535 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %101) #14
  %463 = load i8*, i8** %102, align 8, !tbaa !36, !noalias !65
  %464 = icmp eq i8* %462, %463
  br i1 %464, label %465, label %470

465:                                              ; preds = %461
  %466 = load i8**, i8*** %103, align 8, !tbaa !40, !noalias !65
  %467 = getelementptr inbounds i8*, i8** %466, i64 -1
  %468 = load i8*, i8** %467, align 8, !tbaa !32
  %469 = getelementptr inbounds i8, i8* %468, i64 512
  br label %470

470:                                              ; preds = %461, %465
  %471 = phi i8* [ %469, %465 ], [ %462, %461 ]
  %472 = getelementptr inbounds i8, i8* %471, i64 -1
  %473 = load i8, i8* %472, align 1, !tbaa !13
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  store %union.anon* %104, %union.anon** %105, align 8, !tbaa !5, !alias.scope !68
  store i64 0, i64* %106, align 8, !tbaa !10, !alias.scope !68
  store i8 0, i8* %107, align 8, !tbaa !13, !alias.scope !68
  %474 = load i64, i64* %26, align 8, !tbaa !10, !noalias !68
  %475 = add i64 %474, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %475)
          to label %476 unwind label %483

476:                                              ; preds = %470
  %477 = load i64, i64* %106, align 8, !tbaa !10, !alias.scope !68
  %478 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %477, i64 noundef 0, i64 noundef 1, i8 noundef signext %473)
          to label %479 unwind label %483

479:                                              ; preds = %476
  %480 = load i8*, i8** %25, align 8, !tbaa !18, !noalias !68
  %481 = load i64, i64* %26, align 8, !tbaa !10, !noalias !68
  %482 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, i8* noundef %480, i64 noundef %481)
          to label %491 unwind label %483

483:                                              ; preds = %479, %476, %470
  %484 = landingpad { i8*, i32 }
          cleanup
  %485 = bitcast %"class.std::__cxx11::basic_string"* %11 to i8*
  %486 = bitcast %union.anon* %104 to i8*
  %487 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 0, i32 0
  %488 = load i8*, i8** %487, align 8, !tbaa !18, !alias.scope !68
  %489 = icmp eq i8* %488, %486
  br i1 %489, label %539, label %490

490:                                              ; preds = %483
  call void @_ZdlPv(i8* noundef %488) #14
  br label %539

491:                                              ; preds = %479
  %492 = load i8*, i8** %108, align 8, !tbaa !18
  %493 = icmp eq i8* %492, %107
  br i1 %493, label %494, label %508

494:                                              ; preds = %491
  br i1 %113, label %518, label %495, !prof !60

495:                                              ; preds = %494
  %496 = load i64, i64* %106, align 8, !tbaa !10
  %497 = icmp eq i64 %496, 0
  br i1 %497, label %504, label %498

498:                                              ; preds = %495
  %499 = load i8*, i8** %25, align 8, !tbaa !18
  %500 = icmp eq i64 %496, 1
  br i1 %500, label %501, label %503

501:                                              ; preds = %498
  %502 = load i8, i8* %492, align 1, !tbaa !13
  store i8 %502, i8* %499, align 1, !tbaa !13
  br label %504

503:                                              ; preds = %498
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %499, i8* align 1 %492, i64 %496, i1 false) #14
  br label %504

504:                                              ; preds = %503, %501, %495
  %505 = load i64, i64* %106, align 8, !tbaa !10
  store i64 %505, i64* %26, align 8, !tbaa !10
  %506 = load i8*, i8** %25, align 8, !tbaa !18
  %507 = getelementptr inbounds i8, i8* %506, i64 %505
  store i8 0, i8* %507, align 1, !tbaa !13
  br label %518

508:                                              ; preds = %491
  %509 = load i8*, i8** %25, align 8, !tbaa !18
  %510 = icmp eq i8* %509, %109
  %511 = load i64, i64* %110, align 8
  store i8* %492, i8** %25, align 8, !tbaa !18
  %512 = load i64, i64* %106, align 8, !tbaa !10
  store i64 %512, i64* %26, align 8, !tbaa !10
  %513 = load i64, i64* %111, align 8, !tbaa !13
  store i64 %513, i64* %110, align 8, !tbaa !13
  %514 = icmp eq i8* %509, null
  %515 = or i1 %510, %514
  br i1 %515, label %517, label %516

516:                                              ; preds = %508
  store i8* %509, i8** %108, align 8, !tbaa !18
  store i64 %511, i64* %112, align 8, !tbaa !13
  br label %518

517:                                              ; preds = %508
  store %union.anon* %104, %union.anon** %105, align 8, !tbaa !18
  br label %518

518:                                              ; preds = %494, %504, %516, %517
  store i64 0, i64* %106, align 8, !tbaa !10
  %519 = load i8*, i8** %108, align 8, !tbaa !18
  store i8 0, i8* %519, align 1, !tbaa !13
  %520 = load i8*, i8** %108, align 8, !tbaa !18
  %521 = icmp eq i8* %520, %107
  br i1 %521, label %523, label %522

522:                                              ; preds = %518
  call void @_ZdlPv(i8* noundef %520) #14
  br label %523

523:                                              ; preds = %518, %522
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %101) #14
  %524 = load i8*, i8** %95, align 8, !tbaa !47
  %525 = load i8*, i8** %102, align 8, !tbaa !49
  %526 = icmp eq i8* %524, %525
  br i1 %526, label %529, label %527

527:                                              ; preds = %523
  %528 = getelementptr inbounds i8, i8* %524, i64 -1
  br label %535

529:                                              ; preds = %523
  call void @_ZdlPv(i8* noundef %525) #14
  %530 = load i8**, i8*** %114, align 8, !tbaa !50
  %531 = getelementptr inbounds i8*, i8** %530, i64 -1
  store i8** %531, i8*** %114, align 8, !tbaa !40
  %532 = load i8*, i8** %531, align 8, !tbaa !32
  store i8* %532, i8** %102, align 8, !tbaa !36
  %533 = getelementptr inbounds i8, i8* %532, i64 512
  store i8* %533, i8** %115, align 8, !tbaa !51
  %534 = getelementptr inbounds i8, i8* %532, i64 511
  br label %535

535:                                              ; preds = %527, %529
  %536 = phi i8* [ %528, %527 ], [ %534, %529 ]
  store i8* %536, i8** %95, align 8, !tbaa !47
  %537 = load i8*, i8** %96, align 8, !tbaa !14
  %538 = icmp eq i8* %536, %537
  br i1 %538, label %540, label %461, !llvm.loop !71

539:                                              ; preds = %483, %490
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %485) #14
  br label %585

540:                                              ; preds = %535, %94
  %541 = load i8*, i8** %20, align 8, !tbaa !18
  %542 = bitcast %union.anon* %18 to i8*
  %543 = icmp eq i8* %541, %542
  br i1 %543, label %545, label %544

544:                                              ; preds = %540
  call void @_ZdlPv(i8* noundef %541) #14
  br label %545

545:                                              ; preds = %540, %544
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #14
  %546 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %547 = load i8**, i8*** %546, align 8, !tbaa !72
  %548 = icmp eq i8** %547, null
  br i1 %548, label %564, label %549

549:                                              ; preds = %545
  %550 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %551 = load i8**, i8*** %550, align 8, !tbaa !73
  %552 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %553 = load i8**, i8*** %552, align 8, !tbaa !50
  %554 = getelementptr inbounds i8*, i8** %553, i64 1
  %555 = icmp ult i8** %551, %554
  br i1 %555, label %556, label %561

556:                                              ; preds = %549, %556
  %557 = phi i8** [ %559, %556 ], [ %551, %549 ]
  %558 = load i8*, i8** %557, align 8, !tbaa !32
  call void @_ZdlPv(i8* noundef %558) #14
  %559 = getelementptr inbounds i8*, i8** %557, i64 1
  %560 = icmp ult i8** %557, %553
  br i1 %560, label %556, label %561, !llvm.loop !74

561:                                              ; preds = %556, %549
  %562 = bitcast %"class.std::stack.3"* %5 to i8**
  %563 = load i8*, i8** %562, align 8, !tbaa !72
  call void @_ZdlPv(i8* noundef %563) #14
  br label %564

564:                                              ; preds = %545, %561
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %14) #14
  %565 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %566 = load i32**, i32*** %565, align 8, !tbaa !75
  %567 = icmp eq i32** %566, null
  br i1 %567, label %584, label %568

568:                                              ; preds = %564
  %569 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %570 = load i32**, i32*** %569, align 8, !tbaa !76
  %571 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %572 = load i32**, i32*** %571, align 8, !tbaa !34
  %573 = getelementptr inbounds i32*, i32** %572, i64 1
  %574 = icmp ult i32** %570, %573
  br i1 %574, label %575, label %581

575:                                              ; preds = %568, %575
  %576 = phi i32** [ %579, %575 ], [ %570, %568 ]
  %577 = bitcast i32** %576 to i8**
  %578 = load i8*, i8** %577, align 8, !tbaa !32
  call void @_ZdlPv(i8* noundef %578) #14
  %579 = getelementptr inbounds i32*, i32** %576, i64 1
  %580 = icmp ult i32** %576, %572
  br i1 %580, label %575, label %581, !llvm.loop !77

581:                                              ; preds = %575, %568
  %582 = bitcast %"class.std::stack"* %4 to i8**
  %583 = load i8*, i8** %582, align 8, !tbaa !75
  call void @_ZdlPv(i8* noundef %583) #14
  br label %584

584:                                              ; preds = %564, %581
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %12) #14
  ret void

585:                                              ; preds = %539, %458
  %586 = phi { i8*, i32 } [ %459, %458 ], [ %484, %539 ]
  %587 = load i8*, i8** %25, align 8, !tbaa !18
  %588 = bitcast %union.anon* %23 to i8*
  %589 = icmp eq i8* %587, %588
  br i1 %589, label %591, label %590

590:                                              ; preds = %585
  call void @_ZdlPv(i8* noundef %587) #14
  br label %591

591:                                              ; preds = %590, %585
  %592 = load i8*, i8** %20, align 8, !tbaa !18
  %593 = bitcast %union.anon* %18 to i8*
  %594 = icmp eq i8* %592, %593
  br i1 %594, label %596, label %595

595:                                              ; preds = %591
  call void @_ZdlPv(i8* noundef %592) #14
  br label %596

596:                                              ; preds = %595, %591
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #14
  call void @_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev(%"class.std::stack.3"* noundef nonnull align 8 dereferenceable(80) %5) #14
  br label %597

597:                                              ; preds = %596, %116
  %598 = phi { i8*, i32 } [ %586, %596 ], [ %117, %116 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %14) #14
  call void @_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev(%"class.std::stack"* noundef nonnull align 8 dereferenceable(80) %4) #14
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %12) #14
  resume { i8*, i32 } %598
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev(%"class.std::stack.3"* noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %3 = load i8**, i8*** %2, align 8, !tbaa !72
  %4 = icmp eq i8** %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %7 = load i8**, i8*** %6, align 8, !tbaa !73
  %8 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %9 = load i8**, i8*** %8, align 8, !tbaa !50
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = icmp ult i8** %7, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %5, %12
  %13 = phi i8** [ %15, %12 ], [ %7, %5 ]
  %14 = load i8*, i8** %13, align 8, !tbaa !32
  call void @_ZdlPv(i8* noundef %14) #14
  %15 = getelementptr inbounds i8*, i8** %13, i64 1
  %16 = icmp ult i8** %13, %9
  br i1 %16, label %12, label %17, !llvm.loop !74

17:                                               ; preds = %12, %5
  %18 = bitcast %"class.std::stack.3"* %0 to i8**
  %19 = load i8*, i8** %18, align 8, !tbaa !72
  call void @_ZdlPv(i8* noundef %19) #14
  br label %20

20:                                               ; preds = %1, %17
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev(%"class.std::stack"* noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %3 = load i32**, i32*** %2, align 8, !tbaa !75
  %4 = icmp eq i32** %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %7 = load i32**, i32*** %6, align 8, !tbaa !76
  %8 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %9 = load i32**, i32*** %8, align 8, !tbaa !34
  %10 = getelementptr inbounds i32*, i32** %9, i64 1
  %11 = icmp ult i32** %7, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %5, %12
  %13 = phi i32** [ %16, %12 ], [ %7, %5 ]
  %14 = bitcast i32** %13 to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !32
  call void @_ZdlPv(i8* noundef %15) #14
  %16 = getelementptr inbounds i32*, i32** %13, i64 1
  %17 = icmp ult i32** %13, %9
  br i1 %17, label %12, label %18, !llvm.loop !77

18:                                               ; preds = %12, %5
  %19 = bitcast %"class.std::stack"* %0 to i8**
  %20 = load i8*, i8** %19, align 8, !tbaa !75
  call void @_ZdlPv(i8* noundef %20) #14
  br label %21

21:                                               ; preds = %1, %18
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) local_unnamed_addr #6 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #14
  call void @_ZSt9terminatev() #15
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
  store i64 %7, i64* %8, align 8, !tbaa !78
  %9 = shl nuw nsw i64 %7, 3
  %10 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %9) #16
  %11 = bitcast i8* %10 to i32**
  %12 = bitcast %"class.std::_Deque_base"* %0 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !75
  %13 = load i64, i64* %8, align 8, !tbaa !78
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
  %21 = call i8* @__cxa_begin_catch(i8* %20) #14
  %22 = bitcast %"class.std::_Deque_base"* %0 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !75
  call void @_ZdlPv(i8* noundef %23) #14
  %24 = bitcast %"class.std::_Deque_base"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #17
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
  store i32** %16, i32*** %29, align 8, !tbaa !31
  %30 = load i32*, i32** %16, align 8, !tbaa !32
  %31 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 1
  store i32* %30, i32** %31, align 8, !tbaa !27
  %32 = getelementptr inbounds i32, i32* %30, i64 128
  %33 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 2
  store i32* %32, i32** %33, align 8, !tbaa !35
  %34 = getelementptr inbounds i32*, i32** %17, i64 -1
  %35 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 3
  store i32** %34, i32*** %35, align 8, !tbaa !31
  %36 = load i32*, i32** %34, align 8, !tbaa !32
  %37 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 1
  store i32* %36, i32** %37, align 8, !tbaa !27
  %38 = getelementptr inbounds i32, i32* %36, i64 128
  %39 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 2
  store i32* %38, i32** %39, align 8, !tbaa !35
  %40 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 1
  %41 = load i32*, i32** %40, align 8, !tbaa !79
  %42 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 0
  store i32* %41, i32** %42, align 8, !tbaa !80
  %43 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 1
  %44 = load i32*, i32** %43, align 8, !tbaa !33
  %45 = and i64 %1, 127
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 0
  store i32* %46, i32** %47, align 8, !tbaa !22
  ret void

48:                                               ; preds = %25
  %49 = landingpad { i8*, i32 }
          catch i8* null
  %50 = extractvalue { i8*, i32 } %49, 0
  call void @__clang_call_terminate(i8* %50) #15
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
  %7 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef 512) #16
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = bitcast i32** %6 to i8**
  store i8* %7, i8** %9, align 8, !tbaa !32
  %10 = getelementptr inbounds i32*, i32** %6, i64 1
  %11 = icmp ult i32** %10, %2
  br i1 %11, label %5, label %27, !llvm.loop !81

12:                                               ; preds = %5
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  %15 = call i8* @__cxa_begin_catch(i8* %14) #14
  %16 = icmp ugt i32** %6, %1
  br i1 %16, label %17, label %23

17:                                               ; preds = %12, %17
  %18 = phi i32** [ %21, %17 ], [ %1, %12 ]
  %19 = bitcast i32** %18 to i8**
  %20 = load i8*, i8** %19, align 8, !tbaa !32
  call void @_ZdlPv(i8* noundef %20) #14
  %21 = getelementptr inbounds i32*, i32** %18, i64 1
  %22 = icmp ult i32** %21, %6
  br i1 %22, label %17, label %23, !llvm.loop !77

23:                                               ; preds = %17, %12
  invoke void @__cxa_rethrow() #17
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
  call void @__clang_call_terminate(i8* %30) #15
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

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(%"class.std::_Deque_base.5"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = lshr i64 %1, 9
  %4 = add nuw nsw i64 %3, 1
  %5 = icmp ugt i64 %3, 5
  %6 = select i1 %5, i64 %3, i64 5
  %7 = add nuw nsw i64 %6, 3
  %8 = getelementptr inbounds %"class.std::_Deque_base.5", %"class.std::_Deque_base.5"* %0, i64 0, i32 0, i32 0, i32 1
  store i64 %7, i64* %8, align 8, !tbaa !82
  %9 = shl nuw nsw i64 %7, 3
  %10 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %9) #16
  %11 = bitcast i8* %10 to i8**
  %12 = bitcast %"class.std::_Deque_base.5"* %0 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !72
  %13 = load i64, i64* %8, align 8, !tbaa !82
  %14 = sub i64 %13, %4
  %15 = lshr i64 %14, 1
  %16 = getelementptr inbounds i8*, i8** %11, i64 %15
  %17 = getelementptr inbounds i8*, i8** %16, i64 %4
  invoke void @_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_(%"class.std::_Deque_base.5"* noundef nonnull align 8 dereferenceable(80) %0, i8** noundef nonnull %16, i8** noundef nonnull %17)
          to label %28 unwind label %18

18:                                               ; preds = %2
  %19 = landingpad { i8*, i32 }
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = call i8* @__cxa_begin_catch(i8* %20) #14
  %22 = bitcast %"class.std::_Deque_base.5"* %0 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !72
  call void @_ZdlPv(i8* noundef %23) #14
  %24 = bitcast %"class.std::_Deque_base.5"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #17
          to label %51 unwind label %25

25:                                               ; preds = %18
  %26 = landingpad { i8*, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %27 unwind label %48

27:                                               ; preds = %25
  resume { i8*, i32 } %26

28:                                               ; preds = %2
  %29 = getelementptr inbounds %"class.std::_Deque_base.5", %"class.std::_Deque_base.5"* %0, i64 0, i32 0, i32 0, i32 2, i32 3
  store i8** %16, i8*** %29, align 8, !tbaa !40
  %30 = load i8*, i8** %16, align 8, !tbaa !32
  %31 = getelementptr inbounds %"class.std::_Deque_base.5", %"class.std::_Deque_base.5"* %0, i64 0, i32 0, i32 0, i32 2, i32 1
  store i8* %30, i8** %31, align 8, !tbaa !36
  %32 = getelementptr inbounds i8, i8* %30, i64 512
  %33 = getelementptr inbounds %"class.std::_Deque_base.5", %"class.std::_Deque_base.5"* %0, i64 0, i32 0, i32 0, i32 2, i32 2
  store i8* %32, i8** %33, align 8, !tbaa !51
  %34 = getelementptr inbounds i8*, i8** %17, i64 -1
  %35 = getelementptr inbounds %"class.std::_Deque_base.5", %"class.std::_Deque_base.5"* %0, i64 0, i32 0, i32 0, i32 3, i32 3
  store i8** %34, i8*** %35, align 8, !tbaa !40
  %36 = load i8*, i8** %34, align 8, !tbaa !32
  %37 = getelementptr inbounds %"class.std::_Deque_base.5", %"class.std::_Deque_base.5"* %0, i64 0, i32 0, i32 0, i32 3, i32 1
  store i8* %36, i8** %37, align 8, !tbaa !36
  %38 = getelementptr inbounds i8, i8* %36, i64 512
  %39 = getelementptr inbounds %"class.std::_Deque_base.5", %"class.std::_Deque_base.5"* %0, i64 0, i32 0, i32 0, i32 3, i32 2
  store i8* %38, i8** %39, align 8, !tbaa !51
  %40 = getelementptr inbounds %"class.std::_Deque_base.5", %"class.std::_Deque_base.5"* %0, i64 0, i32 0, i32 0, i32 2, i32 1
  %41 = load i8*, i8** %40, align 8, !tbaa !83
  %42 = getelementptr inbounds %"class.std::_Deque_base.5", %"class.std::_Deque_base.5"* %0, i64 0, i32 0, i32 0, i32 2, i32 0
  store i8* %41, i8** %42, align 8, !tbaa !84
  %43 = getelementptr inbounds %"class.std::_Deque_base.5", %"class.std::_Deque_base.5"* %0, i64 0, i32 0, i32 0, i32 3, i32 1
  %44 = load i8*, i8** %43, align 8, !tbaa !49
  %45 = and i64 %1, 511
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = getelementptr inbounds %"class.std::_Deque_base.5", %"class.std::_Deque_base.5"* %0, i64 0, i32 0, i32 0, i32 3, i32 0
  store i8* %46, i8** %47, align 8, !tbaa !47
  ret void

48:                                               ; preds = %25
  %49 = landingpad { i8*, i32 }
          catch i8* null
  %50 = extractvalue { i8*, i32 } %49, 0
  call void @__clang_call_terminate(i8* %50) #15
  unreachable

51:                                               ; preds = %18
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_(%"class.std::_Deque_base.5"* noundef nonnull align 8 dereferenceable(80) %0, i8** noundef %1, i8** noundef %2) local_unnamed_addr #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = icmp ult i8** %1, %2
  br i1 %4, label %5, label %25

5:                                                ; preds = %3, %8
  %6 = phi i8** [ %9, %8 ], [ %1, %3 ]
  %7 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef 512) #16
          to label %8 unwind label %11

8:                                                ; preds = %5
  store i8* %7, i8** %6, align 8, !tbaa !32
  %9 = getelementptr inbounds i8*, i8** %6, i64 1
  %10 = icmp ult i8** %9, %2
  br i1 %10, label %5, label %25, !llvm.loop !85

11:                                               ; preds = %5
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  %14 = call i8* @__cxa_begin_catch(i8* %13) #14
  %15 = icmp ugt i8** %6, %1
  br i1 %15, label %16, label %21

16:                                               ; preds = %11, %16
  %17 = phi i8** [ %19, %16 ], [ %1, %11 ]
  %18 = load i8*, i8** %17, align 8, !tbaa !32
  call void @_ZdlPv(i8* noundef %18) #14
  %19 = getelementptr inbounds i8*, i8** %17, i64 1
  %20 = icmp ult i8** %19, %6
  br i1 %20, label %16, label %21, !llvm.loop !74

21:                                               ; preds = %16, %11
  invoke void @__cxa_rethrow() #17
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
  call void @__clang_call_terminate(i8* %28) #15
  unreachable

29:                                               ; preds = %21
  unreachable
}

declare noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64* noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #9 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %4 = load i32**, i32*** %3, align 8, !tbaa !31
  %5 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %6 = load i32**, i32*** %5, align 8, !tbaa !31
  %7 = ptrtoint i32** %4 to i64
  %8 = ptrtoint i32** %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = icmp ne i32** %4, null
  %12 = sext i1 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = shl nsw i64 %13, 7
  %15 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %16 = load i32*, i32** %15, align 8, !tbaa !26
  %17 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %18 = load i32*, i32** %17, align 8, !tbaa !27
  %19 = ptrtoint i32* %16 to i64
  %20 = ptrtoint i32* %18 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 2
  %23 = add nsw i64 %14, %22
  %24 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 2
  %25 = load i32*, i32** %24, align 8, !tbaa !35
  %26 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 0
  %27 = load i32*, i32** %26, align 8, !tbaa !26
  %28 = ptrtoint i32* %25 to i64
  %29 = ptrtoint i32* %27 to i64
  %30 = sub i64 %28, %29
  %31 = ashr exact i64 %30, 2
  %32 = add nsw i64 %23, %31
  %33 = icmp eq i64 %32, 2305843009213693951
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0)) #17
  unreachable

35:                                               ; preds = %2
  %36 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %37 = load i64, i64* %36, align 8, !tbaa !78
  %38 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8, !tbaa !75
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
  %47 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 512) #16
  %48 = load i32**, i32*** %3, align 8, !tbaa !34
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  %50 = bitcast i32** %49 to i8**
  store i8* %47, i8** %50, align 8, !tbaa !32
  %51 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %52 = load i32*, i32** %51, align 8, !tbaa !22
  %53 = load i32, i32* %1, align 4, !tbaa !16
  store i32 %53, i32* %52, align 4, !tbaa !16
  %54 = load i32**, i32*** %3, align 8, !tbaa !34
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  %56 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  store i32** %55, i32*** %56, align 8, !tbaa !31
  %57 = load i32*, i32** %55, align 8, !tbaa !32
  %58 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  store i32* %57, i32** %58, align 8, !tbaa !27
  %59 = getelementptr inbounds i32, i32* %57, i64 128
  %60 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 2
  store i32* %59, i32** %60, align 8, !tbaa !35
  store i32* %57, i32** %51, align 8, !tbaa !22
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) local_unnamed_addr #10

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %5 = load i32**, i32*** %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %7 = load i32**, i32*** %6, align 8, !tbaa !76
  %8 = ptrtoint i32** %5 to i64
  %9 = ptrtoint i32** %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !tbaa !78
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %3
  %19 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8, !tbaa !75
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
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %33, i8* nonnull align 8 %34, i64 %29, i1 false) #14
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
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 %29, i1 false) #14
  br label %76

43:                                               ; preds = %3
  %44 = icmp ult i64 %15, %1
  %45 = select i1 %44, i64 %1, i64 %15
  %46 = add i64 %15, 2
  %47 = add i64 %46, %45
  %48 = icmp ugt i64 %47, 1152921504606846975
  br i1 %48, label %49, label %53, !prof !60

49:                                               ; preds = %43
  %50 = icmp ugt i64 %47, 2305843009213693951
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

52:                                               ; preds = %49
  call void @_ZSt17__throw_bad_allocv() #17
  unreachable

53:                                               ; preds = %43
  %54 = shl i64 %47, 3
  %55 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %54) #16
  %56 = bitcast i8* %55 to i32**
  %57 = sub i64 %47, %13
  %58 = lshr i64 %57, 1
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = select i1 %2, i64 %1, i64 0
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  %62 = load i32**, i32*** %6, align 8, !tbaa !76
  %63 = load i32**, i32*** %4, align 8, !tbaa !34
  %64 = getelementptr inbounds i32*, i32** %63, i64 1
  %65 = ptrtoint i32** %64 to i64
  %66 = ptrtoint i32** %62 to i64
  %67 = sub i64 %65, %66
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %53
  %70 = bitcast i32** %61 to i8*
  %71 = bitcast i32** %62 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 8 %70, i8* align 8 %71, i64 %67, i1 false) #14
  br label %72

72:                                               ; preds = %53, %69
  %73 = bitcast %"class.std::deque"* %0 to i8**
  %74 = load i8*, i8** %73, align 8, !tbaa !75
  call void @_ZdlPv(i8* noundef %74) #14
  %75 = bitcast %"class.std::deque"* %0 to i8**
  store i8* %55, i8** %75, align 8, !tbaa !75
  store i64 %47, i64* %14, align 8, !tbaa !78
  br label %76

76:                                               ; preds = %36, %35, %32, %31, %72
  %77 = phi i32** [ %61, %72 ], [ %25, %31 ], [ %25, %32 ], [ %25, %35 ], [ %25, %36 ]
  %78 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  store i32** %77, i32*** %78, align 8, !tbaa !31
  %79 = load i32*, i32** %77, align 8, !tbaa !32
  %80 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 1
  store i32* %79, i32** %80, align 8, !tbaa !27
  %81 = getelementptr inbounds i32, i32* %79, i64 128
  %82 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 2
  store i32* %81, i32** %82, align 8, !tbaa !35
  %83 = getelementptr inbounds i32*, i32** %77, i64 %11
  %84 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  store i32** %83, i32*** %84, align 8, !tbaa !31
  %85 = load i32*, i32** %83, align 8, !tbaa !32
  %86 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  store i32* %85, i32** %86, align 8, !tbaa !27
  %87 = getelementptr inbounds i32, i32* %85, i64 128
  %88 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 2
  store i32* %87, i32** %88, align 8, !tbaa !35
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #12

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_(%"class.std::deque.4"* noundef nonnull align 8 dereferenceable(80) %0, i8* noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #9 comdat align 2 {
  %3 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %4 = load i8**, i8*** %3, align 8, !tbaa !40
  %5 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %6 = load i8**, i8*** %5, align 8, !tbaa !40
  %7 = ptrtoint i8** %4 to i64
  %8 = ptrtoint i8** %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = icmp ne i8** %4, null
  %12 = sext i1 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = shl nsw i64 %13, 9
  %15 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !14
  %17 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %18 = load i8*, i8** %17, align 8, !tbaa !36
  %19 = ptrtoint i8* %16 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 2
  %22 = load i8*, i8** %21, align 8, !tbaa !51
  %23 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 0
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
  call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0)) #17
  unreachable

33:                                               ; preds = %2
  %34 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %35 = load i64, i64* %34, align 8, !tbaa !82
  %36 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8, !tbaa !72
  %38 = ptrtoint i8** %37 to i64
  %39 = sub i64 %7, %38
  %40 = ashr exact i64 %39, 3
  %41 = sub i64 %35, %40
  %42 = icmp ult i64 %41, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  call void @_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb(%"class.std::deque.4"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %44

44:                                               ; preds = %33, %43
  %45 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 512) #16
  %46 = load i8**, i8*** %3, align 8, !tbaa !50
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  store i8* %45, i8** %47, align 8, !tbaa !32
  %48 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %49 = load i8*, i8** %48, align 8, !tbaa !47
  %50 = load i8, i8* %1, align 1, !tbaa !13
  store i8 %50, i8* %49, align 1, !tbaa !13
  %51 = load i8**, i8*** %3, align 8, !tbaa !50
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  store i8** %52, i8*** %53, align 8, !tbaa !40
  %54 = load i8*, i8** %52, align 8, !tbaa !32
  %55 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  store i8* %54, i8** %55, align 8, !tbaa !36
  %56 = getelementptr inbounds i8, i8* %54, i64 512
  %57 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 2
  store i8* %56, i8** %57, align 8, !tbaa !51
  store i8* %54, i8** %48, align 8, !tbaa !47
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb(%"class.std::deque.4"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %5 = load i8**, i8*** %4, align 8, !tbaa !50
  %6 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %7 = load i8**, i8*** %6, align 8, !tbaa !73
  %8 = ptrtoint i8** %5 to i64
  %9 = ptrtoint i8** %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !tbaa !82
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %3
  %19 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8, !tbaa !72
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
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %33, i8* nonnull align 8 %34, i64 %29, i1 false) #14
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
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 %29, i1 false) #14
  br label %76

43:                                               ; preds = %3
  %44 = icmp ult i64 %15, %1
  %45 = select i1 %44, i64 %1, i64 %15
  %46 = add i64 %15, 2
  %47 = add i64 %46, %45
  %48 = icmp ugt i64 %47, 1152921504606846975
  br i1 %48, label %49, label %53, !prof !60

49:                                               ; preds = %43
  %50 = icmp ugt i64 %47, 2305843009213693951
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

52:                                               ; preds = %49
  call void @_ZSt17__throw_bad_allocv() #17
  unreachable

53:                                               ; preds = %43
  %54 = shl i64 %47, 3
  %55 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %54) #16
  %56 = bitcast i8* %55 to i8**
  %57 = sub i64 %47, %13
  %58 = lshr i64 %57, 1
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = select i1 %2, i64 %1, i64 0
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  %62 = load i8**, i8*** %6, align 8, !tbaa !73
  %63 = load i8**, i8*** %4, align 8, !tbaa !50
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = ptrtoint i8** %64 to i64
  %66 = ptrtoint i8** %62 to i64
  %67 = sub i64 %65, %66
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %53
  %70 = bitcast i8** %61 to i8*
  %71 = bitcast i8** %62 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 8 %70, i8* align 8 %71, i64 %67, i1 false) #14
  br label %72

72:                                               ; preds = %53, %69
  %73 = bitcast %"class.std::deque.4"* %0 to i8**
  %74 = load i8*, i8** %73, align 8, !tbaa !72
  call void @_ZdlPv(i8* noundef %74) #14
  %75 = bitcast %"class.std::deque.4"* %0 to i8**
  store i8* %55, i8** %75, align 8, !tbaa !72
  store i64 %47, i64* %14, align 8, !tbaa !82
  br label %76

76:                                               ; preds = %36, %35, %32, %31, %72
  %77 = phi i8** [ %61, %72 ], [ %25, %31 ], [ %25, %32 ], [ %25, %35 ], [ %25, %36 ]
  %78 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  store i8** %77, i8*** %78, align 8, !tbaa !40
  %79 = load i8*, i8** %77, align 8, !tbaa !32
  %80 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 1
  store i8* %79, i8** %80, align 8, !tbaa !36
  %81 = getelementptr inbounds i8, i8* %79, i64 512
  %82 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 2
  store i8* %81, i8** %82, align 8, !tbaa !51
  %83 = getelementptr inbounds i8*, i8** %77, i64 %11
  %84 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  store i8** %83, i8*** %84, align 8, !tbaa !40
  %85 = load i8*, i8** %83, align 8, !tbaa !32
  %86 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  store i8* %85, i8** %86, align 8, !tbaa !36
  %87 = getelementptr inbounds i8, i8* %85, i64 512
  %88 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 2
  store i8* %87, i8** %88, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJiEEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #9 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %4 = load i32**, i32*** %3, align 8, !tbaa !31
  %5 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %6 = load i32**, i32*** %5, align 8, !tbaa !31
  %7 = ptrtoint i32** %4 to i64
  %8 = ptrtoint i32** %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = icmp ne i32** %4, null
  %12 = sext i1 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = shl nsw i64 %13, 7
  %15 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %16 = load i32*, i32** %15, align 8, !tbaa !26
  %17 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %18 = load i32*, i32** %17, align 8, !tbaa !27
  %19 = ptrtoint i32* %16 to i64
  %20 = ptrtoint i32* %18 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 2
  %23 = add nsw i64 %14, %22
  %24 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 2
  %25 = load i32*, i32** %24, align 8, !tbaa !35
  %26 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 0
  %27 = load i32*, i32** %26, align 8, !tbaa !26
  %28 = ptrtoint i32* %25 to i64
  %29 = ptrtoint i32* %27 to i64
  %30 = sub i64 %28, %29
  %31 = ashr exact i64 %30, 2
  %32 = add nsw i64 %23, %31
  %33 = icmp eq i64 %32, 2305843009213693951
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0)) #17
  unreachable

35:                                               ; preds = %2
  %36 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %37 = load i64, i64* %36, align 8, !tbaa !78
  %38 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8, !tbaa !75
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
  %47 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 512) #16
  %48 = load i32**, i32*** %3, align 8, !tbaa !34
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  %50 = bitcast i32** %49 to i8**
  store i8* %47, i8** %50, align 8, !tbaa !32
  %51 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %52 = load i32*, i32** %51, align 8, !tbaa !22
  %53 = load i32, i32* %1, align 4, !tbaa !16
  store i32 %53, i32* %52, align 4, !tbaa !16
  %54 = load i32**, i32*** %3, align 8, !tbaa !34
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  %56 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  store i32** %55, i32*** %56, align 8, !tbaa !31
  %57 = load i32*, i32** %55, align 8, !tbaa !32
  %58 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  store i32* %57, i32** %58, align 8, !tbaa !27
  %59 = getelementptr inbounds i32, i32* %57, i64 128
  %60 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 2
  store i32* %59, i32** %60, align 8, !tbaa !35
  store i32* %57, i32** %51, align 8, !tbaa !22
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DECODE_STRING_RECURSIVELY_ENCODED_COUNT_FOLLOWED_SUBSTRING_reprocessed.cpp() #3 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #14
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

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
attributes #13 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { allocsize(0) }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !12, i64 8}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !6, i64 0, !12, i64 8, !8, i64 16}
!12 = !{!"long", !8, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!15, !7, i64 0}
!15 = !{!"_ZTSSt15_Deque_iteratorIcRcPcE", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !8, i64 0}
!18 = !{!11, !7, i64 0}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!23, !7, i64 48}
!23 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataE", !7, i64 0, !12, i64 8, !24, i64 16, !24, i64 48}
!24 = !{!"_ZTSSt15_Deque_iteratorIiRiPiE", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!25 = !{!23, !7, i64 64}
!26 = !{!24, !7, i64 0}
!27 = !{!24, !7, i64 8}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZNSt5dequeIiSaIiEE3endEv: argument 0"}
!30 = distinct !{!30, !"_ZNSt5dequeIiSaIiEE3endEv"}
!31 = !{!24, !7, i64 24}
!32 = !{!7, !7, i64 0}
!33 = !{!23, !7, i64 56}
!34 = !{!23, !7, i64 72}
!35 = !{!24, !7, i64 16}
!36 = !{!15, !7, i64 8}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZNSt5dequeIcSaIcEE3endEv: argument 0"}
!39 = distinct !{!39, !"_ZNSt5dequeIcSaIcEE3endEv"}
!40 = !{!15, !7, i64 24}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZNSt5dequeIcSaIcEE3endEv: argument 0"}
!43 = distinct !{!43, !"_ZNSt5dequeIcSaIcEE3endEv"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_: argument 0"}
!46 = distinct !{!46, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_"}
!47 = !{!48, !7, i64 48}
!48 = !{!"_ZTSNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataE", !7, i64 0, !12, i64 8, !15, i64 16, !15, i64 48}
!49 = !{!48, !7, i64 56}
!50 = !{!48, !7, i64 72}
!51 = !{!15, !7, i64 16}
!52 = distinct !{!52, !20, !21}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZNSt5dequeIcSaIcEE3endEv: argument 0"}
!55 = distinct !{!55, !"_ZNSt5dequeIcSaIcEE3endEv"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!58 = distinct !{!58, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!59 = !{!12, !12, i64 0}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = distinct !{!61, !20, !21}
!62 = !{!48, !7, i64 64}
!63 = distinct !{!63, !20, !21}
!64 = distinct !{!64, !20, !21}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNSt5dequeIcSaIcEE3endEv: argument 0"}
!67 = distinct !{!67, !"_ZNSt5dequeIcSaIcEE3endEv"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_: argument 0"}
!70 = distinct !{!70, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_"}
!71 = distinct !{!71, !20, !21}
!72 = !{!48, !7, i64 0}
!73 = !{!48, !7, i64 40}
!74 = distinct !{!74, !20, !21}
!75 = !{!23, !7, i64 0}
!76 = !{!23, !7, i64 40}
!77 = distinct !{!77, !20, !21}
!78 = !{!23, !12, i64 8}
!79 = !{!23, !7, i64 24}
!80 = !{!23, !7, i64 16}
!81 = distinct !{!81, !20, !21}
!82 = !{!48, !12, i64 8}
!83 = !{!48, !7, i64 24}
!84 = !{!48, !7, i64 16}
!85 = distinct !{!85, !20, !21}
