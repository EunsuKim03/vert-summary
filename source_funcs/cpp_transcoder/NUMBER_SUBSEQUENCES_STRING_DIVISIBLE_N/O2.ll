; ModuleID = 'llvm/cpp_transcoder/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !5
  %5 = trunc i64 %4 to i32
  %6 = and i64 %4, 4294967295
  %7 = zext i32 %1 to i64
  %8 = mul nuw i64 %6, %7
  %9 = alloca i32, i64 %8, align 16
  %10 = bitcast i32* %9 to i8*
  %11 = shl nuw i64 %8, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %11, i1 false)
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8, !tbaa !12
  %14 = load i8, i8* %13, align 1, !tbaa !13
  %15 = sext i8 %14 to i32
  %16 = add nsw i32 %15, -48
  %17 = srem i32 %16, %1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %9, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !14
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4, !tbaa !14
  %22 = icmp sgt i32 %5, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = icmp sgt i32 %1, 0
  %25 = and i64 %4, 4294967295
  br label %33

26:                                               ; preds = %50, %2
  %27 = shl i64 %4, 32
  %28 = add i64 %27, -4294967296
  %29 = ashr exact i64 %28, 32
  %30 = mul nsw i64 %29, %7
  %31 = getelementptr inbounds i32, i32* %9, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !14
  ret i32 %32

33:                                               ; preds = %23, %50
  %34 = phi i64 [ 1, %23 ], [ %51, %50 ]
  %35 = mul nuw nsw i64 %34, %7
  %36 = getelementptr inbounds i32, i32* %9, i64 %35
  %37 = getelementptr inbounds i8, i8* %13, i64 %34
  %38 = load i8, i8* %37, align 1, !tbaa !13
  %39 = sext i8 %38 to i32
  %40 = add nsw i32 %39, -48
  %41 = srem i32 %40, %1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %36, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !14
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4, !tbaa !14
  br i1 %24, label %46, label %50

46:                                               ; preds = %33
  %47 = add nsw i64 %34, -1
  %48 = mul nuw nsw i64 %47, %7
  %49 = getelementptr inbounds i32, i32* %9, i64 %48
  br label %53

50:                                               ; preds = %53, %33
  %51 = add nuw nsw i64 %34, 1
  %52 = icmp eq i64 %51, %25
  br i1 %52, label %26, label %33, !llvm.loop !16

53:                                               ; preds = %46, %53
  %54 = phi i64 [ 0, %46 ], [ %69, %53 ]
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  %56 = load i32, i32* %55, align 4, !tbaa !14
  %57 = getelementptr inbounds i32, i32* %36, i64 %54
  %58 = load i32, i32* %57, align 4, !tbaa !14
  %59 = add nsw i32 %58, %56
  store i32 %59, i32* %57, align 4, !tbaa !14
  %60 = load i32, i32* %55, align 4, !tbaa !14
  %61 = trunc i64 %54 to i32
  %62 = mul i32 %61, 10
  %63 = add nsw i32 %62, %40
  %64 = srem i32 %63, %1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %36, i64 %65
  %67 = load i32, i32* %66, align 4, !tbaa !14
  %68 = add nsw i32 %67, %60
  store i32 %68, i32* %66, align 4, !tbaa !14
  %69 = add nuw nsw i64 %54, 1
  %70 = icmp eq i64 %69, %7
  br i1 %70, label %50, label %53, !llvm.loop !18
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N_reprocessed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
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
!12 = !{!6, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !9, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
