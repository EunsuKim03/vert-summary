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
          to label %16 unwind label %97

16:                                               ; preds = %2
  %17 = bitcast %"class.std::__cxx11::basic_string"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #14
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %19 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  store %union.anon* %18, %union.anon** %19, align 8, !tbaa !5
  %20 = bitcast %union.anon* %18 to i8*
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  store i64 0, i64* %22, align 8, !tbaa !10
  store i8 0, i8* %20, align 8, !tbaa !13
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %24 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %23, %union.anon** %24, align 8, !tbaa !5
  %25 = bitcast %union.anon* %23 to i8*
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %27, align 8, !tbaa !10
  store i8 0, i8* %25, align 8, !tbaa !13
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %29 = load i64, i64* %28, align 8, !tbaa !10
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %73, label %31

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
  %41 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0
  %42 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %43 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %44 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0
  %45 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %46 = bitcast %"class.std::__cxx11::basic_string"* %8 to i8*
  %47 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2
  %49 = bitcast %"class.std::__cxx11::basic_string"* %8 to %union.anon**
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 1
  %51 = bitcast %union.anon* %48 to i8*
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2, i32 0
  %55 = bitcast %"class.std::__cxx11::basic_string"* %9 to i8*
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 2
  %57 = bitcast %"class.std::__cxx11::basic_string"* %9 to %union.anon**
  %58 = bitcast i64* %3 to i8*
  %59 = bitcast %union.anon* %56 to i8*
  %60 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 0, i32 0
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 2, i32 0
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 1
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %64 = icmp eq %"class.std::__cxx11::basic_string"* %9, %0
  %65 = bitcast i64* %50 to <2 x i64>*
  %66 = bitcast i64* %22 to <2 x i64>*
  %67 = bitcast i64* %50 to <2 x i64>*
  %68 = bitcast i64* %22 to <2 x i64>*
  %69 = bitcast i64* %62 to <2 x i64>*
  %70 = bitcast i64* %27 to <2 x i64>*
  %71 = bitcast i64* %62 to <2 x i64>*
  %72 = bitcast i64* %27 to <2 x i64>*
  br label %99

73:                                               ; preds = %416, %16
  %74 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %75 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0
  %76 = load i8*, i8** %74, align 8, !tbaa !14
  %77 = load i8*, i8** %75, align 8, !tbaa !14
  %78 = icmp eq i8* %76, %77
  br i1 %78, label %503, label %79

79:                                               ; preds = %73
  %80 = bitcast %"class.std::__cxx11::basic_string"* %11 to i8*
  %81 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %82 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2
  %84 = bitcast %"class.std::__cxx11::basic_string"* %11 to %union.anon**
  %85 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 1
  %86 = bitcast %union.anon* %83 to i8*
  %87 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 0, i32 0
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %89 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2, i32 0
  %90 = icmp eq %"class.std::__cxx11::basic_string"* %11, %0
  %91 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  %92 = load i8*, i8** %81, align 8, !tbaa !16, !noalias !17
  %93 = bitcast i64* %85 to <2 x i64>*
  %94 = bitcast i64* %27 to <2 x i64>*
  %95 = bitcast i64* %85 to <2 x i64>*
  %96 = bitcast i64* %27 to <2 x i64>*
  br label %424

97:                                               ; preds = %2
  %98 = landingpad { i8*, i32 }
          cleanup
  br label %563

99:                                               ; preds = %31, %416
  %100 = phi i64 [ 0, %31 ], [ %419, %416 ]
  %101 = phi i32 [ 0, %31 ], [ %418, %416 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #14
  store i32 0, i32* %7, align 4, !tbaa !20
  %102 = load i8*, i8** %33, align 8, !tbaa !22
  %103 = getelementptr inbounds i8, i8* %102, i64 %100
  %104 = load i8, i8* %103, align 1, !tbaa !13
  %105 = icmp sgt i8 %104, 47
  br i1 %105, label %106, label %407

106:                                              ; preds = %99
  %107 = icmp ult i8 %104, 58
  br i1 %107, label %108, label %142

108:                                              ; preds = %106
  %109 = sext i32 %101 to i64
  %110 = getelementptr inbounds i8, i8* %102, i64 %109
  %111 = load i8, i8* %110, align 1, !tbaa !13
  %112 = add i8 %111, -48
  %113 = icmp ult i8 %112, 10
  br i1 %113, label %114, label %131

114:                                              ; preds = %108, %114
  %115 = phi i32 [ %121, %114 ], [ 0, %108 ]
  %116 = phi i64 [ %122, %114 ], [ %109, %108 ]
  %117 = phi i8 [ %124, %114 ], [ %111, %108 ]
  %118 = mul nsw i32 %115, 10
  %119 = zext i8 %117 to i32
  %120 = add nsw i32 %119, -48
  %121 = add i32 %120, %118
  store i32 %121, i32* %7, align 4, !tbaa !20
  %122 = add i64 %116, 1
  %123 = getelementptr inbounds i8, i8* %102, i64 %122
  %124 = load i8, i8* %123, align 1, !tbaa !13
  %125 = add i8 %124, -48
  %126 = icmp ult i8 %125, 10
  br i1 %126, label %114, label %129, !llvm.loop !23

127:                                              ; preds = %415, %395, %390, %353, %143, %141
  %128 = landingpad { i8*, i32 }
          cleanup
  br label %422

129:                                              ; preds = %114
  %130 = trunc i64 %122 to i32
  br label %131

131:                                              ; preds = %129, %108
  %132 = phi i32 [ 0, %108 ], [ %121, %129 ]
  %133 = phi i32 [ %101, %108 ], [ %130, %129 ]
  %134 = add nsw i32 %133, -1
  %135 = load i32*, i32** %38, align 8, !tbaa !25
  %136 = load i32*, i32** %39, align 8, !tbaa !28
  %137 = getelementptr inbounds i32, i32* %136, i64 -1
  %138 = icmp eq i32* %135, %137
  br i1 %138, label %141, label %139

139:                                              ; preds = %131
  store i32 %132, i32* %135, align 4, !tbaa !20
  %140 = getelementptr inbounds i32, i32* %135, i64 1
  store i32* %140, i32** %38, align 8, !tbaa !25
  br label %416

141:                                              ; preds = %131
  invoke void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %40, i32* noundef nonnull align 4 dereferenceable(4) %7)
          to label %416 unwind label %127

142:                                              ; preds = %106
  switch i8 %104, label %407 [
    i8 93, label %143
    i8 91, label %375
  ]

143:                                              ; preds = %142
  %144 = load i64, i64* %22, align 8, !tbaa !10
  %145 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef %144, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef 0)
          to label %146 unwind label %127

146:                                              ; preds = %143
  store i32 0, i32* %7, align 4, !tbaa !20
  %147 = load i32*, i32** %38, align 8, !tbaa !29
  %148 = load i32*, i32** %41, align 8, !tbaa !29
  %149 = icmp eq i32* %147, %148
  br i1 %149, label %170, label %150

150:                                              ; preds = %146
  %151 = load i32*, i32** %42, align 8, !tbaa !30, !noalias !31
  %152 = icmp eq i32* %147, %151
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds i32, i32* %147, i64 -1
  %155 = load i32, i32* %154, align 4, !tbaa !20
  store i32 %155, i32* %7, align 4, !tbaa !20
  br label %168

156:                                              ; preds = %150
  %157 = load i32**, i32*** %43, align 8, !tbaa !34, !noalias !31
  %158 = getelementptr inbounds i32*, i32** %157, i64 -1
  %159 = load i32*, i32** %158, align 8, !tbaa !35
  %160 = getelementptr inbounds i32, i32* %159, i64 127
  %161 = load i32, i32* %160, align 4, !tbaa !20
  store i32 %161, i32* %7, align 4, !tbaa !20
  %162 = bitcast i32* %147 to i8*
  call void @_ZdlPv(i8* noundef %162) #14
  %163 = load i32**, i32*** %43, align 8, !tbaa !36
  %164 = getelementptr inbounds i32*, i32** %163, i64 -1
  store i32** %164, i32*** %43, align 8, !tbaa !34
  %165 = load i32*, i32** %164, align 8, !tbaa !35
  store i32* %165, i32** %42, align 8, !tbaa !30
  %166 = getelementptr inbounds i32, i32* %165, i64 128
  store i32* %166, i32** %39, align 8, !tbaa !37
  %167 = getelementptr inbounds i32, i32* %165, i64 127
  br label %168

168:                                              ; preds = %153, %156
  %169 = phi i32* [ %154, %153 ], [ %167, %156 ]
  store i32* %169, i32** %38, align 8, !tbaa !25
  br label %170

170:                                              ; preds = %168, %146
  %171 = load i8*, i8** %34, align 8, !tbaa !14
  %172 = load i8*, i8** %44, align 8, !tbaa !14
  %173 = icmp eq i8* %171, %172
  br i1 %173, label %279, label %174

174:                                              ; preds = %170
  %175 = load i8*, i8** %45, align 8, !tbaa !16, !noalias !38
  br label %176

176:                                              ; preds = %174, %254
  %177 = phi i8* [ %255, %254 ], [ %175, %174 ]
  %178 = phi i8* [ %256, %254 ], [ %171, %174 ]
  %179 = icmp eq i8* %178, %177
  br i1 %179, label %180, label %187

180:                                              ; preds = %176
  %181 = load i8**, i8*** %47, align 8, !tbaa !41, !noalias !38
  %182 = getelementptr inbounds i8*, i8** %181, i64 -1
  %183 = load i8*, i8** %182, align 8, !tbaa !35
  %184 = getelementptr inbounds i8, i8* %183, i64 511
  %185 = load i8, i8* %184, align 1, !tbaa !13
  %186 = icmp eq i8 %185, 91
  br i1 %186, label %260, label %192

187:                                              ; preds = %176
  %188 = getelementptr inbounds i8, i8* %178, i64 -1
  %189 = load i8, i8* %188, align 1, !tbaa !13
  %190 = icmp eq i8 %189, 91
  br i1 %190, label %267, label %191

191:                                              ; preds = %187
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %46) #14
  br label %193

192:                                              ; preds = %180
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %46) #14
  br label %193

193:                                              ; preds = %191, %192
  %194 = phi i8 [ %185, %192 ], [ %189, %191 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  store %union.anon* %48, %union.anon** %49, align 8, !tbaa !5, !alias.scope !42
  store i64 0, i64* %50, align 8, !tbaa !10, !alias.scope !42
  store i8 0, i8* %51, align 8, !tbaa !13, !alias.scope !42
  %195 = load i64, i64* %22, align 8, !tbaa !10, !noalias !42
  %196 = add i64 %195, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %196)
          to label %197 unwind label %204

197:                                              ; preds = %193
  %198 = load i64, i64* %50, align 8, !tbaa !10, !alias.scope !42
  %199 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %198, i64 noundef 0, i64 noundef 1, i8 noundef signext %194)
          to label %200 unwind label %204

200:                                              ; preds = %197
  %201 = load i8*, i8** %21, align 8, !tbaa !22, !noalias !42
  %202 = load i64, i64* %22, align 8, !tbaa !10, !noalias !42
  %203 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef %201, i64 noundef %202)
          to label %209 unwind label %204

204:                                              ; preds = %200, %197, %193
  %205 = landingpad { i8*, i32 }
          cleanup
  %206 = load i8*, i8** %52, align 8, !tbaa !22, !alias.scope !42
  %207 = icmp eq i8* %206, %51
  br i1 %207, label %259, label %208

208:                                              ; preds = %204
  call void @_ZdlPv(i8* noundef %206) #14
  br label %259

209:                                              ; preds = %200
  %210 = load i8*, i8** %52, align 8, !tbaa !22
  %211 = icmp eq i8* %210, %51
  br i1 %211, label %212, label %226

212:                                              ; preds = %209
  %213 = load i64, i64* %50, align 8, !tbaa !10
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %212
  %216 = load i8*, i8** %21, align 8, !tbaa !22
  %217 = icmp eq i64 %213, 1
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  %219 = load i8, i8* %51, align 8, !tbaa !13
  store i8 %219, i8* %216, align 1, !tbaa !13
  br label %221

220:                                              ; preds = %215
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %216, i8* nonnull align 8 %51, i64 %213, i1 false) #14
  br label %221

221:                                              ; preds = %220, %218, %212
  %222 = load i64, i64* %50, align 8, !tbaa !10
  store i64 %222, i64* %22, align 8, !tbaa !10
  %223 = load i8*, i8** %21, align 8, !tbaa !22
  %224 = getelementptr inbounds i8, i8* %223, i64 %222
  store i8 0, i8* %224, align 1, !tbaa !13
  %225 = load i8*, i8** %52, align 8, !tbaa !22
  br label %237

226:                                              ; preds = %209
  %227 = load i8*, i8** %21, align 8, !tbaa !22
  %228 = icmp eq i8* %227, %20
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  store i8* %210, i8** %21, align 8, !tbaa !22
  %230 = load <2 x i64>, <2 x i64>* %67, align 8, !tbaa !13
  store <2 x i64> %230, <2 x i64>* %68, align 8, !tbaa !13
  br label %236

231:                                              ; preds = %226
  %232 = load i64, i64* %53, align 8, !tbaa !13
  store i8* %210, i8** %21, align 8, !tbaa !22
  %233 = load <2 x i64>, <2 x i64>* %65, align 8, !tbaa !13
  store <2 x i64> %233, <2 x i64>* %66, align 8, !tbaa !13
  %234 = icmp eq i8* %227, null
  br i1 %234, label %236, label %235

235:                                              ; preds = %231
  store i8* %227, i8** %52, align 8, !tbaa !22
  store i64 %232, i64* %54, align 8, !tbaa !13
  br label %237

236:                                              ; preds = %231, %229
  store %union.anon* %48, %union.anon** %49, align 8, !tbaa !22
  br label %237

237:                                              ; preds = %221, %235, %236
  %238 = phi i8* [ %225, %221 ], [ %227, %235 ], [ %51, %236 ]
  store i64 0, i64* %50, align 8, !tbaa !10
  store i8 0, i8* %238, align 1, !tbaa !13
  %239 = load i8*, i8** %52, align 8, !tbaa !22
  %240 = icmp eq i8* %239, %51
  br i1 %240, label %242, label %241

241:                                              ; preds = %237
  call void @_ZdlPv(i8* noundef %239) #14
  br label %242

242:                                              ; preds = %237, %241
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %46) #14
  %243 = load i8*, i8** %34, align 8, !tbaa !45
  %244 = load i8*, i8** %45, align 8, !tbaa !47
  %245 = icmp eq i8* %243, %244
  br i1 %245, label %248, label %246

246:                                              ; preds = %242
  %247 = getelementptr inbounds i8, i8* %243, i64 -1
  br label %254

248:                                              ; preds = %242
  call void @_ZdlPv(i8* noundef %243) #14
  %249 = load i8**, i8*** %47, align 8, !tbaa !48
  %250 = getelementptr inbounds i8*, i8** %249, i64 -1
  store i8** %250, i8*** %47, align 8, !tbaa !41
  %251 = load i8*, i8** %250, align 8, !tbaa !35
  store i8* %251, i8** %45, align 8, !tbaa !16
  %252 = getelementptr inbounds i8, i8* %251, i64 512
  store i8* %252, i8** %35, align 8, !tbaa !49
  %253 = getelementptr inbounds i8, i8* %251, i64 511
  br label %254

254:                                              ; preds = %246, %248
  %255 = phi i8* [ %244, %246 ], [ %251, %248 ]
  %256 = phi i8* [ %247, %246 ], [ %253, %248 ]
  store i8* %256, i8** %34, align 8, !tbaa !45
  %257 = load i8*, i8** %44, align 8, !tbaa !14
  %258 = icmp eq i8* %256, %257
  br i1 %258, label %279, label %176, !llvm.loop !50

259:                                              ; preds = %204, %208
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %46) #14
  br label %422

260:                                              ; preds = %180
  %261 = load i8**, i8*** %47, align 8, !tbaa !41, !noalias !51
  %262 = getelementptr inbounds i8*, i8** %261, i64 -1
  %263 = load i8*, i8** %262, align 8, !tbaa !35
  %264 = getelementptr inbounds i8, i8* %263, i64 511
  %265 = load i8, i8* %264, align 1, !tbaa !13
  %266 = icmp eq i8 %265, 91
  br i1 %266, label %271, label %279

267:                                              ; preds = %187
  %268 = getelementptr inbounds i8, i8* %178, i64 -1
  %269 = load i8, i8* %268, align 1, !tbaa !13
  %270 = icmp eq i8 %269, 91
  br i1 %270, label %277, label %279

271:                                              ; preds = %260
  call void @_ZdlPv(i8* noundef %177) #14
  %272 = load i8**, i8*** %47, align 8, !tbaa !48
  %273 = getelementptr inbounds i8*, i8** %272, i64 -1
  store i8** %273, i8*** %47, align 8, !tbaa !41
  %274 = load i8*, i8** %273, align 8, !tbaa !35
  store i8* %274, i8** %45, align 8, !tbaa !16
  %275 = getelementptr inbounds i8, i8* %274, i64 512
  store i8* %275, i8** %35, align 8, !tbaa !49
  %276 = getelementptr inbounds i8, i8* %274, i64 511
  br label %277

277:                                              ; preds = %267, %271
  %278 = phi i8* [ %276, %271 ], [ %268, %267 ]
  store i8* %278, i8** %34, align 8, !tbaa !45
  br label %279

279:                                              ; preds = %254, %170, %267, %277, %260
  %280 = load i32, i32* %7, align 4, !tbaa !20
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %345, %279
  %283 = load i64, i64* %27, align 8, !tbaa !10
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %353, label %356

285:                                              ; preds = %279, %345
  %286 = phi i32 [ %346, %345 ], [ 0, %279 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %55) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  store %union.anon* %56, %union.anon** %57, align 8, !tbaa !5, !alias.scope !54
  %287 = load i8*, i8** %26, align 8, !tbaa !22, !noalias !54
  %288 = load i64, i64* %27, align 8, !tbaa !10, !noalias !54
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #14, !noalias !54
  store i64 %288, i64* %3, align 8, !tbaa !57, !noalias !54
  %289 = icmp ugt i64 %288, 15
  br i1 %289, label %290, label %294

290:                                              ; preds = %285
  %291 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9, i64* noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %292 unwind label %349

292:                                              ; preds = %290
  store i8* %291, i8** %60, align 8, !tbaa !22, !alias.scope !54
  %293 = load i64, i64* %3, align 8, !tbaa !57, !noalias !54
  store i64 %293, i64* %61, align 8, !tbaa !13, !alias.scope !54
  br label %294

294:                                              ; preds = %285, %292
  %295 = phi i8* [ %291, %292 ], [ %59, %285 ]
  switch i64 %288, label %298 [
    i64 1, label %296
    i64 0, label %299
  ]

296:                                              ; preds = %294
  %297 = load i8, i8* %287, align 1, !tbaa !13
  store i8 %297, i8* %295, align 1, !tbaa !13
  br label %299

298:                                              ; preds = %294
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %295, i8* align 1 %287, i64 %288, i1 false) #14
  br label %299

299:                                              ; preds = %298, %296, %294
  %300 = load i64, i64* %3, align 8, !tbaa !57, !noalias !54
  store i64 %300, i64* %62, align 8, !tbaa !10, !alias.scope !54
  %301 = load i8*, i8** %60, align 8, !tbaa !22, !alias.scope !54
  %302 = getelementptr inbounds i8, i8* %301, i64 %300
  store i8 0, i8* %302, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #14, !noalias !54
  %303 = load i8*, i8** %21, align 8, !tbaa !22, !noalias !54
  %304 = load i64, i64* %22, align 8, !tbaa !10, !noalias !54
  %305 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef %303, i64 noundef %304)
          to label %311 unwind label %306

306:                                              ; preds = %299
  %307 = landingpad { i8*, i32 }
          cleanup
  %308 = load i8*, i8** %60, align 8, !tbaa !22, !alias.scope !54
  %309 = icmp eq i8* %308, %59
  br i1 %309, label %351, label %310

310:                                              ; preds = %306
  call void @_ZdlPv(i8* noundef %308) #14
  br label %351

311:                                              ; preds = %299
  %312 = load i8*, i8** %60, align 8, !tbaa !22
  %313 = icmp eq i8* %312, %59
  br i1 %313, label %314, label %329

314:                                              ; preds = %311
  br i1 %64, label %340, label %315, !prof !58

315:                                              ; preds = %314
  %316 = load i64, i64* %62, align 8, !tbaa !10
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %324, label %318

318:                                              ; preds = %315
  %319 = load i8*, i8** %26, align 8, !tbaa !22
  %320 = icmp eq i64 %316, 1
  br i1 %320, label %321, label %323

321:                                              ; preds = %318
  %322 = load i8, i8* %59, align 8, !tbaa !13
  store i8 %322, i8* %319, align 1, !tbaa !13
  br label %324

323:                                              ; preds = %318
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %319, i8* nonnull align 8 %59, i64 %316, i1 false) #14
  br label %324

324:                                              ; preds = %323, %321, %315
  %325 = load i64, i64* %62, align 8, !tbaa !10
  store i64 %325, i64* %27, align 8, !tbaa !10
  %326 = load i8*, i8** %26, align 8, !tbaa !22
  %327 = getelementptr inbounds i8, i8* %326, i64 %325
  store i8 0, i8* %327, align 1, !tbaa !13
  %328 = load i8*, i8** %60, align 8, !tbaa !22
  br label %340

329:                                              ; preds = %311
  %330 = load i8*, i8** %26, align 8, !tbaa !22
  %331 = icmp eq i8* %330, %25
  br i1 %331, label %332, label %334

332:                                              ; preds = %329
  store i8* %312, i8** %26, align 8, !tbaa !22
  %333 = load <2 x i64>, <2 x i64>* %71, align 8, !tbaa !13
  store <2 x i64> %333, <2 x i64>* %72, align 8, !tbaa !13
  br label %339

334:                                              ; preds = %329
  %335 = load i64, i64* %63, align 8, !tbaa !13
  store i8* %312, i8** %26, align 8, !tbaa !22
  %336 = load <2 x i64>, <2 x i64>* %69, align 8, !tbaa !13
  store <2 x i64> %336, <2 x i64>* %70, align 8, !tbaa !13
  %337 = icmp eq i8* %330, null
  br i1 %337, label %339, label %338

338:                                              ; preds = %334
  store i8* %330, i8** %60, align 8, !tbaa !22
  store i64 %335, i64* %61, align 8, !tbaa !13
  br label %340

339:                                              ; preds = %334, %332
  store %union.anon* %56, %union.anon** %57, align 8, !tbaa !22
  br label %340

340:                                              ; preds = %314, %324, %338, %339
  %341 = phi i8* [ %328, %324 ], [ %330, %338 ], [ %59, %339 ], [ %59, %314 ]
  store i64 0, i64* %62, align 8, !tbaa !10
  store i8 0, i8* %341, align 1, !tbaa !13
  %342 = load i8*, i8** %60, align 8, !tbaa !22
  %343 = icmp eq i8* %342, %59
  br i1 %343, label %345, label %344

344:                                              ; preds = %340
  call void @_ZdlPv(i8* noundef %342) #14
  br label %345

345:                                              ; preds = %340, %344
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %55) #14
  %346 = add nuw nsw i32 %286, 1
  %347 = load i32, i32* %7, align 4, !tbaa !20
  %348 = icmp slt i32 %346, %347
  br i1 %348, label %285, label %282, !llvm.loop !59

349:                                              ; preds = %290
  %350 = landingpad { i8*, i32 }
          cleanup
  br label %351

351:                                              ; preds = %306, %310, %349
  %352 = phi { i8*, i32 } [ %350, %349 ], [ %307, %310 ], [ %307, %306 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %55) #14
  br label %422

353:                                              ; preds = %369, %282
  %354 = phi i64 [ 0, %282 ], [ %371, %369 ]
  %355 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %354, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 noundef 0)
          to label %416 unwind label %127

356:                                              ; preds = %282, %369
  %357 = phi i64 [ %370, %369 ], [ 0, %282 ]
  %358 = load i8*, i8** %26, align 8, !tbaa !22
  %359 = getelementptr inbounds i8, i8* %358, i64 %357
  %360 = load i8*, i8** %34, align 8, !tbaa !45
  %361 = load i8*, i8** %35, align 8, !tbaa !60
  %362 = getelementptr inbounds i8, i8* %361, i64 -1
  %363 = icmp eq i8* %360, %362
  br i1 %363, label %368, label %364

364:                                              ; preds = %356
  %365 = load i8, i8* %359, align 1, !tbaa !13
  store i8 %365, i8* %360, align 1, !tbaa !13
  %366 = load i8*, i8** %34, align 8, !tbaa !45
  %367 = getelementptr inbounds i8, i8* %366, i64 1
  store i8* %367, i8** %34, align 8, !tbaa !45
  br label %369

368:                                              ; preds = %356
  invoke void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_(%"class.std::deque.4"* noundef nonnull align 8 dereferenceable(80) %36, i8* noundef nonnull align 1 dereferenceable(1) %359)
          to label %369 unwind label %373

369:                                              ; preds = %364, %368
  %370 = add nuw i64 %357, 1
  %371 = load i64, i64* %27, align 8, !tbaa !10
  %372 = icmp ugt i64 %371, %370
  br i1 %372, label %356, label %353, !llvm.loop !61

373:                                              ; preds = %368
  %374 = landingpad { i8*, i32 }
          cleanup
  br label %422

375:                                              ; preds = %142
  %376 = add nsw i32 %101, -1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i8, i8* %102, i64 %377
  %379 = load i8, i8* %378, align 1, !tbaa !13
  %380 = add i8 %379, -48
  %381 = icmp ult i8 %380, 10
  %382 = load i8*, i8** %34, align 8, !tbaa !45
  %383 = load i8*, i8** %35, align 8, !tbaa !60
  %384 = getelementptr inbounds i8, i8* %383, i64 -1
  %385 = icmp eq i8* %382, %384
  br i1 %381, label %386, label %391

386:                                              ; preds = %375
  br i1 %385, label %390, label %387

387:                                              ; preds = %386
  store i8 91, i8* %382, align 1, !tbaa !13
  %388 = load i8*, i8** %34, align 8, !tbaa !45
  %389 = getelementptr inbounds i8, i8* %388, i64 1
  store i8* %389, i8** %34, align 8, !tbaa !45
  br label %416

390:                                              ; preds = %386
  invoke void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_(%"class.std::deque.4"* noundef nonnull align 8 dereferenceable(80) %36, i8* noundef nonnull align 1 dereferenceable(1) %103)
          to label %416 unwind label %127

391:                                              ; preds = %375
  br i1 %385, label %395, label %392

392:                                              ; preds = %391
  store i8 91, i8* %382, align 1, !tbaa !13
  %393 = load i8*, i8** %34, align 8, !tbaa !45
  %394 = getelementptr inbounds i8, i8* %393, i64 1
  store i8* %394, i8** %34, align 8, !tbaa !45
  br label %396

395:                                              ; preds = %391
  invoke void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_(%"class.std::deque.4"* noundef nonnull align 8 dereferenceable(80) %36, i8* noundef nonnull align 1 dereferenceable(1) %103)
          to label %396 unwind label %127

396:                                              ; preds = %392, %395
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %37) #14
  store i32 1, i32* %10, align 4, !tbaa !20
  %397 = load i32*, i32** %38, align 8, !tbaa !25
  %398 = load i32*, i32** %39, align 8, !tbaa !28
  %399 = getelementptr inbounds i32, i32* %398, i64 -1
  %400 = icmp eq i32* %397, %399
  br i1 %400, label %403, label %401

401:                                              ; preds = %396
  store i32 1, i32* %397, align 4, !tbaa !20
  %402 = getelementptr inbounds i32, i32* %397, i64 1
  store i32* %402, i32** %38, align 8, !tbaa !25
  br label %404

403:                                              ; preds = %396
  invoke void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJiEEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %40, i32* noundef nonnull align 4 dereferenceable(4) %10)
          to label %404 unwind label %405

404:                                              ; preds = %401, %403
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #14
  br label %416

405:                                              ; preds = %403
  %406 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #14
  br label %422

407:                                              ; preds = %142, %99
  %408 = load i8*, i8** %34, align 8, !tbaa !45
  %409 = load i8*, i8** %35, align 8, !tbaa !60
  %410 = getelementptr inbounds i8, i8* %409, i64 -1
  %411 = icmp eq i8* %408, %410
  br i1 %411, label %415, label %412

412:                                              ; preds = %407
  store i8 %104, i8* %408, align 1, !tbaa !13
  %413 = load i8*, i8** %34, align 8, !tbaa !45
  %414 = getelementptr inbounds i8, i8* %413, i64 1
  store i8* %414, i8** %34, align 8, !tbaa !45
  br label %416

415:                                              ; preds = %407
  invoke void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_(%"class.std::deque.4"* noundef nonnull align 8 dereferenceable(80) %36, i8* noundef nonnull align 1 dereferenceable(1) %103)
          to label %416 unwind label %127

416:                                              ; preds = %412, %415, %387, %390, %353, %139, %141, %404
  %417 = phi i32 [ %101, %404 ], [ %134, %141 ], [ %134, %139 ], [ %101, %353 ], [ %101, %390 ], [ %101, %387 ], [ %101, %415 ], [ %101, %412 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #14
  %418 = add nsw i32 %417, 1
  %419 = sext i32 %418 to i64
  %420 = load i64, i64* %28, align 8, !tbaa !10
  %421 = icmp ugt i64 %420, %419
  br i1 %421, label %99, label %73, !llvm.loop !62

422:                                              ; preds = %405, %373, %351, %259, %127
  %423 = phi { i8*, i32 } [ %128, %127 ], [ %352, %351 ], [ %374, %373 ], [ %205, %259 ], [ %406, %405 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #14
  br label %553

424:                                              ; preds = %79, %497
  %425 = phi i8* [ %92, %79 ], [ %498, %497 ]
  %426 = phi i8* [ %76, %79 ], [ %499, %497 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %80) #14
  %427 = icmp eq i8* %426, %425
  br i1 %427, label %428, label %433

428:                                              ; preds = %424
  %429 = load i8**, i8*** %82, align 8, !tbaa !41, !noalias !17
  %430 = getelementptr inbounds i8*, i8** %429, i64 -1
  %431 = load i8*, i8** %430, align 8, !tbaa !35
  %432 = getelementptr inbounds i8, i8* %431, i64 512
  br label %433

433:                                              ; preds = %424, %428
  %434 = phi i8* [ %432, %428 ], [ %426, %424 ]
  %435 = getelementptr inbounds i8, i8* %434, i64 -1
  %436 = load i8, i8* %435, align 1, !tbaa !13
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  store %union.anon* %83, %union.anon** %84, align 8, !tbaa !5, !alias.scope !63
  store i64 0, i64* %85, align 8, !tbaa !10, !alias.scope !63
  store i8 0, i8* %86, align 8, !tbaa !13, !alias.scope !63
  %437 = load i64, i64* %27, align 8, !tbaa !10, !noalias !63
  %438 = add i64 %437, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %438)
          to label %439 unwind label %446

439:                                              ; preds = %433
  %440 = load i64, i64* %85, align 8, !tbaa !10, !alias.scope !63
  %441 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %440, i64 noundef 0, i64 noundef 1, i8 noundef signext %436)
          to label %442 unwind label %446

442:                                              ; preds = %439
  %443 = load i8*, i8** %26, align 8, !tbaa !22, !noalias !63
  %444 = load i64, i64* %27, align 8, !tbaa !10, !noalias !63
  %445 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, i8* noundef %443, i64 noundef %444)
          to label %451 unwind label %446

446:                                              ; preds = %442, %439, %433
  %447 = landingpad { i8*, i32 }
          cleanup
  %448 = load i8*, i8** %87, align 8, !tbaa !22, !alias.scope !63
  %449 = icmp eq i8* %448, %86
  br i1 %449, label %502, label %450

450:                                              ; preds = %446
  call void @_ZdlPv(i8* noundef %448) #14
  br label %502

451:                                              ; preds = %442
  %452 = load i8*, i8** %87, align 8, !tbaa !22
  %453 = icmp eq i8* %452, %86
  br i1 %453, label %454, label %469

454:                                              ; preds = %451
  br i1 %90, label %480, label %455, !prof !58

455:                                              ; preds = %454
  %456 = load i64, i64* %85, align 8, !tbaa !10
  %457 = icmp eq i64 %456, 0
  br i1 %457, label %464, label %458

458:                                              ; preds = %455
  %459 = load i8*, i8** %26, align 8, !tbaa !22
  %460 = icmp eq i64 %456, 1
  br i1 %460, label %461, label %463

461:                                              ; preds = %458
  %462 = load i8, i8* %86, align 8, !tbaa !13
  store i8 %462, i8* %459, align 1, !tbaa !13
  br label %464

463:                                              ; preds = %458
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %459, i8* nonnull align 8 %86, i64 %456, i1 false) #14
  br label %464

464:                                              ; preds = %463, %461, %455
  %465 = load i64, i64* %85, align 8, !tbaa !10
  store i64 %465, i64* %27, align 8, !tbaa !10
  %466 = load i8*, i8** %26, align 8, !tbaa !22
  %467 = getelementptr inbounds i8, i8* %466, i64 %465
  store i8 0, i8* %467, align 1, !tbaa !13
  %468 = load i8*, i8** %87, align 8, !tbaa !22
  br label %480

469:                                              ; preds = %451
  %470 = load i8*, i8** %26, align 8, !tbaa !22
  %471 = icmp eq i8* %470, %25
  br i1 %471, label %472, label %474

472:                                              ; preds = %469
  store i8* %452, i8** %26, align 8, !tbaa !22
  %473 = load <2 x i64>, <2 x i64>* %95, align 8, !tbaa !13
  store <2 x i64> %473, <2 x i64>* %96, align 8, !tbaa !13
  br label %479

474:                                              ; preds = %469
  %475 = load i64, i64* %88, align 8, !tbaa !13
  store i8* %452, i8** %26, align 8, !tbaa !22
  %476 = load <2 x i64>, <2 x i64>* %93, align 8, !tbaa !13
  store <2 x i64> %476, <2 x i64>* %94, align 8, !tbaa !13
  %477 = icmp eq i8* %470, null
  br i1 %477, label %479, label %478

478:                                              ; preds = %474
  store i8* %470, i8** %87, align 8, !tbaa !22
  store i64 %475, i64* %89, align 8, !tbaa !13
  br label %480

479:                                              ; preds = %474, %472
  store %union.anon* %83, %union.anon** %84, align 8, !tbaa !22
  br label %480

480:                                              ; preds = %454, %464, %478, %479
  %481 = phi i8* [ %468, %464 ], [ %470, %478 ], [ %86, %479 ], [ %86, %454 ]
  store i64 0, i64* %85, align 8, !tbaa !10
  store i8 0, i8* %481, align 1, !tbaa !13
  %482 = load i8*, i8** %87, align 8, !tbaa !22
  %483 = icmp eq i8* %482, %86
  br i1 %483, label %485, label %484

484:                                              ; preds = %480
  call void @_ZdlPv(i8* noundef %482) #14
  br label %485

485:                                              ; preds = %480, %484
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %80) #14
  %486 = load i8*, i8** %74, align 8, !tbaa !45
  %487 = load i8*, i8** %81, align 8, !tbaa !47
  %488 = icmp eq i8* %486, %487
  br i1 %488, label %491, label %489

489:                                              ; preds = %485
  %490 = getelementptr inbounds i8, i8* %486, i64 -1
  br label %497

491:                                              ; preds = %485
  call void @_ZdlPv(i8* noundef %486) #14
  %492 = load i8**, i8*** %82, align 8, !tbaa !48
  %493 = getelementptr inbounds i8*, i8** %492, i64 -1
  store i8** %493, i8*** %82, align 8, !tbaa !41
  %494 = load i8*, i8** %493, align 8, !tbaa !35
  store i8* %494, i8** %81, align 8, !tbaa !16
  %495 = getelementptr inbounds i8, i8* %494, i64 512
  store i8* %495, i8** %91, align 8, !tbaa !49
  %496 = getelementptr inbounds i8, i8* %494, i64 511
  br label %497

497:                                              ; preds = %489, %491
  %498 = phi i8* [ %487, %489 ], [ %494, %491 ]
  %499 = phi i8* [ %490, %489 ], [ %496, %491 ]
  store i8* %499, i8** %74, align 8, !tbaa !45
  %500 = load i8*, i8** %75, align 8, !tbaa !14
  %501 = icmp eq i8* %499, %500
  br i1 %501, label %503, label %424, !llvm.loop !66

502:                                              ; preds = %446, %450
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %80) #14
  br label %553

503:                                              ; preds = %497, %73
  %504 = load i8*, i8** %21, align 8, !tbaa !22
  %505 = icmp eq i8* %504, %20
  br i1 %505, label %507, label %506

506:                                              ; preds = %503
  call void @_ZdlPv(i8* noundef %504) #14
  br label %507

507:                                              ; preds = %503, %506
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #14
  %508 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %509 = load i8**, i8*** %508, align 8, !tbaa !67
  %510 = icmp eq i8** %509, null
  br i1 %510, label %529, label %511

511:                                              ; preds = %507
  %512 = bitcast i8** %509 to i8*
  %513 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %514 = load i8**, i8*** %513, align 8, !tbaa !68
  %515 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %516 = load i8**, i8*** %515, align 8, !tbaa !48
  %517 = getelementptr inbounds i8*, i8** %516, i64 1
  %518 = icmp ult i8** %514, %517
  br i1 %518, label %519, label %527

519:                                              ; preds = %511, %519
  %520 = phi i8** [ %522, %519 ], [ %514, %511 ]
  %521 = load i8*, i8** %520, align 8, !tbaa !35
  call void @_ZdlPv(i8* noundef %521) #14
  %522 = getelementptr inbounds i8*, i8** %520, i64 1
  %523 = icmp ult i8** %520, %516
  br i1 %523, label %519, label %524, !llvm.loop !69

524:                                              ; preds = %519
  %525 = bitcast %"class.std::stack.3"* %5 to i8**
  %526 = load i8*, i8** %525, align 8, !tbaa !67
  br label %527

527:                                              ; preds = %524, %511
  %528 = phi i8* [ %526, %524 ], [ %512, %511 ]
  call void @_ZdlPv(i8* noundef %528) #14
  br label %529

529:                                              ; preds = %507, %527
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %14) #14
  %530 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %531 = load i32**, i32*** %530, align 8, !tbaa !70
  %532 = icmp eq i32** %531, null
  br i1 %532, label %552, label %533

533:                                              ; preds = %529
  %534 = bitcast i32** %531 to i8*
  %535 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %536 = load i32**, i32*** %535, align 8, !tbaa !71
  %537 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %538 = load i32**, i32*** %537, align 8, !tbaa !36
  %539 = getelementptr inbounds i32*, i32** %538, i64 1
  %540 = icmp ult i32** %536, %539
  br i1 %540, label %541, label %550

541:                                              ; preds = %533, %541
  %542 = phi i32** [ %545, %541 ], [ %536, %533 ]
  %543 = bitcast i32** %542 to i8**
  %544 = load i8*, i8** %543, align 8, !tbaa !35
  call void @_ZdlPv(i8* noundef %544) #14
  %545 = getelementptr inbounds i32*, i32** %542, i64 1
  %546 = icmp ult i32** %542, %538
  br i1 %546, label %541, label %547, !llvm.loop !72

547:                                              ; preds = %541
  %548 = bitcast %"class.std::stack"* %4 to i8**
  %549 = load i8*, i8** %548, align 8, !tbaa !70
  br label %550

550:                                              ; preds = %547, %533
  %551 = phi i8* [ %549, %547 ], [ %534, %533 ]
  call void @_ZdlPv(i8* noundef %551) #14
  br label %552

552:                                              ; preds = %529, %550
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %12) #14
  ret void

553:                                              ; preds = %502, %422
  %554 = phi { i8*, i32 } [ %423, %422 ], [ %447, %502 ]
  %555 = load i8*, i8** %26, align 8, !tbaa !22
  %556 = icmp eq i8* %555, %25
  br i1 %556, label %558, label %557

557:                                              ; preds = %553
  call void @_ZdlPv(i8* noundef %555) #14
  br label %558

558:                                              ; preds = %557, %553
  %559 = load i8*, i8** %21, align 8, !tbaa !22
  %560 = icmp eq i8* %559, %20
  br i1 %560, label %562, label %561

561:                                              ; preds = %558
  call void @_ZdlPv(i8* noundef %559) #14
  br label %562

562:                                              ; preds = %561, %558
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #14
  call void @_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev(%"class.std::stack.3"* noundef nonnull align 8 dereferenceable(80) %5) #14
  br label %563

563:                                              ; preds = %562, %97
  %564 = phi { i8*, i32 } [ %554, %562 ], [ %98, %97 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %14) #14
  call void @_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev(%"class.std::stack"* noundef nonnull align 8 dereferenceable(80) %4) #14
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %12) #14
  resume { i8*, i32 } %564
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev(%"class.std::stack.3"* noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %3 = load i8**, i8*** %2, align 8, !tbaa !67
  %4 = icmp eq i8** %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = bitcast i8** %3 to i8*
  %7 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %8 = load i8**, i8*** %7, align 8, !tbaa !68
  %9 = getelementptr inbounds %"class.std::stack.3", %"class.std::stack.3"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %10 = load i8**, i8*** %9, align 8, !tbaa !48
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = icmp ult i8** %8, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %5, %13
  %14 = phi i8** [ %16, %13 ], [ %8, %5 ]
  %15 = load i8*, i8** %14, align 8, !tbaa !35
  tail call void @_ZdlPv(i8* noundef %15) #14
  %16 = getelementptr inbounds i8*, i8** %14, i64 1
  %17 = icmp ult i8** %14, %10
  br i1 %17, label %13, label %18, !llvm.loop !69

18:                                               ; preds = %13
  %19 = bitcast %"class.std::stack.3"* %0 to i8**
  %20 = load i8*, i8** %19, align 8, !tbaa !67
  br label %21

21:                                               ; preds = %18, %5
  %22 = phi i8* [ %20, %18 ], [ %6, %5 ]
  tail call void @_ZdlPv(i8* noundef %22) #14
  br label %23

23:                                               ; preds = %1, %21
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5stackIiSt5dequeIiSaIiEEED2Ev(%"class.std::stack"* noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %3 = load i32**, i32*** %2, align 8, !tbaa !70
  %4 = icmp eq i32** %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = bitcast i32** %3 to i8*
  %7 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %8 = load i32**, i32*** %7, align 8, !tbaa !71
  %9 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %10 = load i32**, i32*** %9, align 8, !tbaa !36
  %11 = getelementptr inbounds i32*, i32** %10, i64 1
  %12 = icmp ult i32** %8, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %5, %13
  %14 = phi i32** [ %17, %13 ], [ %8, %5 ]
  %15 = bitcast i32** %14 to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !35
  tail call void @_ZdlPv(i8* noundef %16) #14
  %17 = getelementptr inbounds i32*, i32** %14, i64 1
  %18 = icmp ult i32** %14, %10
  br i1 %18, label %13, label %19, !llvm.loop !72

19:                                               ; preds = %13
  %20 = bitcast %"class.std::stack"* %0 to i8**
  %21 = load i8*, i8** %20, align 8, !tbaa !70
  br label %22

22:                                               ; preds = %19, %5
  %23 = phi i8* [ %21, %19 ], [ %6, %5 ]
  tail call void @_ZdlPv(i8* noundef %23) #14
  br label %24

24:                                               ; preds = %1, %22
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) local_unnamed_addr #6 comdat {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #14
  tail call void @_ZSt9terminatev() #15
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
  store i64 %7, i64* %8, align 8, !tbaa !73
  %9 = shl nuw nsw i64 %7, 3
  %10 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef %9) #16
  %11 = bitcast i8* %10 to i32**
  %12 = bitcast %"class.std::_Deque_base"* %0 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !70
  %13 = load i64, i64* %8, align 8, !tbaa !73
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
  %21 = tail call i8* @__cxa_begin_catch(i8* %20) #14
  %22 = load i8*, i8** %12, align 8, !tbaa !70
  tail call void @_ZdlPv(i8* noundef %22) #14
  %23 = bitcast %"class.std::_Deque_base"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #17
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
  store i32** %16, i32*** %28, align 8, !tbaa !34
  %29 = load i32*, i32** %16, align 8, !tbaa !35
  %30 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 1
  store i32* %29, i32** %30, align 8, !tbaa !30
  %31 = getelementptr inbounds i32, i32* %29, i64 128
  %32 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 2
  store i32* %31, i32** %32, align 8, !tbaa !37
  %33 = getelementptr inbounds i32*, i32** %17, i64 -1
  %34 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 3
  store i32** %33, i32*** %34, align 8, !tbaa !34
  %35 = load i32*, i32** %33, align 8, !tbaa !35
  %36 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 1
  store i32* %35, i32** %36, align 8, !tbaa !30
  %37 = getelementptr inbounds i32, i32* %35, i64 128
  %38 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 2
  store i32* %37, i32** %38, align 8, !tbaa !37
  %39 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 0
  store i32* %29, i32** %39, align 8, !tbaa !74
  %40 = and i64 %1, 127
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 0
  store i32* %41, i32** %42, align 8, !tbaa !25
  ret void

43:                                               ; preds = %24
  %44 = landingpad { i8*, i32 }
          catch i8* null
  %45 = extractvalue { i8*, i32 } %44, 0
  tail call void @__clang_call_terminate(i8* %45) #15
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
  %7 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef 512) #16
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = bitcast i32** %6 to i8**
  store i8* %7, i8** %9, align 8, !tbaa !35
  %10 = getelementptr inbounds i32*, i32** %6, i64 1
  %11 = icmp ult i32** %10, %2
  br i1 %11, label %5, label %27, !llvm.loop !75

12:                                               ; preds = %5
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  %15 = tail call i8* @__cxa_begin_catch(i8* %14) #14
  %16 = icmp ugt i32** %6, %1
  br i1 %16, label %17, label %23

17:                                               ; preds = %12, %17
  %18 = phi i32** [ %21, %17 ], [ %1, %12 ]
  %19 = bitcast i32** %18 to i8**
  %20 = load i8*, i8** %19, align 8, !tbaa !35
  tail call void @_ZdlPv(i8* noundef %20) #14
  %21 = getelementptr inbounds i32*, i32** %18, i64 1
  %22 = icmp ult i32** %21, %6
  br i1 %22, label %17, label %23, !llvm.loop !72

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
  tail call void @__clang_call_terminate(i8* %30) #15
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
  store i64 %7, i64* %8, align 8, !tbaa !76
  %9 = shl nuw nsw i64 %7, 3
  %10 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef %9) #16
  %11 = bitcast i8* %10 to i8**
  %12 = bitcast %"class.std::_Deque_base.5"* %0 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !67
  %13 = load i64, i64* %8, align 8, !tbaa !76
  %14 = sub i64 %13, %4
  %15 = lshr i64 %14, 1
  %16 = getelementptr inbounds i8*, i8** %11, i64 %15
  %17 = getelementptr inbounds i8*, i8** %16, i64 %4
  invoke void @_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_(%"class.std::_Deque_base.5"* noundef nonnull align 8 dereferenceable(80) %0, i8** noundef nonnull %16, i8** noundef nonnull %17)
          to label %27 unwind label %18

18:                                               ; preds = %2
  %19 = landingpad { i8*, i32 }
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = tail call i8* @__cxa_begin_catch(i8* %20) #14
  %22 = load i8*, i8** %12, align 8, !tbaa !67
  tail call void @_ZdlPv(i8* noundef %22) #14
  %23 = bitcast %"class.std::_Deque_base.5"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #17
          to label %46 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { i8*, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %26 unwind label %43

26:                                               ; preds = %24
  resume { i8*, i32 } %25

27:                                               ; preds = %2
  %28 = getelementptr inbounds %"class.std::_Deque_base.5", %"class.std::_Deque_base.5"* %0, i64 0, i32 0, i32 0, i32 2, i32 3
  store i8** %16, i8*** %28, align 8, !tbaa !41
  %29 = load i8*, i8** %16, align 8, !tbaa !35
  %30 = getelementptr inbounds %"class.std::_Deque_base.5", %"class.std::_Deque_base.5"* %0, i64 0, i32 0, i32 0, i32 2, i32 1
  store i8* %29, i8** %30, align 8, !tbaa !16
  %31 = getelementptr inbounds i8, i8* %29, i64 512
  %32 = getelementptr inbounds %"class.std::_Deque_base.5", %"class.std::_Deque_base.5"* %0, i64 0, i32 0, i32 0, i32 2, i32 2
  store i8* %31, i8** %32, align 8, !tbaa !49
  %33 = getelementptr inbounds i8*, i8** %17, i64 -1
  %34 = getelementptr inbounds %"class.std::_Deque_base.5", %"class.std::_Deque_base.5"* %0, i64 0, i32 0, i32 0, i32 3, i32 3
  store i8** %33, i8*** %34, align 8, !tbaa !41
  %35 = load i8*, i8** %33, align 8, !tbaa !35
  %36 = getelementptr inbounds %"class.std::_Deque_base.5", %"class.std::_Deque_base.5"* %0, i64 0, i32 0, i32 0, i32 3, i32 1
  store i8* %35, i8** %36, align 8, !tbaa !16
  %37 = getelementptr inbounds i8, i8* %35, i64 512
  %38 = getelementptr inbounds %"class.std::_Deque_base.5", %"class.std::_Deque_base.5"* %0, i64 0, i32 0, i32 0, i32 3, i32 2
  store i8* %37, i8** %38, align 8, !tbaa !49
  %39 = getelementptr inbounds %"class.std::_Deque_base.5", %"class.std::_Deque_base.5"* %0, i64 0, i32 0, i32 0, i32 2, i32 0
  store i8* %29, i8** %39, align 8, !tbaa !77
  %40 = and i64 %1, 511
  %41 = getelementptr inbounds i8, i8* %35, i64 %40
  %42 = getelementptr inbounds %"class.std::_Deque_base.5", %"class.std::_Deque_base.5"* %0, i64 0, i32 0, i32 0, i32 3, i32 0
  store i8* %41, i8** %42, align 8, !tbaa !45
  ret void

43:                                               ; preds = %24
  %44 = landingpad { i8*, i32 }
          catch i8* null
  %45 = extractvalue { i8*, i32 } %44, 0
  tail call void @__clang_call_terminate(i8* %45) #15
  unreachable

46:                                               ; preds = %18
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
  store i8* %7, i8** %6, align 8, !tbaa !35
  %9 = getelementptr inbounds i8*, i8** %6, i64 1
  %10 = icmp ult i8** %9, %2
  br i1 %10, label %5, label %25, !llvm.loop !78

11:                                               ; preds = %5
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  %14 = tail call i8* @__cxa_begin_catch(i8* %13) #14
  %15 = icmp ugt i8** %6, %1
  br i1 %15, label %16, label %21

16:                                               ; preds = %11, %16
  %17 = phi i8** [ %19, %16 ], [ %1, %11 ]
  %18 = load i8*, i8** %17, align 8, !tbaa !35
  tail call void @_ZdlPv(i8* noundef %18) #14
  %19 = getelementptr inbounds i8*, i8** %17, i64 1
  %20 = icmp ult i8** %19, %6
  br i1 %20, label %16, label %21, !llvm.loop !69

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
  tail call void @__clang_call_terminate(i8* %28) #15
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
  %4 = load i32**, i32*** %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %6 = load i32**, i32*** %5, align 8, !tbaa !34
  %7 = ptrtoint i32** %4 to i64
  %8 = ptrtoint i32** %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = icmp ne i32** %4, null
  %12 = sext i1 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = shl nsw i64 %13, 7
  %15 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %16 = load i32*, i32** %15, align 8, !tbaa !29
  %17 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %18 = load i32*, i32** %17, align 8, !tbaa !30
  %19 = ptrtoint i32* %16 to i64
  %20 = ptrtoint i32* %18 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 2
  %23 = add nsw i64 %14, %22
  %24 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 2
  %25 = load i32*, i32** %24, align 8, !tbaa !37
  %26 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 0
  %27 = load i32*, i32** %26, align 8, !tbaa !29
  %28 = ptrtoint i32* %25 to i64
  %29 = ptrtoint i32* %27 to i64
  %30 = sub i64 %28, %29
  %31 = ashr exact i64 %30, 2
  %32 = add nsw i64 %23, %31
  %33 = icmp eq i64 %32, 2305843009213693951
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0)) #17
  unreachable

35:                                               ; preds = %2
  %36 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %37 = load i64, i64* %36, align 8, !tbaa !73
  %38 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8, !tbaa !70
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
  %47 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef 512) #16
  %48 = load i32**, i32*** %3, align 8, !tbaa !36
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  %50 = bitcast i32** %49 to i8**
  store i8* %47, i8** %50, align 8, !tbaa !35
  %51 = load i32*, i32** %15, align 8, !tbaa !25
  %52 = load i32, i32* %1, align 4, !tbaa !20
  store i32 %52, i32* %51, align 4, !tbaa !20
  %53 = load i32**, i32*** %3, align 8, !tbaa !36
  %54 = getelementptr inbounds i32*, i32** %53, i64 1
  store i32** %54, i32*** %3, align 8, !tbaa !34
  %55 = load i32*, i32** %54, align 8, !tbaa !35
  store i32* %55, i32** %17, align 8, !tbaa !30
  %56 = getelementptr inbounds i32, i32* %55, i64 128
  %57 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 2
  store i32* %56, i32** %57, align 8, !tbaa !37
  store i32* %55, i32** %15, align 8, !tbaa !25
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) local_unnamed_addr #10

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %5 = load i32**, i32*** %4, align 8, !tbaa !36
  %6 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %7 = load i32**, i32*** %6, align 8, !tbaa !71
  %8 = ptrtoint i32** %5 to i64
  %9 = ptrtoint i32** %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !tbaa !73
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %3
  %19 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8, !tbaa !70
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
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %33, i8* nonnull align 8 %34, i64 %29, i1 false) #14
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
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 %29, i1 false) #14
  br label %75

43:                                               ; preds = %3
  %44 = icmp ult i64 %15, %1
  %45 = select i1 %44, i64 %1, i64 %15
  %46 = add i64 %15, 2
  %47 = add i64 %46, %45
  %48 = icmp ugt i64 %47, 1152921504606846975
  br i1 %48, label %49, label %53, !prof !58

49:                                               ; preds = %43
  %50 = icmp ugt i64 %47, 2305843009213693951
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

52:                                               ; preds = %49
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

53:                                               ; preds = %43
  %54 = shl nuw nsw i64 %47, 3
  %55 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef %54) #16
  %56 = bitcast i8* %55 to i32**
  %57 = sub i64 %47, %13
  %58 = lshr i64 %57, 1
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = select i1 %2, i64 %1, i64 0
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  %62 = load i32**, i32*** %6, align 8, !tbaa !71
  %63 = load i32**, i32*** %4, align 8, !tbaa !36
  %64 = getelementptr inbounds i32*, i32** %63, i64 1
  %65 = ptrtoint i32** %64 to i64
  %66 = ptrtoint i32** %62 to i64
  %67 = sub i64 %65, %66
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %53
  %70 = bitcast i32** %61 to i8*
  %71 = bitcast i32** %62 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 8 %70, i8* align 8 %71, i64 %67, i1 false) #14
  br label %72

72:                                               ; preds = %53, %69
  %73 = bitcast %"class.std::deque"* %0 to i8**
  %74 = load i8*, i8** %73, align 8, !tbaa !70
  tail call void @_ZdlPv(i8* noundef %74) #14
  store i8* %55, i8** %73, align 8, !tbaa !70
  store i64 %47, i64* %14, align 8, !tbaa !73
  br label %75

75:                                               ; preds = %32, %31, %36, %35, %72
  %76 = phi i32** [ %61, %72 ], [ %25, %35 ], [ %25, %36 ], [ %25, %31 ], [ %25, %32 ]
  store i32** %76, i32*** %6, align 8, !tbaa !34
  %77 = load i32*, i32** %76, align 8, !tbaa !35
  %78 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 1
  store i32* %77, i32** %78, align 8, !tbaa !30
  %79 = getelementptr inbounds i32, i32* %77, i64 128
  %80 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 2
  store i32* %79, i32** %80, align 8, !tbaa !37
  %81 = getelementptr inbounds i32*, i32** %76, i64 %11
  store i32** %81, i32*** %4, align 8, !tbaa !34
  %82 = load i32*, i32** %81, align 8, !tbaa !35
  %83 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  store i32* %82, i32** %83, align 8, !tbaa !30
  %84 = getelementptr inbounds i32, i32* %82, i64 128
  %85 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 2
  store i32* %84, i32** %85, align 8, !tbaa !37
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
  %4 = load i8**, i8*** %3, align 8, !tbaa !41
  %5 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %6 = load i8**, i8*** %5, align 8, !tbaa !41
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
  %18 = load i8*, i8** %17, align 8, !tbaa !16
  %19 = ptrtoint i8* %16 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 2
  %22 = load i8*, i8** %21, align 8, !tbaa !49
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
  tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0)) #17
  unreachable

33:                                               ; preds = %2
  %34 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %35 = load i64, i64* %34, align 8, !tbaa !76
  %36 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8, !tbaa !67
  %38 = ptrtoint i8** %37 to i64
  %39 = sub i64 %7, %38
  %40 = ashr exact i64 %39, 3
  %41 = sub i64 %35, %40
  %42 = icmp ult i64 %41, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  tail call void @_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb(%"class.std::deque.4"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %44

44:                                               ; preds = %33, %43
  %45 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef 512) #16
  %46 = load i8**, i8*** %3, align 8, !tbaa !48
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  store i8* %45, i8** %47, align 8, !tbaa !35
  %48 = load i8*, i8** %15, align 8, !tbaa !45
  %49 = load i8, i8* %1, align 1, !tbaa !13
  store i8 %49, i8* %48, align 1, !tbaa !13
  %50 = load i8**, i8*** %3, align 8, !tbaa !48
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  store i8** %51, i8*** %3, align 8, !tbaa !41
  %52 = load i8*, i8** %51, align 8, !tbaa !35
  store i8* %52, i8** %17, align 8, !tbaa !16
  %53 = getelementptr inbounds i8, i8* %52, i64 512
  %54 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 2
  store i8* %53, i8** %54, align 8, !tbaa !49
  store i8* %52, i8** %15, align 8, !tbaa !45
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb(%"class.std::deque.4"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %5 = load i8**, i8*** %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %7 = load i8**, i8*** %6, align 8, !tbaa !68
  %8 = ptrtoint i8** %5 to i64
  %9 = ptrtoint i8** %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !tbaa !76
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %3
  %19 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8, !tbaa !67
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
  br i1 %30, label %75, label %32

32:                                               ; preds = %31
  %33 = bitcast i8** %25 to i8*
  %34 = bitcast i8** %7 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %33, i8* nonnull align 8 %34, i64 %29, i1 false) #14
  br label %75

35:                                               ; preds = %18
  br i1 %30, label %75, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds i8*, i8** %25, i64 %12
  %38 = ashr exact i64 %29, 3
  %39 = sub nsw i64 0, %38
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = bitcast i8** %40 to i8*
  %42 = bitcast i8** %7 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 %29, i1 false) #14
  br label %75

43:                                               ; preds = %3
  %44 = icmp ult i64 %15, %1
  %45 = select i1 %44, i64 %1, i64 %15
  %46 = add i64 %15, 2
  %47 = add i64 %46, %45
  %48 = icmp ugt i64 %47, 1152921504606846975
  br i1 %48, label %49, label %53, !prof !58

49:                                               ; preds = %43
  %50 = icmp ugt i64 %47, 2305843009213693951
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

52:                                               ; preds = %49
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

53:                                               ; preds = %43
  %54 = shl nuw nsw i64 %47, 3
  %55 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef %54) #16
  %56 = bitcast i8* %55 to i8**
  %57 = sub i64 %47, %13
  %58 = lshr i64 %57, 1
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = select i1 %2, i64 %1, i64 0
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  %62 = load i8**, i8*** %6, align 8, !tbaa !68
  %63 = load i8**, i8*** %4, align 8, !tbaa !48
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = ptrtoint i8** %64 to i64
  %66 = ptrtoint i8** %62 to i64
  %67 = sub i64 %65, %66
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %53
  %70 = bitcast i8** %61 to i8*
  %71 = bitcast i8** %62 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 8 %70, i8* align 8 %71, i64 %67, i1 false) #14
  br label %72

72:                                               ; preds = %53, %69
  %73 = bitcast %"class.std::deque.4"* %0 to i8**
  %74 = load i8*, i8** %73, align 8, !tbaa !67
  tail call void @_ZdlPv(i8* noundef %74) #14
  store i8* %55, i8** %73, align 8, !tbaa !67
  store i64 %47, i64* %14, align 8, !tbaa !76
  br label %75

75:                                               ; preds = %32, %31, %36, %35, %72
  %76 = phi i8** [ %61, %72 ], [ %25, %35 ], [ %25, %36 ], [ %25, %31 ], [ %25, %32 ]
  store i8** %76, i8*** %6, align 8, !tbaa !41
  %77 = load i8*, i8** %76, align 8, !tbaa !35
  %78 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 1
  store i8* %77, i8** %78, align 8, !tbaa !16
  %79 = getelementptr inbounds i8, i8* %77, i64 512
  %80 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 2
  store i8* %79, i8** %80, align 8, !tbaa !49
  %81 = getelementptr inbounds i8*, i8** %76, i64 %11
  store i8** %81, i8*** %4, align 8, !tbaa !41
  %82 = load i8*, i8** %81, align 8, !tbaa !35
  %83 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  store i8* %82, i8** %83, align 8, !tbaa !16
  %84 = getelementptr inbounds i8, i8* %82, i64 512
  %85 = getelementptr inbounds %"class.std::deque.4", %"class.std::deque.4"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 2
  store i8* %84, i8** %85, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJiEEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #9 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %4 = load i32**, i32*** %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %6 = load i32**, i32*** %5, align 8, !tbaa !34
  %7 = ptrtoint i32** %4 to i64
  %8 = ptrtoint i32** %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = icmp ne i32** %4, null
  %12 = sext i1 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = shl nsw i64 %13, 7
  %15 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %16 = load i32*, i32** %15, align 8, !tbaa !29
  %17 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %18 = load i32*, i32** %17, align 8, !tbaa !30
  %19 = ptrtoint i32* %16 to i64
  %20 = ptrtoint i32* %18 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 2
  %23 = add nsw i64 %14, %22
  %24 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 2
  %25 = load i32*, i32** %24, align 8, !tbaa !37
  %26 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 0
  %27 = load i32*, i32** %26, align 8, !tbaa !29
  %28 = ptrtoint i32* %25 to i64
  %29 = ptrtoint i32* %27 to i64
  %30 = sub i64 %28, %29
  %31 = ashr exact i64 %30, 2
  %32 = add nsw i64 %23, %31
  %33 = icmp eq i64 %32, 2305843009213693951
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0)) #17
  unreachable

35:                                               ; preds = %2
  %36 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %37 = load i64, i64* %36, align 8, !tbaa !73
  %38 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8, !tbaa !70
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
  %47 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef 512) #16
  %48 = load i32**, i32*** %3, align 8, !tbaa !36
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  %50 = bitcast i32** %49 to i8**
  store i8* %47, i8** %50, align 8, !tbaa !35
  %51 = load i32*, i32** %15, align 8, !tbaa !25
  %52 = load i32, i32* %1, align 4, !tbaa !20
  store i32 %52, i32* %51, align 4, !tbaa !20
  %53 = load i32**, i32*** %3, align 8, !tbaa !36
  %54 = getelementptr inbounds i32*, i32** %53, i64 1
  store i32** %54, i32*** %3, align 8, !tbaa !34
  %55 = load i32*, i32** %54, align 8, !tbaa !35
  store i32* %55, i32** %17, align 8, !tbaa !30
  %56 = getelementptr inbounds i32, i32* %55, i64 128
  %57 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 2
  store i32* %56, i32** %57, align 8, !tbaa !37
  store i32* %55, i32** %15, align 8, !tbaa !25
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DECODE_STRING_RECURSIVELY_ENCODED_COUNT_FOLLOWED_SUBSTRING_reprocessed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #14
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
!16 = !{!15, !7, i64 8}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZNSt5dequeIcSaIcEE3endEv: argument 0"}
!19 = distinct !{!19, !"_ZNSt5dequeIcSaIcEE3endEv"}
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !8, i64 0}
!22 = !{!11, !7, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!26, !7, i64 48}
!26 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataE", !7, i64 0, !12, i64 8, !27, i64 16, !27, i64 48}
!27 = !{!"_ZTSSt15_Deque_iteratorIiRiPiE", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!28 = !{!26, !7, i64 64}
!29 = !{!27, !7, i64 0}
!30 = !{!27, !7, i64 8}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZNSt5dequeIiSaIiEE3endEv: argument 0"}
!33 = distinct !{!33, !"_ZNSt5dequeIiSaIiEE3endEv"}
!34 = !{!27, !7, i64 24}
!35 = !{!7, !7, i64 0}
!36 = !{!26, !7, i64 72}
!37 = !{!27, !7, i64 16}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZNSt5dequeIcSaIcEE3endEv: argument 0"}
!40 = distinct !{!40, !"_ZNSt5dequeIcSaIcEE3endEv"}
!41 = !{!15, !7, i64 24}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_: argument 0"}
!44 = distinct !{!44, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_"}
!45 = !{!46, !7, i64 48}
!46 = !{!"_ZTSNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataE", !7, i64 0, !12, i64 8, !15, i64 16, !15, i64 48}
!47 = !{!46, !7, i64 56}
!48 = !{!46, !7, i64 72}
!49 = !{!15, !7, i64 16}
!50 = distinct !{!50, !24}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNSt5dequeIcSaIcEE3endEv: argument 0"}
!53 = distinct !{!53, !"_ZNSt5dequeIcSaIcEE3endEv"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!56 = distinct !{!56, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!57 = !{!12, !12, i64 0}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = distinct !{!59, !24}
!60 = !{!46, !7, i64 64}
!61 = distinct !{!61, !24}
!62 = distinct !{!62, !24}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_: argument 0"}
!65 = distinct !{!65, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_"}
!66 = distinct !{!66, !24}
!67 = !{!46, !7, i64 0}
!68 = !{!46, !7, i64 40}
!69 = distinct !{!69, !24}
!70 = !{!26, !7, i64 0}
!71 = !{!26, !7, i64 40}
!72 = distinct !{!72, !24}
!73 = !{!26, !12, i64 8}
!74 = !{!26, !7, i64 16}
!75 = distinct !{!75, !24}
!76 = !{!46, !12, i64 8}
!77 = !{!46, !7, i64 16}
!78 = distinct !{!78, !24}
