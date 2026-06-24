; ModuleID = 'benchmark/cpp_transcoder/FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION/FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION/FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::__cxx11::basic_string"* noundef %1) local_unnamed_addr #3 personality i32 (...)* @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !5
  %5 = trunc i64 %4 to i32
  %6 = and i64 %4, 4294967295
  %7 = alloca i32, i64 %6, align 16
  %8 = add nsw i32 %5, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  store i32 -1, i32* %10, align 4, !tbaa !12
  %11 = icmp sgt i32 %5, 2
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8, !tbaa !14
  %15 = shl i64 %4, 32
  %16 = add i64 %15, -8589934592
  %17 = ashr exact i64 %16, 32
  br label %24

18:                                               ; preds = %44, %2
  %19 = icmp sgt i32 %5, 1
  br i1 %19, label %20, label %48

20:                                               ; preds = %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8, !tbaa !14
  %23 = and i64 %4, 4294967295
  br label %56

24:                                               ; preds = %12, %44
  %25 = phi i64 [ %17, %12 ], [ %46, %44 ]
  %26 = phi i32 [ %8, %12 ], [ %45, %44 ]
  %27 = getelementptr inbounds i8, i8* %14, i64 %25
  %28 = load i8, i8* %27, align 1, !tbaa !15
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds i8, i8* %14, i64 %29
  %31 = load i8, i8* %30, align 1, !tbaa !15
  %32 = icmp slt i8 %28, %31
  br i1 %32, label %35, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds i32, i32* %7, i64 %25
  store i32 %26, i32* %34, align 4, !tbaa !12
  br label %44

35:                                               ; preds = %24
  %36 = add nsw i64 %25, 1
  %37 = getelementptr inbounds i8, i8* %14, i64 %36
  %38 = load i8, i8* %37, align 1, !tbaa !15
  %39 = icmp eq i8 %28, %38
  %40 = getelementptr inbounds i32, i32* %7, i64 %25
  br i1 %39, label %41, label %42

41:                                               ; preds = %35
  store i32 %26, i32* %40, align 4, !tbaa !12
  br label %44

42:                                               ; preds = %35
  store i32 -1, i32* %40, align 4, !tbaa !12
  %43 = trunc i64 %25 to i32
  br label %44

44:                                               ; preds = %33, %42, %41
  %45 = phi i32 [ %26, %33 ], [ %26, %41 ], [ %43, %42 ]
  %46 = add nsw i64 %25, -1
  %47 = icmp sgt i64 %25, 1
  br i1 %47, label %24, label %18, !llvm.loop !16

48:                                               ; preds = %76, %18
  %49 = phi i32 [ -1, %18 ], [ %77, %76 ]
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %80

51:                                               ; preds = %48
  %52 = icmp sgt i32 %5, 1
  br i1 %52, label %53, label %108

53:                                               ; preds = %51
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %55 = and i64 %4, 4294967295
  br label %87

56:                                               ; preds = %20, %76
  %57 = phi i64 [ 1, %20 ], [ %78, %76 ]
  %58 = phi i32 [ -1, %20 ], [ %77, %76 ]
  %59 = getelementptr inbounds i8, i8* %22, i64 %57
  %60 = load i8, i8* %59, align 1, !tbaa !15
  %61 = icmp eq i8 %60, 48
  br i1 %61, label %76, label %62

62:                                               ; preds = %56
  %63 = icmp eq i32 %58, -1
  br i1 %63, label %64, label %69

64:                                               ; preds = %62
  %65 = load i8, i8* %22, align 1, !tbaa !15
  %66 = icmp slt i8 %60, %65
  %67 = trunc i64 %57 to i32
  %68 = select i1 %66, i32 %67, i32 -1
  br label %76

69:                                               ; preds = %62
  %70 = sext i32 %58 to i64
  %71 = getelementptr inbounds i8, i8* %22, i64 %70
  %72 = load i8, i8* %71, align 1, !tbaa !15
  %73 = icmp sgt i8 %60, %72
  %74 = trunc i64 %57 to i32
  %75 = select i1 %73, i32 %58, i32 %74
  br label %76

76:                                               ; preds = %69, %64, %56
  %77 = phi i32 [ %58, %56 ], [ %68, %64 ], [ %75, %69 ]
  %78 = add nuw nsw i64 %57, 1
  %79 = icmp eq i64 %78, %23
  br i1 %79, label %48, label %56, !llvm.loop !19

80:                                               ; preds = %48
  %81 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8, !tbaa !14
  %83 = sext i32 %49 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %82, align 1, !tbaa !15
  %86 = load i8, i8* %84, align 1, !tbaa !15
  store i8 %86, i8* %82, align 1, !tbaa !15
  store i8 %85, i8* %84, align 1, !tbaa !15
  br label %108

87:                                               ; preds = %53, %105
  %88 = phi i64 [ 1, %53 ], [ %106, %105 ]
  %89 = getelementptr inbounds i32, i32* %7, i64 %88
  %90 = load i32, i32* %89, align 4, !tbaa !12
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %105, label %92

92:                                               ; preds = %87
  %93 = load i8*, i8** %54, align 8, !tbaa !14
  %94 = getelementptr inbounds i8, i8* %93, i64 %88
  %95 = load i8, i8* %94, align 1, !tbaa !15
  %96 = sext i32 %90 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  %98 = load i8, i8* %97, align 1, !tbaa !15
  %99 = icmp eq i8 %95, %98
  br i1 %99, label %105, label %100

100:                                              ; preds = %92
  %101 = and i64 %88, 4294967295
  %102 = getelementptr inbounds i8, i8* %93, i64 %101
  %103 = sext i32 %90 to i64
  %104 = getelementptr inbounds i8, i8* %93, i64 %103
  store i8 %98, i8* %102, align 1, !tbaa !15
  store i8 %95, i8* %104, align 1, !tbaa !15
  br label %108

105:                                              ; preds = %87, %92
  %106 = add nuw nsw i64 %88, 1
  %107 = icmp eq i64 %106, %55
  br i1 %107, label %108, label %87, !llvm.loop !20

108:                                              ; preds = %105, %51, %100, %80
  %109 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %110 = bitcast %"class.std::__cxx11::basic_string"* %0 to %union.anon**
  store %union.anon* %109, %union.anon** %110, align 8, !tbaa !21
  %111 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8, !tbaa !14
  %113 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2
  %114 = bitcast %union.anon* %113 to i8*
  %115 = icmp eq i8* %112, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = bitcast %union.anon* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %117, i8* noundef nonnull align 8 dereferenceable(16) %114, i64 16, i1 false) #6
  br label %123

118:                                              ; preds = %108
  %119 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  store i8* %112, i8** %119, align 8, !tbaa !14
  %120 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 2, i32 0
  %121 = load i64, i64* %120, align 8, !tbaa !15
  %122 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  store i64 %121, i64* %122, align 8, !tbaa !15
  br label %123

123:                                              ; preds = %116, %118
  %124 = load i64, i64* %3, align 8, !tbaa !5
  %125 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %124, i64* %125, align 8, !tbaa !5
  %126 = bitcast %"class.std::__cxx11::basic_string"* %1 to %union.anon**
  store %union.anon* %113, %union.anon** %126, align 8, !tbaa !14
  store i64 0, i64* %3, align 8, !tbaa !5
  store i8 0, i8* %114, align 8, !tbaa !15
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION_processed.cpp() #5 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !9, i64 0}
!14 = !{!6, !8, i64 0}
!15 = !{!9, !9, i64 0}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !17, !18}
!20 = distinct !{!20, !17, !18}
!21 = !{!7, !8, i64 0}
