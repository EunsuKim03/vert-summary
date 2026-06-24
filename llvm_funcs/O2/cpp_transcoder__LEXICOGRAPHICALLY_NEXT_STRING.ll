; ModuleID = 'benchmark/cpp_transcoder/LEXICOGRAPHICALLY_NEXT_STRING/LEXICOGRAPHICALLY_NEXT_STRING_processed.cpp'
source_filename = "benchmark/cpp_transcoder/LEXICOGRAPHICALLY_NEXT_STRING/LEXICOGRAPHICALLY_NEXT_STRING_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LEXICOGRAPHICALLY_NEXT_STRING_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* noundef nonnull %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = tail call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !5
  %10 = bitcast %union.anon* %8 to i8*
  store i8 97, i8* %10, align 8, !tbaa !10
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 1, i64* %11, align 8, !tbaa !11
  %12 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 0, i8* %12, align 1, !tbaa !10
  br label %129

13:                                               ; preds = %57, %62
  resume { i8*, i32 } %58

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %16 = load i64, i64* %15, align 8, !tbaa !11
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8, !tbaa !14
  br label %20

20:                                               ; preds = %20, %14
  %21 = phi i32 [ %17, %14 ], [ %22, %20 ]
  %22 = add i32 %21, -1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  %25 = load i8, i8* %24, align 1, !tbaa !10
  %26 = icmp eq i8 %25, 122
  %27 = icmp sgt i32 %22, -1
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %20, label %29, !llvm.loop !15

29:                                               ; preds = %20
  %30 = icmp eq i32 %21, 0
  br i1 %30, label %31, label %108

31:                                               ; preds = %29
  %32 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %32) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %34 = bitcast %"class.std::__cxx11::basic_string"* %4 to %union.anon**
  store %union.anon* %33, %union.anon** %34, align 8, !tbaa !5, !alias.scope !17
  %35 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %35) #8, !noalias !17
  store i64 %16, i64* %3, align 8, !tbaa !20, !noalias !17
  %36 = icmp ugt i64 %16, 15
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = bitcast %union.anon* %33 to i8*
  br label %44

39:                                               ; preds = %31
  %40 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i64* noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  store i8* %40, i8** %41, align 8, !tbaa !14, !alias.scope !17
  %42 = load i64, i64* %3, align 8, !tbaa !20, !noalias !17
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  store i64 %42, i64* %43, align 8, !tbaa !10, !alias.scope !17
  br label %44

44:                                               ; preds = %39, %37
  %45 = phi i8* [ %38, %37 ], [ %40, %39 ]
  switch i64 %16, label %48 [
    i64 1, label %46
    i64 0, label %49
  ]

46:                                               ; preds = %44
  %47 = load i8, i8* %19, align 1, !tbaa !10
  store i8 %47, i8* %45, align 1, !tbaa !10
  br label %49

48:                                               ; preds = %44
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %45, i8* nonnull align 1 %19, i64 %16, i1 false) #8
  br label %49

49:                                               ; preds = %48, %46, %44
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %51 = load i64, i64* %3, align 8, !tbaa !20, !noalias !17
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  store i64 %51, i64* %52, align 8, !tbaa !11, !alias.scope !17
  %53 = load i8*, i8** %50, align 8, !tbaa !14, !alias.scope !17
  %54 = getelementptr inbounds i8, i8* %53, i64 %51
  store i8 0, i8* %54, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #8, !noalias !17
  %55 = load i64, i64* %52, align 8, !tbaa !11, !alias.scope !17
  %56 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %55, i64 noundef 0, i64 noundef 1, i8 noundef signext 97)
          to label %63 unwind label %57

57:                                               ; preds = %49
  %58 = landingpad { i8*, i32 }
          cleanup
  %59 = load i8*, i8** %50, align 8, !tbaa !14, !alias.scope !17
  %60 = bitcast %union.anon* %33 to i8*
  %61 = icmp eq i8* %59, %60
  br i1 %61, label %13, label %62

62:                                               ; preds = %57
  call void @_ZdlPv(i8* noundef %59) #8
  br label %13

63:                                               ; preds = %49
  %64 = load i8*, i8** %50, align 8, !tbaa !14
  %65 = bitcast %union.anon* %33 to i8*
  %66 = icmp eq i8* %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %63
  %68 = icmp eq %"class.std::__cxx11::basic_string"* %4, %1
  br i1 %68, label %102, label %69, !prof !21

69:                                               ; preds = %67
  %70 = load i64, i64* %52, align 8, !tbaa !11
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %18, align 8, !tbaa !14
  %74 = icmp eq i64 %70, 1
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i8, i8* %65, align 8, !tbaa !10
  store i8 %76, i8* %73, align 1, !tbaa !10
  br label %78

77:                                               ; preds = %72
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %73, i8* nonnull align 8 %65, i64 %70, i1 false) #8
  br label %78

78:                                               ; preds = %77, %75, %69
  %79 = load i64, i64* %52, align 8, !tbaa !11
  store i64 %79, i64* %15, align 8, !tbaa !11
  %80 = load i8*, i8** %18, align 8, !tbaa !14
  %81 = getelementptr inbounds i8, i8* %80, i64 %79
  store i8 0, i8* %81, align 1, !tbaa !10
  %82 = load i8*, i8** %50, align 8, !tbaa !14
  br label %102

83:                                               ; preds = %63
  %84 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2
  %85 = bitcast %union.anon* %84 to i8*
  %86 = load i8*, i8** %18, align 8, !tbaa !14
  %87 = icmp eq i8* %86, %85
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  store i8* %64, i8** %18, align 8, !tbaa !14
  %89 = bitcast i64* %52 to <2 x i64>*
  %90 = load <2 x i64>, <2 x i64>* %89, align 8, !tbaa !10
  %91 = bitcast i64* %15 to <2 x i64>*
  store <2 x i64> %90, <2 x i64>* %91, align 8, !tbaa !10
  br label %101

92:                                               ; preds = %83
  %93 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2, i32 0
  %94 = load i64, i64* %93, align 8, !tbaa !10
  store i8* %64, i8** %18, align 8, !tbaa !14
  %95 = bitcast i64* %52 to <2 x i64>*
  %96 = load <2 x i64>, <2 x i64>* %95, align 8, !tbaa !10
  %97 = bitcast i64* %15 to <2 x i64>*
  store <2 x i64> %96, <2 x i64>* %97, align 8, !tbaa !10
  %98 = icmp eq i8* %86, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %92
  store i8* %86, i8** %50, align 8, !tbaa !14
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  store i64 %94, i64* %100, align 8, !tbaa !10
  br label %102

101:                                              ; preds = %92, %88
  store %union.anon* %33, %union.anon** %34, align 8, !tbaa !14
  br label %102

102:                                              ; preds = %67, %78, %99, %101
  %103 = phi i8* [ %86, %99 ], [ %65, %101 ], [ %65, %67 ], [ %82, %78 ]
  store i64 0, i64* %52, align 8, !tbaa !11
  store i8 0, i8* %103, align 1, !tbaa !10
  %104 = load i8*, i8** %50, align 8, !tbaa !14
  %105 = icmp eq i8* %104, %65
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  call void @_ZdlPv(i8* noundef %104) #8
  br label %107

107:                                              ; preds = %102, %106
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %32) #8
  br label %111

108:                                              ; preds = %29
  %109 = getelementptr inbounds i8, i8* %19, i64 %23
  %110 = add i8 %25, 1
  store i8 %110, i8* %109, align 1, !tbaa !10
  br label %111

111:                                              ; preds = %108, %107
  %112 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %113 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %112, %union.anon** %113, align 8, !tbaa !5
  %114 = load i8*, i8** %18, align 8, !tbaa !14
  %115 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2
  %116 = bitcast %union.anon* %115 to i8*
  %117 = icmp eq i8* %114, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = bitcast %union.anon* %112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %119, i8* noundef nonnull align 8 dereferenceable(16) %116, i64 16, i1 false) #8
  br label %125

120:                                              ; preds = %111
  %121 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  store i8* %114, i8** %121, align 8, !tbaa !14
  %122 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2, i32 0
  %123 = load i64, i64* %122, align 8, !tbaa !10
  %124 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %123, i64* %124, align 8, !tbaa !10
  br label %125

125:                                              ; preds = %118, %120
  %126 = load i64, i64* %15, align 8, !tbaa !11
  %127 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %126, i64* %127, align 8, !tbaa !11
  %128 = bitcast %"class.std::__cxx11::basic_string"* %1 to %union.anon**
  store %union.anon* %115, %union.anon** %128, align 8, !tbaa !14
  store i64 0, i64* %15, align 8, !tbaa !11
  store i8 0, i8* %116, align 8, !tbaa !10
  br label %129

129:                                              ; preds = %125, %7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef) local_unnamed_addr #1

declare noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64* noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LEXICOGRAPHICALLY_NEXT_STRING_processed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #8 = { nounwind }

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
!10 = !{!8, !8, i64 0}
!11 = !{!12, !13, i64 8}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !6, i64 0, !13, i64 8, !8, i64 16}
!13 = !{!"long", !8, i64 0}
!14 = !{!12, !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_: argument 0"}
!19 = distinct !{!19, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_"}
!20 = !{!13, !13, i64 0}
!21 = !{!"branch_weights", i32 1, i32 2000}
