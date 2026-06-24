; ModuleID = 'llvm/cpp_transcoder/LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION/LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION/LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_less_val" = type { i8 }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_ = comdat any

$_ZSt16__introsort_loopIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_T0_T1_ = comdat any

$_ZSt11__make_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_RT0_ = comdat any

$_ZSt10__pop_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_SA_RT0_ = comdat any

$_ZSt13__adjust_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElS5_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_ = comdat any

$_ZSt11__push_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElS5_N9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_SB_T1_RT2_ = comdat any

$_ZSt22__move_median_to_firstIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_ = comdat any

$_ZSt21__unguarded_partitionIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEET_SA_SA_SA_T0_ = comdat any

$_ZSt16__insertion_sortIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_T0_ = comdat any

$_ZSt25__unguarded_linear_insertIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str.1 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* noundef %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !5
  %9 = trunc i64 %8 to i32
  %10 = and i64 %8, 4294967295
  %11 = alloca %"class.std::__cxx11::basic_string", i64 %10, align 16
  %12 = icmp eq i64 %10, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 %10
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi %"class.std::__cxx11::basic_string"* [ %11, %13 ], [ %21, %15 ]
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %16, i64 0, i32 2
  %18 = bitcast %"class.std::__cxx11::basic_string"* %16 to %union.anon**
  store %union.anon* %17, %union.anon** %18, align 8, !tbaa !12
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %16, i64 0, i32 1
  store i64 0, i64* %19, align 8, !tbaa !5
  %20 = bitcast %union.anon* %17 to i8*
  store i8 0, i8* %20, align 8, !tbaa !13
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %16, i64 1
  %22 = icmp eq %"class.std::__cxx11::basic_string"* %21, %14
  br i1 %22, label %23, label %15

23:                                               ; preds = %15, %2
  %24 = bitcast %"class.std::__cxx11::basic_string"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %24) #14
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %5, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1)
          to label %25 unwind label %66

25:                                               ; preds = %23
  %26 = icmp sgt i32 %9, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %25
  %28 = bitcast %"class.std::__cxx11::basic_string"* %6 to i8*
  %29 = shl i64 %8, 32
  %30 = ashr exact i64 %29, 32
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %33 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %35 = bitcast i64* %4 to i8*
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  %40 = bitcast %union.anon* %32 to i8*
  %41 = getelementptr inbounds %union.anon, %union.anon* %32, i64 0, i32 0
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  %43 = and i64 %8, 4294967295
  br label %68

44:                                               ; preds = %134, %25
  %45 = shl i64 %8, 32
  %46 = ashr exact i64 %45, 32
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 %46
  %48 = icmp eq i64 %45, 0
  br i1 %48, label %144, label %49

49:                                               ; preds = %44
  %50 = ashr exact i64 %45, 32
  %51 = call i64 @llvm.ctlz.i64(i64 %50, i1 true) #14, !range !14
  %52 = shl nuw nsw i64 %51, 1
  %53 = xor i64 %52, 126
  invoke void @_ZSt16__introsort_loopIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_T0_T1_(%"class.std::__cxx11::basic_string"* noundef nonnull %11, %"class.std::__cxx11::basic_string"* noundef nonnull %47, i64 noundef %53)
          to label %54 unwind label %181

54:                                               ; preds = %49
  %55 = icmp sgt i64 %45, 68719476736
  br i1 %55, label %56, label %65

56:                                               ; preds = %54
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 16
  invoke void @_ZSt16__insertion_sortIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_T0_(%"class.std::__cxx11::basic_string"* noundef nonnull %11, %"class.std::__cxx11::basic_string"* noundef nonnull %57)
          to label %58 unwind label %181

58:                                               ; preds = %56
  %59 = icmp eq i64 %45, 68719476736
  br i1 %59, label %144, label %60

60:                                               ; preds = %58, %62
  %61 = phi %"class.std::__cxx11::basic_string"* [ %63, %62 ], [ %57, %58 ]
  invoke void @_ZSt25__unguarded_linear_insertIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(%"class.std::__cxx11::basic_string"* noundef nonnull %61)
          to label %62 unwind label %179

62:                                               ; preds = %60
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %61, i64 1
  %64 = icmp eq %"class.std::__cxx11::basic_string"* %63, %47
  br i1 %64, label %144, label %60, !llvm.loop !15

65:                                               ; preds = %54
  invoke void @_ZSt16__insertion_sortIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_T0_(%"class.std::__cxx11::basic_string"* noundef nonnull %11, %"class.std::__cxx11::basic_string"* noundef nonnull %47)
          to label %144 unwind label %181

66:                                               ; preds = %23
  %67 = landingpad { i8*, i32 }
          cleanup
  br label %191

68:                                               ; preds = %27, %134
  %69 = phi i64 [ 0, %27 ], [ %135, %134 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %28) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %70 = load i64, i64* %31, align 8, !tbaa !5, !noalias !18
  %71 = icmp ult i64 %70, %69
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = and i64 %69, 4294967295
  invoke void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 noundef %73, i64 noundef %70) #15
          to label %74 unwind label %139

74:                                               ; preds = %72
  unreachable

75:                                               ; preds = %68
  store %union.anon* %32, %union.anon** %33, align 8, !tbaa !12, !alias.scope !18
  %76 = load i8*, i8** %34, align 8, !tbaa !21, !noalias !18
  %77 = getelementptr inbounds i8, i8* %76, i64 %69
  %78 = sub i64 %70, %69
  %79 = icmp ugt i64 %78, %30
  %80 = select i1 %79, i64 %30, i64 %78
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %35) #14, !noalias !18
  store i64 %80, i64* %4, align 8, !tbaa !22, !noalias !18
  %81 = icmp ugt i64 %80, 15
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i64* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %84 unwind label %137

84:                                               ; preds = %82
  store i8* %83, i8** %36, align 8, !tbaa !21, !alias.scope !18
  %85 = load i64, i64* %4, align 8, !tbaa !22, !noalias !18
  store i64 %85, i64* %37, align 8, !tbaa !13, !alias.scope !18
  br label %86

86:                                               ; preds = %84, %75
  %87 = load i8*, i8** %38, align 8, !tbaa !21, !alias.scope !18
  switch i64 %80, label %90 [
    i64 1, label %88
    i64 0, label %91
  ]

88:                                               ; preds = %86
  %89 = load i8, i8* %77, align 1, !tbaa !13
  store i8 %89, i8* %87, align 1, !tbaa !13
  br label %91

90:                                               ; preds = %86
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %87, i8* align 1 %77, i64 %80, i1 false) #14
  br label %91

91:                                               ; preds = %86, %88, %90
  %92 = load i64, i64* %4, align 8, !tbaa !22, !noalias !18
  store i64 %92, i64* %39, align 8, !tbaa !5, !alias.scope !18
  %93 = load i8*, i8** %38, align 8, !tbaa !21, !alias.scope !18
  %94 = getelementptr inbounds i8, i8* %93, i64 %92
  store i8 0, i8* %94, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #14, !noalias !18
  %95 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 %69
  %96 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %95, i64 0, i32 0, i32 0
  %97 = load i8*, i8** %38, align 8, !tbaa !21
  %98 = icmp eq i8* %97, %40
  br i1 %98, label %99, label %115

99:                                               ; preds = %91
  %100 = icmp eq %"class.std::__cxx11::basic_string"* %6, %95
  br i1 %100, label %129, label %101, !prof !23

101:                                              ; preds = %99
  %102 = load i64, i64* %39, align 8, !tbaa !5
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = load i8*, i8** %96, align 16, !tbaa !21
  %106 = icmp eq i64 %102, 1
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i8, i8* %97, align 1, !tbaa !13
  store i8 %108, i8* %105, align 1, !tbaa !13
  br label %110

109:                                              ; preds = %104
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %105, i8* align 1 %97, i64 %102, i1 false) #14
  br label %110

110:                                              ; preds = %109, %107, %101
  %111 = load i64, i64* %39, align 8, !tbaa !5
  %112 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 %69, i32 1
  store i64 %111, i64* %112, align 8, !tbaa !5
  %113 = load i8*, i8** %96, align 16, !tbaa !21
  %114 = getelementptr inbounds i8, i8* %113, i64 %111
  store i8 0, i8* %114, align 1, !tbaa !13
  br label %129

115:                                              ; preds = %91
  %116 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 %69, i32 2
  %117 = bitcast %union.anon* %116 to i8*
  %118 = load i8*, i8** %96, align 16, !tbaa !21
  %119 = icmp eq i8* %118, %117
  %120 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 %69, i32 2, i32 0
  %121 = load i64, i64* %120, align 16
  store i8* %97, i8** %96, align 16, !tbaa !21
  %122 = load i64, i64* %39, align 8, !tbaa !5
  %123 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 %69, i32 1
  store i64 %122, i64* %123, align 8, !tbaa !5
  %124 = load i64, i64* %41, align 8, !tbaa !13
  store i64 %124, i64* %120, align 16, !tbaa !13
  %125 = icmp eq i8* %118, null
  %126 = or i1 %119, %125
  br i1 %126, label %128, label %127

127:                                              ; preds = %115
  store i8* %118, i8** %38, align 8, !tbaa !21
  store i64 %121, i64* %42, align 8, !tbaa !13
  br label %129

128:                                              ; preds = %115
  store %union.anon* %32, %union.anon** %33, align 8, !tbaa !21
  br label %129

129:                                              ; preds = %99, %110, %127, %128
  store i64 0, i64* %39, align 8, !tbaa !5
  %130 = load i8*, i8** %38, align 8, !tbaa !21
  store i8 0, i8* %130, align 1, !tbaa !13
  %131 = load i8*, i8** %38, align 8, !tbaa !21
  %132 = icmp eq i8* %131, %40
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  call void @_ZdlPv(i8* noundef %131) #14
  br label %134

134:                                              ; preds = %129, %133
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %28) #14
  %135 = add nuw nsw i64 %69, 1
  %136 = icmp eq i64 %135, %43
  br i1 %136, label %44, label %68, !llvm.loop !24

137:                                              ; preds = %82
  %138 = landingpad { i8*, i32 }
          cleanup
  br label %141

139:                                              ; preds = %72
  %140 = landingpad { i8*, i32 }
          cleanup
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi { i8*, i32 } [ %138, %137 ], [ %140, %139 ]
  %143 = bitcast %"class.std::__cxx11::basic_string"* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %143) #14
  br label %183

144:                                              ; preds = %62, %58, %44, %65
  %145 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %146 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %145, %union.anon** %146, align 8, !tbaa !12
  %147 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 0, i32 0
  %148 = load i8*, i8** %147, align 16, !tbaa !21
  %149 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 1
  %150 = load i64, i64* %149, align 8, !tbaa !5
  %151 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %151) #14
  store i64 %150, i64* %3, align 8, !tbaa !22
  %152 = icmp ugt i64 %150, 15
  br i1 %152, label %153, label %159

153:                                              ; preds = %144
  %154 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64* noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %155 unwind label %181

155:                                              ; preds = %153
  %156 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  store i8* %154, i8** %156, align 8, !tbaa !21
  %157 = load i64, i64* %3, align 8, !tbaa !22
  %158 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %157, i64* %158, align 8, !tbaa !13
  br label %159

159:                                              ; preds = %155, %144
  %160 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8, !tbaa !21
  switch i64 %150, label %164 [
    i64 1, label %162
    i64 0, label %165
  ]

162:                                              ; preds = %159
  %163 = load i8, i8* %148, align 1, !tbaa !13
  store i8 %163, i8* %161, align 1, !tbaa !13
  br label %165

164:                                              ; preds = %159
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %161, i8* align 1 %148, i64 %150, i1 false) #14
  br label %165

165:                                              ; preds = %159, %162, %164
  %166 = load i64, i64* %3, align 8, !tbaa !22
  %167 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %166, i64* %167, align 8, !tbaa !5
  %168 = load i8*, i8** %160, align 8, !tbaa !21
  %169 = getelementptr inbounds i8, i8* %168, i64 %166
  store i8 0, i8* %169, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %151) #14
  %170 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8, !tbaa !21
  %172 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %173 = bitcast %union.anon* %172 to i8*
  %174 = icmp eq i8* %171, %173
  br i1 %174, label %176, label %175

175:                                              ; preds = %165
  call void @_ZdlPv(i8* noundef %171) #14
  br label %176

176:                                              ; preds = %165, %175
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %24) #14
  br i1 %12, label %206, label %177

177:                                              ; preds = %176
  %178 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 %10
  br label %195

179:                                              ; preds = %60
  %180 = landingpad { i8*, i32 }
          cleanup
  br label %183

181:                                              ; preds = %49, %56, %65, %153
  %182 = landingpad { i8*, i32 }
          cleanup
  br label %183

183:                                              ; preds = %179, %181, %141
  %184 = phi { i8*, i32 } [ %142, %141 ], [ %180, %179 ], [ %182, %181 ]
  %185 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8, !tbaa !21
  %187 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %188 = bitcast %union.anon* %187 to i8*
  %189 = icmp eq i8* %186, %188
  br i1 %189, label %191, label %190

190:                                              ; preds = %183
  call void @_ZdlPv(i8* noundef %186) #14
  br label %191

191:                                              ; preds = %190, %183, %66
  %192 = phi { i8*, i32 } [ %67, %66 ], [ %184, %183 ], [ %184, %190 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %24) #14
  br i1 %12, label %218, label %193

193:                                              ; preds = %191
  %194 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 %10
  br label %207

195:                                              ; preds = %177, %204
  %196 = phi %"class.std::__cxx11::basic_string"* [ %197, %204 ], [ %178, %177 ]
  %197 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %196, i64 -1
  %198 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %197, i64 0, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8, !tbaa !21
  %200 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %196, i64 -1, i32 2
  %201 = bitcast %union.anon* %200 to i8*
  %202 = icmp eq i8* %199, %201
  br i1 %202, label %204, label %203

203:                                              ; preds = %195
  call void @_ZdlPv(i8* noundef %199) #14
  br label %204

204:                                              ; preds = %195, %203
  %205 = icmp eq %"class.std::__cxx11::basic_string"* %197, %11
  br i1 %205, label %206, label %195

206:                                              ; preds = %204, %176
  ret void

207:                                              ; preds = %193, %216
  %208 = phi %"class.std::__cxx11::basic_string"* [ %209, %216 ], [ %194, %193 ]
  %209 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %208, i64 -1
  %210 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %209, i64 0, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8, !tbaa !21
  %212 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %208, i64 -1, i32 2
  %213 = bitcast %union.anon* %212 to i8*
  %214 = icmp eq i8* %211, %213
  br i1 %214, label %216, label %215

215:                                              ; preds = %207
  call void @_ZdlPv(i8* noundef %211) #14
  br label %216

216:                                              ; preds = %207, %215
  %217 = icmp eq %"class.std::__cxx11::basic_string"* %209, %11
  br i1 %217, label %218, label %207

218:                                              ; preds = %216, %191
  resume { i8*, i32 } %192
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !12
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !21
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %10 = load i64, i64* %9, align 8, !tbaa !5
  %11 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #14
  store i64 %10, i64* %4, align 8, !tbaa !22
  %12 = icmp ugt i64 %10, 15
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  store i8* %14, i8** %15, align 8, !tbaa !21
  %16 = load i64, i64* %4, align 8, !tbaa !22
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %16, i64* %17, align 8, !tbaa !13
  br label %18

18:                                               ; preds = %13, %3
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !21
  switch i64 %10, label %23 [
    i64 1, label %21
    i64 0, label %24
  ]

21:                                               ; preds = %18
  %22 = load i8, i8* %8, align 1, !tbaa !13
  store i8 %22, i8* %20, align 1, !tbaa !13
  br label %24

23:                                               ; preds = %18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 %8, i64 %10, i1 false) #14
  br label %24

24:                                               ; preds = %18, %21, %23
  %25 = load i64, i64* %4, align 8, !tbaa !22
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %25, i64* %26, align 8, !tbaa !5
  %27 = load i8*, i8** %19, align 8, !tbaa !21
  %28 = getelementptr inbounds i8, i8* %27, i64 %25
  store i8 0, i8* %28, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #14
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8, !tbaa !21
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 1
  %32 = load i64, i64* %31, align 8, !tbaa !5
  %33 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %30, i64 noundef %32)
          to label %41 unwind label %34

34:                                               ; preds = %24
  %35 = landingpad { i8*, i32 }
          cleanup
  %36 = load i8*, i8** %19, align 8, !tbaa !21
  %37 = bitcast %union.anon* %5 to i8*
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  call void @_ZdlPv(i8* noundef %36) #14
  br label %40

40:                                               ; preds = %34, %39
  resume { i8*, i32 } %35

41:                                               ; preds = %24
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

declare noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64* noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_T0_T1_(%"class.std::__cxx11::basic_string"* noundef %0, %"class.std::__cxx11::basic_string"* noundef %1, i64 noundef %2) local_unnamed_addr #8 comdat personality i32 (...)* @__gxx_personality_v0 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = ptrtoint %"class.std::__cxx11::basic_string"* %0 to i64
  %7 = ptrtoint %"class.std::__cxx11::basic_string"* %1 to i64
  %8 = sub i64 %7, %6
  %9 = icmp sgt i64 %8, 512
  br i1 %9, label %10, label %39

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 1
  br label %12

12:                                               ; preds = %10, %29
  %13 = phi i64 [ %8, %10 ], [ %37, %29 ]
  %14 = phi %"class.std::__cxx11::basic_string"* [ %1, %10 ], [ %35, %29 ]
  %15 = phi i64 [ %2, %10 ], [ %30, %29 ]
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = ptrtoint %"class.std::__cxx11::basic_string"* %0 to i64
  %19 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_less_iter", %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %19)
  %20 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_less_iter", %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %20)
  call void @_ZSt11__make_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_RT0_(%"class.std::__cxx11::basic_string"* noundef %0, %"class.std::__cxx11::basic_string"* noundef %14, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %20)
  %21 = icmp sgt i64 %13, 32
  br i1 %21, label %22, label %28

22:                                               ; preds = %17, %22
  %23 = phi %"class.std::__cxx11::basic_string"* [ %24, %22 ], [ %14, %17 ]
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %23, i64 -1
  call void @_ZSt10__pop_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_SA_RT0_(%"class.std::__cxx11::basic_string"* noundef %0, %"class.std::__cxx11::basic_string"* noundef nonnull %24, %"class.std::__cxx11::basic_string"* noundef nonnull %24, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* noundef nonnull align 1 dereferenceable(1) %5)
  %25 = ptrtoint %"class.std::__cxx11::basic_string"* %24 to i64
  %26 = sub i64 %25, %18
  %27 = icmp sgt i64 %26, 32
  br i1 %27, label %22, label %28, !llvm.loop !25

28:                                               ; preds = %22, %17
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %19)
  br label %39

29:                                               ; preds = %12
  %30 = add nsw i64 %15, -1
  %31 = ashr exact i64 %13, 5
  %32 = sdiv i64 %31, 2
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %32
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 -1
  call void @_ZSt22__move_median_to_firstIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_(%"class.std::__cxx11::basic_string"* noundef %0, %"class.std::__cxx11::basic_string"* noundef nonnull %11, %"class.std::__cxx11::basic_string"* noundef %33, %"class.std::__cxx11::basic_string"* noundef nonnull %34)
  %35 = call noundef %"class.std::__cxx11::basic_string"* @_ZSt21__unguarded_partitionIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEET_SA_SA_SA_T0_(%"class.std::__cxx11::basic_string"* noundef nonnull %11, %"class.std::__cxx11::basic_string"* noundef %14, %"class.std::__cxx11::basic_string"* noundef %0)
  call void @_ZSt16__introsort_loopIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_T0_T1_(%"class.std::__cxx11::basic_string"* noundef %35, %"class.std::__cxx11::basic_string"* noundef %14, i64 noundef %30)
  %36 = ptrtoint %"class.std::__cxx11::basic_string"* %35 to i64
  %37 = sub i64 %36, %6
  %38 = icmp sgt i64 %37, 512
  br i1 %38, label %12, label %39, !llvm.loop !26

39:                                               ; preds = %29, %3, %28
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_RT0_(%"class.std::__cxx11::basic_string"* noundef %0, %"class.std::__cxx11::basic_string"* noundef %1, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = ptrtoint %"class.std::__cxx11::basic_string"* %1 to i64
  %7 = ptrtoint %"class.std::__cxx11::basic_string"* %0 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp slt i64 %8, 64
  br i1 %10, label %80, label %11

11:                                               ; preds = %3
  %12 = add nsw i64 %9, -2
  %13 = sdiv i64 %12, 2
  %14 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %16 = bitcast %"class.std::__cxx11::basic_string"* %4 to %union.anon**
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %19 = bitcast %"class.std::__cxx11::basic_string"* %5 to %union.anon**
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = bitcast %union.anon* %15 to i8*
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  %25 = bitcast %union.anon* %15 to i8*
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2, i32 0
  %29 = bitcast %union.anon* %18 to i8*
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %31 = bitcast %union.anon* %18 to i8*
  br label %32

32:                                               ; preds = %65, %11
  %33 = phi i64 [ %13, %11 ], [ %61, %65 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #14
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %33
  store %union.anon* %15, %union.anon** %16, align 8, !tbaa !12
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %34, i64 0, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8, !tbaa !21
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %33, i32 2
  %38 = bitcast %union.anon* %37 to i8*
  %39 = icmp eq i8* %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %25, i8* noundef nonnull align 8 dereferenceable(16) %38, i64 16, i1 false) #14
  br label %44

41:                                               ; preds = %32
  store i8* %36, i8** %23, align 8, !tbaa !21
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %33, i32 2, i32 0
  %43 = load i64, i64* %42, align 8, !tbaa !13
  store i64 %43, i64* %24, align 8, !tbaa !13
  br label %44

44:                                               ; preds = %40, %41
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %33, i32 1
  %46 = load i64, i64* %45, align 8, !tbaa !5
  store i64 %46, i64* %17, align 8, !tbaa !5
  %47 = bitcast %"class.std::__cxx11::basic_string"* %34 to %union.anon**
  store %union.anon* %37, %union.anon** %47, align 8, !tbaa !21
  store i64 0, i64* %45, align 8, !tbaa !5
  store i8 0, i8* %38, align 8, !tbaa !13
  store %union.anon* %18, %union.anon** %19, align 8, !tbaa !12
  %48 = load i8*, i8** %20, align 8, !tbaa !21
  %49 = icmp eq i8* %48, %21
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %29, i8* noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false) #14
  br label %53

51:                                               ; preds = %44
  store i8* %48, i8** %26, align 8, !tbaa !21
  %52 = load i64, i64* %27, align 8, !tbaa !13
  store i64 %52, i64* %28, align 8, !tbaa !13
  br label %53

53:                                               ; preds = %50, %51
  store i64 %46, i64* %22, align 8, !tbaa !5
  store %union.anon* %15, %union.anon** %16, align 8, !tbaa !21
  store i64 0, i64* %17, align 8, !tbaa !5
  store i8 0, i8* %21, align 8, !tbaa !13
  invoke void @_ZSt13__adjust_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElS5_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_(%"class.std::__cxx11::basic_string"* noundef %0, i64 noundef %33, i64 noundef %9, %"class.std::__cxx11::basic_string"* noundef nonnull %5)
          to label %54 unwind label %66

54:                                               ; preds = %53
  %55 = load i8*, i8** %30, align 8, !tbaa !21
  %56 = icmp eq i8* %55, %31
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  call void @_ZdlPv(i8* noundef %55) #14
  br label %58

58:                                               ; preds = %54, %57
  %59 = icmp eq i64 %33, 0
  %60 = add nsw i64 %33, -1
  %61 = select i1 %59, i64 0, i64 %60
  %62 = load i8*, i8** %20, align 8, !tbaa !21
  %63 = icmp eq i8* %62, %21
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  call void @_ZdlPv(i8* noundef %62) #14
  br label %65

65:                                               ; preds = %58, %64
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #14
  br i1 %59, label %80, label %32, !llvm.loop !27

66:                                               ; preds = %53
  %67 = landingpad { i8*, i32 }
          cleanup
  %68 = bitcast %union.anon* %15 to i8*
  %69 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8, !tbaa !21
  %71 = bitcast %union.anon* %18 to i8*
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  call void @_ZdlPv(i8* noundef %70) #14
  br label %74

74:                                               ; preds = %66, %73
  %75 = load i8*, i8** %20, align 8, !tbaa !21
  %76 = icmp eq i8* %75, %68
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  call void @_ZdlPv(i8* noundef %75) #14
  br label %78

78:                                               ; preds = %74, %77
  %79 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %79) #14
  resume { i8*, i32 } %67

80:                                               ; preds = %65, %3
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_SA_RT0_(%"class.std::__cxx11::basic_string"* noundef %0, %"class.std::__cxx11::basic_string"* noundef %1, %"class.std::__cxx11::basic_string"* noundef %2, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #9 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = bitcast %"class.std::__cxx11::basic_string"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #14
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %5 to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !12
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8, !tbaa !21
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 2
  %13 = bitcast %union.anon* %12 to i8*
  %14 = icmp eq i8* %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = bitcast %union.anon* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %16, i8* noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false) #14
  br label %22

17:                                               ; preds = %4
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  store i8* %11, i8** %18, align 8, !tbaa !21
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 2, i32 0
  %20 = load i64, i64* %19, align 8, !tbaa !13
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2, i32 0
  store i64 %20, i64* %21, align 8, !tbaa !13
  br label %22

22:                                               ; preds = %15, %17
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 1
  %24 = load i64, i64* %23, align 8, !tbaa !5
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  store i64 %24, i64* %25, align 8, !tbaa !5
  %26 = bitcast %"class.std::__cxx11::basic_string"* %2 to %union.anon**
  store %union.anon* %12, %union.anon** %26, align 8, !tbaa !21
  store i64 0, i64* %23, align 8, !tbaa !5
  store i8 0, i8* %13, align 8, !tbaa !13
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8, !tbaa !21
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %30 = bitcast %union.anon* %29 to i8*
  %31 = icmp eq i8* %28, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %22
  %33 = icmp eq %"class.std::__cxx11::basic_string"* %0, %2
  br i1 %33, label %63, label %34, !prof !23

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %36 = load i64, i64* %35, align 8, !tbaa !5
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %10, align 8, !tbaa !21
  %40 = icmp eq i64 %36, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i8, i8* %28, align 1, !tbaa !13
  store i8 %42, i8* %39, align 1, !tbaa !13
  br label %44

43:                                               ; preds = %38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 %28, i64 %36, i1 false) #14
  br label %44

44:                                               ; preds = %43, %41, %34
  %45 = load i64, i64* %35, align 8, !tbaa !5
  store i64 %45, i64* %23, align 8, !tbaa !5
  %46 = load i8*, i8** %10, align 8, !tbaa !21
  %47 = getelementptr inbounds i8, i8* %46, i64 %45
  store i8 0, i8* %47, align 1, !tbaa !13
  br label %63

48:                                               ; preds = %22
  %49 = load i8*, i8** %10, align 8, !tbaa !21
  %50 = icmp eq i8* %49, %13
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 2, i32 0
  %52 = load i64, i64* %51, align 8
  store i8* %28, i8** %10, align 8, !tbaa !21
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %54 = load i64, i64* %53, align 8, !tbaa !5
  store i64 %54, i64* %23, align 8, !tbaa !5
  %55 = getelementptr %union.anon, %union.anon* %29, i64 0, i32 0
  %56 = load i64, i64* %55, align 8, !tbaa !13
  store i64 %56, i64* %51, align 8, !tbaa !13
  %57 = icmp eq i8* %49, null
  %58 = or i1 %50, %57
  br i1 %58, label %61, label %59

59:                                               ; preds = %48
  store i8* %49, i8** %27, align 8, !tbaa !21
  %60 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %52, i64* %60, align 8, !tbaa !13
  br label %63

61:                                               ; preds = %48
  %62 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %29, %union.anon** %62, align 8, !tbaa !21
  br label %63

63:                                               ; preds = %32, %44, %59, %61
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %64, align 8, !tbaa !5
  %65 = load i8*, i8** %27, align 8, !tbaa !21
  store i8 0, i8* %65, align 1, !tbaa !13
  %66 = ptrtoint %"class.std::__cxx11::basic_string"* %1 to i64
  %67 = ptrtoint %"class.std::__cxx11::basic_string"* %0 to i64
  %68 = sub i64 %66, %67
  %69 = ashr exact i64 %68, 5
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %71 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  store %union.anon* %70, %union.anon** %71, align 8, !tbaa !12
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8, !tbaa !21
  %74 = bitcast %union.anon* %8 to i8*
  %75 = icmp eq i8* %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = bitcast %union.anon* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %77, i8* noundef nonnull align 8 dereferenceable(16) %74, i64 16, i1 false) #14
  br label %83

78:                                               ; preds = %63
  %79 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  store i8* %73, i8** %79, align 8, !tbaa !21
  %80 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2, i32 0
  %81 = load i64, i64* %80, align 8, !tbaa !13
  %82 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  store i64 %81, i64* %82, align 8, !tbaa !13
  br label %83

83:                                               ; preds = %76, %78
  %84 = load i64, i64* %25, align 8, !tbaa !5
  %85 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  store i64 %84, i64* %85, align 8, !tbaa !5
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !21
  store i64 0, i64* %25, align 8, !tbaa !5
  store i8 0, i8* %74, align 8, !tbaa !13
  invoke void @_ZSt13__adjust_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElS5_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_(%"class.std::__cxx11::basic_string"* noundef nonnull %0, i64 noundef 0, i64 noundef %69, %"class.std::__cxx11::basic_string"* noundef nonnull %6)
          to label %86 unwind label %97

86:                                               ; preds = %83
  %87 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8, !tbaa !21
  %89 = bitcast %union.anon* %70 to i8*
  %90 = icmp eq i8* %88, %89
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  call void @_ZdlPv(i8* noundef %88) #14
  br label %92

92:                                               ; preds = %86, %91
  %93 = load i8*, i8** %72, align 8, !tbaa !21
  %94 = icmp eq i8* %93, %74
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  call void @_ZdlPv(i8* noundef %93) #14
  br label %96

96:                                               ; preds = %92, %95
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #14
  ret void

97:                                               ; preds = %83
  %98 = landingpad { i8*, i32 }
          cleanup
  %99 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8, !tbaa !21
  %101 = bitcast %union.anon* %70 to i8*
  %102 = icmp eq i8* %100, %101
  br i1 %102, label %104, label %103

103:                                              ; preds = %97
  call void @_ZdlPv(i8* noundef %100) #14
  br label %104

104:                                              ; preds = %97, %103
  %105 = load i8*, i8** %72, align 8, !tbaa !21
  %106 = icmp eq i8* %105, %74
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  call void @_ZdlPv(i8* noundef %105) #14
  br label %108

108:                                              ; preds = %104, %107
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #14
  resume { i8*, i32 } %98
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElS5_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_(%"class.std::__cxx11::basic_string"* noundef %0, i64 noundef %1, i64 noundef %2, %"class.std::__cxx11::basic_string"* noundef %3) local_unnamed_addr #3 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = add nsw i64 %2, -1
  %8 = sdiv i64 %7, 2
  %9 = icmp sgt i64 %8, %1
  br i1 %9, label %10, label %88

10:                                               ; preds = %4, %84
  %11 = phi i64 [ %41, %84 ], [ %1, %4 ]
  %12 = shl i64 %11, 1
  %13 = add i64 %12, 2
  %14 = or i64 %12, 1
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %13, i32 1
  %16 = load i64, i64* %15, align 8, !tbaa !5
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %14, i32 1
  %18 = load i64, i64* %17, align 8, !tbaa !5
  %19 = icmp ugt i64 %16, %18
  %20 = select i1 %19, i64 %18, i64 %16
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %10
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %14, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8, !tbaa !21
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %13, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !21
  %27 = call i32 @memcmp(i8* noundef %26, i8* noundef %24, i64 noundef %20) #14
  br label %28

28:                                               ; preds = %22, %10
  %29 = phi i32 [ %27, %22 ], [ 0, %10 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = sub i64 %16, %18
  %33 = icmp sgt i64 %32, -2147483648
  %34 = select i1 %33, i64 %32, i64 -2147483648
  %35 = icmp slt i64 %34, 2147483647
  %36 = select i1 %35, i64 %34, i64 2147483647
  %37 = trunc i64 %36 to i32
  br label %38

38:                                               ; preds = %28, %31
  %39 = phi i32 [ %29, %28 ], [ %37, %31 ]
  %40 = icmp slt i32 %39, 0
  %41 = select i1 %40, i64 %14, i64 %13
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %41
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 0, i32 0
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %42, i64 0, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8, !tbaa !21
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %41, i32 2
  %47 = bitcast %union.anon* %46 to i8*
  %48 = icmp eq i8* %45, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %38
  %50 = icmp eq i64 %41, %11
  br i1 %50, label %84, label %51, !prof !23

51:                                               ; preds = %49
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %41, i32 1
  %53 = load i64, i64* %52, align 8, !tbaa !5
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %43, align 8, !tbaa !21
  %57 = icmp eq i64 %53, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i8, i8* %45, align 1, !tbaa !13
  store i8 %59, i8* %56, align 1, !tbaa !13
  br label %61

60:                                               ; preds = %55
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %56, i8* align 1 %45, i64 %53, i1 false) #14
  br label %61

61:                                               ; preds = %60, %58, %51
  %62 = load i64, i64* %52, align 8, !tbaa !5
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 1
  store i64 %62, i64* %63, align 8, !tbaa !5
  %64 = load i8*, i8** %43, align 8, !tbaa !21
  %65 = getelementptr inbounds i8, i8* %64, i64 %62
  store i8 0, i8* %65, align 1, !tbaa !13
  br label %84

66:                                               ; preds = %38
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 2
  %68 = bitcast %union.anon* %67 to i8*
  %69 = load i8*, i8** %43, align 8, !tbaa !21
  %70 = icmp eq i8* %69, %68
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 2, i32 0
  %72 = load i64, i64* %71, align 8
  store i8* %45, i8** %43, align 8, !tbaa !21
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %41, i32 1
  %74 = load i64, i64* %73, align 8, !tbaa !5
  %75 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 1
  store i64 %74, i64* %75, align 8, !tbaa !5
  %76 = getelementptr %union.anon, %union.anon* %46, i64 0, i32 0
  %77 = load i64, i64* %76, align 8, !tbaa !13
  store i64 %77, i64* %71, align 8, !tbaa !13
  %78 = icmp eq i8* %69, null
  %79 = or i1 %70, %78
  br i1 %79, label %82, label %80

80:                                               ; preds = %66
  store i8* %69, i8** %44, align 8, !tbaa !21
  %81 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %41, i32 2, i32 0
  store i64 %72, i64* %81, align 8, !tbaa !13
  br label %84

82:                                               ; preds = %66
  %83 = bitcast %"class.std::__cxx11::basic_string"* %42 to %union.anon**
  store %union.anon* %46, %union.anon** %83, align 8, !tbaa !21
  br label %84

84:                                               ; preds = %49, %61, %80, %82
  %85 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %41, i32 1
  store i64 0, i64* %85, align 8, !tbaa !5
  %86 = load i8*, i8** %44, align 8, !tbaa !21
  store i8 0, i8* %86, align 1, !tbaa !13
  %87 = icmp slt i64 %41, %8
  br i1 %87, label %10, label %88, !llvm.loop !28

88:                                               ; preds = %84, %4
  %89 = phi i64 [ %1, %4 ], [ %41, %84 ]
  %90 = and i64 %2, 1
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %144

92:                                               ; preds = %88
  %93 = add nsw i64 %2, -2
  %94 = sdiv i64 %93, 2
  %95 = icmp eq i64 %89, %94
  br i1 %95, label %96, label %144

96:                                               ; preds = %92
  %97 = shl i64 %89, 1
  %98 = or i64 %97, 1
  %99 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %98
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %89, i32 0, i32 0
  %101 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %99, i64 0, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8, !tbaa !21
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %98, i32 2
  %104 = bitcast %union.anon* %103 to i8*
  %105 = icmp eq i8* %102, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %96
  %107 = icmp eq i64 %98, %89
  br i1 %107, label %141, label %108, !prof !23

108:                                              ; preds = %106
  %109 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %98, i32 1
  %110 = load i64, i64* %109, align 8, !tbaa !5
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %108
  %113 = load i8*, i8** %100, align 8, !tbaa !21
  %114 = icmp eq i64 %110, 1
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i8, i8* %102, align 1, !tbaa !13
  store i8 %116, i8* %113, align 1, !tbaa !13
  br label %118

117:                                              ; preds = %112
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %113, i8* align 1 %102, i64 %110, i1 false) #14
  br label %118

118:                                              ; preds = %117, %115, %108
  %119 = load i64, i64* %109, align 8, !tbaa !5
  %120 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %89, i32 1
  store i64 %119, i64* %120, align 8, !tbaa !5
  %121 = load i8*, i8** %100, align 8, !tbaa !21
  %122 = getelementptr inbounds i8, i8* %121, i64 %119
  store i8 0, i8* %122, align 1, !tbaa !13
  br label %141

123:                                              ; preds = %96
  %124 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %89, i32 2
  %125 = bitcast %union.anon* %124 to i8*
  %126 = load i8*, i8** %100, align 8, !tbaa !21
  %127 = icmp eq i8* %126, %125
  %128 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %89, i32 2, i32 0
  %129 = load i64, i64* %128, align 8
  store i8* %102, i8** %100, align 8, !tbaa !21
  %130 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %98, i32 1
  %131 = load i64, i64* %130, align 8, !tbaa !5
  %132 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %89, i32 1
  store i64 %131, i64* %132, align 8, !tbaa !5
  %133 = getelementptr %union.anon, %union.anon* %103, i64 0, i32 0
  %134 = load i64, i64* %133, align 8, !tbaa !13
  store i64 %134, i64* %128, align 8, !tbaa !13
  %135 = icmp eq i8* %126, null
  %136 = or i1 %127, %135
  br i1 %136, label %139, label %137

137:                                              ; preds = %123
  store i8* %126, i8** %101, align 8, !tbaa !21
  %138 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %98, i32 2, i32 0
  store i64 %129, i64* %138, align 8, !tbaa !13
  br label %141

139:                                              ; preds = %123
  %140 = bitcast %"class.std::__cxx11::basic_string"* %99 to %union.anon**
  store %union.anon* %103, %union.anon** %140, align 8, !tbaa !21
  br label %141

141:                                              ; preds = %106, %118, %137, %139
  %142 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %98, i32 1
  store i64 0, i64* %142, align 8, !tbaa !5
  %143 = load i8*, i8** %101, align 8, !tbaa !21
  store i8 0, i8* %143, align 1, !tbaa !13
  br label %144

144:                                              ; preds = %141, %92, %88
  %145 = phi i64 [ %98, %141 ], [ %89, %92 ], [ %89, %88 ]
  %146 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_less_val", %"struct.__gnu_cxx::__ops::_Iter_less_val"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %146) #14
  %147 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %148 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  store %union.anon* %147, %union.anon** %148, align 8, !tbaa !12
  %149 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8, !tbaa !21
  %151 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2
  %152 = bitcast %union.anon* %151 to i8*
  %153 = icmp eq i8* %150, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %144
  %155 = bitcast %union.anon* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %155, i8* noundef nonnull align 8 dereferenceable(16) %152, i64 16, i1 false) #14
  br label %161

156:                                              ; preds = %144
  %157 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  store i8* %150, i8** %157, align 8, !tbaa !21
  %158 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2, i32 0
  %159 = load i64, i64* %158, align 8, !tbaa !13
  %160 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  store i64 %159, i64* %160, align 8, !tbaa !13
  br label %161

161:                                              ; preds = %154, %156
  %162 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %163 = load i64, i64* %162, align 8, !tbaa !5
  %164 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  store i64 %163, i64* %164, align 8, !tbaa !5
  %165 = bitcast %"class.std::__cxx11::basic_string"* %3 to %union.anon**
  store %union.anon* %151, %union.anon** %165, align 8, !tbaa !21
  store i64 0, i64* %162, align 8, !tbaa !5
  store i8 0, i8* %152, align 8, !tbaa !13
  invoke void @_ZSt11__push_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElS5_N9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_SB_T1_RT2_(%"class.std::__cxx11::basic_string"* noundef %0, i64 noundef %145, i64 noundef %1, %"class.std::__cxx11::basic_string"* noundef nonnull %6, %"struct.__gnu_cxx::__ops::_Iter_less_val"* noundef nonnull align 1 dereferenceable(1) %5)
          to label %166 unwind label %173

166:                                              ; preds = %161
  %167 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8, !tbaa !21
  %169 = bitcast %union.anon* %147 to i8*
  %170 = icmp eq i8* %168, %169
  br i1 %170, label %172, label %171

171:                                              ; preds = %166
  call void @_ZdlPv(i8* noundef %168) #14
  br label %172

172:                                              ; preds = %166, %171
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %146) #14
  ret void

173:                                              ; preds = %161
  %174 = landingpad { i8*, i32 }
          cleanup
  %175 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8, !tbaa !21
  %177 = bitcast %union.anon* %147 to i8*
  %178 = icmp eq i8* %176, %177
  br i1 %178, label %180, label %179

179:                                              ; preds = %173
  call void @_ZdlPv(i8* noundef %176) #14
  br label %180

180:                                              ; preds = %173, %179
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %146) #14
  resume { i8*, i32 } %174
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElS5_N9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_SB_T1_RT2_(%"class.std::__cxx11::basic_string"* noundef %0, i64 noundef %1, i64 noundef %2, %"class.std::__cxx11::basic_string"* noundef %3, %"struct.__gnu_cxx::__ops::_Iter_less_val"* noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #8 comdat personality i32 (...)* @__gxx_personality_v0 {
  %6 = icmp sgt i64 %1, %2
  br i1 %6, label %7, label %80

7:                                                ; preds = %5
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  br label %10

10:                                               ; preds = %7, %77
  %11 = phi i64 [ %1, %7 ], [ %13, %77 ]
  %12 = add nsw i64 %11, -1
  %13 = sdiv i64 %12, 2
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %13
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %13, i32 1
  %16 = load i64, i64* %15, align 8, !tbaa !5
  %17 = load i64, i64* %8, align 8, !tbaa !5
  %18 = icmp ugt i64 %16, %17
  %19 = select i1 %18, i64 %17, i64 %16
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %10
  %22 = load i8*, i8** %9, align 8, !tbaa !21
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8, !tbaa !21
  %25 = call i32 @memcmp(i8* noundef %24, i8* noundef %22, i64 noundef %19) #14
  br label %26

26:                                               ; preds = %21, %10
  %27 = phi i32 [ %25, %21 ], [ 0, %10 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = sub i64 %16, %17
  %31 = icmp sgt i64 %30, -2147483648
  %32 = select i1 %31, i64 %30, i64 -2147483648
  %33 = icmp slt i64 %32, 2147483647
  %34 = select i1 %33, i64 %32, i64 2147483647
  %35 = trunc i64 %34 to i32
  br label %36

36:                                               ; preds = %26, %29
  %37 = phi i32 [ %27, %26 ], [ %35, %29 ]
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %80

39:                                               ; preds = %36
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 0, i32 0
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8, !tbaa !21
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %13, i32 2
  %44 = bitcast %union.anon* %43 to i8*
  %45 = icmp eq i8* %42, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %39
  %47 = icmp eq i64 %13, %11
  br i1 %47, label %77, label %48, !prof !23

48:                                               ; preds = %46
  %49 = icmp eq i64 %16, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %48
  %51 = load i8*, i8** %40, align 8, !tbaa !21
  %52 = icmp eq i64 %16, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i8, i8* %42, align 1, !tbaa !13
  store i8 %54, i8* %51, align 1, !tbaa !13
  br label %56

55:                                               ; preds = %50
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %51, i8* align 1 %42, i64 %16, i1 false) #14
  br label %56

56:                                               ; preds = %55, %53, %48
  %57 = load i64, i64* %15, align 8, !tbaa !5
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 1
  store i64 %57, i64* %58, align 8, !tbaa !5
  %59 = load i8*, i8** %40, align 8, !tbaa !21
  %60 = getelementptr inbounds i8, i8* %59, i64 %57
  store i8 0, i8* %60, align 1, !tbaa !13
  br label %77

61:                                               ; preds = %39
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 2
  %63 = bitcast %union.anon* %62 to i8*
  %64 = load i8*, i8** %40, align 8, !tbaa !21
  %65 = icmp eq i8* %64, %63
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 2, i32 0
  %67 = load i64, i64* %66, align 8
  store i8* %42, i8** %40, align 8, !tbaa !21
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 1
  store i64 %16, i64* %68, align 8, !tbaa !5
  %69 = getelementptr %union.anon, %union.anon* %43, i64 0, i32 0
  %70 = load i64, i64* %69, align 8, !tbaa !13
  store i64 %70, i64* %66, align 8, !tbaa !13
  %71 = icmp eq i8* %64, null
  %72 = or i1 %65, %71
  br i1 %72, label %75, label %73

73:                                               ; preds = %61
  store i8* %64, i8** %41, align 8, !tbaa !21
  %74 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %13, i32 2, i32 0
  store i64 %67, i64* %74, align 8, !tbaa !13
  br label %77

75:                                               ; preds = %61
  %76 = bitcast %"class.std::__cxx11::basic_string"* %14 to %union.anon**
  store %union.anon* %43, %union.anon** %76, align 8, !tbaa !21
  br label %77

77:                                               ; preds = %46, %56, %73, %75
  store i64 0, i64* %15, align 8, !tbaa !5
  %78 = load i8*, i8** %41, align 8, !tbaa !21
  store i8 0, i8* %78, align 1, !tbaa !13
  %79 = icmp sgt i64 %13, %2
  br i1 %79, label %10, label %80, !llvm.loop !29

80:                                               ; preds = %36, %77, %5
  %81 = phi i64 [ %1, %5 ], [ %11, %36 ], [ %13, %77 ]
  %82 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %81
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %82, i64 0, i32 0, i32 0
  %84 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8, !tbaa !21
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2
  %87 = bitcast %union.anon* %86 to i8*
  %88 = icmp eq i8* %85, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %80
  %90 = icmp eq %"class.std::__cxx11::basic_string"* %82, %3
  br i1 %90, label %124, label %91, !prof !23

91:                                               ; preds = %89
  %92 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %93 = load i64, i64* %92, align 8, !tbaa !5
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %91
  %96 = load i8*, i8** %83, align 8, !tbaa !21
  %97 = icmp eq i64 %93, 1
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i8, i8* %85, align 1, !tbaa !13
  store i8 %99, i8* %96, align 1, !tbaa !13
  br label %101

100:                                              ; preds = %95
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %96, i8* align 1 %85, i64 %93, i1 false) #14
  br label %101

101:                                              ; preds = %100, %98, %91
  %102 = load i64, i64* %92, align 8, !tbaa !5
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %81, i32 1
  store i64 %102, i64* %103, align 8, !tbaa !5
  %104 = load i8*, i8** %83, align 8, !tbaa !21
  %105 = getelementptr inbounds i8, i8* %104, i64 %102
  store i8 0, i8* %105, align 1, !tbaa !13
  br label %124

106:                                              ; preds = %80
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %81, i32 2
  %108 = bitcast %union.anon* %107 to i8*
  %109 = load i8*, i8** %83, align 8, !tbaa !21
  %110 = icmp eq i8* %109, %108
  %111 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %81, i32 2, i32 0
  %112 = load i64, i64* %111, align 8
  store i8* %85, i8** %83, align 8, !tbaa !21
  %113 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %114 = load i64, i64* %113, align 8, !tbaa !5
  %115 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %81, i32 1
  store i64 %114, i64* %115, align 8, !tbaa !5
  %116 = getelementptr %union.anon, %union.anon* %86, i64 0, i32 0
  %117 = load i64, i64* %116, align 8, !tbaa !13
  store i64 %117, i64* %111, align 8, !tbaa !13
  %118 = icmp eq i8* %109, null
  %119 = or i1 %110, %118
  br i1 %119, label %122, label %120

120:                                              ; preds = %106
  store i8* %109, i8** %84, align 8, !tbaa !21
  %121 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2, i32 0
  store i64 %112, i64* %121, align 8, !tbaa !13
  br label %124

122:                                              ; preds = %106
  %123 = bitcast %"class.std::__cxx11::basic_string"* %3 to %union.anon**
  store %union.anon* %86, %union.anon** %123, align 8, !tbaa !21
  br label %124

124:                                              ; preds = %89, %101, %120, %122
  %125 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  store i64 0, i64* %125, align 8, !tbaa !5
  %126 = load i8*, i8** %84, align 8, !tbaa !21
  store i8 0, i8* %126, align 1, !tbaa !13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_(%"class.std::__cxx11::basic_string"* noundef %0, %"class.std::__cxx11::basic_string"* noundef %1, %"class.std::__cxx11::basic_string"* noundef %2, %"class.std::__cxx11::basic_string"* noundef %3) local_unnamed_addr #8 comdat personality i32 (...)* @__gxx_personality_v0 {
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !5
  %9 = icmp ugt i64 %6, %8
  %10 = select i1 %9, i64 %8, i64 %6
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8, !tbaa !21
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !21
  %17 = call i32 @memcmp(i8* noundef %16, i8* noundef %14, i64 noundef %10) #14
  br label %18

18:                                               ; preds = %12, %4
  %19 = phi i32 [ %17, %12 ], [ 0, %4 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = sub i64 %6, %8
  %23 = icmp sgt i64 %22, -2147483648
  %24 = select i1 %23, i64 %22, i64 -2147483648
  %25 = icmp slt i64 %24, 2147483647
  %26 = select i1 %25, i64 %24, i64 2147483647
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %18, %21
  %29 = phi i32 [ %19, %18 ], [ %27, %21 ]
  %30 = icmp slt i32 %29, 0
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %32 = load i64, i64* %31, align 8, !tbaa !5
  br i1 %30, label %33, label %80

33:                                               ; preds = %28
  %34 = icmp ugt i64 %8, %32
  %35 = select i1 %34, i64 %32, i64 %8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8, !tbaa !21
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8, !tbaa !21
  %42 = call i32 @memcmp(i8* noundef %41, i8* noundef %39, i64 noundef %35) #14
  br label %43

43:                                               ; preds = %37, %33
  %44 = phi i32 [ %42, %37 ], [ 0, %33 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = sub i64 %8, %32
  %48 = icmp sgt i64 %47, -2147483648
  %49 = select i1 %48, i64 %47, i64 -2147483648
  %50 = icmp slt i64 %49, 2147483647
  %51 = select i1 %50, i64 %49, i64 2147483647
  %52 = trunc i64 %51 to i32
  br label %53

53:                                               ; preds = %43, %46
  %54 = phi i32 [ %44, %43 ], [ %52, %46 ]
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %127, label %56

56:                                               ; preds = %53
  %57 = icmp ugt i64 %6, %32
  %58 = select i1 %57, i64 %32, i64 %6
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8, !tbaa !21
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !21
  %65 = call i32 @memcmp(i8* noundef %64, i8* noundef %62, i64 noundef %58) #14
  br label %66

66:                                               ; preds = %60, %56
  %67 = phi i32 [ %65, %60 ], [ 0, %56 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = sub i64 %6, %32
  %71 = icmp sgt i64 %70, -2147483648
  %72 = select i1 %71, i64 %70, i64 -2147483648
  %73 = icmp slt i64 %72, 2147483647
  %74 = select i1 %73, i64 %72, i64 2147483647
  %75 = trunc i64 %74 to i32
  br label %76

76:                                               ; preds = %66, %69
  %77 = phi i32 [ %67, %66 ], [ %75, %69 ]
  %78 = icmp slt i32 %77, 0
  %79 = select i1 %78, %"class.std::__cxx11::basic_string"* %3, %"class.std::__cxx11::basic_string"* %1
  br label %127

80:                                               ; preds = %28
  %81 = icmp ugt i64 %6, %32
  %82 = select i1 %81, i64 %32, i64 %6
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8, !tbaa !21
  %87 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8, !tbaa !21
  %89 = call i32 @memcmp(i8* noundef %88, i8* noundef %86, i64 noundef %82) #14
  br label %90

90:                                               ; preds = %84, %80
  %91 = phi i32 [ %89, %84 ], [ 0, %80 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = sub i64 %6, %32
  %95 = icmp sgt i64 %94, -2147483648
  %96 = select i1 %95, i64 %94, i64 -2147483648
  %97 = icmp slt i64 %96, 2147483647
  %98 = select i1 %97, i64 %96, i64 2147483647
  %99 = trunc i64 %98 to i32
  br label %100

100:                                              ; preds = %90, %93
  %101 = phi i32 [ %91, %90 ], [ %99, %93 ]
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %127, label %103

103:                                              ; preds = %100
  %104 = icmp ugt i64 %8, %32
  %105 = select i1 %104, i64 %32, i64 %8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8, !tbaa !21
  %110 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8, !tbaa !21
  %112 = call i32 @memcmp(i8* noundef %111, i8* noundef %109, i64 noundef %105) #14
  br label %113

113:                                              ; preds = %107, %103
  %114 = phi i32 [ %112, %107 ], [ 0, %103 ]
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = sub i64 %8, %32
  %118 = icmp sgt i64 %117, -2147483648
  %119 = select i1 %118, i64 %117, i64 -2147483648
  %120 = icmp slt i64 %119, 2147483647
  %121 = select i1 %120, i64 %119, i64 2147483647
  %122 = trunc i64 %121 to i32
  br label %123

123:                                              ; preds = %113, %116
  %124 = phi i32 [ %114, %113 ], [ %122, %116 ]
  %125 = icmp slt i32 %124, 0
  %126 = select i1 %125, %"class.std::__cxx11::basic_string"* %3, %"class.std::__cxx11::basic_string"* %2
  br label %127

127:                                              ; preds = %123, %100, %76, %53
  %128 = phi %"class.std::__cxx11::basic_string"* [ %2, %53 ], [ %79, %76 ], [ %1, %100 ], [ %126, %123 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %128) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef %"class.std::__cxx11::basic_string"* @_ZSt21__unguarded_partitionIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEET_SA_SA_SA_T0_(%"class.std::__cxx11::basic_string"* noundef %0, %"class.std::__cxx11::basic_string"* noundef %1, %"class.std::__cxx11::basic_string"* noundef %2) local_unnamed_addr #11 comdat personality i32 (...)* @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 1
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  br label %7

7:                                                ; preds = %3, %66
  %8 = phi %"class.std::__cxx11::basic_string"* [ %1, %3 ], [ %39, %66 ]
  %9 = phi %"class.std::__cxx11::basic_string"* [ %0, %3 ], [ %67, %66 ]
  %10 = load i64, i64* %4, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %33, %7
  %12 = phi %"class.std::__cxx11::basic_string"* [ %9, %7 ], [ %36, %33 ]
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 1
  %14 = load i64, i64* %13, align 8, !tbaa !5
  %15 = icmp ugt i64 %14, %10
  %16 = select i1 %15, i64 %10, i64 %14
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load i8*, i8** %5, align 8, !tbaa !21
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !21
  %22 = call i32 @memcmp(i8* noundef %21, i8* noundef %19, i64 noundef %16) #14
  br label %23

23:                                               ; preds = %18, %11
  %24 = phi i32 [ %22, %18 ], [ 0, %11 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = sub i64 %14, %10
  %28 = icmp sgt i64 %27, -2147483648
  %29 = select i1 %28, i64 %27, i64 -2147483648
  %30 = icmp slt i64 %29, 2147483647
  %31 = select i1 %30, i64 %29, i64 2147483647
  %32 = trunc i64 %31 to i32
  br label %33

33:                                               ; preds = %23, %26
  %34 = phi i32 [ %24, %23 ], [ %32, %26 ]
  %35 = icmp slt i32 %34, 0
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 1
  br i1 %35, label %11, label %37, !llvm.loop !30

37:                                               ; preds = %33, %60
  %38 = phi %"class.std::__cxx11::basic_string"* [ %39, %60 ], [ %8, %33 ]
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %38, i64 -1
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %38, i64 -1, i32 1
  %41 = load i64, i64* %40, align 8, !tbaa !5
  %42 = icmp ugt i64 %10, %41
  %43 = select i1 %42, i64 %41, i64 %10
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %39, i64 0, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8, !tbaa !21
  %48 = load i8*, i8** %6, align 8, !tbaa !21
  %49 = call i32 @memcmp(i8* noundef %48, i8* noundef %47, i64 noundef %43) #14
  br label %50

50:                                               ; preds = %45, %37
  %51 = phi i32 [ %49, %45 ], [ 0, %37 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = sub i64 %10, %41
  %55 = icmp sgt i64 %54, -2147483648
  %56 = select i1 %55, i64 %54, i64 -2147483648
  %57 = icmp slt i64 %56, 2147483647
  %58 = select i1 %57, i64 %56, i64 2147483647
  %59 = trunc i64 %58 to i32
  br label %60

60:                                               ; preds = %50, %53
  %61 = phi i32 [ %51, %50 ], [ %59, %53 ]
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %37, label %63, !llvm.loop !31

63:                                               ; preds = %60
  %64 = icmp ult %"class.std::__cxx11::basic_string"* %12, %39
  br i1 %64, label %66, label %65

65:                                               ; preds = %63
  ret %"class.std::__cxx11::basic_string"* %12

66:                                               ; preds = %63
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %39) #14
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 1
  br label %7, !llvm.loop !32
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_T0_(%"class.std::__cxx11::basic_string"* noundef %0, %"class.std::__cxx11::basic_string"* noundef %1) local_unnamed_addr #3 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = icmp eq %"class.std::__cxx11::basic_string"* %0, %1
  br i1 %4, label %161, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 1
  %7 = icmp eq %"class.std::__cxx11::basic_string"* %6, %1
  br i1 %7, label %161, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %11 = bitcast %"class.std::__cxx11::basic_string"* %3 to i8*
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2
  %13 = bitcast %"class.std::__cxx11::basic_string"* %3 to %union.anon**
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2, i32 0
  %16 = bitcast %union.anon* %12 to i8*
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %18 = ptrtoint %"class.std::__cxx11::basic_string"* %0 to i64
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %21 = bitcast %union.anon* %12 to i8*
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %23 = bitcast %union.anon* %22 to i8*
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %25 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2, i32 0
  %27 = icmp eq %"class.std::__cxx11::basic_string"* %3, %0
  br label %28

28:                                               ; preds = %8, %158
  %29 = phi %"class.std::__cxx11::basic_string"* [ %6, %8 ], [ %159, %158 ]
  %30 = phi %"class.std::__cxx11::basic_string"* [ %0, %8 ], [ %29, %158 ]
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %30, i64 1, i32 1
  %32 = load i64, i64* %31, align 8, !tbaa !5
  %33 = load i64, i64* %9, align 8, !tbaa !5
  %34 = icmp ugt i64 %32, %33
  %35 = select i1 %34, i64 %33, i64 %32
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %28
  %38 = load i8*, i8** %10, align 8, !tbaa !21
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %29, i64 0, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8, !tbaa !21
  %41 = call i32 @memcmp(i8* noundef %40, i8* noundef %38, i64 noundef %35) #14
  br label %42

42:                                               ; preds = %37, %28
  %43 = phi i32 [ %41, %37 ], [ 0, %28 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = sub i64 %32, %33
  %47 = icmp sgt i64 %46, -2147483648
  %48 = select i1 %47, i64 %46, i64 -2147483648
  %49 = icmp slt i64 %48, 2147483647
  %50 = select i1 %49, i64 %48, i64 2147483647
  %51 = trunc i64 %50 to i32
  br label %52

52:                                               ; preds = %42, %45
  %53 = phi i32 [ %43, %42 ], [ %51, %45 ]
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %157

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #14
  store %union.anon* %12, %union.anon** %13, align 8, !tbaa !12
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %29, i64 0, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8, !tbaa !21
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %30, i64 1, i32 2
  %59 = bitcast %union.anon* %58 to i8*
  %60 = icmp eq i8* %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %16, i8* noundef nonnull align 8 dereferenceable(16) %59, i64 16, i1 false) #14
  br label %65

62:                                               ; preds = %55
  store i8* %57, i8** %14, align 8, !tbaa !21
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %30, i64 1, i32 2, i32 0
  %64 = load i64, i64* %63, align 8, !tbaa !13
  store i64 %64, i64* %15, align 8, !tbaa !13
  br label %65

65:                                               ; preds = %61, %62
  %66 = load i64, i64* %31, align 8, !tbaa !5
  store i64 %66, i64* %17, align 8, !tbaa !5
  %67 = bitcast %"class.std::__cxx11::basic_string"* %29 to %union.anon**
  store %union.anon* %58, %union.anon** %67, align 8, !tbaa !21
  store i64 0, i64* %31, align 8, !tbaa !5
  store i8 0, i8* %59, align 8, !tbaa !13
  %68 = ptrtoint %"class.std::__cxx11::basic_string"* %29 to i64
  %69 = sub i64 %68, %18
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %124

71:                                               ; preds = %65
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %30, i64 2
  %73 = ashr exact i64 %69, 5
  br label %74

74:                                               ; preds = %119, %71
  %75 = phi i64 [ %122, %119 ], [ %73, %71 ]
  %76 = phi %"class.std::__cxx11::basic_string"* [ %79, %119 ], [ %72, %71 ]
  %77 = phi %"class.std::__cxx11::basic_string"* [ %78, %119 ], [ %29, %71 ]
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %77, i64 -1
  %79 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %76, i64 -1
  %80 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %79, i64 0, i32 0, i32 0
  %81 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %78, i64 0, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8, !tbaa !21
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %77, i64 -1, i32 2
  %84 = bitcast %union.anon* %83 to i8*
  %85 = icmp eq i8* %82, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %74
  %87 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %77, i64 -1, i32 1
  %88 = load i64, i64* %87, align 8, !tbaa !5
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %86
  %91 = load i8*, i8** %80, align 8, !tbaa !21
  %92 = icmp eq i64 %88, 1
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i8, i8* %82, align 1, !tbaa !13
  store i8 %94, i8* %91, align 1, !tbaa !13
  br label %96

95:                                               ; preds = %90
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %91, i8* align 1 %82, i64 %88, i1 false) #14
  br label %96

96:                                               ; preds = %95, %93, %86
  %97 = load i64, i64* %87, align 8, !tbaa !5
  %98 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %76, i64 -1, i32 1
  store i64 %97, i64* %98, align 8, !tbaa !5
  %99 = load i8*, i8** %80, align 8, !tbaa !21
  %100 = getelementptr inbounds i8, i8* %99, i64 %97
  store i8 0, i8* %100, align 1, !tbaa !13
  br label %119

101:                                              ; preds = %74
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %76, i64 -1, i32 2
  %103 = bitcast %union.anon* %102 to i8*
  %104 = load i8*, i8** %80, align 8, !tbaa !21
  %105 = icmp eq i8* %104, %103
  %106 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %76, i64 -1, i32 2, i32 0
  %107 = load i64, i64* %106, align 8
  store i8* %82, i8** %80, align 8, !tbaa !21
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %77, i64 -1, i32 1
  %109 = load i64, i64* %108, align 8, !tbaa !5
  %110 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %76, i64 -1, i32 1
  store i64 %109, i64* %110, align 8, !tbaa !5
  %111 = getelementptr %union.anon, %union.anon* %83, i64 0, i32 0
  %112 = load i64, i64* %111, align 8, !tbaa !13
  store i64 %112, i64* %106, align 8, !tbaa !13
  %113 = icmp eq i8* %104, null
  %114 = or i1 %105, %113
  br i1 %114, label %117, label %115

115:                                              ; preds = %101
  store i8* %104, i8** %81, align 8, !tbaa !21
  %116 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %77, i64 -1, i32 2, i32 0
  store i64 %107, i64* %116, align 8, !tbaa !13
  br label %119

117:                                              ; preds = %101
  %118 = bitcast %"class.std::__cxx11::basic_string"* %78 to %union.anon**
  store %union.anon* %83, %union.anon** %118, align 8, !tbaa !21
  br label %119

119:                                              ; preds = %117, %115, %96
  %120 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %77, i64 -1, i32 1
  store i64 0, i64* %120, align 8, !tbaa !5
  %121 = load i8*, i8** %81, align 8, !tbaa !21
  store i8 0, i8* %121, align 1, !tbaa !13
  %122 = add nsw i64 %75, -1
  %123 = icmp sgt i64 %75, 1
  br i1 %123, label %74, label %124, !llvm.loop !33

124:                                              ; preds = %119, %65
  %125 = load i8*, i8** %20, align 8, !tbaa !21
  %126 = icmp eq i8* %125, %21
  br i1 %126, label %127, label %141

127:                                              ; preds = %124
  br i1 %27, label %151, label %128, !prof !23

128:                                              ; preds = %127
  %129 = load i64, i64* %17, align 8, !tbaa !5
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  %132 = load i8*, i8** %19, align 8, !tbaa !21
  %133 = icmp eq i64 %129, 1
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i8, i8* %125, align 1, !tbaa !13
  store i8 %135, i8* %132, align 1, !tbaa !13
  br label %137

136:                                              ; preds = %131
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %132, i8* align 1 %125, i64 %129, i1 false) #14
  br label %137

137:                                              ; preds = %136, %134, %128
  %138 = load i64, i64* %17, align 8, !tbaa !5
  store i64 %138, i64* %9, align 8, !tbaa !5
  %139 = load i8*, i8** %19, align 8, !tbaa !21
  %140 = getelementptr inbounds i8, i8* %139, i64 %138
  store i8 0, i8* %140, align 1, !tbaa !13
  br label %151

141:                                              ; preds = %124
  %142 = load i8*, i8** %19, align 8, !tbaa !21
  %143 = icmp eq i8* %142, %23
  %144 = load i64, i64* %24, align 8
  store i8* %125, i8** %19, align 8, !tbaa !21
  %145 = load i64, i64* %17, align 8, !tbaa !5
  store i64 %145, i64* %9, align 8, !tbaa !5
  %146 = load i64, i64* %25, align 8, !tbaa !13
  store i64 %146, i64* %24, align 8, !tbaa !13
  %147 = icmp eq i8* %142, null
  %148 = or i1 %143, %147
  br i1 %148, label %150, label %149

149:                                              ; preds = %141
  store i8* %142, i8** %20, align 8, !tbaa !21
  store i64 %144, i64* %26, align 8, !tbaa !13
  br label %151

150:                                              ; preds = %141
  store %union.anon* %12, %union.anon** %13, align 8, !tbaa !21
  br label %151

151:                                              ; preds = %127, %137, %149, %150
  store i64 0, i64* %17, align 8, !tbaa !5
  %152 = load i8*, i8** %20, align 8, !tbaa !21
  store i8 0, i8* %152, align 1, !tbaa !13
  %153 = load i8*, i8** %20, align 8, !tbaa !21
  %154 = icmp eq i8* %153, %21
  br i1 %154, label %156, label %155

155:                                              ; preds = %151
  call void @_ZdlPv(i8* noundef %153) #14
  br label %156

156:                                              ; preds = %151, %155
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #14
  br label %158

157:                                              ; preds = %52
  call void @_ZSt25__unguarded_linear_insertIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(%"class.std::__cxx11::basic_string"* noundef nonnull %29)
  br label %158

158:                                              ; preds = %156, %157
  %159 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %29, i64 1
  %160 = icmp eq %"class.std::__cxx11::basic_string"* %159, %1
  br i1 %160, label %161, label %28, !llvm.loop !34

161:                                              ; preds = %158, %5, %2
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(%"class.std::__cxx11::basic_string"* noundef %0) local_unnamed_addr #3 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = bitcast %"class.std::__cxx11::basic_string"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #14
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 2
  %5 = bitcast %"class.std::__cxx11::basic_string"* %2 to %union.anon**
  store %union.anon* %4, %union.anon** %5, align 8, !tbaa !12
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !21
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %9 = bitcast %union.anon* %8 to i8*
  %10 = icmp eq i8* %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = bitcast %union.anon* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %12, i8* noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false) #14
  br label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  store i8* %7, i8** %14, align 8, !tbaa !21
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %16 = load i64, i64* %15, align 8, !tbaa !13
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 2, i32 0
  store i64 %16, i64* %17, align 8, !tbaa !13
  br label %18

18:                                               ; preds = %11, %13
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %20 = load i64, i64* %19, align 8, !tbaa !5
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 1
  store i64 %20, i64* %21, align 8, !tbaa !5
  %22 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %8, %union.anon** %22, align 8, !tbaa !21
  store i64 0, i64* %19, align 8, !tbaa !5
  store i8 0, i8* %9, align 8, !tbaa !13
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  br label %24

24:                                               ; preds = %87, %18
  %25 = phi %"class.std::__cxx11::basic_string"* [ %0, %18 ], [ %26, %87 ]
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 -1
  %27 = load i64, i64* %21, align 8, !tbaa !5
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 -1, i32 1
  %29 = load i64, i64* %28, align 8, !tbaa !5
  %30 = icmp ugt i64 %27, %29
  %31 = select i1 %30, i64 %29, i64 %27
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 0, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8, !tbaa !21
  %36 = load i8*, i8** %23, align 8, !tbaa !21
  %37 = call i32 @memcmp(i8* noundef %36, i8* noundef %35, i64 noundef %31) #14
  br label %38

38:                                               ; preds = %33, %24
  %39 = phi i32 [ %37, %33 ], [ 0, %24 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = sub i64 %27, %29
  %43 = icmp sgt i64 %42, -2147483648
  %44 = select i1 %43, i64 %42, i64 -2147483648
  %45 = icmp slt i64 %44, 2147483647
  %46 = select i1 %45, i64 %44, i64 2147483647
  %47 = trunc i64 %46 to i32
  br label %48

48:                                               ; preds = %38, %41
  %49 = phi i32 [ %39, %38 ], [ %47, %41 ]
  %50 = icmp slt i32 %49, 0
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 0, i32 0, i32 0
  br i1 %50, label %52, label %89

52:                                               ; preds = %48
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 0, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8, !tbaa !21
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 -1, i32 2
  %56 = bitcast %union.anon* %55 to i8*
  %57 = icmp eq i8* %54, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = icmp eq i64 %29, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = load i8*, i8** %51, align 8, !tbaa !21
  %62 = icmp eq i64 %29, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i8, i8* %54, align 1, !tbaa !13
  store i8 %64, i8* %61, align 1, !tbaa !13
  br label %66

65:                                               ; preds = %60
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %61, i8* align 1 %54, i64 %29, i1 false) #14
  br label %66

66:                                               ; preds = %65, %63, %58
  %67 = load i64, i64* %28, align 8, !tbaa !5
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 0, i32 1
  store i64 %67, i64* %68, align 8, !tbaa !5
  %69 = load i8*, i8** %51, align 8, !tbaa !21
  %70 = getelementptr inbounds i8, i8* %69, i64 %67
  store i8 0, i8* %70, align 1, !tbaa !13
  br label %87

71:                                               ; preds = %52
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 0, i32 2
  %73 = bitcast %union.anon* %72 to i8*
  %74 = load i8*, i8** %51, align 8, !tbaa !21
  %75 = icmp eq i8* %74, %73
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 0, i32 2, i32 0
  %77 = load i64, i64* %76, align 8
  store i8* %54, i8** %51, align 8, !tbaa !21
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 0, i32 1
  store i64 %29, i64* %78, align 8, !tbaa !5
  %79 = getelementptr %union.anon, %union.anon* %55, i64 0, i32 0
  %80 = load i64, i64* %79, align 8, !tbaa !13
  store i64 %80, i64* %76, align 8, !tbaa !13
  %81 = icmp eq i8* %74, null
  %82 = or i1 %75, %81
  br i1 %82, label %85, label %83

83:                                               ; preds = %71
  store i8* %74, i8** %53, align 8, !tbaa !21
  %84 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 -1, i32 2, i32 0
  store i64 %77, i64* %84, align 8, !tbaa !13
  br label %87

85:                                               ; preds = %71
  %86 = bitcast %"class.std::__cxx11::basic_string"* %26 to %union.anon**
  store %union.anon* %55, %union.anon** %86, align 8, !tbaa !21
  br label %87

87:                                               ; preds = %66, %83, %85
  store i64 0, i64* %28, align 8, !tbaa !5
  %88 = load i8*, i8** %53, align 8, !tbaa !21
  store i8 0, i8* %88, align 1, !tbaa !13
  br label %24, !llvm.loop !35

89:                                               ; preds = %48
  %90 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8, !tbaa !21
  %92 = bitcast %union.anon* %4 to i8*
  %93 = icmp eq i8* %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %89
  %95 = icmp eq %"class.std::__cxx11::basic_string"* %2, %25
  br i1 %95, label %124, label %96, !prof !23

96:                                               ; preds = %94
  %97 = icmp eq i64 %27, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %96
  %99 = load i8*, i8** %51, align 8, !tbaa !21
  %100 = icmp eq i64 %27, 1
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i8, i8* %91, align 1, !tbaa !13
  store i8 %102, i8* %99, align 1, !tbaa !13
  br label %104

103:                                              ; preds = %98
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %99, i8* align 1 %91, i64 %27, i1 false) #14
  br label %104

104:                                              ; preds = %103, %101, %96
  %105 = load i64, i64* %21, align 8, !tbaa !5
  %106 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 0, i32 1
  store i64 %105, i64* %106, align 8, !tbaa !5
  %107 = load i8*, i8** %51, align 8, !tbaa !21
  %108 = getelementptr inbounds i8, i8* %107, i64 %105
  store i8 0, i8* %108, align 1, !tbaa !13
  br label %124

109:                                              ; preds = %89
  %110 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 0, i32 2
  %111 = bitcast %union.anon* %110 to i8*
  %112 = load i8*, i8** %51, align 8, !tbaa !21
  %113 = icmp eq i8* %112, %111
  %114 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 0, i32 2, i32 0
  %115 = load i64, i64* %114, align 8
  store i8* %91, i8** %51, align 8, !tbaa !21
  %116 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %25, i64 0, i32 1
  store i64 %27, i64* %116, align 8, !tbaa !5
  %117 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %118 = load i64, i64* %117, align 8, !tbaa !13
  store i64 %118, i64* %114, align 8, !tbaa !13
  %119 = icmp eq i8* %112, null
  %120 = or i1 %113, %119
  br i1 %120, label %123, label %121

121:                                              ; preds = %109
  store i8* %112, i8** %90, align 8, !tbaa !21
  %122 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 2, i32 0
  store i64 %115, i64* %122, align 8, !tbaa !13
  br label %124

123:                                              ; preds = %109
  store %union.anon* %4, %union.anon** %5, align 8, !tbaa !21
  br label %124

124:                                              ; preds = %94, %104, %121, %123
  store i64 0, i64* %21, align 8, !tbaa !5
  %125 = load i8*, i8** %90, align 8, !tbaa !21
  store i8 0, i8* %125, align 1, !tbaa !13
  %126 = load i8*, i8** %90, align 8, !tbaa !21
  %127 = icmp eq i8* %126, %92
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  call void @_ZdlPv(i8* noundef %126) #14
  br label %129

129:                                              ; preds = %124, %128
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #14
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_reprocessed.cpp() #3 section ".text.startup" {
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
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { noreturn }

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
!14 = !{i64 0, i64 65}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!20 = distinct !{!20, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!21 = !{!6, !8, i64 0}
!22 = !{!11, !11, i64 0}
!23 = !{!"branch_weights", i32 1, i32 2000}
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
