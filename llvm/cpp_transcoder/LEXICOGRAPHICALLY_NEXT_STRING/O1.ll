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
  %5 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !5
  %10 = bitcast %union.anon* %8 to i8*
  store i8 97, i8* %10, align 8, !tbaa !10
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 1, i64* %11, align 8, !tbaa !11
  %12 = bitcast %union.anon* %8 to i8*
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 0, i8* %13, align 1, !tbaa !10
  br label %124

14:                                               ; preds = %57, %62
  resume { i8*, i32 } %58

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %17 = load i64, i64* %16, align 8, !tbaa !11
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !14
  br label %21

21:                                               ; preds = %21, %15
  %22 = phi i32 [ %18, %15 ], [ %23, %21 ]
  %23 = add i32 %22, -1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  %26 = load i8, i8* %25, align 1, !tbaa !10
  %27 = icmp eq i8 %26, 122
  %28 = icmp sgt i32 %23, -1
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %21, label %30, !llvm.loop !15

30:                                               ; preds = %21
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %32 = icmp eq i32 %22, 0
  br i1 %32, label %33, label %103

33:                                               ; preds = %30
  %34 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %34) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %36 = bitcast %"class.std::__cxx11::basic_string"* %4 to %union.anon**
  store %union.anon* %35, %union.anon** %36, align 8, !tbaa !5, !alias.scope !18
  %37 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %37) #8, !noalias !18
  store i64 %17, i64* %3, align 8, !tbaa !21, !noalias !18
  %38 = icmp ugt i64 %17, 15
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i64* noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  store i8* %40, i8** %41, align 8, !tbaa !14, !alias.scope !18
  %42 = load i64, i64* %3, align 8, !tbaa !21, !noalias !18
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  store i64 %42, i64* %43, align 8, !tbaa !10, !alias.scope !18
  br label %44

44:                                               ; preds = %39, %33
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8, !tbaa !14, !alias.scope !18
  switch i64 %17, label %49 [
    i64 1, label %47
    i64 0, label %50
  ]

47:                                               ; preds = %44
  %48 = load i8, i8* %20, align 1, !tbaa !10
  store i8 %48, i8* %46, align 1, !tbaa !10
  br label %50

49:                                               ; preds = %44
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %46, i8* align 1 %20, i64 %17, i1 false) #8
  br label %50

50:                                               ; preds = %49, %47, %44
  %51 = load i64, i64* %3, align 8, !tbaa !21, !noalias !18
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  store i64 %51, i64* %52, align 8, !tbaa !11, !alias.scope !18
  %53 = load i8*, i8** %45, align 8, !tbaa !14, !alias.scope !18
  %54 = getelementptr inbounds i8, i8* %53, i64 %51
  store i8 0, i8* %54, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %37) #8, !noalias !18
  %55 = load i64, i64* %52, align 8, !tbaa !11, !alias.scope !18
  %56 = invoke noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %55, i64 noundef 0, i64 noundef 1, i8 noundef signext 97)
          to label %63 unwind label %57

57:                                               ; preds = %50
  %58 = landingpad { i8*, i32 }
          cleanup
  %59 = load i8*, i8** %45, align 8, !tbaa !14, !alias.scope !18
  %60 = bitcast %union.anon* %35 to i8*
  %61 = icmp eq i8* %59, %60
  br i1 %61, label %14, label %62

62:                                               ; preds = %57
  call void @_ZdlPv(i8* noundef %59) #8
  br label %14

63:                                               ; preds = %50
  %64 = load i8*, i8** %45, align 8, !tbaa !14
  %65 = bitcast %union.anon* %35 to i8*
  %66 = icmp eq i8* %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = icmp eq %"class.std::__cxx11::basic_string"* %4, %1
  br i1 %68, label %97, label %69, !prof !22

69:                                               ; preds = %67
  %70 = load i64, i64* %52, align 8, !tbaa !11
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %31, align 8, !tbaa !14
  %74 = icmp eq i64 %70, 1
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i8, i8* %64, align 1, !tbaa !10
  store i8 %76, i8* %73, align 1, !tbaa !10
  br label %78

77:                                               ; preds = %72
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %73, i8* align 1 %64, i64 %70, i1 false) #8
  br label %78

78:                                               ; preds = %77, %75, %69
  %79 = load i64, i64* %52, align 8, !tbaa !11
  store i64 %79, i64* %16, align 8, !tbaa !11
  %80 = load i8*, i8** %31, align 8, !tbaa !14
  %81 = getelementptr inbounds i8, i8* %80, i64 %79
  store i8 0, i8* %81, align 1, !tbaa !10
  br label %97

82:                                               ; preds = %63
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2
  %84 = bitcast %union.anon* %83 to i8*
  %85 = load i8*, i8** %31, align 8, !tbaa !14
  %86 = icmp eq i8* %85, %84
  %87 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2, i32 0
  %88 = load i64, i64* %87, align 8
  store i8* %64, i8** %31, align 8, !tbaa !14
  %89 = load i64, i64* %52, align 8, !tbaa !11
  store i64 %89, i64* %16, align 8, !tbaa !11
  %90 = getelementptr inbounds %union.anon, %union.anon* %35, i64 0, i32 0
  %91 = load i64, i64* %90, align 8, !tbaa !10
  store i64 %91, i64* %87, align 8, !tbaa !10
  %92 = icmp eq i8* %85, null
  %93 = or i1 %86, %92
  br i1 %93, label %96, label %94

94:                                               ; preds = %82
  store i8* %85, i8** %45, align 8, !tbaa !14
  %95 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  store i64 %88, i64* %95, align 8, !tbaa !10
  br label %97

96:                                               ; preds = %82
  store %union.anon* %35, %union.anon** %36, align 8, !tbaa !14
  br label %97

97:                                               ; preds = %67, %78, %94, %96
  store i64 0, i64* %52, align 8, !tbaa !11
  %98 = load i8*, i8** %45, align 8, !tbaa !14
  store i8 0, i8* %98, align 1, !tbaa !10
  %99 = load i8*, i8** %45, align 8, !tbaa !14
  %100 = icmp eq i8* %99, %65
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  call void @_ZdlPv(i8* noundef %99) #8
  br label %102

102:                                              ; preds = %97, %101
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %34) #8
  br label %106

103:                                              ; preds = %30
  %104 = getelementptr inbounds i8, i8* %20, i64 %24
  %105 = add i8 %26, 1
  store i8 %105, i8* %104, align 1, !tbaa !10
  br label %106

106:                                              ; preds = %103, %102
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %108 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %107, %union.anon** %108, align 8, !tbaa !5
  %109 = load i8*, i8** %31, align 8, !tbaa !14
  %110 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2
  %111 = bitcast %union.anon* %110 to i8*
  %112 = icmp eq i8* %109, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = bitcast %union.anon* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %114, i8* noundef nonnull align 8 dereferenceable(16) %111, i64 16, i1 false) #8
  br label %120

115:                                              ; preds = %106
  %116 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  store i8* %109, i8** %116, align 8, !tbaa !14
  %117 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2, i32 0
  %118 = load i64, i64* %117, align 8, !tbaa !10
  %119 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %118, i64* %119, align 8, !tbaa !10
  br label %120

120:                                              ; preds = %113, %115
  %121 = load i64, i64* %16, align 8, !tbaa !11
  %122 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %121, i64* %122, align 8, !tbaa !11
  %123 = bitcast %"class.std::__cxx11::basic_string"* %1 to %union.anon**
  store %union.anon* %110, %union.anon** %123, align 8, !tbaa !14
  store i64 0, i64* %16, align 8, !tbaa !11
  store i8 0, i8* %111, align 8, !tbaa !10
  br label %124

124:                                              ; preds = %120, %7
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
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8
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
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_: argument 0"}
!20 = distinct !{!20, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_"}
!21 = !{!13, !13, i64 0}
!22 = !{!"branch_weights", i32 1, i32 2000}
