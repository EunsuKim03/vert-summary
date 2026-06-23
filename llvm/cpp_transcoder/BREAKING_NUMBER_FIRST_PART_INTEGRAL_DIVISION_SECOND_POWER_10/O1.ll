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
  br i1 %9, label %33, label %10

10:                                               ; preds = %1
  %11 = sdiv i32 %8, 2
  %12 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2
  %14 = bitcast %"class.std::__cxx11::basic_string"* %4 to %union.anon**
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %16 = bitcast i64* %3 to i8*
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 2, i32 0
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 0, i32 0
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %4, i64 0, i32 1
  %21 = bitcast %"class.std::__cxx11::basic_string"* %5 to i8*
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %23 = bitcast %"class.std::__cxx11::basic_string"* %5 to %union.anon**
  %24 = bitcast i64* %2 to i8*
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2, i32 0
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  %29 = bitcast %union.anon* %22 to i8*
  %30 = bitcast %union.anon* %13 to i8*
  %31 = add nsw i32 %11, 1
  %32 = zext i32 %31 to i64
  br label %35

33:                                               ; preds = %132, %1
  %34 = phi i32 [ 0, %1 ], [ %124, %132 ]
  ret i32 %34

35:                                               ; preds = %10, %132
  %36 = phi i64 [ 1, %10 ], [ %133, %132 ]
  %37 = phi i32 [ 0, %10 ], [ %124, %132 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %12) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %38 = load i64, i64* %6, align 8, !tbaa !5, !noalias !12
  store %union.anon* %13, %union.anon** %14, align 8, !tbaa !15, !alias.scope !12
  %39 = load i8*, i8** %15, align 8, !tbaa !16, !noalias !12
  %40 = icmp ugt i64 %38, %36
  %41 = select i1 %40, i64 %36, i64 %38
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #10, !noalias !12
  store i64 %41, i64* %3, align 8, !tbaa !17, !noalias !12
  %42 = icmp ugt i64 %41, 15
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4, i64* noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
  store i8* %44, i8** %17, align 8, !tbaa !16, !alias.scope !12
  %45 = load i64, i64* %3, align 8, !tbaa !17, !noalias !12
  store i64 %45, i64* %18, align 8, !tbaa !18, !alias.scope !12
  br label %46

46:                                               ; preds = %43, %35
  %47 = load i8*, i8** %19, align 8, !tbaa !16, !alias.scope !12
  switch i64 %41, label %50 [
    i64 1, label %48
    i64 0, label %51
  ]

48:                                               ; preds = %46
  %49 = load i8, i8* %39, align 1, !tbaa !18
  store i8 %49, i8* %47, align 1, !tbaa !18
  br label %51

50:                                               ; preds = %46
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %39, i64 %41, i1 false) #10
  br label %51

51:                                               ; preds = %46, %48, %50
  %52 = load i64, i64* %3, align 8, !tbaa !17, !noalias !12
  store i64 %52, i64* %20, align 8, !tbaa !5, !alias.scope !12
  %53 = load i8*, i8** %19, align 8, !tbaa !16, !alias.scope !12
  %54 = getelementptr inbounds i8, i8* %53, i64 %52
  store i8 0, i8* %54, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #10, !noalias !12
  %55 = load i64, i64* %20, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %21) #10
  %56 = shl i64 %55, 32
  %57 = ashr exact i64 %56, 32
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %58 = load i64, i64* %6, align 8, !tbaa !5, !noalias !19
  %59 = icmp ult i64 %58, %36
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = and i64 %36, 4294967295
  invoke void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 noundef %61, i64 noundef %58) #11
          to label %62 unwind label %92

62:                                               ; preds = %60
  unreachable

63:                                               ; preds = %51
  store %union.anon* %22, %union.anon** %23, align 8, !tbaa !15, !alias.scope !19
  %64 = load i8*, i8** %15, align 8, !tbaa !16, !noalias !19
  %65 = getelementptr inbounds i8, i8* %64, i64 %36
  %66 = sub i64 %58, %36
  %67 = icmp ugt i64 %66, %57
  %68 = select i1 %67, i64 %57, i64 %66
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #10, !noalias !19
  store i64 %68, i64* %2, align 8, !tbaa !17, !noalias !19
  %69 = icmp ugt i64 %68, 15
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = invoke noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5, i64* noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
          to label %72 unwind label %90

72:                                               ; preds = %70
  store i8* %71, i8** %25, align 8, !tbaa !16, !alias.scope !19
  %73 = load i64, i64* %2, align 8, !tbaa !17, !noalias !19
  store i64 %73, i64* %26, align 8, !tbaa !18, !alias.scope !19
  br label %74

74:                                               ; preds = %72, %63
  %75 = load i8*, i8** %27, align 8, !tbaa !16, !alias.scope !19
  switch i64 %68, label %78 [
    i64 1, label %76
    i64 0, label %79
  ]

76:                                               ; preds = %74
  %77 = load i8, i8* %65, align 1, !tbaa !18
  store i8 %77, i8* %75, align 1, !tbaa !18
  br label %79

78:                                               ; preds = %74
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %75, i8* nonnull align 1 %65, i64 %68, i1 false) #10
  br label %79

79:                                               ; preds = %74, %76, %78
  %80 = load i64, i64* %2, align 8, !tbaa !17, !noalias !19
  store i64 %80, i64* %28, align 8, !tbaa !5, !alias.scope !19
  %81 = load i8*, i8** %27, align 8, !tbaa !16, !alias.scope !19
  %82 = getelementptr inbounds i8, i8* %81, i64 %80
  store i8 0, i8* %82, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #10, !noalias !19
  %83 = load i8*, i8** %19, align 8, !tbaa !16
  %84 = load i8, i8* %83, align 1, !tbaa !18
  %85 = icmp eq i8 %84, 48
  br i1 %85, label %123, label %86

86:                                               ; preds = %79
  %87 = load i8*, i8** %27, align 8, !tbaa !16
  %88 = load i8, i8* %87, align 1, !tbaa !18
  %89 = icmp eq i8 %88, 48
  br i1 %89, label %123, label %100

90:                                               ; preds = %70
  %91 = landingpad { i8*, i32 }
          cleanup
  br label %94

92:                                               ; preds = %60
  %93 = landingpad { i8*, i32 }
          cleanup
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi { i8*, i32 } [ %91, %90 ], [ %93, %92 ]
  %96 = bitcast %"class.std::__cxx11::basic_string"* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %96) #10
  %97 = load i8*, i8** %19, align 8, !tbaa !16
  %98 = bitcast %union.anon* %13 to i8*
  %99 = icmp eq i8* %97, %98
  br i1 %99, label %136, label %135

100:                                              ; preds = %86
  %101 = load i64, i64* %20, align 8, !tbaa !5
  %102 = load i64, i64* %28, align 8, !tbaa !5
  %103 = icmp ugt i64 %101, %102
  %104 = select i1 %103, i64 %102, i64 %101
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %100
  %107 = call i32 @memcmp(i8* noundef nonnull %83, i8* noundef nonnull %87, i64 noundef %104) #10
  br label %108

108:                                              ; preds = %106, %100
  %109 = phi i32 [ %107, %106 ], [ 0, %100 ]
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = sub i64 %101, %102
  %113 = icmp sgt i64 %112, -2147483648
  %114 = select i1 %113, i64 %112, i64 -2147483648
  %115 = icmp slt i64 %114, 2147483647
  %116 = select i1 %115, i64 %114, i64 2147483647
  %117 = trunc i64 %116 to i32
  br label %118

118:                                              ; preds = %111, %108
  %119 = phi i32 [ %109, %108 ], [ %117, %111 ]
  %120 = icmp eq i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = add nsw i32 %37, %121
  br label %123

123:                                              ; preds = %79, %86, %118
  %124 = phi i32 [ %122, %118 ], [ %37, %86 ], [ %37, %79 ]
  %125 = load i8*, i8** %27, align 8, !tbaa !16
  %126 = icmp eq i8* %125, %29
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  call void @_ZdlPv(i8* noundef %125) #10
  br label %128

128:                                              ; preds = %123, %127
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %21) #10
  %129 = load i8*, i8** %19, align 8, !tbaa !16
  %130 = icmp eq i8* %129, %30
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  call void @_ZdlPv(i8* noundef %129) #10
  br label %132

132:                                              ; preds = %128, %131
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %12) #10
  %133 = add nuw nsw i64 %36, 1
  %134 = icmp eq i64 %133, %32
  br i1 %134, label %33, label %35, !llvm.loop !22

135:                                              ; preds = %94
  call void @_ZdlPv(i8* noundef %97) #10
  br label %136

136:                                              ; preds = %94, %135
  %137 = bitcast %"class.std::__cxx11::basic_string"* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %137) #10
  resume { i8*, i32 } %95
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
!22 = distinct !{!22, !23, !24}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.unroll.disable"}
