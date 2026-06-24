; ModuleID = 'benchmark/cpp_transcoder/PROGRAM_FIND_STRING_START_END_GEEKS/PROGRAM_FIND_STRING_START_END_GEEKS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/PROGRAM_FIND_STRING_START_END_GEEKS/PROGRAM_FIND_STRING_START_END_GEEKS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_PROGRAM_FIND_STRING_START_END_GEEKS_processed.cpp, i8* null }]

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
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !5
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %11 = load i64, i64* %10, align 8, !tbaa !5
  %12 = trunc i64 %11 to i32
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %149, label %14

14:                                               ; preds = %2
  %15 = bitcast %"class.std::__cxx11::basic_string"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #10
  %16 = shl i64 %11, 32
  %17 = ashr exact i64 %16, 32
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %19 = bitcast %"class.std::__cxx11::basic_string"* %5 to %union.anon**
  store %union.anon* %18, %union.anon** %19, align 8, !tbaa !15, !alias.scope !12
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !16, !noalias !12
  %22 = icmp ugt i64 %8, %17
  %23 = select i1 %22, i64 %17, i64 %8
  %24 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #10, !noalias !12
  store i64 %23, i64* %4, align 8, !tbaa !17, !noalias !12
  %25 = icmp ugt i64 %23, 15
  br i1 %25, label %26, label %31

26:                                               ; preds = %14
  %27 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5, i64* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  store i8* %27, i8** %28, align 8, !tbaa !16, !alias.scope !12
  %29 = load i64, i64* %4, align 8, !tbaa !17, !noalias !12
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2, i32 0
  store i64 %29, i64* %30, align 8, !tbaa !18, !alias.scope !12
  br label %31

31:                                               ; preds = %26, %14
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8, !tbaa !16, !alias.scope !12
  switch i64 %23, label %36 [
    i64 1, label %34
    i64 0, label %37
  ]

34:                                               ; preds = %31
  %35 = load i8, i8* %21, align 1, !tbaa !18
  store i8 %35, i8* %33, align 1, !tbaa !18
  br label %37

36:                                               ; preds = %31
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 %21, i64 %23, i1 false) #10
  br label %37

37:                                               ; preds = %31, %34, %36
  %38 = load i64, i64* %4, align 8, !tbaa !17, !noalias !12
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  store i64 %38, i64* %39, align 8, !tbaa !5, !alias.scope !12
  %40 = load i8*, i8** %32, align 8, !tbaa !16, !alias.scope !12
  %41 = getelementptr inbounds i8, i8* %40, i64 %38
  store i8 0, i8* %41, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #10, !noalias !12
  %42 = load i64, i64* %39, align 8, !tbaa !5
  %43 = load i64, i64* %10, align 8, !tbaa !5
  %44 = icmp ugt i64 %42, %43
  %45 = select i1 %44, i64 %43, i64 %42
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %37
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8, !tbaa !16
  %50 = load i8*, i8** %32, align 8, !tbaa !16
  %51 = call i32 @memcmp(i8* noundef %50, i8* noundef %49, i64 noundef %45) #10
  br label %52

52:                                               ; preds = %47, %37
  %53 = phi i32 [ %51, %47 ], [ 0, %37 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = sub i64 %42, %43
  %57 = icmp sgt i64 %56, -2147483648
  %58 = select i1 %57, i64 %56, i64 -2147483648
  %59 = icmp slt i64 %58, 2147483647
  %60 = select i1 %59, i64 %58, i64 2147483647
  %61 = trunc i64 %60 to i32
  br label %62

62:                                               ; preds = %55, %52
  %63 = phi i32 [ %53, %52 ], [ %61, %55 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %125

65:                                               ; preds = %62
  %66 = bitcast %"class.std::__cxx11::basic_string"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %66) #10
  %67 = sub i64 %8, %11
  %68 = shl i64 %67, 32
  %69 = ashr exact i64 %68, 32
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %70 = load i64, i64* %7, align 8, !tbaa !5, !noalias !19
  %71 = icmp ult i64 %70, %69
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  invoke void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 noundef %69, i64 noundef %70) #11
          to label %73 unwind label %142

73:                                               ; preds = %72
  unreachable

74:                                               ; preds = %65
  %75 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %76 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  store %union.anon* %75, %union.anon** %76, align 8, !tbaa !15, !alias.scope !19
  %77 = load i8*, i8** %20, align 8, !tbaa !16, !noalias !19
  %78 = getelementptr inbounds i8, i8* %77, i64 %69
  %79 = sub i64 %70, %69
  %80 = icmp ugt i64 %79, %17
  %81 = select i1 %80, i64 %17, i64 %79
  %82 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %82) #10, !noalias !19
  store i64 %81, i64* %3, align 8, !tbaa !17, !noalias !19
  %83 = icmp ugt i64 %81, 15
  br i1 %83, label %84, label %90

84:                                               ; preds = %74
  %85 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i64* noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %86 unwind label %142

86:                                               ; preds = %84
  %87 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  store i8* %85, i8** %87, align 8, !tbaa !16, !alias.scope !19
  %88 = load i64, i64* %3, align 8, !tbaa !17, !noalias !19
  %89 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  store i64 %88, i64* %89, align 8, !tbaa !18, !alias.scope !19
  br label %90

90:                                               ; preds = %86, %74
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8, !tbaa !16, !alias.scope !19
  switch i64 %81, label %95 [
    i64 1, label %93
    i64 0, label %96
  ]

93:                                               ; preds = %90
  %94 = load i8, i8* %78, align 1, !tbaa !18
  store i8 %94, i8* %92, align 1, !tbaa !18
  br label %96

95:                                               ; preds = %90
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %92, i8* align 1 %78, i64 %81, i1 false) #10
  br label %96

96:                                               ; preds = %90, %93, %95
  %97 = load i64, i64* %3, align 8, !tbaa !17, !noalias !19
  %98 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  store i64 %97, i64* %98, align 8, !tbaa !5, !alias.scope !19
  %99 = load i8*, i8** %91, align 8, !tbaa !16, !alias.scope !19
  %100 = getelementptr inbounds i8, i8* %99, i64 %97
  store i8 0, i8* %100, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %82) #10, !noalias !19
  %101 = load i64, i64* %98, align 8, !tbaa !5
  %102 = load i64, i64* %10, align 8, !tbaa !5
  %103 = icmp ugt i64 %101, %102
  %104 = select i1 %103, i64 %102, i64 %101
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %96
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8, !tbaa !16
  %109 = load i8*, i8** %91, align 8, !tbaa !16
  %110 = call i32 @memcmp(i8* noundef %109, i8* noundef %108, i64 noundef %104) #10
  br label %111

111:                                              ; preds = %106, %96
  %112 = phi i32 [ %110, %106 ], [ 0, %96 ]
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = sub i64 %101, %102
  %116 = icmp sgt i64 %115, -2147483648
  %117 = select i1 %116, i64 %115, i64 -2147483648
  %118 = icmp slt i64 %117, 2147483647
  %119 = select i1 %118, i64 %117, i64 2147483647
  %120 = trunc i64 %119 to i32
  br label %121

121:                                              ; preds = %114, %111
  %122 = phi i32 [ %112, %111 ], [ %120, %114 ]
  %123 = icmp eq i32 %122, 0
  %124 = zext i1 %123 to i32
  br label %125

125:                                              ; preds = %121, %62
  %126 = phi i32 [ 0, %62 ], [ %124, %121 ]
  br i1 %64, label %127, label %136

127:                                              ; preds = %125
  %128 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8, !tbaa !16
  %130 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %131 = bitcast %union.anon* %130 to i8*
  %132 = icmp eq i8* %129, %131
  br i1 %132, label %134, label %133

133:                                              ; preds = %127
  call void @_ZdlPv(i8* noundef %129) #10
  br label %134

134:                                              ; preds = %127, %133
  %135 = bitcast %"class.std::__cxx11::basic_string"* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %135) #10
  br label %136

136:                                              ; preds = %125, %134
  %137 = load i8*, i8** %32, align 8, !tbaa !16
  %138 = bitcast %union.anon* %18 to i8*
  %139 = icmp eq i8* %137, %138
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  call void @_ZdlPv(i8* noundef %137) #10
  br label %141

141:                                              ; preds = %136, %140
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #10
  br label %149

142:                                              ; preds = %84, %72
  %143 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %66) #10
  %144 = load i8*, i8** %32, align 8, !tbaa !16
  %145 = bitcast %union.anon* %18 to i8*
  %146 = icmp eq i8* %144, %145
  br i1 %146, label %148, label %147

147:                                              ; preds = %142
  call void @_ZdlPv(i8* noundef %144) #10
  br label %148

148:                                              ; preds = %142, %147
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #10
  resume { i8*, i32 } %143

149:                                              ; preds = %2, %141
  %150 = phi i32 [ %126, %141 ], [ 0, %2 ]
  ret i32 %150
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef, ...) local_unnamed_addr #6

declare noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64* noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_PROGRAM_FIND_STRING_START_END_GEEKS_processed.cpp() #3 section ".text.startup" {
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
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!14 = distinct !{!14, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!15 = !{!7, !8, i64 0}
!16 = !{!6, !8, i64 0}
!17 = !{!11, !11, i64 0}
!18 = !{!9, !9, i64 0}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!21 = distinct !{!21, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
