; ModuleID = 'benchmark/cpp_transcoder/BREAKING_NUMBER_FIRST_PART_INTEGRAL_DIVISION_SECOND_POWER_10/BREAKING_NUMBER_FIRST_PART_INTEGRAL_DIVISION_SECOND_POWER_10_processed.cpp'
source_filename = "benchmark/cpp_transcoder/BREAKING_NUMBER_FIRST_PART_INTEGRAL_DIVISION_SECOND_POWER_10/BREAKING_NUMBER_FIRST_PART_INTEGRAL_DIVISION_SECOND_POWER_10_processed.cpp"
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
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_BREAKING_NUMBER_FIRST_PART_INTEGRAL_DIVISION_SECOND_POWER_10_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !5
  %8 = trunc i64 %7 to i32
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %31, label %10

10:                                               ; preds = %1
  %11 = lshr i32 %8, 1
  %12 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %14 = bitcast %"class.std::__cxx11::basic_string"* %4 to %union.anon**
  %15 = bitcast %union.anon* %13 to i8*
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %17 = bitcast i64* %3 to i8*
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  %21 = bitcast %"class.std::__cxx11::basic_string"* %5 to i8*
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %23 = bitcast %"class.std::__cxx11::basic_string"* %5 to %union.anon**
  %24 = bitcast %union.anon* %22 to i8*
  %25 = bitcast i64* %2 to i8*
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2, i32 0
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  %29 = add nuw nsw i32 %11, 1
  %30 = zext i32 %29 to i64
  br label %33

31:                                               ; preds = %126, %1
  %32 = phi i32 [ 0, %1 ], [ %118, %126 ]
  ret i32 %32

33:                                               ; preds = %129, %10
  %34 = phi i64 [ %7, %10 ], [ %130, %129 ]
  %35 = phi i64 [ 1, %10 ], [ %127, %129 ]
  %36 = phi i32 [ 0, %10 ], [ %118, %129 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %12) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  store %union.anon* %13, %union.anon** %14, align 8, !tbaa !15, !alias.scope !12
  %37 = load i8*, i8** %16, align 8, !tbaa !16, !noalias !12
  %38 = icmp ugt i64 %34, %35
  %39 = select i1 %38, i64 %35, i64 %34
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #10, !noalias !12
  store i64 %39, i64* %3, align 8, !tbaa !17, !noalias !12
  %40 = icmp ugt i64 %39, 15
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i64* noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
  store i8* %42, i8** %18, align 8, !tbaa !16, !alias.scope !12
  %43 = load i64, i64* %3, align 8, !tbaa !17, !noalias !12
  store i64 %43, i64* %19, align 8, !tbaa !18, !alias.scope !12
  br label %44

44:                                               ; preds = %41, %33
  %45 = phi i8* [ %42, %41 ], [ %15, %33 ]
  switch i64 %39, label %48 [
    i64 1, label %46
    i64 0, label %49
  ]

46:                                               ; preds = %44
  %47 = load i8, i8* %37, align 1, !tbaa !18
  store i8 %47, i8* %45, align 1, !tbaa !18
  br label %49

48:                                               ; preds = %44
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %45, i8* align 1 %37, i64 %39, i1 false) #10
  br label %49

49:                                               ; preds = %44, %46, %48
  %50 = load i64, i64* %3, align 8, !tbaa !17, !noalias !12
  store i64 %50, i64* %20, align 8, !tbaa !5, !alias.scope !12
  %51 = load i8*, i8** %18, align 8, !tbaa !16, !alias.scope !12
  %52 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8 0, i8* %52, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #10, !noalias !12
  %53 = load i64, i64* %20, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %21) #10
  %54 = shl i64 %53, 32
  %55 = ashr exact i64 %54, 32
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %56 = load i64, i64* %6, align 8, !tbaa !5, !noalias !19
  %57 = icmp ult i64 %56, %35
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = and i64 %35, 4294967295
  invoke void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 noundef %59, i64 noundef %56) #11
          to label %60 unwind label %90

60:                                               ; preds = %58
  unreachable

61:                                               ; preds = %49
  store %union.anon* %22, %union.anon** %23, align 8, !tbaa !15, !alias.scope !19
  %62 = load i8*, i8** %16, align 8, !tbaa !16, !noalias !19
  %63 = getelementptr inbounds i8, i8* %62, i64 %35
  %64 = sub i64 %56, %35
  %65 = icmp ugt i64 %64, %55
  %66 = select i1 %65, i64 %55, i64 %64
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #10, !noalias !19
  store i64 %66, i64* %2, align 8, !tbaa !17, !noalias !19
  %67 = icmp ugt i64 %66, 15
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5, i64* noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
          to label %70 unwind label %88

70:                                               ; preds = %68
  store i8* %69, i8** %26, align 8, !tbaa !16, !alias.scope !19
  %71 = load i64, i64* %2, align 8, !tbaa !17, !noalias !19
  store i64 %71, i64* %27, align 8, !tbaa !18, !alias.scope !19
  br label %72

72:                                               ; preds = %70, %61
  %73 = phi i8* [ %69, %70 ], [ %24, %61 ]
  switch i64 %66, label %76 [
    i64 1, label %74
    i64 0, label %77
  ]

74:                                               ; preds = %72
  %75 = load i8, i8* %63, align 1, !tbaa !18
  store i8 %75, i8* %73, align 1, !tbaa !18
  br label %77

76:                                               ; preds = %72
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %73, i8* nonnull align 1 %63, i64 %66, i1 false) #10
  br label %77

77:                                               ; preds = %76, %74, %72
  %78 = load i64, i64* %2, align 8, !tbaa !17, !noalias !19
  store i64 %78, i64* %28, align 8, !tbaa !5, !alias.scope !19
  %79 = load i8*, i8** %26, align 8, !tbaa !16, !alias.scope !19
  %80 = getelementptr inbounds i8, i8* %79, i64 %78
  store i8 0, i8* %80, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #10, !noalias !19
  %81 = load i8*, i8** %18, align 8, !tbaa !16
  %82 = load i8, i8* %81, align 1, !tbaa !18
  %83 = icmp eq i8 %82, 48
  %84 = load i8*, i8** %26, align 8, !tbaa !16
  br i1 %83, label %117, label %85

85:                                               ; preds = %77
  %86 = load i8, i8* %84, align 1, !tbaa !18
  %87 = icmp eq i8 %86, 48
  br i1 %87, label %117, label %96

88:                                               ; preds = %68
  %89 = landingpad { i8*, i32 }
          cleanup
  br label %92

90:                                               ; preds = %58
  %91 = landingpad { i8*, i32 }
          cleanup
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi { i8*, i32 } [ %89, %88 ], [ %91, %90 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %21) #10
  %94 = load i8*, i8** %18, align 8, !tbaa !16
  %95 = icmp eq i8* %94, %15
  br i1 %95, label %132, label %131

96:                                               ; preds = %85
  %97 = load i64, i64* %20, align 8, !tbaa !5
  %98 = load i64, i64* %28, align 8, !tbaa !5
  %99 = icmp ugt i64 %97, %98
  %100 = select i1 %99, i64 %98, i64 %97
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %96
  %103 = call i32 @memcmp(i8* noundef nonnull %81, i8* noundef nonnull %84, i64 noundef %100) #10
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %102, %96
  %106 = sub i64 %97, %98
  %107 = icmp sgt i64 %106, -2147483648
  %108 = select i1 %107, i64 %106, i64 -2147483648
  %109 = icmp slt i64 %108, 2147483647
  %110 = select i1 %109, i64 %108, i64 2147483647
  %111 = trunc i64 %110 to i32
  br label %112

112:                                              ; preds = %105, %102
  %113 = phi i32 [ %103, %102 ], [ %111, %105 ]
  %114 = icmp eq i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = add nsw i32 %36, %115
  br label %117

117:                                              ; preds = %77, %85, %112
  %118 = phi i32 [ %116, %112 ], [ %36, %85 ], [ %36, %77 ]
  %119 = icmp eq i8* %84, %24
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  call void @_ZdlPv(i8* noundef %84) #10
  %121 = load i8*, i8** %18, align 8, !tbaa !16
  br label %122

122:                                              ; preds = %117, %120
  %123 = phi i8* [ %81, %117 ], [ %121, %120 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %21) #10
  %124 = icmp eq i8* %123, %15
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  call void @_ZdlPv(i8* noundef %123) #10
  br label %126

126:                                              ; preds = %122, %125
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %12) #10
  %127 = add nuw nsw i64 %35, 1
  %128 = icmp eq i64 %127, %30
  br i1 %128, label %31, label %129, !llvm.loop !22

129:                                              ; preds = %126
  %130 = load i64, i64* %6, align 8, !tbaa !5, !noalias !12
  br label %33

131:                                              ; preds = %92
  call void @_ZdlPv(i8* noundef %94) #10
  br label %132

132:                                              ; preds = %92, %131
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %12) #10
  resume { i8*, i32 } %93
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
define internal void @_GLOBAL__sub_I_BREAKING_NUMBER_FIRST_PART_INTEGRAL_DIVISION_SECOND_POWER_10_processed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #10
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
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
