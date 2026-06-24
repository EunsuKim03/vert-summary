; ModuleID = 'llvm/cpp_transcoder/WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS/WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS/WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !5
  %7 = trunc i64 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %106, label %9

9:                                                ; preds = %2
  %10 = add i64 %6, 1
  %11 = and i64 %10, 4294967295
  %12 = add i64 %4, 1
  %13 = and i64 %12, 4294967295
  %14 = call i8* @llvm.stacksave()
  %15 = mul nuw i64 %11, %13
  %16 = alloca i32, i64 %15, align 16
  %17 = bitcast i32* %16 to i8*
  %18 = shl nuw i64 %15, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %17, i8 0, i64 %18, i1 false)
  %19 = icmp sgt i32 %7, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %9
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %27 = shl i64 %4, 32
  %28 = ashr exact i64 %27, 32
  %29 = and i64 %6, 4294967295
  %30 = and i64 %4, 4294967295
  br label %31

31:                                               ; preds = %20, %54
  %32 = phi i64 [ 0, %20 ], [ %55, %54 ]
  %33 = icmp slt i64 %32, %28
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = icmp eq i64 %32, 0
  %36 = mul nuw nsw i64 %13, %32
  %37 = getelementptr inbounds i32, i32* %16, i64 %36
  %38 = mul nuw nsw i64 %13, %32
  %39 = getelementptr inbounds i32, i32* %16, i64 %38
  %40 = add nsw i64 %32, -1
  %41 = mul nsw i64 %13, %40
  %42 = getelementptr inbounds i32, i32* %16, i64 %41
  br label %57

43:                                               ; preds = %54, %9
  %44 = shl i64 %6, 32
  %45 = add i64 %44, -4294967296
  %46 = ashr exact i64 %45, 32
  %47 = mul nsw i64 %46, %13
  %48 = getelementptr inbounds i32, i32* %16, i64 %47
  %49 = shl i64 %4, 32
  %50 = add i64 %49, -4294967296
  %51 = ashr exact i64 %50, 32
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !12
  call void @llvm.stackrestore(i8* %14)
  br label %106

54:                                               ; preds = %103, %31
  %55 = add nuw nsw i64 %32, 1
  %56 = icmp eq i64 %55, %29
  br i1 %56, label %43, label %31, !llvm.loop !14

57:                                               ; preds = %34, %103
  %58 = phi i64 [ %32, %34 ], [ %104, %103 ]
  br i1 %35, label %59, label %83

59:                                               ; preds = %57
  %60 = icmp eq i64 %58, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %59
  %62 = load i8*, i8** %25, align 8, !tbaa !17
  %63 = load i8, i8* %62, align 1, !tbaa !18
  %64 = load i8*, i8** %26, align 8, !tbaa !17
  %65 = load i8, i8* %64, align 1, !tbaa !18
  %66 = icmp eq i8 %63, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %16, align 16, !tbaa !12
  br label %103

68:                                               ; preds = %59
  %69 = load i8*, i8** %23, align 8, !tbaa !17
  %70 = getelementptr inbounds i8, i8* %69, i64 %58
  %71 = load i8, i8* %70, align 1, !tbaa !18
  %72 = load i8*, i8** %24, align 8, !tbaa !17
  %73 = load i8, i8* %72, align 1, !tbaa !18
  %74 = icmp eq i8 %71, %73
  %75 = add nsw i64 %58, -1
  %76 = getelementptr inbounds i32, i32* %16, i64 %75
  %77 = load i32, i32* %76, align 4, !tbaa !12
  br i1 %74, label %78, label %81

78:                                               ; preds = %68
  %79 = add nsw i32 %77, 1
  %80 = getelementptr inbounds i32, i32* %16, i64 %58
  store i32 %79, i32* %80, align 4, !tbaa !12
  br label %103

81:                                               ; preds = %68
  %82 = getelementptr inbounds i32, i32* %16, i64 %58
  store i32 %77, i32* %82, align 4, !tbaa !12
  br label %103

83:                                               ; preds = %57
  %84 = load i8*, i8** %21, align 8, !tbaa !17
  %85 = getelementptr inbounds i8, i8* %84, i64 %58
  %86 = load i8, i8* %85, align 1, !tbaa !18
  %87 = load i8*, i8** %22, align 8, !tbaa !17
  %88 = getelementptr inbounds i8, i8* %87, i64 %32
  %89 = load i8, i8* %88, align 1, !tbaa !18
  %90 = icmp eq i8 %86, %89
  %91 = add nsw i64 %58, -1
  br i1 %90, label %92, label %99

92:                                               ; preds = %83
  %93 = getelementptr inbounds i32, i32* %39, i64 %91
  %94 = load i32, i32* %93, align 4, !tbaa !12
  %95 = getelementptr inbounds i32, i32* %42, i64 %91
  %96 = load i32, i32* %95, align 4, !tbaa !12
  %97 = add nsw i32 %96, %94
  %98 = getelementptr inbounds i32, i32* %39, i64 %58
  store i32 %97, i32* %98, align 4, !tbaa !12
  br label %103

99:                                               ; preds = %83
  %100 = getelementptr inbounds i32, i32* %37, i64 %91
  %101 = load i32, i32* %100, align 4, !tbaa !12
  %102 = getelementptr inbounds i32, i32* %37, i64 %58
  store i32 %101, i32* %102, align 4, !tbaa !12
  br label %103

103:                                              ; preds = %78, %81, %61, %99, %92
  %104 = add nuw nsw i64 %58, 1
  %105 = icmp eq i64 %104, %30
  br i1 %105, label %54, label %57, !llvm.loop !19

106:                                              ; preds = %2, %43
  %107 = phi i32 [ %53, %43 ], [ 1, %2 ]
  ret i32 %107
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS_reprocessed.cpp() #6 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!6, !8, i64 0}
!18 = !{!9, !9, i64 0}
!19 = distinct !{!19, !15, !16}
