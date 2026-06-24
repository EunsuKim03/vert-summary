; ModuleID = 'llvm/cpp_transcoder/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !5
  %4 = trunc i64 %3 to i32
  %5 = add i64 %3, 1
  %6 = and i64 %5, 4294967295
  %7 = mul nuw i64 %6, %6
  %8 = alloca i32, i64 %7, align 16
  %9 = bitcast i32* %8 to i8*
  %10 = shl nuw i64 %7, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false)
  %11 = icmp sgt i32 %4, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = and i64 %3, 4294967295
  br label %22

14:                                               ; preds = %22, %1
  %15 = icmp slt i32 %4, 2
  br i1 %15, label %31, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %18 = add i64 %3, 1
  %19 = and i64 %18, 4294967295
  %20 = load i8*, i8** %17, align 8, !tbaa !12
  %21 = and i64 %3, 4294967295
  br label %29

22:                                               ; preds = %12, %22
  %23 = phi i64 [ 0, %12 ], [ %27, %22 ]
  %24 = mul nuw nsw i64 %6, %23
  %25 = getelementptr inbounds i32, i32* %8, i64 %24
  %26 = getelementptr inbounds i32, i32* %25, i64 %23
  store i32 1, i32* %26, align 4, !tbaa !13
  %27 = add nuw nsw i64 %23, 1
  %28 = icmp eq i64 %27, %13
  br i1 %28, label %14, label %22, !llvm.loop !15

29:                                               ; preds = %16, %37
  %30 = phi i64 [ 2, %16 ], [ %38, %37 ]
  br label %40

31:                                               ; preds = %37, %14
  %32 = shl i64 %3, 32
  %33 = add i64 %32, -4294967296
  %34 = ashr exact i64 %33, 32
  %35 = getelementptr inbounds i32, i32* %8, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !13
  ret i32 %36

37:                                               ; preds = %67
  %38 = add nuw nsw i64 %30, 1
  %39 = icmp eq i64 %38, %19
  br i1 %39, label %31, label %29, !llvm.loop !18

40:                                               ; preds = %29, %67
  %41 = phi i64 [ 0, %29 ], [ %70, %67 ]
  %42 = add nuw nsw i64 %41, %30
  %43 = add nsw i64 %42, -1
  %44 = getelementptr inbounds i8, i8* %20, i64 %41
  %45 = load i8, i8* %44, align 1, !tbaa !19
  %46 = getelementptr inbounds i8, i8* %20, i64 %43
  %47 = load i8, i8* %46, align 1, !tbaa !19
  %48 = icmp eq i8 %45, %47
  %49 = mul nuw nsw i64 %6, %41
  %50 = getelementptr inbounds i32, i32* %8, i64 %49
  %51 = add nsw i64 %42, -2
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !13
  %54 = add nuw nsw i64 %41, 1
  %55 = mul nuw nsw i64 %6, %54
  %56 = getelementptr inbounds i32, i32* %8, i64 %55
  %57 = getelementptr inbounds i32, i32* %56, i64 %43
  %58 = load i32, i32* %57, align 4, !tbaa !13
  br i1 %48, label %59, label %62

59:                                               ; preds = %40
  %60 = add i32 %53, 1
  %61 = add i32 %60, %58
  br label %67

62:                                               ; preds = %40
  %63 = add nsw i32 %58, %53
  %64 = getelementptr inbounds i32, i32* %56, i64 %51
  %65 = load i32, i32* %64, align 4, !tbaa !13
  %66 = sub i32 %63, %65
  br label %67

67:                                               ; preds = %62, %59
  %68 = phi i32 [ %66, %62 ], [ %61, %59 ]
  %69 = getelementptr inbounds i32, i32* %50, i64 %43
  store i32 %68, i32* %69, align 4, !tbaa !13
  %70 = add nuw nsw i64 %41, 1
  %71 = icmp eq i64 %70, %21
  br i1 %71, label %37, label %40, !llvm.loop !20
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING_reprocessed.cpp() #5 section ".text.startup" {
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
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !9, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16, !17}
!19 = !{!9, !9, i64 0}
!20 = distinct !{!20, !16, !17}
