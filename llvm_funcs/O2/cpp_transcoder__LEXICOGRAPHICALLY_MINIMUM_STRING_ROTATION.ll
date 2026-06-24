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
          to label %25 unwind label %65

25:                                               ; preds = %23
  %26 = icmp sgt i32 %9, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = shl i64 %8, 32
  %29 = ashr exact i64 %28, 32
  br label %46

30:                                               ; preds = %25
  %31 = bitcast %"class.std::__cxx11::basic_string"* %6 to i8*
  %32 = shl i64 %8, 32
  %33 = ashr exact i64 %32, 32
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %36 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  %37 = bitcast %union.anon* %35 to i8*
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %39 = bitcast i64* %4 to i8*
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  %43 = and i64 %8, 4294967295
  %44 = bitcast i64* %42 to <2 x i64>*
  %45 = bitcast i64* %42 to <2 x i64>*
  br label %67

46:                                               ; preds = %138, %27
  %47 = phi i64 [ %29, %27 ], [ %33, %138 ]
  %48 = phi i64 [ %28, %27 ], [ %32, %138 ]
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 %47
  %50 = icmp eq i64 %48, 0
  br i1 %50, label %147, label %51

51:                                               ; preds = %46
  %52 = call i64 @llvm.ctlz.i64(i64 %47, i1 true) #14, !range !14
  %53 = shl nuw nsw i64 %52, 1
  %54 = xor i64 %53, 126
  invoke void @_ZSt16__introsort_loopIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_T0_T1_(%"class.std::__cxx11::basic_string"* noundef nonnull %11, %"class.std::__cxx11::basic_string"* noundef nonnull %49, i64 noundef %54)
          to label %55 unwind label %186

55:                                               ; preds = %51
  %56 = icmp sgt i64 %48, 68719476736
  br i1 %56, label %57, label %64

57:                                               ; preds = %55
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 16
  invoke void @_ZSt16__insertion_sortIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_T0_(%"class.std::__cxx11::basic_string"* noundef nonnull %11, %"class.std::__cxx11::basic_string"* noundef nonnull %58)
          to label %59 unwind label %186

59:                                               ; preds = %57, %61
  %60 = phi %"class.std::__cxx11::basic_string"* [ %62, %61 ], [ %58, %57 ]
  invoke void @_ZSt25__unguarded_linear_insertIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(%"class.std::__cxx11::basic_string"* noundef nonnull %60)
          to label %61 unwind label %184

61:                                               ; preds = %59
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %60, i64 1
  %63 = icmp eq %"class.std::__cxx11::basic_string"* %62, %49
  br i1 %63, label %147, label %59, !llvm.loop !15

64:                                               ; preds = %55
  invoke void @_ZSt16__insertion_sortIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_T0_(%"class.std::__cxx11::basic_string"* noundef nonnull %11, %"class.std::__cxx11::basic_string"* noundef nonnull %49)
          to label %147 unwind label %186

65:                                               ; preds = %23
  %66 = landingpad { i8*, i32 }
          cleanup
  br label %196

67:                                               ; preds = %30, %138
  %68 = phi i64 [ 0, %30 ], [ %139, %138 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %31) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %69 = load i64, i64* %34, align 8, !tbaa !5, !noalias !17
  %70 = icmp ult i64 %69, %68
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = and i64 %68, 4294967295
  invoke void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 noundef %72, i64 noundef %69) #15
          to label %73 unwind label %143

73:                                               ; preds = %71
  unreachable

74:                                               ; preds = %67
  store %union.anon* %35, %union.anon** %36, align 8, !tbaa !12, !alias.scope !17
  %75 = load i8*, i8** %38, align 8, !tbaa !20, !noalias !17
  %76 = getelementptr inbounds i8, i8* %75, i64 %68
  %77 = sub i64 %69, %68
  %78 = icmp ugt i64 %77, %33
  %79 = select i1 %78, i64 %33, i64 %77
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39) #14, !noalias !17
  store i64 %79, i64* %4, align 8, !tbaa !21, !noalias !17
  %80 = icmp ugt i64 %79, 15
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i64* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %83 unwind label %141

83:                                               ; preds = %81
  store i8* %82, i8** %40, align 8, !tbaa !20, !alias.scope !17
  %84 = load i64, i64* %4, align 8, !tbaa !21, !noalias !17
  store i64 %84, i64* %41, align 8, !tbaa !13, !alias.scope !17
  br label %85

85:                                               ; preds = %83, %74
  %86 = phi i8* [ %82, %83 ], [ %37, %74 ]
  switch i64 %79, label %89 [
    i64 1, label %87
    i64 0, label %90
  ]

87:                                               ; preds = %85
  %88 = load i8, i8* %76, align 1, !tbaa !13
  store i8 %88, i8* %86, align 1, !tbaa !13
  br label %90

89:                                               ; preds = %85
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %86, i8* align 1 %76, i64 %79, i1 false) #14
  br label %90

90:                                               ; preds = %89, %87, %85
  %91 = load i64, i64* %4, align 8, !tbaa !21, !noalias !17
  store i64 %91, i64* %42, align 8, !tbaa !5, !alias.scope !17
  %92 = load i8*, i8** %40, align 8, !tbaa !20, !alias.scope !17
  %93 = getelementptr inbounds i8, i8* %92, i64 %91
  store i8 0, i8* %93, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #14, !noalias !17
  %94 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 %68
  %95 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %94, i64 0, i32 0, i32 0
  %96 = load i8*, i8** %40, align 8, !tbaa !20
  %97 = icmp eq i8* %96, %37
  br i1 %97, label %98, label %115

98:                                               ; preds = %90
  %99 = icmp eq %"class.std::__cxx11::basic_string"* %6, %94
  br i1 %99, label %133, label %100, !prof !22

100:                                              ; preds = %98
  %101 = load i64, i64* %42, align 8, !tbaa !5
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  %104 = load i8*, i8** %95, align 16, !tbaa !20
  %105 = icmp eq i64 %101, 1
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i8, i8* %37, align 8, !tbaa !13
  store i8 %107, i8* %104, align 1, !tbaa !13
  br label %109

108:                                              ; preds = %103
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %104, i8* nonnull align 8 %37, i64 %101, i1 false) #14
  br label %109

109:                                              ; preds = %108, %106, %100
  %110 = load i64, i64* %42, align 8, !tbaa !5
  %111 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 %68, i32 1
  store i64 %110, i64* %111, align 8, !tbaa !5
  %112 = load i8*, i8** %95, align 16, !tbaa !20
  %113 = getelementptr inbounds i8, i8* %112, i64 %110
  store i8 0, i8* %113, align 1, !tbaa !13
  %114 = load i8*, i8** %40, align 8, !tbaa !20
  br label %133

115:                                              ; preds = %90
  %116 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 %68, i32 2
  %117 = bitcast %union.anon* %116 to i8*
  %118 = load i8*, i8** %95, align 16, !tbaa !20
  %119 = icmp eq i8* %118, %117
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  store i8* %96, i8** %95, align 16, !tbaa !20
  %121 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 %68, i32 1
  %122 = load <2 x i64>, <2 x i64>* %45, align 8, !tbaa !13
  %123 = bitcast i64* %121 to <2 x i64>*
  store <2 x i64> %122, <2 x i64>* %123, align 8, !tbaa !13
  br label %132

124:                                              ; preds = %115
  %125 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 %68, i32 2, i32 0
  %126 = load i64, i64* %125, align 16, !tbaa !13
  store i8* %96, i8** %95, align 16, !tbaa !20
  %127 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 %68, i32 1
  %128 = load <2 x i64>, <2 x i64>* %44, align 8, !tbaa !13
  %129 = bitcast i64* %127 to <2 x i64>*
  store <2 x i64> %128, <2 x i64>* %129, align 8, !tbaa !13
  %130 = icmp eq i8* %118, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %124
  store i8* %118, i8** %40, align 8, !tbaa !20
  store i64 %126, i64* %41, align 8, !tbaa !13
  br label %133

132:                                              ; preds = %124, %120
  store %union.anon* %35, %union.anon** %36, align 8, !tbaa !20
  br label %133

133:                                              ; preds = %98, %109, %131, %132
  %134 = phi i8* [ %114, %109 ], [ %118, %131 ], [ %37, %132 ], [ %37, %98 ]
  store i64 0, i64* %42, align 8, !tbaa !5
  store i8 0, i8* %134, align 1, !tbaa !13
  %135 = load i8*, i8** %40, align 8, !tbaa !20
  %136 = icmp eq i8* %135, %37
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  call void @_ZdlPv(i8* noundef %135) #14
  br label %138

138:                                              ; preds = %133, %137
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %31) #14
  %139 = add nuw nsw i64 %68, 1
  %140 = icmp eq i64 %139, %43
  br i1 %140, label %46, label %67, !llvm.loop !23

141:                                              ; preds = %81
  %142 = landingpad { i8*, i32 }
          cleanup
  br label %145

143:                                              ; preds = %71
  %144 = landingpad { i8*, i32 }
          cleanup
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi { i8*, i32 } [ %142, %141 ], [ %144, %143 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %31) #14
  br label %188

147:                                              ; preds = %61, %46, %64
  %148 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %149 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %148, %union.anon** %149, align 8, !tbaa !12
  %150 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 0, i32 0
  %151 = load i8*, i8** %150, align 16, !tbaa !20
  %152 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 1
  %153 = load i64, i64* %152, align 8, !tbaa !5
  %154 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %154) #14
  store i64 %153, i64* %3, align 8, !tbaa !21
  %155 = icmp ugt i64 %153, 15
  br i1 %155, label %158, label %156

156:                                              ; preds = %147
  %157 = bitcast %union.anon* %148 to i8*
  br label %164

158:                                              ; preds = %147
  %159 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64* noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %160 unwind label %186

160:                                              ; preds = %158
  %161 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  store i8* %159, i8** %161, align 8, !tbaa !20
  %162 = load i64, i64* %3, align 8, !tbaa !21
  %163 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %162, i64* %163, align 8, !tbaa !13
  br label %164

164:                                              ; preds = %160, %156
  %165 = phi i8* [ %157, %156 ], [ %159, %160 ]
  switch i64 %153, label %168 [
    i64 1, label %166
    i64 0, label %169
  ]

166:                                              ; preds = %164
  %167 = load i8, i8* %151, align 1, !tbaa !13
  store i8 %167, i8* %165, align 1, !tbaa !13
  br label %169

168:                                              ; preds = %164
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %165, i8* align 1 %151, i64 %153, i1 false) #14
  br label %169

169:                                              ; preds = %168, %166, %164
  %170 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %171 = load i64, i64* %3, align 8, !tbaa !21
  %172 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %171, i64* %172, align 8, !tbaa !5
  %173 = load i8*, i8** %170, align 8, !tbaa !20
  %174 = getelementptr inbounds i8, i8* %173, i64 %171
  store i8 0, i8* %174, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %154) #14
  %175 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8, !tbaa !20
  %177 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %178 = bitcast %union.anon* %177 to i8*
  %179 = icmp eq i8* %176, %178
  br i1 %179, label %181, label %180

180:                                              ; preds = %169
  call void @_ZdlPv(i8* noundef %176) #14
  br label %181

181:                                              ; preds = %169, %180
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %24) #14
  br i1 %12, label %211, label %182

182:                                              ; preds = %181
  %183 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 %10
  br label %200

184:                                              ; preds = %59
  %185 = landingpad { i8*, i32 }
          cleanup
  br label %188

186:                                              ; preds = %51, %57, %64, %158
  %187 = landingpad { i8*, i32 }
          cleanup
  br label %188

188:                                              ; preds = %184, %186, %145
  %189 = phi { i8*, i32 } [ %146, %145 ], [ %185, %184 ], [ %187, %186 ]
  %190 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8, !tbaa !20
  %192 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %193 = bitcast %union.anon* %192 to i8*
  %194 = icmp eq i8* %191, %193
  br i1 %194, label %196, label %195

195:                                              ; preds = %188
  call void @_ZdlPv(i8* noundef %191) #14
  br label %196

196:                                              ; preds = %195, %188, %65
  %197 = phi { i8*, i32 } [ %66, %65 ], [ %189, %188 ], [ %189, %195 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %24) #14
  br i1 %12, label %223, label %198

198:                                              ; preds = %196
  %199 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 %10
  br label %212

200:                                              ; preds = %182, %209
  %201 = phi %"class.std::__cxx11::basic_string"* [ %202, %209 ], [ %183, %182 ]
  %202 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %201, i64 -1
  %203 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %202, i64 0, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8, !tbaa !20
  %205 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %201, i64 -1, i32 2
  %206 = bitcast %union.anon* %205 to i8*
  %207 = icmp eq i8* %204, %206
  br i1 %207, label %209, label %208

208:                                              ; preds = %200
  call void @_ZdlPv(i8* noundef %204) #14
  br label %209

209:                                              ; preds = %200, %208
  %210 = icmp eq %"class.std::__cxx11::basic_string"* %202, %11
  br i1 %210, label %211, label %200

211:                                              ; preds = %209, %181
  ret void

212:                                              ; preds = %198, %221
  %213 = phi %"class.std::__cxx11::basic_string"* [ %214, %221 ], [ %199, %198 ]
  %214 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %213, i64 -1
  %215 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %214, i64 0, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8, !tbaa !20
  %217 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %213, i64 -1, i32 2
  %218 = bitcast %union.anon* %217 to i8*
  %219 = icmp eq i8* %216, %218
  br i1 %219, label %221, label %220

220:                                              ; preds = %212
  call void @_ZdlPv(i8* noundef %216) #14
  br label %221

221:                                              ; preds = %212, %220
  %222 = icmp eq %"class.std::__cxx11::basic_string"* %214, %11
  br i1 %222, label %223, label %212

223:                                              ; preds = %221, %196
  resume { i8*, i32 } %197
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
  %8 = load i8*, i8** %7, align 8, !tbaa !20
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %10 = load i64, i64* %9, align 8, !tbaa !5
  %11 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #14
  store i64 %10, i64* %4, align 8, !tbaa !21
  %12 = icmp ugt i64 %10, 15
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = bitcast %union.anon* %5 to i8*
  br label %20

15:                                               ; preds = %3
  %16 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  store i8* %16, i8** %17, align 8, !tbaa !20
  %18 = load i64, i64* %4, align 8, !tbaa !21
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %18, i64* %19, align 8, !tbaa !13
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i8* [ %14, %13 ], [ %16, %15 ]
  switch i64 %10, label %24 [
    i64 1, label %22
    i64 0, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8, i8* %8, align 1, !tbaa !13
  store i8 %23, i8* %21, align 1, !tbaa !13
  br label %25

24:                                               ; preds = %20
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 %8, i64 %10, i1 false) #14
  br label %25

25:                                               ; preds = %20, %22, %24
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %27 = load i64, i64* %4, align 8, !tbaa !21
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %27, i64* %28, align 8, !tbaa !5
  %29 = load i8*, i8** %26, align 8, !tbaa !20
  %30 = getelementptr inbounds i8, i8* %29, i64 %27
  store i8 0, i8* %30, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #14
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8, !tbaa !20
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 1
  %34 = load i64, i64* %33, align 8, !tbaa !5
  %35 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %32, i64 noundef %34)
          to label %43 unwind label %36

36:                                               ; preds = %25
  %37 = landingpad { i8*, i32 }
          cleanup
  %38 = load i8*, i8** %26, align 8, !tbaa !20
  %39 = bitcast %union.anon* %5 to i8*
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  call void @_ZdlPv(i8* noundef %38) #14
  br label %42

42:                                               ; preds = %36, %41
  resume { i8*, i32 } %37

43:                                               ; preds = %25
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
  br i1 %9, label %10, label %36

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 1
  br label %12

12:                                               ; preds = %10, %27
  %13 = phi i64 [ %8, %10 ], [ %34, %27 ]
  %14 = phi %"class.std::__cxx11::basic_string"* [ %1, %10 ], [ %32, %27 ]
  %15 = phi i64 [ %2, %10 ], [ %28, %27 ]
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_less_iter", %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18)
  %19 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_less_iter", %"struct.__gnu_cxx::__ops::_Iter_less_iter"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %19)
  call void @_ZSt11__make_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_RT0_(%"class.std::__cxx11::basic_string"* noundef %0, %"class.std::__cxx11::basic_string"* noundef %14, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %19)
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi %"class.std::__cxx11::basic_string"* [ %22, %20 ], [ %14, %17 ]
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %21, i64 -1
  call void @_ZSt10__pop_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_SA_RT0_(%"class.std::__cxx11::basic_string"* noundef %0, %"class.std::__cxx11::basic_string"* noundef nonnull %22, %"class.std::__cxx11::basic_string"* noundef nonnull %22, %"struct.__gnu_cxx::__ops::_Iter_less_iter"* noundef nonnull align 1 dereferenceable(1) %5)
  %23 = ptrtoint %"class.std::__cxx11::basic_string"* %22 to i64
  %24 = sub i64 %23, %6
  %25 = icmp sgt i64 %24, 32
  br i1 %25, label %20, label %26, !llvm.loop !24

26:                                               ; preds = %20
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18)
  br label %36

27:                                               ; preds = %12
  %28 = add nsw i64 %15, -1
  %29 = lshr i64 %13, 6
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %29
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 -1
  tail call void @_ZSt22__move_median_to_firstIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_(%"class.std::__cxx11::basic_string"* noundef %0, %"class.std::__cxx11::basic_string"* noundef nonnull %11, %"class.std::__cxx11::basic_string"* noundef %30, %"class.std::__cxx11::basic_string"* noundef nonnull %31)
  %32 = tail call noundef %"class.std::__cxx11::basic_string"* @_ZSt21__unguarded_partitionIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEET_SA_SA_SA_T0_(%"class.std::__cxx11::basic_string"* noundef nonnull %11, %"class.std::__cxx11::basic_string"* noundef %14, %"class.std::__cxx11::basic_string"* noundef %0)
  tail call void @_ZSt16__introsort_loopIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_T0_T1_(%"class.std::__cxx11::basic_string"* noundef %32, %"class.std::__cxx11::basic_string"* noundef %14, i64 noundef %28)
  %33 = ptrtoint %"class.std::__cxx11::basic_string"* %32 to i64
  %34 = sub i64 %33, %6
  %35 = icmp sgt i64 %34, 512
  br i1 %35, label %12, label %36, !llvm.loop !25

36:                                               ; preds = %27, %3, %26
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
  br i1 %10, label %70, label %11

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
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2, i32 0
  %26 = bitcast %union.anon* %18 to i8*
  br label %27

27:                                               ; preds = %59, %11
  %28 = phi i64 [ %13, %11 ], [ %55, %59 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #14
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %28
  store %union.anon* %15, %union.anon** %16, align 8, !tbaa !12
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %29, i64 0, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8, !tbaa !20
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %28, i32 2
  %33 = bitcast %union.anon* %32 to i8*
  %34 = icmp eq i8* %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %21, i8* noundef nonnull align 8 dereferenceable(16) %31, i64 16, i1 false) #14
  br label %39

36:                                               ; preds = %27
  store i8* %31, i8** %20, align 8, !tbaa !20
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %28, i32 2, i32 0
  %38 = load i64, i64* %37, align 8, !tbaa !13
  store i64 %38, i64* %23, align 8, !tbaa !13
  br label %39

39:                                               ; preds = %35, %36
  %40 = phi i8* [ %21, %35 ], [ %31, %36 ]
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %28, i32 1
  %42 = load i64, i64* %41, align 8, !tbaa !5
  %43 = bitcast %"class.std::__cxx11::basic_string"* %29 to %union.anon**
  store %union.anon* %32, %union.anon** %43, align 8, !tbaa !20
  store i64 0, i64* %41, align 8, !tbaa !5
  store i8 0, i8* %33, align 8, !tbaa !13
  store %union.anon* %18, %union.anon** %19, align 8, !tbaa !12
  %44 = icmp eq i8* %40, %21
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %26, i8* noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false) #14
  br label %48

46:                                               ; preds = %39
  store i8* %40, i8** %24, align 8, !tbaa !20
  %47 = load i64, i64* %23, align 8, !tbaa !13
  store i64 %47, i64* %25, align 8, !tbaa !13
  br label %48

48:                                               ; preds = %45, %46
  store i64 %42, i64* %22, align 8, !tbaa !5
  store %union.anon* %15, %union.anon** %16, align 8, !tbaa !20
  store i64 0, i64* %17, align 8, !tbaa !5
  store i8 0, i8* %21, align 8, !tbaa !13
  invoke void @_ZSt13__adjust_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElS5_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_(%"class.std::__cxx11::basic_string"* noundef nonnull %0, i64 noundef %28, i64 noundef %9, %"class.std::__cxx11::basic_string"* noundef nonnull %5)
          to label %49 unwind label %60

49:                                               ; preds = %48
  %50 = load i8*, i8** %24, align 8, !tbaa !20
  %51 = icmp eq i8* %50, %26
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  call void @_ZdlPv(i8* noundef %50) #14
  br label %53

53:                                               ; preds = %49, %52
  %54 = icmp eq i64 %28, 0
  %55 = add nsw i64 %28, -1
  %56 = load i8*, i8** %20, align 8, !tbaa !20
  %57 = icmp eq i8* %56, %21
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  call void @_ZdlPv(i8* noundef %56) #14
  br label %59

59:                                               ; preds = %53, %58
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #14
  br i1 %54, label %70, label %27, !llvm.loop !26

60:                                               ; preds = %48
  %61 = landingpad { i8*, i32 }
          cleanup
  %62 = load i8*, i8** %24, align 8, !tbaa !20
  %63 = icmp eq i8* %62, %26
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  call void @_ZdlPv(i8* noundef %62) #14
  br label %65

65:                                               ; preds = %60, %64
  %66 = load i8*, i8** %20, align 8, !tbaa !20
  %67 = icmp eq i8* %66, %21
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  call void @_ZdlPv(i8* noundef %66) #14
  br label %69

69:                                               ; preds = %65, %68
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #14
  resume { i8*, i32 } %61

70:                                               ; preds = %59, %3
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
  %11 = load i8*, i8** %10, align 8, !tbaa !20
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 2
  %13 = bitcast %union.anon* %12 to i8*
  %14 = icmp eq i8* %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = bitcast %union.anon* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %16, i8* noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false) #14
  br label %22

17:                                               ; preds = %4
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  store i8* %11, i8** %18, align 8, !tbaa !20
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
  store %union.anon* %12, %union.anon** %26, align 8, !tbaa !20
  store i64 0, i64* %23, align 8, !tbaa !5
  store i8 0, i8* %13, align 8, !tbaa !13
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8, !tbaa !20
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %30 = bitcast %union.anon* %29 to i8*
  %31 = icmp eq i8* %28, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %22
  %33 = icmp eq %"class.std::__cxx11::basic_string"* %0, %2
  br i1 %33, label %51, label %34, !prof !22

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %36 = load i64, i64* %35, align 8, !tbaa !5
  switch i64 %36, label %39 [
    i64 0, label %40
    i64 1, label %37
  ]

37:                                               ; preds = %34
  %38 = load i8, i8* %28, align 1, !tbaa !13
  store i8 %38, i8* %13, align 1, !tbaa !13
  br label %40

39:                                               ; preds = %34
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %13, i8* align 1 %28, i64 %36, i1 false) #14
  br label %40

40:                                               ; preds = %34, %39, %37
  %41 = load i64, i64* %35, align 8, !tbaa !5
  store i64 %41, i64* %23, align 8, !tbaa !5
  %42 = getelementptr inbounds i8, i8* %13, i64 %41
  store i8 0, i8* %42, align 1, !tbaa !13
  %43 = load i8*, i8** %27, align 8, !tbaa !20
  br label %51

44:                                               ; preds = %22
  store i8* %28, i8** %10, align 8, !tbaa !20
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %46 = load i64, i64* %45, align 8, !tbaa !5
  store i64 %46, i64* %23, align 8, !tbaa !5
  %47 = getelementptr %union.anon, %union.anon* %29, i64 0, i32 0
  %48 = load i64, i64* %47, align 8, !tbaa !13
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 2, i32 0
  store i64 %48, i64* %49, align 8, !tbaa !13
  %50 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %29, %union.anon** %50, align 8, !tbaa !20
  br label %51

51:                                               ; preds = %32, %40, %44
  %52 = phi i8* [ %43, %40 ], [ %30, %44 ], [ %28, %32 ]
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %53, align 8, !tbaa !5
  store i8 0, i8* %52, align 1, !tbaa !13
  %54 = ptrtoint %"class.std::__cxx11::basic_string"* %1 to i64
  %55 = ptrtoint %"class.std::__cxx11::basic_string"* %0 to i64
  %56 = sub i64 %54, %55
  %57 = ashr exact i64 %56, 5
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %59 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  store %union.anon* %58, %union.anon** %59, align 8, !tbaa !12
  %60 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8, !tbaa !20
  %62 = bitcast %union.anon* %8 to i8*
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = bitcast %union.anon* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %65, i8* noundef nonnull align 8 dereferenceable(16) %62, i64 16, i1 false) #14
  br label %71

66:                                               ; preds = %51
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  store i8* %61, i8** %67, align 8, !tbaa !20
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2, i32 0
  %69 = load i64, i64* %68, align 8, !tbaa !13
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  store i64 %69, i64* %70, align 8, !tbaa !13
  br label %71

71:                                               ; preds = %64, %66
  %72 = load i64, i64* %25, align 8, !tbaa !5
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  store i64 %72, i64* %73, align 8, !tbaa !5
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !20
  store i64 0, i64* %25, align 8, !tbaa !5
  store i8 0, i8* %62, align 8, !tbaa !13
  invoke void @_ZSt13__adjust_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElS5_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_(%"class.std::__cxx11::basic_string"* noundef nonnull %0, i64 noundef 0, i64 noundef %57, %"class.std::__cxx11::basic_string"* noundef nonnull %6)
          to label %74 unwind label %85

74:                                               ; preds = %71
  %75 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8, !tbaa !20
  %77 = bitcast %union.anon* %58 to i8*
  %78 = icmp eq i8* %76, %77
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  call void @_ZdlPv(i8* noundef %76) #14
  br label %80

80:                                               ; preds = %74, %79
  %81 = load i8*, i8** %60, align 8, !tbaa !20
  %82 = icmp eq i8* %81, %62
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  call void @_ZdlPv(i8* noundef %81) #14
  br label %84

84:                                               ; preds = %80, %83
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #14
  ret void

85:                                               ; preds = %71
  %86 = landingpad { i8*, i32 }
          cleanup
  %87 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8, !tbaa !20
  %89 = bitcast %union.anon* %58 to i8*
  %90 = icmp eq i8* %88, %89
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  call void @_ZdlPv(i8* noundef %88) #14
  br label %92

92:                                               ; preds = %85, %91
  %93 = load i8*, i8** %60, align 8, !tbaa !20
  %94 = icmp eq i8* %93, %62
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  call void @_ZdlPv(i8* noundef %93) #14
  br label %96

96:                                               ; preds = %92, %95
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #14
  resume { i8*, i32 } %86
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElS5_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_(%"class.std::__cxx11::basic_string"* noundef %0, i64 noundef %1, i64 noundef %2, %"class.std::__cxx11::basic_string"* noundef %3) local_unnamed_addr #3 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = add nsw i64 %2, -1
  %8 = sdiv i64 %7, 2
  %9 = icmp sgt i64 %8, %1
  br i1 %9, label %10, label %93

10:                                               ; preds = %4, %89
  %11 = phi i64 [ %39, %89 ], [ %1, %4 ]
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
  br i1 %21, label %29, label %22

22:                                               ; preds = %10
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %14, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8, !tbaa !20
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %13, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !20
  %27 = tail call i32 @memcmp(i8* noundef %26, i8* noundef %24, i64 noundef %20) #14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22, %10
  %30 = sub i64 %16, %18
  %31 = icmp sgt i64 %30, -2147483648
  %32 = select i1 %31, i64 %30, i64 -2147483648
  %33 = icmp slt i64 %32, 2147483647
  %34 = select i1 %33, i64 %32, i64 2147483647
  %35 = trunc i64 %34 to i32
  br label %36

36:                                               ; preds = %22, %29
  %37 = phi i32 [ %27, %22 ], [ %35, %29 ]
  %38 = icmp slt i32 %37, 0
  %39 = select i1 %38, i64 %14, i64 %13
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %39
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 0, i32 0
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %40, i64 0, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8, !tbaa !20
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %39, i32 2
  %45 = bitcast %union.anon* %44 to i8*
  %46 = icmp eq i8* %43, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %36
  %48 = icmp eq i64 %39, %11
  br i1 %48, label %89, label %49, !prof !22

49:                                               ; preds = %47
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %39, i32 1
  %51 = load i64, i64* %50, align 8, !tbaa !5
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %41, align 8, !tbaa !20
  %55 = icmp eq i64 %51, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i8, i8* %43, align 1, !tbaa !13
  store i8 %57, i8* %54, align 1, !tbaa !13
  br label %59

58:                                               ; preds = %53
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %54, i8* align 1 %43, i64 %51, i1 false) #14
  br label %59

59:                                               ; preds = %58, %56, %49
  %60 = load i64, i64* %50, align 8, !tbaa !5
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 1
  store i64 %60, i64* %61, align 8, !tbaa !5
  %62 = load i8*, i8** %41, align 8, !tbaa !20
  %63 = getelementptr inbounds i8, i8* %62, i64 %60
  store i8 0, i8* %63, align 1, !tbaa !13
  %64 = load i8*, i8** %42, align 8, !tbaa !20
  br label %89

65:                                               ; preds = %36
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 2
  %67 = bitcast %union.anon* %66 to i8*
  %68 = load i8*, i8** %41, align 8, !tbaa !20
  %69 = icmp eq i8* %68, %67
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  store i8* %43, i8** %41, align 8, !tbaa !20
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %39, i32 1
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 1
  %73 = bitcast i64* %71 to <2 x i64>*
  %74 = load <2 x i64>, <2 x i64>* %73, align 8, !tbaa !13
  %75 = bitcast i64* %72 to <2 x i64>*
  store <2 x i64> %74, <2 x i64>* %75, align 8, !tbaa !13
  br label %87

76:                                               ; preds = %65
  %77 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 2, i32 0
  %78 = load i64, i64* %77, align 8, !tbaa !13
  store i8* %43, i8** %41, align 8, !tbaa !20
  %79 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %39, i32 1
  %80 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 1
  %81 = bitcast i64* %79 to <2 x i64>*
  %82 = load <2 x i64>, <2 x i64>* %81, align 8, !tbaa !13
  %83 = bitcast i64* %80 to <2 x i64>*
  store <2 x i64> %82, <2 x i64>* %83, align 8, !tbaa !13
  %84 = icmp eq i8* %68, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %76
  store i8* %68, i8** %42, align 8, !tbaa !20
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %39, i32 2, i32 0
  store i64 %78, i64* %86, align 8, !tbaa !13
  br label %89

87:                                               ; preds = %76, %70
  %88 = bitcast %"class.std::__cxx11::basic_string"* %40 to %union.anon**
  store %union.anon* %44, %union.anon** %88, align 8, !tbaa !20
  br label %89

89:                                               ; preds = %47, %59, %85, %87
  %90 = phi i8* [ %64, %59 ], [ %68, %85 ], [ %45, %87 ], [ %43, %47 ]
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %39, i32 1
  store i64 0, i64* %91, align 8, !tbaa !5
  store i8 0, i8* %90, align 1, !tbaa !13
  %92 = icmp slt i64 %39, %8
  br i1 %92, label %10, label %93, !llvm.loop !27

93:                                               ; preds = %89, %4
  %94 = phi i64 [ %1, %4 ], [ %39, %89 ]
  %95 = and i64 %2, 1
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %156

97:                                               ; preds = %93
  %98 = add nsw i64 %2, -2
  %99 = sdiv i64 %98, 2
  %100 = icmp eq i64 %94, %99
  br i1 %100, label %101, label %156

101:                                              ; preds = %97
  %102 = shl i64 %94, 1
  %103 = or i64 %102, 1
  %104 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %103
  %105 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %94, i32 0, i32 0
  %106 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %104, i64 0, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8, !tbaa !20
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %103, i32 2
  %109 = bitcast %union.anon* %108 to i8*
  %110 = icmp eq i8* %107, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %101
  %112 = icmp eq i64 %103, %94
  br i1 %112, label %153, label %113, !prof !22

113:                                              ; preds = %111
  %114 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %103, i32 1
  %115 = load i64, i64* %114, align 8, !tbaa !5
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %113
  %118 = load i8*, i8** %105, align 8, !tbaa !20
  %119 = icmp eq i64 %115, 1
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i8, i8* %107, align 1, !tbaa !13
  store i8 %121, i8* %118, align 1, !tbaa !13
  br label %123

122:                                              ; preds = %117
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %118, i8* align 1 %107, i64 %115, i1 false) #14
  br label %123

123:                                              ; preds = %122, %120, %113
  %124 = load i64, i64* %114, align 8, !tbaa !5
  %125 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %94, i32 1
  store i64 %124, i64* %125, align 8, !tbaa !5
  %126 = load i8*, i8** %105, align 8, !tbaa !20
  %127 = getelementptr inbounds i8, i8* %126, i64 %124
  store i8 0, i8* %127, align 1, !tbaa !13
  %128 = load i8*, i8** %106, align 8, !tbaa !20
  br label %153

129:                                              ; preds = %101
  %130 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %94, i32 2
  %131 = bitcast %union.anon* %130 to i8*
  %132 = load i8*, i8** %105, align 8, !tbaa !20
  %133 = icmp eq i8* %132, %131
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  store i8* %107, i8** %105, align 8, !tbaa !20
  %135 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %103, i32 1
  %136 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %94, i32 1
  %137 = bitcast i64* %135 to <2 x i64>*
  %138 = load <2 x i64>, <2 x i64>* %137, align 8, !tbaa !13
  %139 = bitcast i64* %136 to <2 x i64>*
  store <2 x i64> %138, <2 x i64>* %139, align 8, !tbaa !13
  br label %151

140:                                              ; preds = %129
  %141 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %94, i32 2, i32 0
  %142 = load i64, i64* %141, align 8, !tbaa !13
  store i8* %107, i8** %105, align 8, !tbaa !20
  %143 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %103, i32 1
  %144 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %94, i32 1
  %145 = bitcast i64* %143 to <2 x i64>*
  %146 = load <2 x i64>, <2 x i64>* %145, align 8, !tbaa !13
  %147 = bitcast i64* %144 to <2 x i64>*
  store <2 x i64> %146, <2 x i64>* %147, align 8, !tbaa !13
  %148 = icmp eq i8* %132, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %140
  store i8* %132, i8** %106, align 8, !tbaa !20
  %150 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %103, i32 2, i32 0
  store i64 %142, i64* %150, align 8, !tbaa !13
  br label %153

151:                                              ; preds = %140, %134
  %152 = bitcast %"class.std::__cxx11::basic_string"* %104 to %union.anon**
  store %union.anon* %108, %union.anon** %152, align 8, !tbaa !20
  br label %153

153:                                              ; preds = %111, %123, %149, %151
  %154 = phi i8* [ %128, %123 ], [ %132, %149 ], [ %109, %151 ], [ %107, %111 ]
  %155 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %103, i32 1
  store i64 0, i64* %155, align 8, !tbaa !5
  store i8 0, i8* %154, align 1, !tbaa !13
  br label %156

156:                                              ; preds = %153, %97, %93
  %157 = phi i64 [ %103, %153 ], [ %94, %97 ], [ %94, %93 ]
  %158 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_less_val", %"struct.__gnu_cxx::__ops::_Iter_less_val"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %158) #14
  %159 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %160 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  store %union.anon* %159, %union.anon** %160, align 8, !tbaa !12
  %161 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8, !tbaa !20
  %163 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2
  %164 = bitcast %union.anon* %163 to i8*
  %165 = icmp eq i8* %162, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %156
  %167 = bitcast %union.anon* %159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %167, i8* noundef nonnull align 8 dereferenceable(16) %162, i64 16, i1 false) #14
  br label %173

168:                                              ; preds = %156
  %169 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  store i8* %162, i8** %169, align 8, !tbaa !20
  %170 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2, i32 0
  %171 = load i64, i64* %170, align 8, !tbaa !13
  %172 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  store i64 %171, i64* %172, align 8, !tbaa !13
  br label %173

173:                                              ; preds = %166, %168
  %174 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %175 = load i64, i64* %174, align 8, !tbaa !5
  %176 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  store i64 %175, i64* %176, align 8, !tbaa !5
  %177 = bitcast %"class.std::__cxx11::basic_string"* %3 to %union.anon**
  store %union.anon* %163, %union.anon** %177, align 8, !tbaa !20
  store i64 0, i64* %174, align 8, !tbaa !5
  store i8 0, i8* %164, align 8, !tbaa !13
  invoke void @_ZSt11__push_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElS5_N9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_SB_T1_RT2_(%"class.std::__cxx11::basic_string"* noundef %0, i64 noundef %157, i64 noundef %1, %"class.std::__cxx11::basic_string"* noundef nonnull %6, %"struct.__gnu_cxx::__ops::_Iter_less_val"* noundef nonnull align 1 dereferenceable(1) %5)
          to label %178 unwind label %185

178:                                              ; preds = %173
  %179 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8, !tbaa !20
  %181 = bitcast %union.anon* %159 to i8*
  %182 = icmp eq i8* %180, %181
  br i1 %182, label %184, label %183

183:                                              ; preds = %178
  call void @_ZdlPv(i8* noundef %180) #14
  br label %184

184:                                              ; preds = %178, %183
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %158) #14
  ret void

185:                                              ; preds = %173
  %186 = landingpad { i8*, i32 }
          cleanup
  %187 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8, !tbaa !20
  %189 = bitcast %union.anon* %159 to i8*
  %190 = icmp eq i8* %188, %189
  br i1 %190, label %192, label %191

191:                                              ; preds = %185
  call void @_ZdlPv(i8* noundef %188) #14
  br label %192

192:                                              ; preds = %185, %191
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %158) #14
  resume { i8*, i32 } %186
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElS5_N9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_SB_T1_RT2_(%"class.std::__cxx11::basic_string"* noundef %0, i64 noundef %1, i64 noundef %2, %"class.std::__cxx11::basic_string"* noundef %3, %"struct.__gnu_cxx::__ops::_Iter_less_val"* noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #8 comdat personality i32 (...)* @__gxx_personality_v0 {
  %6 = icmp sgt i64 %1, %2
  br i1 %6, label %7, label %84

7:                                                ; preds = %5
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  br label %10

10:                                               ; preds = %7, %81
  %11 = phi i64 [ %1, %7 ], [ %13, %81 ]
  %12 = add nsw i64 %11, -1
  %13 = sdiv i64 %12, 2
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %13
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %13, i32 1
  %16 = load i64, i64* %15, align 8, !tbaa !5
  %17 = load i64, i64* %8, align 8, !tbaa !5
  %18 = icmp ugt i64 %16, %17
  %19 = select i1 %18, i64 %17, i64 %16
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %10
  %22 = load i8*, i8** %9, align 8, !tbaa !20
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8, !tbaa !20
  %25 = tail call i32 @memcmp(i8* noundef %24, i8* noundef %22, i64 noundef %19) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21, %10
  %28 = sub i64 %16, %17
  %29 = icmp sgt i64 %28, -2147483648
  %30 = select i1 %29, i64 %28, i64 -2147483648
  %31 = icmp slt i64 %30, 2147483647
  %32 = select i1 %31, i64 %30, i64 2147483647
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %21, %27
  %35 = phi i32 [ %25, %21 ], [ %33, %27 ]
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %84

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 0, i32 0
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8, !tbaa !20
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %13, i32 2
  %42 = bitcast %union.anon* %41 to i8*
  %43 = icmp eq i8* %40, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %37
  %45 = icmp eq i64 %13, %11
  br i1 %45, label %81, label %46, !prof !22

46:                                               ; preds = %44
  %47 = icmp eq i64 %16, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %46
  %49 = load i8*, i8** %38, align 8, !tbaa !20
  %50 = icmp eq i64 %16, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i8, i8* %40, align 1, !tbaa !13
  store i8 %52, i8* %49, align 1, !tbaa !13
  br label %54

53:                                               ; preds = %48
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %49, i8* align 1 %40, i64 %16, i1 false) #14
  br label %54

54:                                               ; preds = %53, %51, %46
  %55 = load i64, i64* %15, align 8, !tbaa !5
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 1
  store i64 %55, i64* %56, align 8, !tbaa !5
  %57 = load i8*, i8** %38, align 8, !tbaa !20
  %58 = getelementptr inbounds i8, i8* %57, i64 %55
  store i8 0, i8* %58, align 1, !tbaa !13
  %59 = load i8*, i8** %39, align 8, !tbaa !20
  br label %81

60:                                               ; preds = %37
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 2
  %62 = bitcast %union.anon* %61 to i8*
  %63 = load i8*, i8** %38, align 8, !tbaa !20
  %64 = icmp eq i8* %63, %62
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  store i8* %40, i8** %38, align 8, !tbaa !20
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 1
  store i64 %16, i64* %66, align 8, !tbaa !5
  %67 = getelementptr %union.anon, %union.anon* %41, i64 0, i32 0
  %68 = load i64, i64* %67, align 8, !tbaa !13
  %69 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 2, i32 0
  store i64 %68, i64* %69, align 8, !tbaa !13
  br label %79

70:                                               ; preds = %60
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 2, i32 0
  %72 = load i64, i64* %71, align 8, !tbaa !13
  store i8* %40, i8** %38, align 8, !tbaa !20
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %11, i32 1
  store i64 %16, i64* %73, align 8, !tbaa !5
  %74 = getelementptr %union.anon, %union.anon* %41, i64 0, i32 0
  %75 = load i64, i64* %74, align 8, !tbaa !13
  store i64 %75, i64* %71, align 8, !tbaa !13
  %76 = icmp eq i8* %63, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %70
  store i8* %63, i8** %39, align 8, !tbaa !20
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %13, i32 2, i32 0
  store i64 %72, i64* %78, align 8, !tbaa !13
  br label %81

79:                                               ; preds = %70, %65
  %80 = bitcast %"class.std::__cxx11::basic_string"* %14 to %union.anon**
  store %union.anon* %41, %union.anon** %80, align 8, !tbaa !20
  br label %81

81:                                               ; preds = %44, %54, %77, %79
  %82 = phi i8* [ %59, %54 ], [ %63, %77 ], [ %42, %79 ], [ %40, %44 ]
  store i64 0, i64* %15, align 8, !tbaa !5
  store i8 0, i8* %82, align 1, !tbaa !13
  %83 = icmp sgt i64 %13, %2
  br i1 %83, label %10, label %84, !llvm.loop !28

84:                                               ; preds = %34, %81, %5
  %85 = phi i64 [ %1, %5 ], [ %13, %81 ], [ %11, %34 ]
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %85
  %87 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %86, i64 0, i32 0, i32 0
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8, !tbaa !20
  %90 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2
  %91 = bitcast %union.anon* %90 to i8*
  %92 = icmp eq i8* %89, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %84
  %94 = icmp eq %"class.std::__cxx11::basic_string"* %86, %3
  br i1 %94, label %136, label %95, !prof !22

95:                                               ; preds = %93
  %96 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %97 = load i64, i64* %96, align 8, !tbaa !5
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = load i8*, i8** %87, align 8, !tbaa !20
  %101 = icmp eq i64 %97, 1
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i8, i8* %89, align 1, !tbaa !13
  store i8 %103, i8* %100, align 1, !tbaa !13
  br label %105

104:                                              ; preds = %99
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %100, i8* align 1 %89, i64 %97, i1 false) #14
  br label %105

105:                                              ; preds = %104, %102, %95
  %106 = load i64, i64* %96, align 8, !tbaa !5
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %85, i32 1
  store i64 %106, i64* %107, align 8, !tbaa !5
  %108 = load i8*, i8** %87, align 8, !tbaa !20
  %109 = getelementptr inbounds i8, i8* %108, i64 %106
  store i8 0, i8* %109, align 1, !tbaa !13
  %110 = load i8*, i8** %88, align 8, !tbaa !20
  br label %136

111:                                              ; preds = %84
  %112 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %85, i32 2
  %113 = bitcast %union.anon* %112 to i8*
  %114 = load i8*, i8** %87, align 8, !tbaa !20
  %115 = icmp eq i8* %114, %113
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  store i8* %89, i8** %87, align 8, !tbaa !20
  %117 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %118 = load i64, i64* %117, align 8, !tbaa !5
  %119 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %85, i32 1
  store i64 %118, i64* %119, align 8, !tbaa !5
  %120 = getelementptr %union.anon, %union.anon* %90, i64 0, i32 0
  %121 = load i64, i64* %120, align 8, !tbaa !13
  %122 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %85, i32 2, i32 0
  store i64 %121, i64* %122, align 8, !tbaa !13
  br label %134

123:                                              ; preds = %111
  %124 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %85, i32 2, i32 0
  %125 = load i64, i64* %124, align 8, !tbaa !13
  store i8* %89, i8** %87, align 8, !tbaa !20
  %126 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %127 = load i64, i64* %126, align 8, !tbaa !5
  %128 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 %85, i32 1
  store i64 %127, i64* %128, align 8, !tbaa !5
  %129 = getelementptr %union.anon, %union.anon* %90, i64 0, i32 0
  %130 = load i64, i64* %129, align 8, !tbaa !13
  store i64 %130, i64* %124, align 8, !tbaa !13
  %131 = icmp eq i8* %114, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %123
  store i8* %114, i8** %88, align 8, !tbaa !20
  %133 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 2, i32 0
  store i64 %125, i64* %133, align 8, !tbaa !13
  br label %136

134:                                              ; preds = %123, %116
  %135 = bitcast %"class.std::__cxx11::basic_string"* %3 to %union.anon**
  store %union.anon* %90, %union.anon** %135, align 8, !tbaa !20
  br label %136

136:                                              ; preds = %93, %105, %132, %134
  %137 = phi i8* [ %110, %105 ], [ %114, %132 ], [ %91, %134 ], [ %89, %93 ]
  %138 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  store i64 0, i64* %138, align 8, !tbaa !5
  store i8 0, i8* %137, align 1, !tbaa !13
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
  br i1 %11, label %19, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8, !tbaa !20
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !20
  %17 = tail call i32 @memcmp(i8* noundef %16, i8* noundef %14, i64 noundef %10) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12, %4
  %20 = sub i64 %6, %8
  %21 = icmp sgt i64 %20, -2147483648
  %22 = select i1 %21, i64 %20, i64 -2147483648
  %23 = icmp slt i64 %22, 2147483647
  %24 = select i1 %23, i64 %22, i64 2147483647
  %25 = trunc i64 %24 to i32
  br label %26

26:                                               ; preds = %12, %19
  %27 = phi i32 [ %17, %12 ], [ %25, %19 ]
  %28 = icmp slt i32 %27, 0
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 1
  %30 = load i64, i64* %29, align 8, !tbaa !5
  br i1 %28, label %31, label %74

31:                                               ; preds = %26
  %32 = icmp ugt i64 %8, %30
  %33 = select i1 %32, i64 %30, i64 %8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8, !tbaa !20
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8, !tbaa !20
  %40 = tail call i32 @memcmp(i8* noundef %39, i8* noundef %37, i64 noundef %33) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35, %31
  %43 = sub i64 %8, %30
  %44 = icmp sgt i64 %43, -2147483648
  %45 = select i1 %44, i64 %43, i64 -2147483648
  %46 = icmp slt i64 %45, 2147483647
  %47 = select i1 %46, i64 %45, i64 2147483647
  %48 = trunc i64 %47 to i32
  br label %49

49:                                               ; preds = %35, %42
  %50 = phi i32 [ %40, %35 ], [ %48, %42 ]
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %117, label %52

52:                                               ; preds = %49
  %53 = icmp ugt i64 %6, %30
  %54 = select i1 %53, i64 %30, i64 %6
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8, !tbaa !20
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8, !tbaa !20
  %61 = tail call i32 @memcmp(i8* noundef %60, i8* noundef %58, i64 noundef %54) #14
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %56, %52
  %64 = sub i64 %6, %30
  %65 = icmp sgt i64 %64, -2147483648
  %66 = select i1 %65, i64 %64, i64 -2147483648
  %67 = icmp slt i64 %66, 2147483647
  %68 = select i1 %67, i64 %66, i64 2147483647
  %69 = trunc i64 %68 to i32
  br label %70

70:                                               ; preds = %56, %63
  %71 = phi i32 [ %61, %56 ], [ %69, %63 ]
  %72 = icmp slt i32 %71, 0
  %73 = select i1 %72, %"class.std::__cxx11::basic_string"* %3, %"class.std::__cxx11::basic_string"* %1
  br label %117

74:                                               ; preds = %26
  %75 = icmp ugt i64 %6, %30
  %76 = select i1 %75, i64 %30, i64 %6
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8, !tbaa !20
  %81 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8, !tbaa !20
  %83 = tail call i32 @memcmp(i8* noundef %82, i8* noundef %80, i64 noundef %76) #14
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78, %74
  %86 = sub i64 %6, %30
  %87 = icmp sgt i64 %86, -2147483648
  %88 = select i1 %87, i64 %86, i64 -2147483648
  %89 = icmp slt i64 %88, 2147483647
  %90 = select i1 %89, i64 %88, i64 2147483647
  %91 = trunc i64 %90 to i32
  br label %92

92:                                               ; preds = %78, %85
  %93 = phi i32 [ %83, %78 ], [ %91, %85 ]
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %117, label %95

95:                                               ; preds = %92
  %96 = icmp ugt i64 %8, %30
  %97 = select i1 %96, i64 %30, i64 %8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i64 0, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8, !tbaa !20
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8, !tbaa !20
  %104 = tail call i32 @memcmp(i8* noundef %103, i8* noundef %101, i64 noundef %97) #14
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %99, %95
  %107 = sub i64 %8, %30
  %108 = icmp sgt i64 %107, -2147483648
  %109 = select i1 %108, i64 %107, i64 -2147483648
  %110 = icmp slt i64 %109, 2147483647
  %111 = select i1 %110, i64 %109, i64 2147483647
  %112 = trunc i64 %111 to i32
  br label %113

113:                                              ; preds = %99, %106
  %114 = phi i32 [ %104, %99 ], [ %112, %106 ]
  %115 = icmp slt i32 %114, 0
  %116 = select i1 %115, %"class.std::__cxx11::basic_string"* %3, %"class.std::__cxx11::basic_string"* %2
  br label %117

117:                                              ; preds = %113, %92, %70, %49
  %118 = phi %"class.std::__cxx11::basic_string"* [ %2, %49 ], [ %73, %70 ], [ %1, %92 ], [ %116, %113 ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %118) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef %"class.std::__cxx11::basic_string"* @_ZSt21__unguarded_partitionIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEET_SA_SA_SA_T0_(%"class.std::__cxx11::basic_string"* noundef %0, %"class.std::__cxx11::basic_string"* noundef %1, %"class.std::__cxx11::basic_string"* noundef %2) local_unnamed_addr #11 comdat personality i32 (...)* @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 1
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  br label %6

6:                                                ; preds = %3, %61
  %7 = phi %"class.std::__cxx11::basic_string"* [ %1, %3 ], [ %36, %61 ]
  %8 = phi %"class.std::__cxx11::basic_string"* [ %0, %3 ], [ %33, %61 ]
  %9 = load i64, i64* %4, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %30, %6
  %11 = phi %"class.std::__cxx11::basic_string"* [ %8, %6 ], [ %33, %30 ]
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 1
  %13 = load i64, i64* %12, align 8, !tbaa !5
  %14 = icmp ugt i64 %13, %9
  %15 = select i1 %14, i64 %9, i64 %13
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = load i8*, i8** %5, align 8, !tbaa !20
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !20
  %21 = tail call i32 @memcmp(i8* noundef %20, i8* noundef %18, i64 noundef %15) #14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17, %10
  %24 = sub i64 %13, %9
  %25 = icmp sgt i64 %24, -2147483648
  %26 = select i1 %25, i64 %24, i64 -2147483648
  %27 = icmp slt i64 %26, 2147483647
  %28 = select i1 %27, i64 %26, i64 2147483647
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %17, %23
  %31 = phi i32 [ %21, %17 ], [ %29, %23 ]
  %32 = icmp slt i32 %31, 0
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 1
  br i1 %32, label %10, label %34, !llvm.loop !29

34:                                               ; preds = %30, %55
  %35 = phi %"class.std::__cxx11::basic_string"* [ %36, %55 ], [ %7, %30 ]
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %35, i64 -1
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %35, i64 -1, i32 1
  %38 = load i64, i64* %37, align 8, !tbaa !5
  %39 = icmp ugt i64 %9, %38
  %40 = select i1 %39, i64 %38, i64 %9
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %36, i64 0, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8, !tbaa !20
  %45 = load i8*, i8** %5, align 8, !tbaa !20
  %46 = tail call i32 @memcmp(i8* noundef %45, i8* noundef %44, i64 noundef %40) #14
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42, %34
  %49 = sub i64 %9, %38
  %50 = icmp sgt i64 %49, -2147483648
  %51 = select i1 %50, i64 %49, i64 -2147483648
  %52 = icmp slt i64 %51, 2147483647
  %53 = select i1 %52, i64 %51, i64 2147483647
  %54 = trunc i64 %53 to i32
  br label %55

55:                                               ; preds = %42, %48
  %56 = phi i32 [ %46, %42 ], [ %54, %48 ]
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %34, label %58, !llvm.loop !30

58:                                               ; preds = %55
  %59 = icmp ult %"class.std::__cxx11::basic_string"* %11, %36
  br i1 %59, label %61, label %60

60:                                               ; preds = %58
  ret %"class.std::__cxx11::basic_string"* %11

61:                                               ; preds = %58
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %36) #14
  br label %6, !llvm.loop !31
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SA_T0_(%"class.std::__cxx11::basic_string"* noundef %0, %"class.std::__cxx11::basic_string"* noundef %1) local_unnamed_addr #3 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = icmp eq %"class.std::__cxx11::basic_string"* %0, %1
  br i1 %4, label %170, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 1
  %7 = icmp eq %"class.std::__cxx11::basic_string"* %6, %1
  br i1 %7, label %170, label %8

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
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %20 = bitcast %union.anon* %19 to i8*
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %22 = icmp eq %"class.std::__cxx11::basic_string"* %3, %0
  %23 = bitcast i64* %17 to <2 x i64>*
  %24 = bitcast i64* %9 to <2 x i64>*
  %25 = bitcast i64* %17 to <2 x i64>*
  %26 = bitcast i64* %9 to <2 x i64>*
  br label %27

27:                                               ; preds = %8, %167
  %28 = phi %"class.std::__cxx11::basic_string"* [ %6, %8 ], [ %168, %167 ]
  %29 = phi %"class.std::__cxx11::basic_string"* [ %0, %8 ], [ %28, %167 ]
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %29, i64 1, i32 1
  %31 = load i64, i64* %30, align 8, !tbaa !5
  %32 = load i64, i64* %9, align 8, !tbaa !5
  %33 = icmp ugt i64 %31, %32
  %34 = select i1 %33, i64 %32, i64 %31
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %27
  %37 = load i8*, i8** %10, align 8, !tbaa !20
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %28, i64 0, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8, !tbaa !20
  %40 = call i32 @memcmp(i8* noundef %39, i8* noundef %37, i64 noundef %34) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36, %27
  %43 = sub i64 %31, %32
  %44 = icmp sgt i64 %43, -2147483648
  %45 = select i1 %44, i64 %43, i64 -2147483648
  %46 = icmp slt i64 %45, 2147483647
  %47 = select i1 %46, i64 %45, i64 2147483647
  %48 = trunc i64 %47 to i32
  br label %49

49:                                               ; preds = %36, %42
  %50 = phi i32 [ %40, %36 ], [ %48, %42 ]
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %166

52:                                               ; preds = %49
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #14
  store %union.anon* %12, %union.anon** %13, align 8, !tbaa !12
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %28, i64 0, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8, !tbaa !20
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %29, i64 1, i32 2
  %56 = bitcast %union.anon* %55 to i8*
  %57 = icmp eq i8* %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %16, i8* noundef nonnull align 8 dereferenceable(16) %54, i64 16, i1 false) #14
  br label %62

59:                                               ; preds = %52
  store i8* %54, i8** %14, align 8, !tbaa !20
  %60 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %29, i64 1, i32 2, i32 0
  %61 = load i64, i64* %60, align 8, !tbaa !13
  store i64 %61, i64* %15, align 8, !tbaa !13
  br label %62

62:                                               ; preds = %58, %59
  %63 = phi i8* [ %16, %58 ], [ %54, %59 ]
  store i64 %31, i64* %17, align 8, !tbaa !5
  %64 = bitcast %"class.std::__cxx11::basic_string"* %28 to %union.anon**
  store %union.anon* %55, %union.anon** %64, align 8, !tbaa !20
  store i64 0, i64* %30, align 8, !tbaa !5
  store i8 0, i8* %56, align 8, !tbaa !13
  %65 = ptrtoint %"class.std::__cxx11::basic_string"* %28 to i64
  %66 = sub i64 %65, %18
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %131

68:                                               ; preds = %62
  %69 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %29, i64 2
  %70 = lshr exact i64 %66, 5
  br label %71

71:                                               ; preds = %124, %68
  %72 = phi i64 [ %127, %124 ], [ %70, %68 ]
  %73 = phi %"class.std::__cxx11::basic_string"* [ %76, %124 ], [ %69, %68 ]
  %74 = phi %"class.std::__cxx11::basic_string"* [ %75, %124 ], [ %28, %68 ]
  %75 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %74, i64 -1
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %73, i64 -1
  %77 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %76, i64 0, i32 0, i32 0
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %75, i64 0, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8, !tbaa !20
  %80 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %74, i64 -1, i32 2
  %81 = bitcast %union.anon* %80 to i8*
  %82 = icmp eq i8* %79, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %71
  %84 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %74, i64 -1, i32 1
  %85 = load i64, i64* %84, align 8, !tbaa !5
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = load i8*, i8** %77, align 8, !tbaa !20
  %89 = icmp eq i64 %85, 1
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i8, i8* %79, align 1, !tbaa !13
  store i8 %91, i8* %88, align 1, !tbaa !13
  br label %93

92:                                               ; preds = %87
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %88, i8* align 1 %79, i64 %85, i1 false) #14
  br label %93

93:                                               ; preds = %92, %90, %83
  %94 = load i64, i64* %84, align 8, !tbaa !5
  %95 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %73, i64 -1, i32 1
  store i64 %94, i64* %95, align 8, !tbaa !5
  %96 = load i8*, i8** %77, align 8, !tbaa !20
  %97 = getelementptr inbounds i8, i8* %96, i64 %94
  store i8 0, i8* %97, align 1, !tbaa !13
  %98 = load i8*, i8** %78, align 8, !tbaa !20
  br label %124

99:                                               ; preds = %71
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %73, i64 -1, i32 2
  %101 = bitcast %union.anon* %100 to i8*
  %102 = load i8*, i8** %77, align 8, !tbaa !20
  %103 = icmp eq i8* %102, %101
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  store i8* %79, i8** %77, align 8, !tbaa !20
  %105 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %74, i64 -1, i32 1
  %106 = load i64, i64* %105, align 8, !tbaa !5
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %73, i64 -1, i32 1
  store i64 %106, i64* %107, align 8, !tbaa !5
  %108 = getelementptr %union.anon, %union.anon* %80, i64 0, i32 0
  %109 = load i64, i64* %108, align 8, !tbaa !13
  %110 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %73, i64 -1, i32 2, i32 0
  store i64 %109, i64* %110, align 8, !tbaa !13
  br label %122

111:                                              ; preds = %99
  %112 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %73, i64 -1, i32 2, i32 0
  %113 = load i64, i64* %112, align 8, !tbaa !13
  store i8* %79, i8** %77, align 8, !tbaa !20
  %114 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %74, i64 -1, i32 1
  %115 = load i64, i64* %114, align 8, !tbaa !5
  %116 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %73, i64 -1, i32 1
  store i64 %115, i64* %116, align 8, !tbaa !5
  %117 = getelementptr %union.anon, %union.anon* %80, i64 0, i32 0
  %118 = load i64, i64* %117, align 8, !tbaa !13
  store i64 %118, i64* %112, align 8, !tbaa !13
  %119 = icmp eq i8* %102, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %111
  store i8* %102, i8** %78, align 8, !tbaa !20
  %121 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %74, i64 -1, i32 2, i32 0
  store i64 %113, i64* %121, align 8, !tbaa !13
  br label %124

122:                                              ; preds = %111, %104
  %123 = bitcast %"class.std::__cxx11::basic_string"* %75 to %union.anon**
  store %union.anon* %80, %union.anon** %123, align 8, !tbaa !20
  br label %124

124:                                              ; preds = %122, %120, %93
  %125 = phi i8* [ %98, %93 ], [ %102, %120 ], [ %81, %122 ]
  %126 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %74, i64 -1, i32 1
  store i64 0, i64* %126, align 8, !tbaa !5
  store i8 0, i8* %125, align 1, !tbaa !13
  %127 = add nsw i64 %72, -1
  %128 = icmp sgt i64 %72, 1
  br i1 %128, label %71, label %129, !llvm.loop !32

129:                                              ; preds = %124
  %130 = load i8*, i8** %14, align 8, !tbaa !20
  br label %131

131:                                              ; preds = %129, %62
  %132 = phi i8* [ %130, %129 ], [ %63, %62 ]
  %133 = icmp eq i8* %132, %16
  br i1 %133, label %134, label %149

134:                                              ; preds = %131
  br i1 %22, label %160, label %135, !prof !22

135:                                              ; preds = %134
  %136 = load i64, i64* %17, align 8, !tbaa !5
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %135
  %139 = load i8*, i8** %10, align 8, !tbaa !20
  %140 = icmp eq i64 %136, 1
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i8, i8* %16, align 8, !tbaa !13
  store i8 %142, i8* %139, align 1, !tbaa !13
  br label %144

143:                                              ; preds = %138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %139, i8* nonnull align 8 %16, i64 %136, i1 false) #14
  br label %144

144:                                              ; preds = %143, %141, %135
  %145 = load i64, i64* %17, align 8, !tbaa !5
  store i64 %145, i64* %9, align 8, !tbaa !5
  %146 = load i8*, i8** %10, align 8, !tbaa !20
  %147 = getelementptr inbounds i8, i8* %146, i64 %145
  store i8 0, i8* %147, align 1, !tbaa !13
  %148 = load i8*, i8** %14, align 8, !tbaa !20
  br label %160

149:                                              ; preds = %131
  %150 = load i8*, i8** %10, align 8, !tbaa !20
  %151 = icmp eq i8* %150, %20
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  store i8* %132, i8** %10, align 8, !tbaa !20
  %153 = load <2 x i64>, <2 x i64>* %25, align 8, !tbaa !13
  store <2 x i64> %153, <2 x i64>* %26, align 8, !tbaa !13
  br label %159

154:                                              ; preds = %149
  %155 = load i64, i64* %21, align 8, !tbaa !13
  store i8* %132, i8** %10, align 8, !tbaa !20
  %156 = load <2 x i64>, <2 x i64>* %23, align 8, !tbaa !13
  store <2 x i64> %156, <2 x i64>* %24, align 8, !tbaa !13
  %157 = icmp eq i8* %150, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  store i8* %150, i8** %14, align 8, !tbaa !20
  store i64 %155, i64* %15, align 8, !tbaa !13
  br label %160

159:                                              ; preds = %154, %152
  store %union.anon* %12, %union.anon** %13, align 8, !tbaa !20
  br label %160

160:                                              ; preds = %134, %144, %158, %159
  %161 = phi i8* [ %148, %144 ], [ %150, %158 ], [ %16, %159 ], [ %16, %134 ]
  store i64 0, i64* %17, align 8, !tbaa !5
  store i8 0, i8* %161, align 1, !tbaa !13
  %162 = load i8*, i8** %14, align 8, !tbaa !20
  %163 = icmp eq i8* %162, %16
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  call void @_ZdlPv(i8* noundef %162) #14
  br label %165

165:                                              ; preds = %160, %164
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #14
  br label %167

166:                                              ; preds = %49
  call void @_ZSt25__unguarded_linear_insertIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(%"class.std::__cxx11::basic_string"* noundef nonnull %28)
  br label %167

167:                                              ; preds = %165, %166
  %168 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %28, i64 1
  %169 = icmp eq %"class.std::__cxx11::basic_string"* %168, %1
  br i1 %169, label %170, label %27, !llvm.loop !33

170:                                              ; preds = %167, %5, %2
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
  %7 = load i8*, i8** %6, align 8, !tbaa !20
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %9 = bitcast %union.anon* %8 to i8*
  %10 = icmp eq i8* %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = bitcast %union.anon* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %12, i8* noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false) #14
  br label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  store i8* %7, i8** %14, align 8, !tbaa !20
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
  store %union.anon* %8, %union.anon** %22, align 8, !tbaa !20
  store i64 0, i64* %19, align 8, !tbaa !5
  store i8 0, i8* %9, align 8, !tbaa !13
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 0, i32 0
  br label %24

24:                                               ; preds = %91, %18
  %25 = phi i64 [ %93, %91 ], [ %20, %18 ]
  %26 = phi %"class.std::__cxx11::basic_string"* [ %27, %91 ], [ %0, %18 ]
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 -1
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 -1, i32 1
  %29 = load i64, i64* %28, align 8, !tbaa !5
  %30 = icmp ugt i64 %25, %29
  %31 = select i1 %30, i64 %29, i64 %25
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %27, i64 0, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8, !tbaa !20
  %36 = load i8*, i8** %23, align 8, !tbaa !20
  %37 = call i32 @memcmp(i8* noundef %36, i8* noundef %35, i64 noundef %31) #14
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33, %24
  %40 = sub i64 %25, %29
  %41 = icmp sgt i64 %40, -2147483648
  %42 = select i1 %41, i64 %40, i64 -2147483648
  %43 = icmp slt i64 %42, 2147483647
  %44 = select i1 %43, i64 %42, i64 2147483647
  %45 = trunc i64 %44 to i32
  br label %46

46:                                               ; preds = %33, %39
  %47 = phi i32 [ %37, %33 ], [ %45, %39 ]
  %48 = icmp slt i32 %47, 0
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 0, i32 0, i32 0
  br i1 %48, label %50, label %94

50:                                               ; preds = %46
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %27, i64 0, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8, !tbaa !20
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 -1, i32 2
  %54 = bitcast %union.anon* %53 to i8*
  %55 = icmp eq i8* %52, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = icmp eq i64 %29, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %56
  %59 = load i8*, i8** %49, align 8, !tbaa !20
  %60 = icmp eq i64 %29, 1
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i8, i8* %52, align 1, !tbaa !13
  store i8 %62, i8* %59, align 1, !tbaa !13
  br label %64

63:                                               ; preds = %58
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %59, i8* align 1 %52, i64 %29, i1 false) #14
  br label %64

64:                                               ; preds = %63, %61, %56
  %65 = load i64, i64* %28, align 8, !tbaa !5
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 0, i32 1
  store i64 %65, i64* %66, align 8, !tbaa !5
  %67 = load i8*, i8** %49, align 8, !tbaa !20
  %68 = getelementptr inbounds i8, i8* %67, i64 %65
  store i8 0, i8* %68, align 1, !tbaa !13
  %69 = load i8*, i8** %51, align 8, !tbaa !20
  br label %91

70:                                               ; preds = %50
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 0, i32 2
  %72 = bitcast %union.anon* %71 to i8*
  %73 = load i8*, i8** %49, align 8, !tbaa !20
  %74 = icmp eq i8* %73, %72
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  store i8* %52, i8** %49, align 8, !tbaa !20
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 0, i32 1
  store i64 %29, i64* %76, align 8, !tbaa !5
  %77 = getelementptr %union.anon, %union.anon* %53, i64 0, i32 0
  %78 = load i64, i64* %77, align 8, !tbaa !13
  %79 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 0, i32 2, i32 0
  store i64 %78, i64* %79, align 8, !tbaa !13
  br label %89

80:                                               ; preds = %70
  %81 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 0, i32 2, i32 0
  %82 = load i64, i64* %81, align 8, !tbaa !13
  store i8* %52, i8** %49, align 8, !tbaa !20
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 0, i32 1
  store i64 %29, i64* %83, align 8, !tbaa !5
  %84 = getelementptr %union.anon, %union.anon* %53, i64 0, i32 0
  %85 = load i64, i64* %84, align 8, !tbaa !13
  store i64 %85, i64* %81, align 8, !tbaa !13
  %86 = icmp eq i8* %73, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  store i8* %73, i8** %51, align 8, !tbaa !20
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 -1, i32 2, i32 0
  store i64 %82, i64* %88, align 8, !tbaa !13
  br label %91

89:                                               ; preds = %80, %75
  %90 = bitcast %"class.std::__cxx11::basic_string"* %27 to %union.anon**
  store %union.anon* %53, %union.anon** %90, align 8, !tbaa !20
  br label %91

91:                                               ; preds = %64, %87, %89
  %92 = phi i8* [ %69, %64 ], [ %73, %87 ], [ %54, %89 ]
  store i64 0, i64* %28, align 8, !tbaa !5
  store i8 0, i8* %92, align 1, !tbaa !13
  %93 = load i64, i64* %21, align 8, !tbaa !5
  br label %24, !llvm.loop !34

94:                                               ; preds = %46
  %95 = load i8*, i8** %23, align 8, !tbaa !20
  %96 = bitcast %union.anon* %4 to i8*
  %97 = icmp eq i8* %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %94
  %99 = icmp eq %"class.std::__cxx11::basic_string"* %2, %26
  br i1 %99, label %134, label %100, !prof !22

100:                                              ; preds = %98
  %101 = icmp eq i64 %25, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %100
  %103 = load i8*, i8** %49, align 8, !tbaa !20
  %104 = icmp eq i64 %25, 1
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i8, i8* %96, align 8, !tbaa !13
  store i8 %106, i8* %103, align 1, !tbaa !13
  br label %108

107:                                              ; preds = %102
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %103, i8* nonnull align 8 %96, i64 %25, i1 false) #14
  br label %108

108:                                              ; preds = %107, %105, %100
  %109 = load i64, i64* %21, align 8, !tbaa !5
  %110 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 0, i32 1
  store i64 %109, i64* %110, align 8, !tbaa !5
  %111 = load i8*, i8** %49, align 8, !tbaa !20
  %112 = getelementptr inbounds i8, i8* %111, i64 %109
  store i8 0, i8* %112, align 1, !tbaa !13
  %113 = load i8*, i8** %23, align 8, !tbaa !20
  br label %134

114:                                              ; preds = %94
  %115 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 0, i32 2
  %116 = bitcast %union.anon* %115 to i8*
  %117 = load i8*, i8** %49, align 8, !tbaa !20
  %118 = icmp eq i8* %117, %116
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  store i8* %95, i8** %49, align 8, !tbaa !20
  %120 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 0, i32 1
  store i64 %25, i64* %120, align 8, !tbaa !5
  %121 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %122 = load i64, i64* %121, align 8, !tbaa !13
  %123 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 0, i32 2, i32 0
  store i64 %122, i64* %123, align 8, !tbaa !13
  br label %133

124:                                              ; preds = %114
  %125 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 0, i32 2, i32 0
  %126 = load i64, i64* %125, align 8, !tbaa !13
  store i8* %95, i8** %49, align 8, !tbaa !20
  %127 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %26, i64 0, i32 1
  store i64 %25, i64* %127, align 8, !tbaa !5
  %128 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %129 = load i64, i64* %128, align 8, !tbaa !13
  store i64 %129, i64* %125, align 8, !tbaa !13
  %130 = icmp eq i8* %117, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %124
  store i8* %117, i8** %23, align 8, !tbaa !20
  %132 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %2, i64 0, i32 2, i32 0
  store i64 %126, i64* %132, align 8, !tbaa !13
  br label %134

133:                                              ; preds = %124, %119
  store %union.anon* %4, %union.anon** %5, align 8, !tbaa !20
  br label %134

134:                                              ; preds = %98, %108, %131, %133
  %135 = phi i8* [ %113, %108 ], [ %117, %131 ], [ %96, %133 ], [ %96, %98 ]
  store i64 0, i64* %21, align 8, !tbaa !5
  store i8 0, i8* %135, align 1, !tbaa !13
  %136 = load i8*, i8** %23, align 8, !tbaa !20
  %137 = icmp eq i8* %136, %96
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  call void @_ZdlPv(i8* noundef %136) #14
  br label %139

139:                                              ; preds = %134, %138
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #14
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LEXICOGRAPHICALLY_MINIMUM_STRING_ROTATION_reprocessed.cpp() #3 section ".text.startup" {
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
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!19 = distinct !{!19, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!20 = !{!6, !8, i64 0}
!21 = !{!11, !11, i64 0}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
