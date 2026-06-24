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
  br i1 %8, label %97, label %9

9:                                                ; preds = %2
  %10 = add i64 %6, 1
  %11 = and i64 %10, 4294967295
  %12 = add i64 %4, 1
  %13 = and i64 %12, 4294967295
  %14 = tail call i8* @llvm.stacksave()
  %15 = mul nuw i64 %11, %13
  %16 = alloca i32, i64 %15, align 16
  %17 = bitcast i32* %16 to i8*
  %18 = shl nuw i64 %15, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %17, i8 0, i64 %18, i1 false)
  %19 = icmp sgt i32 %7, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %9
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %23 = shl i64 %4, 32
  %24 = ashr exact i64 %23, 32
  %25 = and i64 %6, 4294967295
  %26 = and i64 %4, 4294967295
  br label %27

27:                                               ; preds = %20, %48
  %28 = phi i64 [ 0, %20 ], [ %49, %48 ]
  %29 = icmp slt i64 %28, %24
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = icmp eq i64 %28, 0
  %32 = mul nuw nsw i64 %13, %28
  %33 = getelementptr inbounds i32, i32* %16, i64 %32
  %34 = add nsw i64 %28, -1
  %35 = mul nsw i64 %13, %34
  %36 = getelementptr inbounds i32, i32* %16, i64 %35
  br label %51

37:                                               ; preds = %48, %9
  %38 = shl i64 %6, 32
  %39 = add i64 %38, -4294967296
  %40 = ashr exact i64 %39, 32
  %41 = mul nsw i64 %40, %13
  %42 = getelementptr inbounds i32, i32* %16, i64 %41
  %43 = shl i64 %4, 32
  %44 = add i64 %43, -4294967296
  %45 = ashr exact i64 %44, 32
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4, !tbaa !12
  tail call void @llvm.stackrestore(i8* %14)
  br label %97

48:                                               ; preds = %94, %27
  %49 = add nuw nsw i64 %28, 1
  %50 = icmp eq i64 %49, %25
  br i1 %50, label %37, label %27, !llvm.loop !14

51:                                               ; preds = %30, %94
  %52 = phi i64 [ %28, %30 ], [ %95, %94 ]
  br i1 %31, label %53, label %76

53:                                               ; preds = %51
  %54 = icmp eq i64 %52, 0
  %55 = load i8*, i8** %21, align 8, !tbaa !16
  br i1 %54, label %56, label %62

56:                                               ; preds = %53
  %57 = load i8, i8* %55, align 1, !tbaa !17
  %58 = load i8*, i8** %22, align 8, !tbaa !16
  %59 = load i8, i8* %58, align 1, !tbaa !17
  %60 = icmp eq i8 %57, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %16, align 16, !tbaa !12
  br label %94

62:                                               ; preds = %53
  %63 = getelementptr inbounds i8, i8* %55, i64 %52
  %64 = load i8, i8* %63, align 1, !tbaa !17
  %65 = load i8*, i8** %22, align 8, !tbaa !16
  %66 = load i8, i8* %65, align 1, !tbaa !17
  %67 = icmp eq i8 %64, %66
  %68 = add nsw i64 %52, -1
  %69 = getelementptr inbounds i32, i32* %16, i64 %68
  %70 = load i32, i32* %69, align 4, !tbaa !12
  br i1 %67, label %71, label %74

71:                                               ; preds = %62
  %72 = add nsw i32 %70, 1
  %73 = getelementptr inbounds i32, i32* %16, i64 %52
  store i32 %72, i32* %73, align 4, !tbaa !12
  br label %94

74:                                               ; preds = %62
  %75 = getelementptr inbounds i32, i32* %16, i64 %52
  store i32 %70, i32* %75, align 4, !tbaa !12
  br label %94

76:                                               ; preds = %51
  %77 = load i8*, i8** %21, align 8, !tbaa !16
  %78 = getelementptr inbounds i8, i8* %77, i64 %52
  %79 = load i8, i8* %78, align 1, !tbaa !17
  %80 = load i8*, i8** %22, align 8, !tbaa !16
  %81 = getelementptr inbounds i8, i8* %80, i64 %28
  %82 = load i8, i8* %81, align 1, !tbaa !17
  %83 = icmp eq i8 %79, %82
  %84 = add nsw i64 %52, -1
  %85 = getelementptr inbounds i32, i32* %33, i64 %84
  %86 = load i32, i32* %85, align 4, !tbaa !12
  br i1 %83, label %87, label %92

87:                                               ; preds = %76
  %88 = getelementptr inbounds i32, i32* %36, i64 %84
  %89 = load i32, i32* %88, align 4, !tbaa !12
  %90 = add nsw i32 %89, %86
  %91 = getelementptr inbounds i32, i32* %33, i64 %52
  store i32 %90, i32* %91, align 4, !tbaa !12
  br label %94

92:                                               ; preds = %76
  %93 = getelementptr inbounds i32, i32* %33, i64 %52
  store i32 %86, i32* %93, align 4, !tbaa !12
  br label %94

94:                                               ; preds = %71, %74, %56, %92, %87
  %95 = add nuw nsw i64 %52, 1
  %96 = icmp eq i64 %95, %26
  br i1 %96, label %48, label %51, !llvm.loop !18

97:                                               ; preds = %2, %37
  %98 = phi i32 [ %47, %37 ], [ 1, %2 ]
  ret i32 %98
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_WAYS_TRANSFORMING_ONE_STRING_REMOVING_0_CHARACTERS_reprocessed.cpp() #6 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
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
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!6, !8, i64 0}
!17 = !{!9, !9, i64 0}
!18 = distinct !{!18, !15}
