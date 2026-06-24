; ModuleID = 'llvm/cpp_transcoder/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED_reprocessed.cpp"
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
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::stack", align 8
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !5
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %163

8:                                                ; preds = %1
  %9 = bitcast %"class.std::stack"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %9) #13
  %10 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %9, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %10, i64 noundef 0)
  %11 = icmp sgt i32 %5, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %14 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %15 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0
  %16 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %17 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %18 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  %19 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0
  %20 = and i64 %4, 4294967295
  br label %54

21:                                               ; preds = %104, %8
  %22 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %23 = load i8**, i8*** %22, align 8, !tbaa !12
  %24 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %25 = load i8**, i8*** %24, align 8, !tbaa !12
  %26 = ptrtoint i8** %23 to i64
  %27 = ptrtoint i8** %25 to i64
  %28 = sub i64 %26, %27
  %29 = ashr exact i64 %28, 3
  %30 = icmp ne i8** %23, null
  %31 = sext i1 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = shl nsw i64 %32, 9
  %34 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0
  %35 = load i8*, i8** %34, align 8, !tbaa !14
  %36 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 1
  %37 = load i8*, i8** %36, align 8, !tbaa !15
  %38 = ptrtoint i8* %35 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2
  %41 = load i8*, i8** %40, align 8, !tbaa !16
  %42 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0
  %43 = load i8*, i8** %42, align 8, !tbaa !14
  %44 = ptrtoint i8* %41 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %38, %39
  %47 = add i64 %46, %44
  %48 = add i64 %47, %33
  %49 = sub i64 %48, %45
  %50 = trunc i64 %49 to i32
  %51 = icmp eq i8* %35, %43
  br i1 %51, label %138, label %52

52:                                               ; preds = %21
  %53 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2
  br label %107

54:                                               ; preds = %12, %104
  %55 = phi i64 [ 0, %12 ], [ %105, %104 ]
  %56 = load i8*, i8** %13, align 8, !tbaa !17
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  %58 = load i8, i8* %57, align 1, !tbaa !18
  %59 = icmp ne i8 %58, 125
  %60 = load i8*, i8** %14, align 8, !tbaa !14
  %61 = load i8*, i8** %15, align 8
  %62 = icmp eq i8* %60, %61
  %63 = select i1 %59, i1 true, i1 %62
  br i1 %63, label %94, label %64

64:                                               ; preds = %54
  %65 = load i8*, i8** %16, align 8, !tbaa !15, !noalias !19
  %66 = icmp eq i8* %60, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i8**, i8*** %17, align 8, !tbaa !12, !noalias !19
  %69 = getelementptr inbounds i8*, i8** %68, i64 -1
  %70 = load i8*, i8** %69, align 8, !tbaa !22
  %71 = getelementptr inbounds i8, i8* %70, i64 511
  %72 = load i8, i8* %71, align 1, !tbaa !18
  %73 = icmp eq i8 %72, 123
  br i1 %73, label %78, label %86

74:                                               ; preds = %64
  %75 = getelementptr inbounds i8, i8* %60, i64 -1
  %76 = load i8, i8* %75, align 1, !tbaa !18
  %77 = icmp eq i8 %76, 123
  br i1 %77, label %102, label %86

78:                                               ; preds = %67
  call void @_ZdlPv(i8* noundef %60) #13
  %79 = load i8**, i8*** %17, align 8, !tbaa !23
  %80 = getelementptr inbounds i8*, i8** %79, i64 -1
  store i8** %80, i8*** %17, align 8, !tbaa !12
  %81 = load i8*, i8** %80, align 8, !tbaa !22
  store i8* %81, i8** %16, align 8, !tbaa !15
  %82 = getelementptr inbounds i8, i8* %81, i64 512
  store i8* %82, i8** %18, align 8, !tbaa !16
  %83 = getelementptr inbounds i8, i8* %81, i64 511
  br label %102

84:                                               ; preds = %101, %93
  %85 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev(%"class.std::stack"* noundef nonnull align 8 dereferenceable(80) %2) #13
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %9) #13
  resume { i8*, i32 } %85

86:                                               ; preds = %67, %74
  %87 = load i8*, i8** %18, align 8, !tbaa !25
  %88 = getelementptr inbounds i8, i8* %87, i64 -1
  %89 = icmp eq i8* %60, %88
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  store i8 125, i8* %60, align 1, !tbaa !18
  %91 = load i8*, i8** %14, align 8, !tbaa !26
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  br label %102

93:                                               ; preds = %86
  invoke void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %19, i8* noundef nonnull align 1 dereferenceable(1) %57)
          to label %104 unwind label %84

94:                                               ; preds = %54
  %95 = load i8*, i8** %18, align 8, !tbaa !25
  %96 = getelementptr inbounds i8, i8* %95, i64 -1
  %97 = icmp eq i8* %60, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  store i8 %58, i8* %60, align 1, !tbaa !18
  %99 = load i8*, i8** %14, align 8, !tbaa !26
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  br label %102

101:                                              ; preds = %94
  invoke void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJRKcEEEvDpOT_(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %19, i8* noundef nonnull align 1 dereferenceable(1) %57)
          to label %104 unwind label %84

102:                                              ; preds = %78, %74, %90, %98
  %103 = phi i8* [ %100, %98 ], [ %92, %90 ], [ %83, %78 ], [ %75, %74 ]
  store i8* %103, i8** %14, align 8, !tbaa !26
  br label %104

104:                                              ; preds = %102, %101, %93
  %105 = add nuw nsw i64 %55, 1
  %106 = icmp eq i64 %105, %20
  br i1 %106, label %21, label %54, !llvm.loop !27

107:                                              ; preds = %52, %131
  %108 = phi i8* [ %43, %52 ], [ %132, %131 ]
  %109 = phi i8** [ %23, %52 ], [ %133, %131 ]
  %110 = phi i8* [ %37, %52 ], [ %134, %131 ]
  %111 = phi i8* [ %35, %52 ], [ %135, %131 ]
  %112 = phi i32 [ 0, %52 ], [ %136, %131 ]
  %113 = icmp eq i8* %111, %110
  br i1 %113, label %114, label %120

114:                                              ; preds = %107
  %115 = getelementptr inbounds i8*, i8** %109, i64 -1
  %116 = load i8*, i8** %115, align 8, !tbaa !22
  %117 = getelementptr inbounds i8, i8* %116, i64 511
  %118 = load i8, i8* %117, align 1, !tbaa !18
  %119 = icmp eq i8 %118, 123
  br i1 %119, label %124, label %138

120:                                              ; preds = %107
  %121 = getelementptr inbounds i8, i8* %111, i64 -1
  %122 = load i8, i8* %121, align 1, !tbaa !18
  %123 = icmp eq i8 %122, 123
  br i1 %123, label %131, label %138

124:                                              ; preds = %114
  call void @_ZdlPv(i8* noundef %110) #13
  %125 = load i8**, i8*** %22, align 8, !tbaa !23
  %126 = getelementptr inbounds i8*, i8** %125, i64 -1
  store i8** %126, i8*** %22, align 8, !tbaa !12
  %127 = load i8*, i8** %126, align 8, !tbaa !22
  store i8* %127, i8** %36, align 8, !tbaa !15
  %128 = getelementptr inbounds i8, i8* %127, i64 512
  store i8* %128, i8** %53, align 8, !tbaa !16
  %129 = getelementptr inbounds i8, i8* %127, i64 511
  %130 = load i8*, i8** %42, align 8, !tbaa !14
  br label %131

131:                                              ; preds = %120, %124
  %132 = phi i8* [ %130, %124 ], [ %108, %120 ]
  %133 = phi i8** [ %126, %124 ], [ %109, %120 ]
  %134 = phi i8* [ %127, %124 ], [ %110, %120 ]
  %135 = phi i8* [ %129, %124 ], [ %121, %120 ]
  store i8* %135, i8** %34, align 8, !tbaa !26
  %136 = add nuw nsw i32 %112, 1
  %137 = icmp eq i8* %135, %132
  br i1 %137, label %138, label %107, !llvm.loop !29

138:                                              ; preds = %114, %131, %120, %21
  %139 = phi i8** [ %23, %21 ], [ %109, %120 ], [ %133, %131 ], [ %109, %114 ]
  %140 = phi i32 [ 0, %21 ], [ %112, %120 ], [ %136, %131 ], [ %112, %114 ]
  %141 = sdiv i32 %50, 2
  %142 = and i32 %140, 1
  %143 = add nsw i32 %142, %141
  %144 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %145 = load i8**, i8*** %144, align 8, !tbaa !30
  %146 = icmp eq i8** %145, null
  br i1 %146, label %162, label %147

147:                                              ; preds = %138
  %148 = bitcast i8** %145 to i8*
  %149 = load i8**, i8*** %24, align 8, !tbaa !31
  %150 = getelementptr inbounds i8*, i8** %139, i64 1
  %151 = icmp ult i8** %149, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %147, %152
  %153 = phi i8** [ %155, %152 ], [ %149, %147 ]
  %154 = load i8*, i8** %153, align 8, !tbaa !22
  call void @_ZdlPv(i8* noundef %154) #13
  %155 = getelementptr inbounds i8*, i8** %153, i64 1
  %156 = icmp ult i8** %153, %139
  br i1 %156, label %152, label %157, !llvm.loop !32

157:                                              ; preds = %152
  %158 = bitcast %"class.std::stack"* %2 to i8**
  %159 = load i8*, i8** %158, align 8, !tbaa !30
  br label %160

160:                                              ; preds = %157, %147
  %161 = phi i8* [ %159, %157 ], [ %148, %147 ]
  call void @_ZdlPv(i8* noundef %161) #13
  br label %162

162:                                              ; preds = %138, %160
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %9) #13
  br label %163

163:                                              ; preds = %1, %162
  %164 = phi i32 [ %143, %162 ], [ -1, %1 ]
  ret i32 %164
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5stackIcSt5dequeIcSaIcEEED2Ev(%"class.std::stack"* noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %3 = load i8**, i8*** %2, align 8, !tbaa !30
  %4 = icmp eq i8** %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = bitcast i8** %3 to i8*
  %7 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %8 = load i8**, i8*** %7, align 8, !tbaa !31
  %9 = getelementptr inbounds %"class.std::stack", %"class.std::stack"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %10 = load i8**, i8*** %9, align 8, !tbaa !23
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = icmp ult i8** %8, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %5, %13
  %14 = phi i8** [ %16, %13 ], [ %8, %5 ]
  %15 = load i8*, i8** %14, align 8, !tbaa !22
  tail call void @_ZdlPv(i8* noundef %15) #13
  %16 = getelementptr inbounds i8*, i8** %14, i64 1
  %17 = icmp ult i8** %14, %10
  br i1 %17, label %13, label %18, !llvm.loop !32

18:                                               ; preds = %13
  %19 = bitcast %"class.std::stack"* %0 to i8**
  %20 = load i8*, i8** %19, align 8, !tbaa !30
  br label %21

21:                                               ; preds = %18, %5
  %22 = phi i8* [ %20, %18 ], [ %6, %5 ]
  tail call void @_ZdlPv(i8* noundef %22) #13
  br label %23

23:                                               ; preds = %1, %21
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
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = lshr i64 %1, 9
  %4 = add nuw nsw i64 %3, 1
  %5 = icmp ugt i64 %3, 5
  %6 = select i1 %5, i64 %3, i64 5
  %7 = add nuw nsw i64 %6, 3
  %8 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 1
  store i64 %7, i64* %8, align 8, !tbaa !33
  %9 = shl nuw nsw i64 %7, 3
  %10 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef %9) #15
  %11 = bitcast i8* %10 to i8**
  %12 = bitcast %"class.std::_Deque_base"* %0 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !30
  %13 = load i64, i64* %8, align 8, !tbaa !33
  %14 = sub i64 %13, %4
  %15 = lshr i64 %14, 1
  %16 = getelementptr inbounds i8*, i8** %11, i64 %15
  %17 = getelementptr inbounds i8*, i8** %16, i64 %4
  invoke void @_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0, i8** noundef nonnull %16, i8** noundef nonnull %17)
          to label %27 unwind label %18

18:                                               ; preds = %2
  %19 = landingpad { i8*, i32 }
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = tail call i8* @__cxa_begin_catch(i8* %20) #13
  %22 = load i8*, i8** %12, align 8, !tbaa !30
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
  store i8** %16, i8*** %28, align 8, !tbaa !12
  %29 = load i8*, i8** %16, align 8, !tbaa !22
  %30 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 1
  store i8* %29, i8** %30, align 8, !tbaa !15
  %31 = getelementptr inbounds i8, i8* %29, i64 512
  %32 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 2
  store i8* %31, i8** %32, align 8, !tbaa !16
  %33 = getelementptr inbounds i8*, i8** %17, i64 -1
  %34 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 3
  store i8** %33, i8*** %34, align 8, !tbaa !12
  %35 = load i8*, i8** %33, align 8, !tbaa !22
  %36 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 1
  store i8* %35, i8** %36, align 8, !tbaa !15
  %37 = getelementptr inbounds i8, i8* %35, i64 512
  %38 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 2
  store i8* %37, i8** %38, align 8, !tbaa !16
  %39 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 2, i32 0
  store i8* %29, i8** %39, align 8, !tbaa !34
  %40 = and i64 %1, 511
  %41 = getelementptr inbounds i8, i8* %35, i64 %40
  %42 = getelementptr inbounds %"class.std::_Deque_base", %"class.std::_Deque_base"* %0, i64 0, i32 0, i32 0, i32 3, i32 0
  store i8* %41, i8** %42, align 8, !tbaa !26
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
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIcSaIcEE15_M_create_nodesEPPcS3_(%"class.std::_Deque_base"* noundef nonnull align 8 dereferenceable(80) %0, i8** noundef %1, i8** noundef %2) local_unnamed_addr #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = icmp ult i8** %1, %2
  br i1 %4, label %5, label %25

5:                                                ; preds = %3, %8
  %6 = phi i8** [ %9, %8 ], [ %1, %3 ]
  %7 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef 512) #15
          to label %8 unwind label %11

8:                                                ; preds = %5
  store i8* %7, i8** %6, align 8, !tbaa !22
  %9 = getelementptr inbounds i8*, i8** %6, i64 1
  %10 = icmp ult i8** %9, %2
  br i1 %10, label %5, label %25, !llvm.loop !35

11:                                               ; preds = %5
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  %14 = tail call i8* @__cxa_begin_catch(i8* %13) #13
  %15 = icmp ugt i8** %6, %1
  br i1 %15, label %16, label %21

16:                                               ; preds = %11, %16
  %17 = phi i8** [ %19, %16 ], [ %1, %11 ]
  %18 = load i8*, i8** %17, align 8, !tbaa !22
  tail call void @_ZdlPv(i8* noundef %18) #13
  %19 = getelementptr inbounds i8*, i8** %17, i64 1
  %20 = icmp ult i8** %19, %6
  br i1 %20, label %16, label %21, !llvm.loop !32

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
  tail call void @__clang_call_terminate(i8* %28) #14
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
  %4 = load i8**, i8*** %3, align 8, !tbaa !12
  %5 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %6 = load i8**, i8*** %5, align 8, !tbaa !12
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
  %18 = load i8*, i8** %17, align 8, !tbaa !15
  %19 = ptrtoint i8* %16 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 2
  %22 = load i8*, i8** %21, align 8, !tbaa !16
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
  tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #16
  unreachable

33:                                               ; preds = %2
  %34 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %35 = load i64, i64* %34, align 8, !tbaa !33
  %36 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8, !tbaa !30
  %38 = ptrtoint i8** %37 to i64
  %39 = sub i64 %7, %38
  %40 = ashr exact i64 %39, 3
  %41 = sub i64 %35, %40
  %42 = icmp ult i64 %41, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  tail call void @_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %44

44:                                               ; preds = %33, %43
  %45 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef 512) #15
  %46 = load i8**, i8*** %3, align 8, !tbaa !23
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  store i8* %45, i8** %47, align 8, !tbaa !22
  %48 = load i8*, i8** %15, align 8, !tbaa !26
  %49 = load i8, i8* %1, align 1, !tbaa !18
  store i8 %49, i8* %48, align 1, !tbaa !18
  %50 = load i8**, i8*** %3, align 8, !tbaa !23
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  store i8** %51, i8*** %3, align 8, !tbaa !12
  %52 = load i8*, i8** %51, align 8, !tbaa !22
  store i8* %52, i8** %17, align 8, !tbaa !15
  %53 = getelementptr inbounds i8, i8* %52, i64 512
  %54 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 2
  store i8* %53, i8** %54, align 8, !tbaa !16
  store i8* %52, i8** %15, align 8, !tbaa !26
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) local_unnamed_addr #10

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb(%"class.std::deque"* noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 3
  %5 = load i8**, i8*** %4, align 8, !tbaa !23
  %6 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 3
  %7 = load i8**, i8*** %6, align 8, !tbaa !31
  %8 = ptrtoint i8** %5 to i64
  %9 = ptrtoint i8** %7 to i64
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
  %20 = load i8**, i8*** %19, align 8, !tbaa !30
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
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %33, i8* nonnull align 8 %34, i64 %29, i1 false) #13
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
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 %29, i1 false) #13
  br label %75

43:                                               ; preds = %3
  %44 = icmp ult i64 %15, %1
  %45 = select i1 %44, i64 %1, i64 %15
  %46 = add i64 %15, 2
  %47 = add i64 %46, %45
  %48 = icmp ugt i64 %47, 1152921504606846975
  br i1 %48, label %49, label %53, !prof !36

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
  %56 = bitcast i8* %55 to i8**
  %57 = sub i64 %47, %13
  %58 = lshr i64 %57, 1
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = select i1 %2, i64 %1, i64 0
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  %62 = load i8**, i8*** %6, align 8, !tbaa !31
  %63 = load i8**, i8*** %4, align 8, !tbaa !23
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = ptrtoint i8** %64 to i64
  %66 = ptrtoint i8** %62 to i64
  %67 = sub i64 %65, %66
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %53
  %70 = bitcast i8** %61 to i8*
  %71 = bitcast i8** %62 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 8 %70, i8* align 8 %71, i64 %67, i1 false) #13
  br label %72

72:                                               ; preds = %53, %69
  %73 = bitcast %"class.std::deque"* %0 to i8**
  %74 = load i8*, i8** %73, align 8, !tbaa !30
  tail call void @_ZdlPv(i8* noundef %74) #13
  store i8* %55, i8** %73, align 8, !tbaa !30
  store i64 %47, i64* %14, align 8, !tbaa !33
  br label %75

75:                                               ; preds = %32, %31, %36, %35, %72
  %76 = phi i8** [ %61, %72 ], [ %25, %35 ], [ %25, %36 ], [ %25, %31 ], [ %25, %32 ]
  store i8** %76, i8*** %6, align 8, !tbaa !12
  %77 = load i8*, i8** %76, align 8, !tbaa !22
  %78 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 1
  store i8* %77, i8** %78, align 8, !tbaa !15
  %79 = getelementptr inbounds i8, i8* %77, i64 512
  %80 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 2
  store i8* %79, i8** %80, align 8, !tbaa !16
  %81 = getelementptr inbounds i8*, i8** %76, i64 %11
  store i8** %81, i8*** %4, align 8, !tbaa !12
  %82 = load i8*, i8** %81, align 8, !tbaa !22
  %83 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 1
  store i8* %82, i8** %83, align 8, !tbaa !15
  %84 = getelementptr inbounds i8, i8* %82, i64 512
  %85 = getelementptr inbounds %"class.std::deque", %"class.std::deque"* %0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 2
  store i8* %84, i8** %85, align 8, !tbaa !16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #12

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED_reprocessed.cpp() #3 section ".text.startup" {
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
!5 = !{!6, !11, i64 8}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !7, i64 0, !11, i64 8, !9, i64 16}
!7 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!13, !8, i64 24}
!13 = !{!"_ZTSSt15_Deque_iteratorIcRcPcE", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!14 = !{!13, !8, i64 0}
!15 = !{!13, !8, i64 8}
!16 = !{!13, !8, i64 16}
!17 = !{!6, !8, i64 0}
!18 = !{!9, !9, i64 0}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZNSt5dequeIcSaIcEE3endEv: argument 0"}
!21 = distinct !{!21, !"_ZNSt5dequeIcSaIcEE3endEv"}
!22 = !{!8, !8, i64 0}
!23 = !{!24, !8, i64 72}
!24 = !{!"_ZTSNSt11_Deque_baseIcSaIcEE16_Deque_impl_dataE", !8, i64 0, !11, i64 8, !13, i64 16, !13, i64 48}
!25 = !{!24, !8, i64 64}
!26 = !{!24, !8, i64 48}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = !{!24, !8, i64 0}
!31 = !{!24, !8, i64 40}
!32 = distinct !{!32, !28}
!33 = !{!24, !11, i64 8}
!34 = !{!24, !8, i64 16}
!35 = distinct !{!35, !28}
!36 = !{!"branch_weights", i32 1, i32 2000}
