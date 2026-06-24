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
  br i1 %13, label %140, label %14

14:                                               ; preds = %2
  %15 = bitcast %"class.std::__cxx11::basic_string"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #11
  %16 = shl i64 %11, 32
  %17 = ashr exact i64 %16, 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %19 = bitcast %"class.std::__cxx11::basic_string"* %5 to %union.anon**
  store %union.anon* %18, %union.anon** %19, align 8, !tbaa !15, !alias.scope !12
  %20 = bitcast %union.anon* %18 to i8*
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8, !tbaa !16, !noalias !12
  %23 = icmp ugt i64 %8, %17
  %24 = select i1 %23, i64 %17, i64 %8
  %25 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #11, !noalias !12
  store i64 %24, i64* %4, align 8, !tbaa !17, !noalias !12
  %26 = icmp ugt i64 %24, 15
  br i1 %26, label %27, label %32

27:                                               ; preds = %14
  %28 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5, i64* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  store i8* %28, i8** %29, align 8, !tbaa !16, !alias.scope !12
  %30 = load i64, i64* %4, align 8, !tbaa !17, !noalias !12
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2, i32 0
  store i64 %30, i64* %31, align 8, !tbaa !18, !alias.scope !12
  br label %32

32:                                               ; preds = %27, %14
  %33 = phi i8* [ %28, %27 ], [ %20, %14 ]
  switch i64 %24, label %36 [
    i64 1, label %34
    i64 0, label %37
  ]

34:                                               ; preds = %32
  %35 = load i8, i8* %22, align 1, !tbaa !18
  store i8 %35, i8* %33, align 1, !tbaa !18
  br label %37

36:                                               ; preds = %32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 %22, i64 %24, i1 false) #11
  br label %37

37:                                               ; preds = %32, %34, %36
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %39 = load i64, i64* %4, align 8, !tbaa !17, !noalias !12
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  store i64 %39, i64* %40, align 8, !tbaa !5, !alias.scope !12
  %41 = load i8*, i8** %38, align 8, !tbaa !16, !alias.scope !12
  %42 = getelementptr inbounds i8, i8* %41, i64 %39
  store i8 0, i8* %42, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #11, !noalias !12
  %43 = load i64, i64* %40, align 8, !tbaa !5
  %44 = load i64, i64* %10, align 8, !tbaa !5
  %45 = icmp ugt i64 %43, %44
  %46 = select i1 %45, i64 %44, i64 %43
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %37
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8, !tbaa !16
  %51 = load i8*, i8** %38, align 8, !tbaa !16
  %52 = call i32 @bcmp(i8* %51, i8* %50, i64 %46)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %128

54:                                               ; preds = %37, %48
  %55 = sub i64 %43, %44
  %56 = icmp sgt i64 %55, -2147483648
  %57 = select i1 %56, i64 %55, i64 -2147483648
  %58 = icmp slt i64 %57, 2147483647
  %59 = select i1 %58, i64 %57, i64 2147483647
  %60 = trunc i64 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %128

62:                                               ; preds = %54
  %63 = bitcast %"class.std::__cxx11::basic_string"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %63) #11
  %64 = sub i64 %8, %11
  %65 = shl i64 %64, 32
  %66 = ashr exact i64 %65, 32
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %67 = load i64, i64* %7, align 8, !tbaa !5, !noalias !19
  %68 = icmp ult i64 %67, %66
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  invoke void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 noundef %66, i64 noundef %67) #12
          to label %70 unwind label %134

70:                                               ; preds = %69
  unreachable

71:                                               ; preds = %62
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2
  %73 = bitcast %"class.std::__cxx11::basic_string"* %6 to %union.anon**
  store %union.anon* %72, %union.anon** %73, align 8, !tbaa !15, !alias.scope !19
  %74 = bitcast %union.anon* %72 to i8*
  %75 = load i8*, i8** %21, align 8, !tbaa !16, !noalias !19
  %76 = getelementptr inbounds i8, i8* %75, i64 %66
  %77 = sub i64 %67, %66
  %78 = icmp ugt i64 %77, %17
  %79 = select i1 %78, i64 %17, i64 %77
  %80 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %80) #11, !noalias !19
  store i64 %79, i64* %3, align 8, !tbaa !17, !noalias !19
  %81 = icmp ugt i64 %79, 15
  br i1 %81, label %82, label %88

82:                                               ; preds = %71
  %83 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i64* noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %84 unwind label %134

84:                                               ; preds = %82
  %85 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  store i8* %83, i8** %85, align 8, !tbaa !16, !alias.scope !19
  %86 = load i64, i64* %3, align 8, !tbaa !17, !noalias !19
  %87 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 2, i32 0
  store i64 %86, i64* %87, align 8, !tbaa !18, !alias.scope !19
  br label %88

88:                                               ; preds = %84, %71
  %89 = phi i8* [ %83, %84 ], [ %74, %71 ]
  switch i64 %79, label %92 [
    i64 1, label %90
    i64 0, label %93
  ]

90:                                               ; preds = %88
  %91 = load i8, i8* %76, align 1, !tbaa !18
  store i8 %91, i8* %89, align 1, !tbaa !18
  br label %93

92:                                               ; preds = %88
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %89, i8* align 1 %76, i64 %79, i1 false) #11
  br label %93

93:                                               ; preds = %92, %90, %88
  %94 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 0, i32 0
  %95 = load i64, i64* %3, align 8, !tbaa !17, !noalias !19
  %96 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %6, i64 0, i32 1
  store i64 %95, i64* %96, align 8, !tbaa !5, !alias.scope !19
  %97 = load i8*, i8** %94, align 8, !tbaa !16, !alias.scope !19
  %98 = getelementptr inbounds i8, i8* %97, i64 %95
  store i8 0, i8* %98, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %80) #11, !noalias !19
  %99 = load i64, i64* %96, align 8, !tbaa !5
  %100 = load i64, i64* %10, align 8, !tbaa !5
  %101 = icmp ugt i64 %99, %100
  %102 = select i1 %101, i64 %100, i64 %99
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %93
  %105 = load i8*, i8** %94, align 8, !tbaa !16
  br label %112

106:                                              ; preds = %93
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8, !tbaa !16
  %109 = load i8*, i8** %94, align 8, !tbaa !16
  %110 = call i32 @memcmp(i8* noundef %109, i8* noundef %108, i64 noundef %102) #11
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %104, %106
  %113 = phi i8* [ %105, %104 ], [ %109, %106 ]
  %114 = sub i64 %99, %100
  %115 = icmp sgt i64 %114, -2147483648
  %116 = select i1 %115, i64 %114, i64 -2147483648
  %117 = icmp slt i64 %116, 2147483647
  %118 = select i1 %117, i64 %116, i64 2147483647
  %119 = trunc i64 %118 to i32
  br label %120

120:                                              ; preds = %106, %112
  %121 = phi i8* [ %109, %106 ], [ %113, %112 ]
  %122 = phi i32 [ %110, %106 ], [ %119, %112 ]
  %123 = icmp eq i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = icmp eq i8* %121, %74
  br i1 %125, label %127, label %126

126:                                              ; preds = %120
  call void @_ZdlPv(i8* noundef %121) #11
  br label %127

127:                                              ; preds = %120, %126
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %63) #11
  br label %128

128:                                              ; preds = %54, %48, %127
  %129 = phi i32 [ %124, %127 ], [ 0, %48 ], [ 0, %54 ]
  %130 = load i8*, i8** %38, align 8, !tbaa !16
  %131 = icmp eq i8* %130, %20
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  call void @_ZdlPv(i8* noundef %130) #11
  br label %133

133:                                              ; preds = %128, %132
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #11
  br label %140

134:                                              ; preds = %82, %69
  %135 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %63) #11
  %136 = load i8*, i8** %38, align 8, !tbaa !16
  %137 = icmp eq i8* %136, %20
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  call void @_ZdlPv(i8* noundef %136) #11
  br label %139

139:                                              ; preds = %134, %138
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #11
  resume { i8*, i32 } %135

140:                                              ; preds = %2, %133
  %141 = phi i32 [ %129, %133 ], [ 0, %2 ]
  ret i32 %141
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
