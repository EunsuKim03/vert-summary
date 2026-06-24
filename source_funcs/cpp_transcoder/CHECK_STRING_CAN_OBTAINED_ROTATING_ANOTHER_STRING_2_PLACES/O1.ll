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
  br i1 %19, label %20, label %537

20:                                               ; preds = %2
  %21 = bitcast %"class.std::__cxx11::basic_string"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %21) #10
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %23 = bitcast %"class.std::__cxx11::basic_string"* %5 to %union.anon**
  store %union.anon* %22, %union.anon** %23, align 8, !tbaa !12
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  store i64 0, i64* %25, align 8, !tbaa !5
  %26 = bitcast %union.anon* %22 to i8*
  store i8 0, i8* %26, align 8, !tbaa !13
  %27 = bitcast %"class.std::__cxx11::basic_string"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %27) #10
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %29 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  store %union.anon* %28, %union.anon** %29, align 8, !tbaa !12
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  store i64 0, i64* %31, align 8, !tbaa !5
  %32 = bitcast %union.anon* %28 to i8*
  store i8 0, i8* %32, align 8, !tbaa !13
  %33 = load i64, i64* %17, align 8, !tbaa !5
  %34 = bitcast %"class.std::__cxx11::basic_string"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %34) #10
  %35 = bitcast %"class.std::__cxx11::basic_string"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %35) #10
  %36 = bitcast %"class.std::__cxx11::basic_string"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %36) #10
  %37 = shl i64 %33, 32
  %38 = add i64 %37, -8589934592
  %39 = ashr exact i64 %38, 32
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %40 = icmp ult i64 %33, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %20
  invoke void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 noundef %39, i64 noundef %33) #11
          to label %42 unwind label %476

42:                                               ; preds = %41
  unreachable

43:                                               ; preds = %20
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 2
  %45 = bitcast %"class.std::__cxx11::basic_string"* %9 to %union.anon**
  store %union.anon* %44, %union.anon** %45, align 8, !tbaa !12, !alias.scope !14
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8, !tbaa !17, !noalias !14
  %48 = getelementptr inbounds i8, i8* %47, i64 %39
  %49 = sub i64 %33, %39
  %50 = icmp ult i64 %49, 2
  %51 = select i1 %50, i64 %49, i64 2
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8, !tbaa !17, !alias.scope !14
  switch i64 %51, label %56 [
    i64 1, label %54
    i64 0, label %57
  ]

54:                                               ; preds = %43
  %55 = load i8, i8* %48, align 1, !tbaa !13
  store i8 %55, i8* %53, align 1, !tbaa !13
  br label %57

56:                                               ; preds = %43
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %53, i8* align 1 %48, i64 %51, i1 false) #10
  br label %57

57:                                               ; preds = %43, %54, %56
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i64 0, i32 1
  store i64 %51, i64* %58, align 8, !tbaa !5, !alias.scope !14
  %59 = load i8*, i8** %52, align 8, !tbaa !17, !alias.scope !14
  %60 = getelementptr inbounds i8, i8* %59, i64 %51
  store i8 0, i8* %60, align 1, !tbaa !13
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %61 = load i64, i64* %31, align 8, !tbaa !5, !noalias !18
  %62 = load i8*, i8** %30, align 8, !tbaa !17, !noalias !18
  %63 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, i8* noundef %62, i64 noundef %61)
          to label %64 unwind label %478

64:                                               ; preds = %57
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2
  %66 = bitcast %"class.std::__cxx11::basic_string"* %8 to %union.anon**
  store %union.anon* %65, %union.anon** %66, align 8, !tbaa !12, !alias.scope !18
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %63, i64 0, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8, !tbaa !17
  %69 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %63, i64 0, i32 2
  %70 = bitcast %union.anon* %69 to i8*
  %71 = icmp eq i8* %68, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = bitcast %union.anon* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %73, i8* noundef nonnull align 8 dereferenceable(16) %70, i64 16, i1 false) #10
  br label %79

74:                                               ; preds = %64
  %75 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  store i8* %68, i8** %75, align 8, !tbaa !17, !alias.scope !18
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %63, i64 0, i32 2, i32 0
  %77 = load i64, i64* %76, align 8, !tbaa !13
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2, i32 0
  store i64 %77, i64* %78, align 8, !tbaa !13, !alias.scope !18
  br label %79

79:                                               ; preds = %72, %74
  %80 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %63, i64 0, i32 1
  %81 = load i64, i64* %80, align 8, !tbaa !5
  %82 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 1
  store i64 %81, i64* %82, align 8, !tbaa !5, !alias.scope !18
  %83 = bitcast %"class.std::__cxx11::basic_string"* %63 to %union.anon**
  store %union.anon* %69, %union.anon** %83, align 8, !tbaa !17
  store i64 0, i64* %80, align 8, !tbaa !5
  store i8 0, i8* %70, align 8, !tbaa !13
  %84 = bitcast %"class.std::__cxx11::basic_string"* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %84) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %85 = load i64, i64* %17, align 8, !tbaa !5, !noalias !21
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 2
  %87 = bitcast %"class.std::__cxx11::basic_string"* %10 to %union.anon**
  store %union.anon* %86, %union.anon** %87, align 8, !tbaa !12, !alias.scope !21
  %88 = load i8*, i8** %46, align 8, !tbaa !17, !noalias !21
  %89 = icmp ugt i64 %85, %39
  %90 = select i1 %89, i64 %39, i64 %85
  %91 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %91) #10, !noalias !21
  store i64 %90, i64* %4, align 8, !tbaa !24, !noalias !21
  %92 = icmp ugt i64 %90, 15
  br i1 %92, label %93, label %99

93:                                               ; preds = %79
  %94 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10, i64* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %95 unwind label %480

95:                                               ; preds = %93
  %96 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 0, i32 0
  store i8* %94, i8** %96, align 8, !tbaa !17, !alias.scope !21
  %97 = load i64, i64* %4, align 8, !tbaa !24, !noalias !21
  %98 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 2, i32 0
  store i64 %97, i64* %98, align 8, !tbaa !13, !alias.scope !21
  br label %99

99:                                               ; preds = %95, %79
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8, !tbaa !17, !alias.scope !21
  switch i64 %90, label %104 [
    i64 1, label %102
    i64 0, label %105
  ]

102:                                              ; preds = %99
  %103 = load i8, i8* %88, align 1, !tbaa !13
  store i8 %103, i8* %101, align 1, !tbaa !13
  br label %105

104:                                              ; preds = %99
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %101, i8* align 1 %88, i64 %90, i1 false) #10
  br label %105

105:                                              ; preds = %99, %102, %104
  %106 = load i64, i64* %4, align 8, !tbaa !24, !noalias !21
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 1
  store i64 %106, i64* %107, align 8, !tbaa !5, !alias.scope !21
  %108 = load i8*, i8** %100, align 8, !tbaa !17, !alias.scope !21
  %109 = getelementptr inbounds i8, i8* %108, i64 %106
  store i8 0, i8* %109, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %91) #10, !noalias !21
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %110 = load i64, i64* %82, align 8, !tbaa !5, !noalias !25
  %111 = load i64, i64* %107, align 8, !tbaa !5, !noalias !25
  %112 = add i64 %111, %110
  %113 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8, !tbaa !17, !noalias !25
  %115 = bitcast %union.anon* %65 to i8*
  %116 = icmp eq i8* %114, %115
  %117 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2, i32 0
  %118 = load i64, i64* %117, align 8, !noalias !25
  %119 = select i1 %116, i64 15, i64 %118
  %120 = icmp ugt i64 %112, %119
  br i1 %120, label %121, label %146

121:                                              ; preds = %105
  %122 = load i8*, i8** %100, align 8, !tbaa !17, !noalias !25
  %123 = bitcast %union.anon* %86 to i8*
  %124 = icmp eq i8* %122, %123
  %125 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %10, i64 0, i32 2, i32 0
  %126 = load i64, i64* %125, align 8, !noalias !25
  %127 = select i1 %124, i64 15, i64 %126
  %128 = icmp ugt i64 %112, %127
  br i1 %128, label %146, label %129

129:                                              ; preds = %121
  %130 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, i8* noundef %114, i64 noundef %110)
          to label %131 unwind label %482

131:                                              ; preds = %129
  %132 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2
  %133 = bitcast %"class.std::__cxx11::basic_string"* %7 to %union.anon**
  store %union.anon* %132, %union.anon** %133, align 8, !tbaa !12, !alias.scope !25
  %134 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %130, i64 0, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8, !tbaa !17
  %136 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %130, i64 0, i32 2
  %137 = bitcast %union.anon* %136 to i8*
  %138 = icmp eq i8* %135, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = bitcast %union.anon* %132 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %140, i8* noundef nonnull align 8 dereferenceable(16) %137, i64 16, i1 false) #10
  br label %164

141:                                              ; preds = %131
  %142 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  store i8* %135, i8** %142, align 8, !tbaa !17, !alias.scope !25
  %143 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %130, i64 0, i32 2, i32 0
  %144 = load i64, i64* %143, align 8, !tbaa !13
  %145 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2, i32 0
  store i64 %144, i64* %145, align 8, !tbaa !13, !alias.scope !25
  br label %164

146:                                              ; preds = %121, %105
  %147 = load i8*, i8** %100, align 8, !tbaa !17, !noalias !25
  %148 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef %147, i64 noundef %111)
          to label %149 unwind label %482

149:                                              ; preds = %146
  %150 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2
  %151 = bitcast %"class.std::__cxx11::basic_string"* %7 to %union.anon**
  store %union.anon* %150, %union.anon** %151, align 8, !tbaa !12, !alias.scope !25
  %152 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %148, i64 0, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8, !tbaa !17
  %154 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %148, i64 0, i32 2
  %155 = bitcast %union.anon* %154 to i8*
  %156 = icmp eq i8* %153, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  %158 = bitcast %union.anon* %150 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %158, i8* noundef nonnull align 8 dereferenceable(16) %155, i64 16, i1 false) #10
  br label %164

159:                                              ; preds = %149
  %160 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  store i8* %153, i8** %160, align 8, !tbaa !17, !alias.scope !25
  %161 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %148, i64 0, i32 2, i32 0
  %162 = load i64, i64* %161, align 8, !tbaa !13
  %163 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2, i32 0
  store i64 %162, i64* %163, align 8, !tbaa !13, !alias.scope !25
  br label %164

164:                                              ; preds = %157, %159, %139, %141
  %165 = phi %"class.std::__cxx11::basic_string"* [ %130, %141 ], [ %130, %139 ], [ %148, %159 ], [ %148, %157 ]
  %166 = phi %union.anon* [ %136, %141 ], [ %136, %139 ], [ %154, %159 ], [ %154, %157 ]
  %167 = phi i8* [ %137, %141 ], [ %137, %139 ], [ %155, %159 ], [ %155, %157 ]
  %168 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %165, i64 0, i32 1
  %169 = load i64, i64* %168, align 8, !tbaa !5
  %170 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 1
  store i64 %169, i64* %170, align 8, !tbaa !5, !alias.scope !25
  %171 = bitcast %"class.std::__cxx11::basic_string"* %165 to %union.anon**
  store %union.anon* %166, %union.anon** %171, align 8, !tbaa !17
  store i64 0, i64* %168, align 8, !tbaa !5
  store i8 0, i8* %167, align 8, !tbaa !13
  %172 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8, !tbaa !17
  %174 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2
  %175 = bitcast %union.anon* %174 to i8*
  %176 = icmp eq i8* %173, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %164
  %178 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 1
  %179 = load i64, i64* %178, align 8, !tbaa !5
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %177
  %182 = load i8*, i8** %30, align 8, !tbaa !17
  %183 = icmp eq i64 %179, 1
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = load i8, i8* %173, align 1, !tbaa !13
  store i8 %185, i8* %182, align 1, !tbaa !13
  br label %187

186:                                              ; preds = %181
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %182, i8* align 1 %173, i64 %179, i1 false) #10
  br label %187

187:                                              ; preds = %186, %184, %177
  %188 = load i64, i64* %178, align 8, !tbaa !5
  store i64 %188, i64* %31, align 8, !tbaa !5
  %189 = load i8*, i8** %30, align 8, !tbaa !17
  %190 = getelementptr inbounds i8, i8* %189, i64 %188
  store i8 0, i8* %190, align 1, !tbaa !13
  br label %207

191:                                              ; preds = %164
  %192 = bitcast %union.anon* %28 to i8*
  %193 = load i8*, i8** %30, align 8, !tbaa !17
  %194 = icmp eq i8* %193, %192
  %195 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  %196 = load i64, i64* %195, align 8
  store i8* %173, i8** %30, align 8, !tbaa !17
  %197 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 1
  %198 = load i64, i64* %197, align 8, !tbaa !5
  store i64 %198, i64* %31, align 8, !tbaa !5
  %199 = getelementptr inbounds %union.anon, %union.anon* %174, i64 0, i32 0
  %200 = load i64, i64* %199, align 8, !tbaa !13
  store i64 %200, i64* %195, align 8, !tbaa !13
  %201 = icmp eq i8* %193, null
  %202 = or i1 %194, %201
  br i1 %202, label %205, label %203

203:                                              ; preds = %191
  store i8* %193, i8** %172, align 8, !tbaa !17
  %204 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 2, i32 0
  store i64 %196, i64* %204, align 8, !tbaa !13
  br label %207

205:                                              ; preds = %191
  %206 = bitcast %"class.std::__cxx11::basic_string"* %7 to %union.anon**
  store %union.anon* %174, %union.anon** %206, align 8, !tbaa !17
  br label %207

207:                                              ; preds = %187, %203, %205
  %208 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %7, i64 0, i32 1
  store i64 0, i64* %208, align 8, !tbaa !5
  %209 = load i8*, i8** %172, align 8, !tbaa !17
  store i8 0, i8* %209, align 1, !tbaa !13
  %210 = load i8*, i8** %172, align 8, !tbaa !17
  %211 = icmp eq i8* %210, %175
  br i1 %211, label %213, label %212

212:                                              ; preds = %207
  call void @_ZdlPv(i8* noundef %210) #10
  br label %213

213:                                              ; preds = %207, %212
  %214 = load i8*, i8** %100, align 8, !tbaa !17
  %215 = bitcast %union.anon* %86 to i8*
  %216 = icmp eq i8* %214, %215
  br i1 %216, label %218, label %217

217:                                              ; preds = %213
  call void @_ZdlPv(i8* noundef %214) #10
  br label %218

218:                                              ; preds = %213, %217
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %84) #10
  %219 = load i8*, i8** %113, align 8, !tbaa !17
  %220 = icmp eq i8* %219, %115
  br i1 %220, label %222, label %221

221:                                              ; preds = %218
  call void @_ZdlPv(i8* noundef %219) #10
  br label %222

222:                                              ; preds = %218, %221
  %223 = load i8*, i8** %52, align 8, !tbaa !17
  %224 = bitcast %union.anon* %44 to i8*
  %225 = icmp eq i8* %223, %224
  br i1 %225, label %227, label %226

226:                                              ; preds = %222
  call void @_ZdlPv(i8* noundef %223) #10
  br label %227

227:                                              ; preds = %222, %226
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %36) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %35) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %34) #10
  %228 = bitcast %"class.std::__cxx11::basic_string"* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %228) #10
  %229 = bitcast %"class.std::__cxx11::basic_string"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %229) #10
  %230 = bitcast %"class.std::__cxx11::basic_string"* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %230) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %231 = load i64, i64* %17, align 8, !tbaa !5, !noalias !28
  %232 = icmp ult i64 %231, 2
  br i1 %232, label %233, label %235

233:                                              ; preds = %227
  invoke void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 noundef 2, i64 noundef %231) #11
          to label %234 unwind label %503

234:                                              ; preds = %233
  unreachable

235:                                              ; preds = %227
  %236 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %13, i64 0, i32 2
  %237 = bitcast %"class.std::__cxx11::basic_string"* %13 to %union.anon**
  store %union.anon* %236, %union.anon** %237, align 8, !tbaa !12, !alias.scope !28
  %238 = load i8*, i8** %46, align 8, !tbaa !17, !noalias !28
  %239 = getelementptr inbounds i8, i8* %238, i64 2
  %240 = add i64 %231, -2
  %241 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %241) #10, !noalias !28
  store i64 %240, i64* %3, align 8, !tbaa !24, !noalias !28
  %242 = icmp ugt i64 %240, 15
  br i1 %242, label %243, label %249

243:                                              ; preds = %235
  %244 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13, i64* noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %245 unwind label %503

245:                                              ; preds = %243
  %246 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %13, i64 0, i32 0, i32 0
  store i8* %244, i8** %246, align 8, !tbaa !17, !alias.scope !28
  %247 = load i64, i64* %3, align 8, !tbaa !24, !noalias !28
  %248 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %13, i64 0, i32 2, i32 0
  store i64 %247, i64* %248, align 8, !tbaa !13, !alias.scope !28
  br label %249

249:                                              ; preds = %245, %235
  %250 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %13, i64 0, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8, !tbaa !17, !alias.scope !28
  switch i64 %231, label %254 [
    i64 3, label %252
    i64 2, label %255
  ]

252:                                              ; preds = %249
  %253 = load i8, i8* %239, align 1, !tbaa !13
  store i8 %253, i8* %251, align 1, !tbaa !13
  br label %255

254:                                              ; preds = %249
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %251, i8* nonnull align 1 %239, i64 %240, i1 false) #10
  br label %255

255:                                              ; preds = %249, %252, %254
  %256 = load i64, i64* %3, align 8, !tbaa !24, !noalias !28
  %257 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %13, i64 0, i32 1
  store i64 %256, i64* %257, align 8, !tbaa !5, !alias.scope !28
  %258 = load i8*, i8** %250, align 8, !tbaa !17, !alias.scope !28
  %259 = getelementptr inbounds i8, i8* %258, i64 %256
  store i8 0, i8* %259, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %241) #10, !noalias !28
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %260 = load i64, i64* %25, align 8, !tbaa !5, !noalias !31
  %261 = load i8*, i8** %24, align 8, !tbaa !17, !noalias !31
  %262 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, i8* noundef %261, i64 noundef %260)
          to label %263 unwind label %505

263:                                              ; preds = %255
  %264 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 2
  %265 = bitcast %"class.std::__cxx11::basic_string"* %12 to %union.anon**
  store %union.anon* %264, %union.anon** %265, align 8, !tbaa !12, !alias.scope !31
  %266 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %262, i64 0, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8, !tbaa !17
  %268 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %262, i64 0, i32 2
  %269 = bitcast %union.anon* %268 to i8*
  %270 = icmp eq i8* %267, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %263
  %272 = bitcast %union.anon* %264 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %272, i8* noundef nonnull align 8 dereferenceable(16) %269, i64 16, i1 false) #10
  br label %278

273:                                              ; preds = %263
  %274 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 0, i32 0
  store i8* %267, i8** %274, align 8, !tbaa !17, !alias.scope !31
  %275 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %262, i64 0, i32 2, i32 0
  %276 = load i64, i64* %275, align 8, !tbaa !13
  %277 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 2, i32 0
  store i64 %276, i64* %277, align 8, !tbaa !13, !alias.scope !31
  br label %278

278:                                              ; preds = %271, %273
  %279 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %262, i64 0, i32 1
  %280 = load i64, i64* %279, align 8, !tbaa !5
  %281 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 1
  store i64 %280, i64* %281, align 8, !tbaa !5, !alias.scope !31
  %282 = bitcast %"class.std::__cxx11::basic_string"* %262 to %union.anon**
  store %union.anon* %268, %union.anon** %282, align 8, !tbaa !17
  store i64 0, i64* %279, align 8, !tbaa !5
  store i8 0, i8* %269, align 8, !tbaa !13
  %283 = bitcast %"class.std::__cxx11::basic_string"* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %283) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %284 = load i64, i64* %17, align 8, !tbaa !5, !noalias !34
  %285 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 2
  %286 = bitcast %"class.std::__cxx11::basic_string"* %14 to %union.anon**
  store %union.anon* %285, %union.anon** %286, align 8, !tbaa !12, !alias.scope !34
  %287 = load i8*, i8** %46, align 8, !tbaa !17, !noalias !34
  %288 = icmp ult i64 %284, 2
  %289 = select i1 %288, i64 %284, i64 2
  %290 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 0, i32 0
  %291 = bitcast %union.anon* %285 to i8*
  switch i64 %289, label %294 [
    i64 1, label %292
    i64 0, label %295
  ]

292:                                              ; preds = %278
  %293 = load i8, i8* %287, align 1, !tbaa !13
  store i8 %293, i8* %291, align 8, !tbaa !13
  br label %295

294:                                              ; preds = %278
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %291, i8* align 1 %287, i64 %289, i1 false) #10
  br label %295

295:                                              ; preds = %278, %292, %294
  %296 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 1
  store i64 %289, i64* %296, align 8, !tbaa !5, !alias.scope !34
  %297 = load i8*, i8** %290, align 8, !tbaa !17, !alias.scope !34
  %298 = getelementptr inbounds i8, i8* %297, i64 %289
  store i8 0, i8* %298, align 1, !tbaa !13
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %299 = load i64, i64* %281, align 8, !tbaa !5, !noalias !37
  %300 = load i64, i64* %296, align 8, !tbaa !5, !noalias !37
  %301 = add i64 %300, %299
  %302 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 0, i32 0
  %303 = load i8*, i8** %302, align 8, !tbaa !17, !noalias !37
  %304 = bitcast %union.anon* %264 to i8*
  %305 = icmp eq i8* %303, %304
  %306 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %12, i64 0, i32 2, i32 0
  %307 = load i64, i64* %306, align 8, !noalias !37
  %308 = select i1 %305, i64 15, i64 %307
  %309 = icmp ugt i64 %301, %308
  br i1 %309, label %310, label %335

310:                                              ; preds = %295
  %311 = load i8*, i8** %290, align 8, !tbaa !17, !noalias !37
  %312 = bitcast %union.anon* %285 to i8*
  %313 = icmp eq i8* %311, %312
  %314 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %14, i64 0, i32 2, i32 0
  %315 = load i64, i64* %314, align 8, !noalias !37
  %316 = select i1 %313, i64 15, i64 %315
  %317 = icmp ugt i64 %301, %316
  br i1 %317, label %335, label %318

318:                                              ; preds = %310
  %319 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, i8* noundef %303, i64 noundef %299)
          to label %320 unwind label %507

320:                                              ; preds = %318
  %321 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2
  %322 = bitcast %"class.std::__cxx11::basic_string"* %11 to %union.anon**
  store %union.anon* %321, %union.anon** %322, align 8, !tbaa !12, !alias.scope !37
  %323 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %319, i64 0, i32 0, i32 0
  %324 = load i8*, i8** %323, align 8, !tbaa !17
  %325 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %319, i64 0, i32 2
  %326 = bitcast %union.anon* %325 to i8*
  %327 = icmp eq i8* %324, %326
  br i1 %327, label %328, label %330

328:                                              ; preds = %320
  %329 = bitcast %union.anon* %321 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %329, i8* noundef nonnull align 8 dereferenceable(16) %326, i64 16, i1 false) #10
  br label %353

330:                                              ; preds = %320
  %331 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 0, i32 0
  store i8* %324, i8** %331, align 8, !tbaa !17, !alias.scope !37
  %332 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %319, i64 0, i32 2, i32 0
  %333 = load i64, i64* %332, align 8, !tbaa !13
  %334 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2, i32 0
  store i64 %333, i64* %334, align 8, !tbaa !13, !alias.scope !37
  br label %353

335:                                              ; preds = %310, %295
  %336 = load i8*, i8** %290, align 8, !tbaa !17, !noalias !37
  %337 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12, i8* noundef %336, i64 noundef %300)
          to label %338 unwind label %507

338:                                              ; preds = %335
  %339 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2
  %340 = bitcast %"class.std::__cxx11::basic_string"* %11 to %union.anon**
  store %union.anon* %339, %union.anon** %340, align 8, !tbaa !12, !alias.scope !37
  %341 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %337, i64 0, i32 0, i32 0
  %342 = load i8*, i8** %341, align 8, !tbaa !17
  %343 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %337, i64 0, i32 2
  %344 = bitcast %union.anon* %343 to i8*
  %345 = icmp eq i8* %342, %344
  br i1 %345, label %346, label %348

346:                                              ; preds = %338
  %347 = bitcast %union.anon* %339 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %347, i8* noundef nonnull align 8 dereferenceable(16) %344, i64 16, i1 false) #10
  br label %353

348:                                              ; preds = %338
  %349 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 0, i32 0
  store i8* %342, i8** %349, align 8, !tbaa !17, !alias.scope !37
  %350 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %337, i64 0, i32 2, i32 0
  %351 = load i64, i64* %350, align 8, !tbaa !13
  %352 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2, i32 0
  store i64 %351, i64* %352, align 8, !tbaa !13, !alias.scope !37
  br label %353

353:                                              ; preds = %346, %348, %328, %330
  %354 = phi %"class.std::__cxx11::basic_string"* [ %319, %330 ], [ %319, %328 ], [ %337, %348 ], [ %337, %346 ]
  %355 = phi %union.anon* [ %325, %330 ], [ %325, %328 ], [ %343, %348 ], [ %343, %346 ]
  %356 = phi i8* [ %326, %330 ], [ %326, %328 ], [ %344, %348 ], [ %344, %346 ]
  %357 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %354, i64 0, i32 1
  %358 = load i64, i64* %357, align 8, !tbaa !5
  %359 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 1
  store i64 %358, i64* %359, align 8, !tbaa !5, !alias.scope !37
  %360 = bitcast %"class.std::__cxx11::basic_string"* %354 to %union.anon**
  store %union.anon* %355, %union.anon** %360, align 8, !tbaa !17
  store i64 0, i64* %357, align 8, !tbaa !5
  store i8 0, i8* %356, align 8, !tbaa !13
  %361 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 0, i32 0
  %362 = load i8*, i8** %361, align 8, !tbaa !17
  %363 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2
  %364 = bitcast %union.anon* %363 to i8*
  %365 = icmp eq i8* %362, %364
  br i1 %365, label %366, label %380

366:                                              ; preds = %353
  %367 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 1
  %368 = load i64, i64* %367, align 8, !tbaa !5
  %369 = icmp eq i64 %368, 0
  br i1 %369, label %376, label %370

370:                                              ; preds = %366
  %371 = load i8*, i8** %24, align 8, !tbaa !17
  %372 = icmp eq i64 %368, 1
  br i1 %372, label %373, label %375

373:                                              ; preds = %370
  %374 = load i8, i8* %362, align 1, !tbaa !13
  store i8 %374, i8* %371, align 1, !tbaa !13
  br label %376

375:                                              ; preds = %370
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %371, i8* align 1 %362, i64 %368, i1 false) #10
  br label %376

376:                                              ; preds = %375, %373, %366
  %377 = load i64, i64* %367, align 8, !tbaa !5
  store i64 %377, i64* %25, align 8, !tbaa !5
  %378 = load i8*, i8** %24, align 8, !tbaa !17
  %379 = getelementptr inbounds i8, i8* %378, i64 %377
  store i8 0, i8* %379, align 1, !tbaa !13
  br label %396

380:                                              ; preds = %353
  %381 = bitcast %union.anon* %22 to i8*
  %382 = load i8*, i8** %24, align 8, !tbaa !17
  %383 = icmp eq i8* %382, %381
  %384 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2, i32 0
  %385 = load i64, i64* %384, align 8
  store i8* %362, i8** %24, align 8, !tbaa !17
  %386 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 1
  %387 = load i64, i64* %386, align 8, !tbaa !5
  store i64 %387, i64* %25, align 8, !tbaa !5
  %388 = getelementptr inbounds %union.anon, %union.anon* %363, i64 0, i32 0
  %389 = load i64, i64* %388, align 8, !tbaa !13
  store i64 %389, i64* %384, align 8, !tbaa !13
  %390 = icmp eq i8* %382, null
  %391 = or i1 %383, %390
  br i1 %391, label %394, label %392

392:                                              ; preds = %380
  store i8* %382, i8** %361, align 8, !tbaa !17
  %393 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 2, i32 0
  store i64 %385, i64* %393, align 8, !tbaa !13
  br label %396

394:                                              ; preds = %380
  %395 = bitcast %"class.std::__cxx11::basic_string"* %11 to %union.anon**
  store %union.anon* %363, %union.anon** %395, align 8, !tbaa !17
  br label %396

396:                                              ; preds = %376, %392, %394
  %397 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %11, i64 0, i32 1
  store i64 0, i64* %397, align 8, !tbaa !5
  %398 = load i8*, i8** %361, align 8, !tbaa !17
  store i8 0, i8* %398, align 1, !tbaa !13
  %399 = load i8*, i8** %361, align 8, !tbaa !17
  %400 = icmp eq i8* %399, %364
  br i1 %400, label %402, label %401

401:                                              ; preds = %396
  call void @_ZdlPv(i8* noundef %399) #10
  br label %402

402:                                              ; preds = %396, %401
  %403 = load i8*, i8** %290, align 8, !tbaa !17
  %404 = bitcast %union.anon* %285 to i8*
  %405 = icmp eq i8* %403, %404
  br i1 %405, label %407, label %406

406:                                              ; preds = %402
  call void @_ZdlPv(i8* noundef %403) #10
  br label %407

407:                                              ; preds = %402, %406
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %283) #10
  %408 = load i8*, i8** %302, align 8, !tbaa !17
  %409 = icmp eq i8* %408, %304
  br i1 %409, label %411, label %410

410:                                              ; preds = %407
  call void @_ZdlPv(i8* noundef %408) #10
  br label %411

411:                                              ; preds = %407, %410
  %412 = load i8*, i8** %250, align 8, !tbaa !17
  %413 = bitcast %union.anon* %236 to i8*
  %414 = icmp eq i8* %412, %413
  br i1 %414, label %416, label %415

415:                                              ; preds = %411
  call void @_ZdlPv(i8* noundef %412) #10
  br label %416

416:                                              ; preds = %411, %415
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %230) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %229) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %228) #10
  %417 = load i64, i64* %15, align 8, !tbaa !5
  %418 = load i64, i64* %25, align 8, !tbaa !5
  %419 = icmp ugt i64 %417, %418
  %420 = select i1 %419, i64 %418, i64 %417
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %427, label %422

422:                                              ; preds = %416
  %423 = load i8*, i8** %24, align 8, !tbaa !17
  %424 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %425 = load i8*, i8** %424, align 8, !tbaa !17
  %426 = call i32 @memcmp(i8* noundef %425, i8* noundef %423, i64 noundef %420) #10
  br label %427

427:                                              ; preds = %422, %416
  %428 = phi i32 [ %426, %422 ], [ 0, %416 ]
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %437

430:                                              ; preds = %427
  %431 = sub i64 %417, %418
  %432 = icmp sgt i64 %431, -2147483648
  %433 = select i1 %432, i64 %431, i64 -2147483648
  %434 = icmp slt i64 %433, 2147483647
  %435 = select i1 %434, i64 %433, i64 2147483647
  %436 = trunc i64 %435 to i32
  br label %437

437:                                              ; preds = %430, %427
  %438 = phi i32 [ %428, %427 ], [ %436, %430 ]
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %464, label %440

440:                                              ; preds = %437
  %441 = load i64, i64* %31, align 8, !tbaa !5
  %442 = icmp ugt i64 %417, %441
  %443 = select i1 %442, i64 %441, i64 %417
  %444 = icmp eq i64 %443, 0
  br i1 %444, label %450, label %445

445:                                              ; preds = %440
  %446 = load i8*, i8** %30, align 8, !tbaa !17
  %447 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %448 = load i8*, i8** %447, align 8, !tbaa !17
  %449 = call i32 @memcmp(i8* noundef %448, i8* noundef %446, i64 noundef %443) #10
  br label %450

450:                                              ; preds = %445, %440
  %451 = phi i32 [ %449, %445 ], [ 0, %440 ]
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %460

453:                                              ; preds = %450
  %454 = sub i64 %417, %441
  %455 = icmp sgt i64 %454, -2147483648
  %456 = select i1 %455, i64 %454, i64 -2147483648
  %457 = icmp slt i64 %456, 2147483647
  %458 = select i1 %457, i64 %456, i64 2147483647
  %459 = trunc i64 %458 to i32
  br label %460

460:                                              ; preds = %453, %450
  %461 = phi i32 [ %451, %450 ], [ %459, %453 ]
  %462 = icmp eq i32 %461, 0
  %463 = zext i1 %462 to i32
  br label %464

464:                                              ; preds = %460, %437
  %465 = phi i32 [ 1, %437 ], [ %463, %460 ]
  %466 = load i8*, i8** %30, align 8, !tbaa !17
  %467 = bitcast %union.anon* %28 to i8*
  %468 = icmp eq i8* %466, %467
  br i1 %468, label %470, label %469

469:                                              ; preds = %464
  call void @_ZdlPv(i8* noundef %466) #10
  br label %470

470:                                              ; preds = %464, %469
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %27) #10
  %471 = load i8*, i8** %24, align 8, !tbaa !17
  %472 = bitcast %union.anon* %22 to i8*
  %473 = icmp eq i8* %471, %472
  br i1 %473, label %475, label %474

474:                                              ; preds = %470
  call void @_ZdlPv(i8* noundef %471) #10
  br label %475

475:                                              ; preds = %470, %474
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %21) #10
  br label %537

476:                                              ; preds = %41
  %477 = landingpad { i8*, i32 }
          cleanup
  br label %501

478:                                              ; preds = %57
  %479 = landingpad { i8*, i32 }
          cleanup
  br label %495

480:                                              ; preds = %93
  %481 = landingpad { i8*, i32 }
          cleanup
  br label %488

482:                                              ; preds = %146, %129
  %483 = landingpad { i8*, i32 }
          cleanup
  %484 = load i8*, i8** %100, align 8, !tbaa !17
  %485 = bitcast %union.anon* %86 to i8*
  %486 = icmp eq i8* %484, %485
  br i1 %486, label %488, label %487

487:                                              ; preds = %482
  call void @_ZdlPv(i8* noundef %484) #10
  br label %488

488:                                              ; preds = %487, %482, %480
  %489 = phi { i8*, i32 } [ %481, %480 ], [ %483, %482 ], [ %483, %487 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %84) #10
  %490 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  %491 = load i8*, i8** %490, align 8, !tbaa !17
  %492 = bitcast %union.anon* %65 to i8*
  %493 = icmp eq i8* %491, %492
  br i1 %493, label %495, label %494

494:                                              ; preds = %488
  call void @_ZdlPv(i8* noundef %491) #10
  br label %495

495:                                              ; preds = %494, %488, %478
  %496 = phi { i8*, i32 } [ %479, %478 ], [ %489, %488 ], [ %489, %494 ]
  %497 = load i8*, i8** %52, align 8, !tbaa !17
  %498 = bitcast %union.anon* %44 to i8*
  %499 = icmp eq i8* %497, %498
  br i1 %499, label %501, label %500

500:                                              ; preds = %495
  call void @_ZdlPv(i8* noundef %497) #10
  br label %501

501:                                              ; preds = %500, %495, %476
  %502 = phi { i8*, i32 } [ %477, %476 ], [ %496, %495 ], [ %496, %500 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %36) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %35) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %34) #10
  br label %525

503:                                              ; preds = %243, %233
  %504 = landingpad { i8*, i32 }
          cleanup
  br label %523

505:                                              ; preds = %255
  %506 = landingpad { i8*, i32 }
          cleanup
  br label %517

507:                                              ; preds = %335, %318
  %508 = landingpad { i8*, i32 }
          cleanup
  %509 = load i8*, i8** %290, align 8, !tbaa !17
  %510 = bitcast %union.anon* %285 to i8*
  %511 = icmp eq i8* %509, %510
  br i1 %511, label %513, label %512

512:                                              ; preds = %507
  call void @_ZdlPv(i8* noundef %509) #10
  br label %513

513:                                              ; preds = %512, %507
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %283) #10
  %514 = load i8*, i8** %302, align 8, !tbaa !17
  %515 = icmp eq i8* %514, %304
  br i1 %515, label %517, label %516

516:                                              ; preds = %513
  call void @_ZdlPv(i8* noundef %514) #10
  br label %517

517:                                              ; preds = %516, %513, %505
  %518 = phi { i8*, i32 } [ %506, %505 ], [ %508, %513 ], [ %508, %516 ]
  %519 = load i8*, i8** %250, align 8, !tbaa !17
  %520 = bitcast %union.anon* %236 to i8*
  %521 = icmp eq i8* %519, %520
  br i1 %521, label %523, label %522

522:                                              ; preds = %517
  call void @_ZdlPv(i8* noundef %519) #10
  br label %523

523:                                              ; preds = %522, %517, %503
  %524 = phi { i8*, i32 } [ %504, %503 ], [ %518, %517 ], [ %518, %522 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %230) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %229) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %228) #10
  br label %525

525:                                              ; preds = %523, %501
  %526 = phi { i8*, i32 } [ %524, %523 ], [ %502, %501 ]
  %527 = load i8*, i8** %30, align 8, !tbaa !17
  %528 = bitcast %union.anon* %28 to i8*
  %529 = icmp eq i8* %527, %528
  br i1 %529, label %531, label %530

530:                                              ; preds = %525
  call void @_ZdlPv(i8* noundef %527) #10
  br label %531

531:                                              ; preds = %530, %525
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %27) #10
  %532 = load i8*, i8** %24, align 8, !tbaa !17
  %533 = bitcast %union.anon* %22 to i8*
  %534 = icmp eq i8* %532, %533
  br i1 %534, label %536, label %535

535:                                              ; preds = %531
  call void @_ZdlPv(i8* noundef %532) #10
  br label %536

536:                                              ; preds = %535, %531
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %21) #10
  resume { i8*, i32 } %526

537:                                              ; preds = %2, %475
  %538 = phi i32 [ %465, %475 ], [ 0, %2 ]
  ret i32 %538
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
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #10
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

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
attributes #10 = { nounwind }
attributes #11 = { noreturn }

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
