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
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = icmp sgt i32 %1, 0
  %25 = and i64 %4, 4294967295
  %26 = zext i32 %1 to i64
  br label %34

27:                                               ; preds = %51, %2
  %28 = shl i64 %4, 32
  %29 = add i64 %28, -4294967296
  %30 = ashr exact i64 %29, 32
  %31 = mul nsw i64 %30, %7
  %32 = getelementptr inbounds i32, i32* %9, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !14
  ret i32 %33

34:                                               ; preds = %23, %51
  %35 = phi i64 [ 1, %23 ], [ %52, %51 ]
  %36 = mul nuw nsw i64 %35, %7
  %37 = getelementptr inbounds i32, i32* %9, i64 %36
  %38 = getelementptr inbounds i8, i8* %13, i64 %35
  %39 = load i8, i8* %38, align 1, !tbaa !13
  %40 = sext i8 %39 to i32
  %41 = add nsw i32 %40, -48
  %42 = srem i32 %41, %1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %37, i64 %43
  %45 = load i32, i32* %44, align 4, !tbaa !14
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4, !tbaa !14
  br i1 %24, label %47, label %51

47:                                               ; preds = %34
  %48 = add nsw i64 %35, -1
  %49 = mul nuw nsw i64 %48, %7
  %50 = getelementptr inbounds i32, i32* %9, i64 %49
  br label %54

51:                                               ; preds = %54, %34
  %52 = add nuw nsw i64 %35, 1
  %53 = icmp eq i64 %52, %25
  br i1 %53, label %27, label %34, !llvm.loop !16

54:                                               ; preds = %47, %54
  %55 = phi i64 [ 0, %47 ], [ %70, %54 ]
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  %57 = load i32, i32* %56, align 4, !tbaa !14
  %58 = getelementptr inbounds i32, i32* %37, i64 %55
  %59 = load i32, i32* %58, align 4, !tbaa !14
  %60 = add nsw i32 %59, %57
  store i32 %60, i32* %58, align 4, !tbaa !14
  %61 = load i32, i32* %56, align 4, !tbaa !14
  %62 = trunc i64 %55 to i32
  %63 = mul i32 %62, 10
  %64 = add nsw i32 %63, %41
  %65 = srem i32 %64, %1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %37, i64 %66
  %68 = load i32, i32* %67, align 4, !tbaa !14
  %69 = add nsw i32 %68, %61
  store i32 %69, i32* %67, align 4, !tbaa !14
  %70 = add nuw nsw i64 %55, 1
  %71 = icmp eq i64 %70, %26
  br i1 %71, label %51, label %54, !llvm.loop !19
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N_reprocessed.cpp() #5 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
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
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !17, !18}
