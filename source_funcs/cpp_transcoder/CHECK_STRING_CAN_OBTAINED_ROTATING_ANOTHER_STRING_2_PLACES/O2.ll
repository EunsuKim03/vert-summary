; ModuleID = 'benchmark/cpp_transcoder/CHECK_STRING_CAN_OBTAINED_ROTATING_ANOTHER_STRING_2_PLACES/CHECK_STRING_CAN_OBTAINED_ROTATING_ANOTHER_STRING_2_PLACES_processed.cpp'
source_filename = "benchmark/cpp_transcoder/CHECK_STRING_CAN_OBTAINED_ROTATING_ANOTHER_STRING_2_PLACES/CHECK_STRING_CAN_OBTAINED_ROTATING_ANOTHER_STRING_2_PLACES_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str.2 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_CHECK_STRING_CAN_OBTAINED_ROTATING_ANOTHER_STRING_2_PLACES_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %16 = load i64, i64* %15, align 8, !tbaa !5
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %18 = load i64, i64* %17, align 8, !tbaa !5
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %508

20:                                               ; preds = %2
  %21 = bitcast %"class.std::__cxx11::basic_string"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %21) #11
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %23 = bitcast %"class.std::__cxx11::basic_string"* %5 to %union.anon**
  store %union.anon* %22, %union.anon** %23, align 8, !tbaa !12
  %24 = bitcast %union.anon* %22 to i8*
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  store i64 0, i64* %26, align 8, !tbaa !5
  store i8 0, i8* %24, align 8, !tbaa !13
  %27 = bitcast %"class.std::__cxx11::basic_string"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %27) #11
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %29 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  store %union.anon* %28, %union.anon** %29, align 8, !tbaa !12
  %30 = bitcast %union.anon* %28 to i8*
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  store i64 0, i64* %32, align 8, !tbaa !5
  store i8 0, i8* %30, align 8, !tbaa !13
  %33 = bitcast %"class.std::__cxx11::basic_string"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %33) #11
  %34 = bitcast %"class.std::__cxx11::basic_string"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %34) #11
  %35 = bitcast %"class.std::__cxx11::basic_string"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %35) #11
  %36 = shl i64 %16, 32
  %37 = add i64 %36, -8589934592
  %38 = ashr exact i64 %37, 32
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %39 = icmp ult i64 %16, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %20
  invoke void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 noundef %38, i64 noundef %16) #12
          to label %41 unwind label %453

41:                                               ; preds = %40
  unreachable

42:                                               ; preds = %20
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 2
  %44 = bitcast %"class.std::__cxx11::basic_string"* %9 to %union.anon**
  store %union.anon* %43, %union.anon** %44, align 8, !tbaa !12, !alias.scope !14
  %45 = bitcast %union.anon* %43 to i8*
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8, !tbaa !17, !noalias !14
  %48 = getelementptr inbounds i8, i8* %47, i64 %38
  %49 = sub i64 %16, %38
  %50 = icmp ult i64 %49, 2
  %51 = select i1 %50, i64 %49, i64 2
  switch i64 %51, label %54 [
    i64 1, label %52
    i64 0, label %55
  ]

52:                                               ; preds = %42
  %53 = load i8, i8* %48, align 1, !tbaa !13
  store i8 %53, i8* %45, align 8, !tbaa !13
  br label %55

54:                                               ; preds = %42
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %45, i8* align 1 %48, i64 %51, i1 false) #11
  br label %55

55:                                               ; preds = %54, %52, %42
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 0, i32 0
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 1
  store i64 %51, i64* %57, align 8, !tbaa !5, !alias.scope !14
  %58 = getelementptr inbounds i8, i8* %45, i64 %51
  store i8 0, i8* %58, align 1, !tbaa !13
  %59 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, i8* noundef nonnull %30, i64 noundef 0)
          to label %60 unwind label %455

60:                                               ; preds = %55
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2
  %62 = bitcast %"class.std::__cxx11::basic_string"* %8 to %union.anon**
  store %union.anon* %61, %union.anon** %62, align 8, !tbaa !12, !alias.scope !18
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %59, i64 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !17
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %59, i64 0, i32 2
  %66 = bitcast %union.anon* %65 to i8*
  %67 = icmp eq i8* %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = bitcast %union.anon* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %69, i8* noundef nonnull align 8 dereferenceable(16) %64, i64 16, i1 false) #11
  br label %75

70:                                               ; preds = %60
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  store i8* %64, i8** %71, align 8, !tbaa !17, !alias.scope !18
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %59, i64 0, i32 2, i32 0
  %73 = load i64, i64* %72, align 8, !tbaa !13
  %74 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2, i32 0
  store i64 %73, i64* %74, align 8, !tbaa !13, !alias.scope !18
  br label %75

75:                                               ; preds = %70, %68
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %59, i64 0, i32 1
  %77 = load i64, i64* %76, align 8, !tbaa !5
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 1
  store i64 %77, i64* %78, align 8, !tbaa !5, !alias.scope !18
  %79 = bitcast %"class.std::__cxx11::basic_string"* %59 to %union.anon**
  store %union.anon* %65, %union.anon** %79, align 8, !tbaa !17
  store i64 0, i64* %76, align 8, !tbaa !5
  store i8 0, i8* %66, align 8, !tbaa !13
  %80 = bitcast %"class.std::__cxx11::basic_string"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %80) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %81 = load i64, i64* %17, align 8, !tbaa !5, !noalias !21
  %82 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 2
  %83 = bitcast %"class.std::__cxx11::basic_string"* %10 to %union.anon**
  store %union.anon* %82, %union.anon** %83, align 8, !tbaa !12, !alias.scope !21
  %84 = bitcast %union.anon* %82 to i8*
  %85 = load i8*, i8** %46, align 8, !tbaa !17, !noalias !21
  %86 = icmp ugt i64 %81, %38
  %87 = select i1 %86, i64 %38, i64 %81
  %88 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %88) #11, !noalias !21
  store i64 %87, i64* %4, align 8, !tbaa !24, !noalias !21
  %89 = icmp ugt i64 %87, 15
  br i1 %89, label %90, label %96

90:                                               ; preds = %75
  %91 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10, i64* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %92 unwind label %457

92:                                               ; preds = %90
  %93 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 0, i32 0
  store i8* %91, i8** %93, align 8, !tbaa !17, !alias.scope !21
  %94 = load i64, i64* %4, align 8, !tbaa !24, !noalias !21
  %95 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 2, i32 0
  store i64 %94, i64* %95, align 8, !tbaa !13, !alias.scope !21
  br label %96

96:                                               ; preds = %92, %75
  %97 = phi i8* [ %91, %92 ], [ %84, %75 ]
  switch i64 %87, label %100 [
    i64 1, label %98
    i64 0, label %101
  ]

98:                                               ; preds = %96
  %99 = load i8, i8* %85, align 1, !tbaa !13
  store i8 %99, i8* %97, align 1, !tbaa !13
  br label %101

100:                                              ; preds = %96
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %97, i8* align 1 %85, i64 %87, i1 false) #11
  br label %101

101:                                              ; preds = %100, %98, %96
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 0, i32 0
  %103 = load i64, i64* %4, align 8, !tbaa !24, !noalias !21
  %104 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 1
  store i64 %103, i64* %104, align 8, !tbaa !5, !alias.scope !21
  %105 = load i8*, i8** %102, align 8, !tbaa !17, !alias.scope !21
  %106 = getelementptr inbounds i8, i8* %105, i64 %103
  store i8 0, i8* %106, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %88) #11, !noalias !21
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %107 = load i64, i64* %78, align 8, !tbaa !5, !noalias !25
  %108 = load i64, i64* %104, align 8, !tbaa !5, !noalias !25
  %109 = add i64 %108, %107
  %110 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8, !tbaa !17, !noalias !25
  %112 = bitcast %union.anon* %61 to i8*
  %113 = icmp eq i8* %111, %112
  %114 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2, i32 0
  %115 = load i64, i64* %114, align 8, !noalias !25
  %116 = select i1 %113, i64 15, i64 %115
  %117 = icmp ugt i64 %109, %116
  %118 = load i8*, i8** %102, align 8, !tbaa !17, !noalias !25
  br i1 %117, label %119, label %142

119:                                              ; preds = %101
  %120 = icmp eq i8* %118, %84
  %121 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 2, i32 0
  %122 = load i64, i64* %121, align 8, !noalias !25
  %123 = select i1 %120, i64 15, i64 %122
  %124 = icmp ugt i64 %109, %123
  br i1 %124, label %142, label %125

125:                                              ; preds = %119
  %126 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, i8* noundef %111, i64 noundef %107)
          to label %127 unwind label %459

127:                                              ; preds = %125
  %128 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2
  %129 = bitcast %"class.std::__cxx11::basic_string"* %7 to %union.anon**
  store %union.anon* %128, %union.anon** %129, align 8, !tbaa !12, !alias.scope !25
  %130 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %126, i64 0, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8, !tbaa !17
  %132 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %126, i64 0, i32 2
  %133 = bitcast %union.anon* %132 to i8*
  %134 = icmp eq i8* %131, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = bitcast %union.anon* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %136, i8* noundef nonnull align 8 dereferenceable(16) %131, i64 16, i1 false) #11
  br label %159

137:                                              ; preds = %127
  %138 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  store i8* %131, i8** %138, align 8, !tbaa !17, !alias.scope !25
  %139 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %126, i64 0, i32 2, i32 0
  %140 = load i64, i64* %139, align 8, !tbaa !13
  %141 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2, i32 0
  store i64 %140, i64* %141, align 8, !tbaa !13, !alias.scope !25
  br label %159

142:                                              ; preds = %119, %101
  %143 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef %118, i64 noundef %108)
          to label %144 unwind label %459

144:                                              ; preds = %142
  %145 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2
  %146 = bitcast %"class.std::__cxx11::basic_string"* %7 to %union.anon**
  store %union.anon* %145, %union.anon** %146, align 8, !tbaa !12, !alias.scope !25
  %147 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %143, i64 0, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8, !tbaa !17
  %149 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %143, i64 0, i32 2
  %150 = bitcast %union.anon* %149 to i8*
  %151 = icmp eq i8* %148, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = bitcast %union.anon* %145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %153, i8* noundef nonnull align 8 dereferenceable(16) %148, i64 16, i1 false) #11
  br label %159

154:                                              ; preds = %144
  %155 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  store i8* %148, i8** %155, align 8, !tbaa !17, !alias.scope !25
  %156 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %143, i64 0, i32 2, i32 0
  %157 = load i64, i64* %156, align 8, !tbaa !13
  %158 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2, i32 0
  store i64 %157, i64* %158, align 8, !tbaa !13, !alias.scope !25
  br label %159

159:                                              ; preds = %154, %152, %137, %135
  %160 = phi %"class.std::__cxx11::basic_string"* [ %126, %135 ], [ %126, %137 ], [ %143, %152 ], [ %143, %154 ]
  %161 = phi %union.anon* [ %132, %135 ], [ %132, %137 ], [ %149, %152 ], [ %149, %154 ]
  %162 = phi i8* [ %131, %135 ], [ %133, %137 ], [ %148, %152 ], [ %150, %154 ]
  %163 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %160, i64 0, i32 1
  %164 = load i64, i64* %163, align 8, !tbaa !5
  %165 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 1
  store i64 %164, i64* %165, align 8, !tbaa !5, !alias.scope !25
  %166 = bitcast %"class.std::__cxx11::basic_string"* %160 to %union.anon**
  store %union.anon* %161, %union.anon** %166, align 8, !tbaa !17
  store i64 0, i64* %163, align 8, !tbaa !5
  store i8 0, i8* %162, align 8, !tbaa !13
  %167 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8, !tbaa !17
  %169 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2
  %170 = bitcast %union.anon* %169 to i8*
  %171 = icmp eq i8* %168, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %159
  %173 = load i64, i64* %165, align 8, !tbaa !5
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %172
  %176 = load i8*, i8** %31, align 8, !tbaa !17
  %177 = icmp eq i64 %173, 1
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = load i8, i8* %170, align 8, !tbaa !13
  store i8 %179, i8* %176, align 1, !tbaa !13
  br label %181

180:                                              ; preds = %175
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %176, i8* nonnull align 8 %170, i64 %173, i1 false) #11
  br label %181

181:                                              ; preds = %180, %178, %172
  %182 = load i64, i64* %165, align 8, !tbaa !5
  store i64 %182, i64* %32, align 8, !tbaa !5
  %183 = load i8*, i8** %31, align 8, !tbaa !17
  %184 = getelementptr inbounds i8, i8* %183, i64 %182
  store i8 0, i8* %184, align 1, !tbaa !13
  %185 = load i8*, i8** %167, align 8, !tbaa !17
  br label %204

186:                                              ; preds = %159
  %187 = load i8*, i8** %31, align 8, !tbaa !17
  %188 = icmp eq i8* %187, %30
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  store i8* %168, i8** %31, align 8, !tbaa !17
  %190 = bitcast i64* %165 to <2 x i64>*
  %191 = load <2 x i64>, <2 x i64>* %190, align 8, !tbaa !13
  %192 = bitcast i64* %32 to <2 x i64>*
  store <2 x i64> %191, <2 x i64>* %192, align 8, !tbaa !13
  br label %202

193:                                              ; preds = %186
  %194 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  %195 = load i64, i64* %194, align 8, !tbaa !13
  store i8* %168, i8** %31, align 8, !tbaa !17
  %196 = bitcast i64* %165 to <2 x i64>*
  %197 = load <2 x i64>, <2 x i64>* %196, align 8, !tbaa !13
  %198 = bitcast i64* %32 to <2 x i64>*
  store <2 x i64> %197, <2 x i64>* %198, align 8, !tbaa !13
  %199 = icmp eq i8* %187, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %193
  store i8* %187, i8** %167, align 8, !tbaa !17
  %201 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2, i32 0
  store i64 %195, i64* %201, align 8, !tbaa !13
  br label %204

202:                                              ; preds = %193, %189
  %203 = bitcast %"class.std::__cxx11::basic_string"* %7 to %union.anon**
  store %union.anon* %169, %union.anon** %203, align 8, !tbaa !17
  br label %204

204:                                              ; preds = %181, %200, %202
  %205 = phi i8* [ %187, %200 ], [ %170, %202 ], [ %185, %181 ]
  store i64 0, i64* %165, align 8, !tbaa !5
  store i8 0, i8* %205, align 1, !tbaa !13
  %206 = load i8*, i8** %167, align 8, !tbaa !17
  %207 = icmp eq i8* %206, %170
  br i1 %207, label %209, label %208

208:                                              ; preds = %204
  call void @_ZdlPv(i8* noundef %206) #11
  br label %209

209:                                              ; preds = %204, %208
  %210 = load i8*, i8** %102, align 8, !tbaa !17
  %211 = icmp eq i8* %210, %84
  br i1 %211, label %213, label %212

212:                                              ; preds = %209
  call void @_ZdlPv(i8* noundef %210) #11
  br label %213

213:                                              ; preds = %209, %212
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %80) #11
  %214 = load i8*, i8** %110, align 8, !tbaa !17
  %215 = icmp eq i8* %214, %112
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  call void @_ZdlPv(i8* noundef %214) #11
  br label %217

217:                                              ; preds = %213, %216
  %218 = load i8*, i8** %56, align 8, !tbaa !17
  %219 = icmp eq i8* %218, %45
  br i1 %219, label %221, label %220

220:                                              ; preds = %217
  call void @_ZdlPv(i8* noundef %218) #11
  br label %221

221:                                              ; preds = %217, %220
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %35) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %34) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #11
  %222 = bitcast %"class.std::__cxx11::basic_string"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %222) #11
  %223 = bitcast %"class.std::__cxx11::basic_string"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %223) #11
  %224 = bitcast %"class.std::__cxx11::basic_string"* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %224) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %225 = load i64, i64* %17, align 8, !tbaa !5, !noalias !28
  %226 = icmp ult i64 %225, 2
  br i1 %226, label %227, label %229

227:                                              ; preds = %221
  invoke void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 noundef 2, i64 noundef %225) #12
          to label %228 unwind label %478

228:                                              ; preds = %227
  unreachable

229:                                              ; preds = %221
  %230 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %13, i64 0, i32 2
  %231 = bitcast %"class.std::__cxx11::basic_string"* %13 to %union.anon**
  store %union.anon* %230, %union.anon** %231, align 8, !tbaa !12, !alias.scope !28
  %232 = bitcast %union.anon* %230 to i8*
  %233 = load i8*, i8** %46, align 8, !tbaa !17, !noalias !28
  %234 = getelementptr inbounds i8, i8* %233, i64 2
  %235 = add i64 %225, -2
  %236 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %236) #11, !noalias !28
  store i64 %235, i64* %3, align 8, !tbaa !24, !noalias !28
  %237 = icmp ugt i64 %235, 15
  br i1 %237, label %238, label %244

238:                                              ; preds = %229
  %239 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13, i64* noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %240 unwind label %478

240:                                              ; preds = %238
  %241 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %13, i64 0, i32 0, i32 0
  store i8* %239, i8** %241, align 8, !tbaa !17, !alias.scope !28
  %242 = load i64, i64* %3, align 8, !tbaa !24, !noalias !28
  %243 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %13, i64 0, i32 2, i32 0
  store i64 %242, i64* %243, align 8, !tbaa !13, !alias.scope !28
  br label %244

244:                                              ; preds = %240, %229
  %245 = phi i8* [ %239, %240 ], [ %232, %229 ]
  switch i64 %225, label %248 [
    i64 3, label %246
    i64 2, label %249
  ]

246:                                              ; preds = %244
  %247 = load i8, i8* %234, align 1, !tbaa !13
  store i8 %247, i8* %245, align 1, !tbaa !13
  br label %249

248:                                              ; preds = %244
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %245, i8* nonnull align 1 %234, i64 %235, i1 false) #11
  br label %249

249:                                              ; preds = %248, %246, %244
  %250 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %13, i64 0, i32 0, i32 0
  %251 = load i64, i64* %3, align 8, !tbaa !24, !noalias !28
  %252 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %13, i64 0, i32 1
  store i64 %251, i64* %252, align 8, !tbaa !5, !alias.scope !28
  %253 = load i8*, i8** %250, align 8, !tbaa !17, !alias.scope !28
  %254 = getelementptr inbounds i8, i8* %253, i64 %251
  store i8 0, i8* %254, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %236) #11, !noalias !28
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %255 = load i64, i64* %26, align 8, !tbaa !5, !noalias !31
  %256 = load i8*, i8** %25, align 8, !tbaa !17, !noalias !31
  %257 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, i8* noundef %256, i64 noundef %255)
          to label %258 unwind label %480

258:                                              ; preds = %249
  %259 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 2
  %260 = bitcast %"class.std::__cxx11::basic_string"* %12 to %union.anon**
  store %union.anon* %259, %union.anon** %260, align 8, !tbaa !12, !alias.scope !31
  %261 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %257, i64 0, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8, !tbaa !17
  %263 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %257, i64 0, i32 2
  %264 = bitcast %union.anon* %263 to i8*
  %265 = icmp eq i8* %262, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %258
  %267 = bitcast %union.anon* %259 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %267, i8* noundef nonnull align 8 dereferenceable(16) %262, i64 16, i1 false) #11
  br label %273

268:                                              ; preds = %258
  %269 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 0, i32 0
  store i8* %262, i8** %269, align 8, !tbaa !17, !alias.scope !31
  %270 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %257, i64 0, i32 2, i32 0
  %271 = load i64, i64* %270, align 8, !tbaa !13
  %272 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 2, i32 0
  store i64 %271, i64* %272, align 8, !tbaa !13, !alias.scope !31
  br label %273

273:                                              ; preds = %268, %266
  %274 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %257, i64 0, i32 1
  %275 = load i64, i64* %274, align 8, !tbaa !5
  %276 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 1
  store i64 %275, i64* %276, align 8, !tbaa !5, !alias.scope !31
  %277 = bitcast %"class.std::__cxx11::basic_string"* %257 to %union.anon**
  store %union.anon* %263, %union.anon** %277, align 8, !tbaa !17
  store i64 0, i64* %274, align 8, !tbaa !5
  store i8 0, i8* %264, align 8, !tbaa !13
  %278 = bitcast %"class.std::__cxx11::basic_string"* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %278) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %279 = load i64, i64* %17, align 8, !tbaa !5, !noalias !34
  %280 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 2
  %281 = bitcast %"class.std::__cxx11::basic_string"* %14 to %union.anon**
  store %union.anon* %280, %union.anon** %281, align 8, !tbaa !12, !alias.scope !34
  %282 = bitcast %union.anon* %280 to i8*
  %283 = load i8*, i8** %46, align 8, !tbaa !17, !noalias !34
  %284 = icmp ult i64 %279, 2
  %285 = select i1 %284, i64 %279, i64 2
  switch i64 %285, label %288 [
    i64 1, label %286
    i64 0, label %289
  ]

286:                                              ; preds = %273
  %287 = load i8, i8* %283, align 1, !tbaa !13
  store i8 %287, i8* %282, align 8, !tbaa !13
  br label %289

288:                                              ; preds = %273
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %282, i8* align 1 %283, i64 %285, i1 false) #11
  br label %289

289:                                              ; preds = %288, %286, %273
  %290 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 0, i32 0
  %291 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 1
  store i64 %285, i64* %291, align 8, !tbaa !5, !alias.scope !34
  %292 = getelementptr inbounds i8, i8* %282, i64 %285
  store i8 0, i8* %292, align 1, !tbaa !13
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %293 = load i64, i64* %276, align 8, !tbaa !5, !noalias !37
  %294 = add i64 %285, %293
  %295 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8, !tbaa !17, !noalias !37
  %297 = bitcast %union.anon* %259 to i8*
  %298 = icmp eq i8* %296, %297
  %299 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 2, i32 0
  %300 = load i64, i64* %299, align 8, !noalias !37
  %301 = select i1 %298, i64 15, i64 %300
  %302 = icmp ule i64 %294, %301
  %303 = icmp ugt i64 %294, 15
  %304 = or i1 %302, %303
  br i1 %304, label %322, label %305

305:                                              ; preds = %289
  %306 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, i8* noundef %296, i64 noundef %293)
          to label %307 unwind label %482

307:                                              ; preds = %305
  %308 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2
  %309 = bitcast %"class.std::__cxx11::basic_string"* %11 to %union.anon**
  store %union.anon* %308, %union.anon** %309, align 8, !tbaa !12, !alias.scope !37
  %310 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %306, i64 0, i32 0, i32 0
  %311 = load i8*, i8** %310, align 8, !tbaa !17
  %312 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %306, i64 0, i32 2
  %313 = bitcast %union.anon* %312 to i8*
  %314 = icmp eq i8* %311, %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %307
  %316 = bitcast %union.anon* %308 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %316, i8* noundef nonnull align 8 dereferenceable(16) %311, i64 16, i1 false) #11
  br label %339

317:                                              ; preds = %307
  %318 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 0, i32 0
  store i8* %311, i8** %318, align 8, !tbaa !17, !alias.scope !37
  %319 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %306, i64 0, i32 2, i32 0
  %320 = load i64, i64* %319, align 8, !tbaa !13
  %321 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2, i32 0
  store i64 %320, i64* %321, align 8, !tbaa !13, !alias.scope !37
  br label %339

322:                                              ; preds = %289
  %323 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12, i8* noundef nonnull %282, i64 noundef %285)
          to label %324 unwind label %482

324:                                              ; preds = %322
  %325 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2
  %326 = bitcast %"class.std::__cxx11::basic_string"* %11 to %union.anon**
  store %union.anon* %325, %union.anon** %326, align 8, !tbaa !12, !alias.scope !37
  %327 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %323, i64 0, i32 0, i32 0
  %328 = load i8*, i8** %327, align 8, !tbaa !17
  %329 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %323, i64 0, i32 2
  %330 = bitcast %union.anon* %329 to i8*
  %331 = icmp eq i8* %328, %330
  br i1 %331, label %332, label %334

332:                                              ; preds = %324
  %333 = bitcast %union.anon* %325 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %333, i8* noundef nonnull align 8 dereferenceable(16) %328, i64 16, i1 false) #11
  br label %339

334:                                              ; preds = %324
  %335 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 0, i32 0
  store i8* %328, i8** %335, align 8, !tbaa !17, !alias.scope !37
  %336 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %323, i64 0, i32 2, i32 0
  %337 = load i64, i64* %336, align 8, !tbaa !13
  %338 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2, i32 0
  store i64 %337, i64* %338, align 8, !tbaa !13, !alias.scope !37
  br label %339

339:                                              ; preds = %334, %332, %317, %315
  %340 = phi %"class.std::__cxx11::basic_string"* [ %306, %315 ], [ %306, %317 ], [ %323, %332 ], [ %323, %334 ]
  %341 = phi %union.anon* [ %312, %315 ], [ %312, %317 ], [ %329, %332 ], [ %329, %334 ]
  %342 = phi i8* [ %311, %315 ], [ %313, %317 ], [ %328, %332 ], [ %330, %334 ]
  %343 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %340, i64 0, i32 1
  %344 = load i64, i64* %343, align 8, !tbaa !5
  %345 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 1
  store i64 %344, i64* %345, align 8, !tbaa !5, !alias.scope !37
  %346 = bitcast %"class.std::__cxx11::basic_string"* %340 to %union.anon**
  store %union.anon* %341, %union.anon** %346, align 8, !tbaa !17
  store i64 0, i64* %343, align 8, !tbaa !5
  store i8 0, i8* %342, align 8, !tbaa !13
  %347 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 0, i32 0
  %348 = load i8*, i8** %347, align 8, !tbaa !17
  %349 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2
  %350 = bitcast %union.anon* %349 to i8*
  %351 = icmp eq i8* %348, %350
  br i1 %351, label %352, label %366

352:                                              ; preds = %339
  %353 = load i64, i64* %345, align 8, !tbaa !5
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %361, label %355

355:                                              ; preds = %352
  %356 = load i8*, i8** %25, align 8, !tbaa !17
  %357 = icmp eq i64 %353, 1
  br i1 %357, label %358, label %360

358:                                              ; preds = %355
  %359 = load i8, i8* %350, align 8, !tbaa !13
  store i8 %359, i8* %356, align 1, !tbaa !13
  br label %361

360:                                              ; preds = %355
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %356, i8* nonnull align 8 %350, i64 %353, i1 false) #11
  br label %361

361:                                              ; preds = %360, %358, %352
  %362 = load i64, i64* %345, align 8, !tbaa !5
  store i64 %362, i64* %26, align 8, !tbaa !5
  %363 = load i8*, i8** %25, align 8, !tbaa !17
  %364 = getelementptr inbounds i8, i8* %363, i64 %362
  store i8 0, i8* %364, align 1, !tbaa !13
  %365 = load i8*, i8** %347, align 8, !tbaa !17
  br label %384

366:                                              ; preds = %339
  %367 = load i8*, i8** %25, align 8, !tbaa !17
  %368 = icmp eq i8* %367, %24
  br i1 %368, label %369, label %373

369:                                              ; preds = %366
  store i8* %348, i8** %25, align 8, !tbaa !17
  %370 = bitcast i64* %345 to <2 x i64>*
  %371 = load <2 x i64>, <2 x i64>* %370, align 8, !tbaa !13
  %372 = bitcast i64* %26 to <2 x i64>*
  store <2 x i64> %371, <2 x i64>* %372, align 8, !tbaa !13
  br label %382

373:                                              ; preds = %366
  %374 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2, i32 0
  %375 = load i64, i64* %374, align 8, !tbaa !13
  store i8* %348, i8** %25, align 8, !tbaa !17
  %376 = bitcast i64* %345 to <2 x i64>*
  %377 = load <2 x i64>, <2 x i64>* %376, align 8, !tbaa !13
  %378 = bitcast i64* %26 to <2 x i64>*
  store <2 x i64> %377, <2 x i64>* %378, align 8, !tbaa !13
  %379 = icmp eq i8* %367, null
  br i1 %379, label %382, label %380

380:                                              ; preds = %373
  store i8* %367, i8** %347, align 8, !tbaa !17
  %381 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2, i32 0
  store i64 %375, i64* %381, align 8, !tbaa !13
  br label %384

382:                                              ; preds = %373, %369
  %383 = bitcast %"class.std::__cxx11::basic_string"* %11 to %union.anon**
  store %union.anon* %349, %union.anon** %383, align 8, !tbaa !17
  br label %384

384:                                              ; preds = %361, %380, %382
  %385 = phi i8* [ %367, %380 ], [ %350, %382 ], [ %365, %361 ]
  store i64 0, i64* %345, align 8, !tbaa !5
  store i8 0, i8* %385, align 1, !tbaa !13
  %386 = load i8*, i8** %347, align 8, !tbaa !17
  %387 = icmp eq i8* %386, %350
  br i1 %387, label %389, label %388

388:                                              ; preds = %384
  call void @_ZdlPv(i8* noundef %386) #11
  br label %389

389:                                              ; preds = %384, %388
  %390 = load i8*, i8** %290, align 8, !tbaa !17
  %391 = icmp eq i8* %390, %282
  br i1 %391, label %393, label %392

392:                                              ; preds = %389
  call void @_ZdlPv(i8* noundef %390) #11
  br label %393

393:                                              ; preds = %389, %392
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %278) #11
  %394 = load i8*, i8** %295, align 8, !tbaa !17
  %395 = icmp eq i8* %394, %297
  br i1 %395, label %397, label %396

396:                                              ; preds = %393
  call void @_ZdlPv(i8* noundef %394) #11
  br label %397

397:                                              ; preds = %393, %396
  %398 = load i8*, i8** %250, align 8, !tbaa !17
  %399 = icmp eq i8* %398, %232
  br i1 %399, label %401, label %400

400:                                              ; preds = %397
  call void @_ZdlPv(i8* noundef %398) #11
  br label %401

401:                                              ; preds = %397, %400
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %224) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %223) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %222) #11
  %402 = load i64, i64* %15, align 8, !tbaa !5
  %403 = load i64, i64* %26, align 8, !tbaa !5
  %404 = icmp ugt i64 %402, %403
  %405 = select i1 %404, i64 %403, i64 %402
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %413, label %407

407:                                              ; preds = %401
  %408 = load i8*, i8** %25, align 8, !tbaa !17
  %409 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %410 = load i8*, i8** %409, align 8, !tbaa !17
  %411 = call i32 @bcmp(i8* %410, i8* %408, i64 %405)
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %421

413:                                              ; preds = %401, %407
  %414 = sub i64 %402, %403
  %415 = icmp sgt i64 %414, -2147483648
  %416 = select i1 %415, i64 %414, i64 -2147483648
  %417 = icmp slt i64 %416, 2147483647
  %418 = select i1 %417, i64 %416, i64 2147483647
  %419 = trunc i64 %418 to i32
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %443, label %421

421:                                              ; preds = %407, %413
  %422 = load i64, i64* %32, align 8, !tbaa !5
  %423 = icmp ugt i64 %402, %422
  %424 = select i1 %423, i64 %422, i64 %402
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %432, label %426

426:                                              ; preds = %421
  %427 = load i8*, i8** %31, align 8, !tbaa !17
  %428 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %429 = load i8*, i8** %428, align 8, !tbaa !17
  %430 = call i32 @memcmp(i8* noundef %429, i8* noundef %427, i64 noundef %424) #11
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %439

432:                                              ; preds = %426, %421
  %433 = sub i64 %402, %422
  %434 = icmp sgt i64 %433, -2147483648
  %435 = select i1 %434, i64 %433, i64 -2147483648
  %436 = icmp slt i64 %435, 2147483647
  %437 = select i1 %436, i64 %435, i64 2147483647
  %438 = trunc i64 %437 to i32
  br label %439

439:                                              ; preds = %432, %426
  %440 = phi i32 [ %430, %426 ], [ %438, %432 ]
  %441 = icmp eq i32 %440, 0
  %442 = zext i1 %441 to i32
  br label %443

443:                                              ; preds = %439, %413
  %444 = phi i32 [ 1, %413 ], [ %442, %439 ]
  %445 = load i8*, i8** %31, align 8, !tbaa !17
  %446 = icmp eq i8* %445, %30
  br i1 %446, label %448, label %447

447:                                              ; preds = %443
  call void @_ZdlPv(i8* noundef %445) #11
  br label %448

448:                                              ; preds = %443, %447
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %27) #11
  %449 = load i8*, i8** %25, align 8, !tbaa !17
  %450 = icmp eq i8* %449, %24
  br i1 %450, label %452, label %451

451:                                              ; preds = %448
  call void @_ZdlPv(i8* noundef %449) #11
  br label %452

452:                                              ; preds = %448, %451
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %21) #11
  br label %508

453:                                              ; preds = %40
  %454 = landingpad { i8*, i32 }
          cleanup
  br label %476

455:                                              ; preds = %55
  %456 = landingpad { i8*, i32 }
          cleanup
  br label %471

457:                                              ; preds = %90
  %458 = landingpad { i8*, i32 }
          cleanup
  br label %464

459:                                              ; preds = %142, %125
  %460 = landingpad { i8*, i32 }
          cleanup
  %461 = load i8*, i8** %102, align 8, !tbaa !17
  %462 = icmp eq i8* %461, %84
  br i1 %462, label %464, label %463

463:                                              ; preds = %459
  call void @_ZdlPv(i8* noundef %461) #11
  br label %464

464:                                              ; preds = %463, %459, %457
  %465 = phi { i8*, i32 } [ %458, %457 ], [ %460, %459 ], [ %460, %463 ]
  %466 = bitcast %union.anon* %61 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %80) #11
  %467 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  %468 = load i8*, i8** %467, align 8, !tbaa !17
  %469 = icmp eq i8* %468, %466
  br i1 %469, label %471, label %470

470:                                              ; preds = %464
  call void @_ZdlPv(i8* noundef %468) #11
  br label %471

471:                                              ; preds = %470, %464, %455
  %472 = phi { i8*, i32 } [ %456, %455 ], [ %465, %464 ], [ %465, %470 ]
  %473 = load i8*, i8** %56, align 8, !tbaa !17
  %474 = icmp eq i8* %473, %45
  br i1 %474, label %476, label %475

475:                                              ; preds = %471
  call void @_ZdlPv(i8* noundef %473) #11
  br label %476

476:                                              ; preds = %475, %471, %453
  %477 = phi { i8*, i32 } [ %454, %453 ], [ %472, %471 ], [ %472, %475 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %35) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %34) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #11
  br label %498

478:                                              ; preds = %238, %227
  %479 = landingpad { i8*, i32 }
          cleanup
  br label %496

480:                                              ; preds = %249
  %481 = landingpad { i8*, i32 }
          cleanup
  br label %491

482:                                              ; preds = %322, %305
  %483 = landingpad { i8*, i32 }
          cleanup
  %484 = load i8*, i8** %290, align 8, !tbaa !17
  %485 = icmp eq i8* %484, %282
  br i1 %485, label %487, label %486

486:                                              ; preds = %482
  call void @_ZdlPv(i8* noundef %484) #11
  br label %487

487:                                              ; preds = %486, %482
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %278) #11
  %488 = load i8*, i8** %295, align 8, !tbaa !17
  %489 = icmp eq i8* %488, %297
  br i1 %489, label %491, label %490

490:                                              ; preds = %487
  call void @_ZdlPv(i8* noundef %488) #11
  br label %491

491:                                              ; preds = %490, %487, %480
  %492 = phi { i8*, i32 } [ %481, %480 ], [ %483, %487 ], [ %483, %490 ]
  %493 = load i8*, i8** %250, align 8, !tbaa !17
  %494 = icmp eq i8* %493, %232
  br i1 %494, label %496, label %495

495:                                              ; preds = %491
  call void @_ZdlPv(i8* noundef %493) #11
  br label %496

496:                                              ; preds = %495, %491, %478
  %497 = phi { i8*, i32 } [ %479, %478 ], [ %492, %491 ], [ %492, %495 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %224) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %223) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %222) #11
  br label %498

498:                                              ; preds = %496, %476
  %499 = phi { i8*, i32 } [ %497, %496 ], [ %477, %476 ]
  %500 = load i8*, i8** %31, align 8, !tbaa !17
  %501 = icmp eq i8* %500, %30
  br i1 %501, label %503, label %502

502:                                              ; preds = %498
  call void @_ZdlPv(i8* noundef %500) #11
  br label %503

503:                                              ; preds = %502, %498
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %27) #11
  %504 = load i8*, i8** %25, align 8, !tbaa !17
  %505 = icmp eq i8* %504, %24
  br i1 %505, label %507, label %506

506:                                              ; preds = %503
  call void @_ZdlPv(i8* noundef %504) #11
  br label %507

507:                                              ; preds = %506, %503
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %21) #11
  resume { i8*, i32 } %499

508:                                              ; preds = %2, %452
  %509 = phi i32 [ %444, %452 ], [ 0, %2 ]
  ret i32 %509
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef, i64 noundef) local_unnamed_addr #0

declare noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64* noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CHECK_STRING_CAN_OBTAINED_ROTATING_ANOTHER_STRING_2_PLACES_processed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #11
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #10

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { noreturn }

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
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!16 = distinct !{!16, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!17 = !{!6, !8, i64 0}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: argument 0"}
!20 = distinct !{!20, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!23 = distinct !{!23, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!24 = !{!11, !11, i64 0}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!27 = distinct !{!27, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!30 = distinct !{!30, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: argument 0"}
!33 = distinct !{!33, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!36 = distinct !{!36, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!39 = distinct !{!39, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
