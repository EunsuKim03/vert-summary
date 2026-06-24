; ModuleID = 'llvm/cpp_transcoder/GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1/GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1/GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1_reprocessed.cpp, i8* null }]

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
  %7 = alloca [10 x i32], i64 %6, align 16
  %8 = bitcast [10 x i32]* %7 to i8*
  %9 = mul nuw nsw i64 %6, 40
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 %9, i1 false)
  %10 = alloca i32, i64 %6, align 16
  %11 = icmp slt i32 %4, 1
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8, !tbaa !12
  %15 = add i64 %3, 1
  %16 = and i64 %15, 4294967295
  br label %22

17:                                               ; preds = %22, %1
  %18 = icmp slt i32 %4, 1
  br i1 %18, label %32, label %19

19:                                               ; preds = %17
  %20 = add i64 %3, 1
  %21 = and i64 %20, 4294967295
  br label %42

22:                                               ; preds = %12, %22
  %23 = phi i64 [ 1, %12 ], [ %30, %22 ]
  %24 = add nsw i64 %23, -1
  %25 = getelementptr inbounds i8, i8* %14, i64 %24
  %26 = load i8, i8* %25, align 1, !tbaa !13
  %27 = sext i8 %26 to i32
  %28 = add nsw i32 %27, -48
  %29 = getelementptr inbounds i32, i32* %10, i64 %23
  store i32 %28, i32* %29, align 4, !tbaa !14
  %30 = add nuw nsw i64 %23, 1
  %31 = icmp eq i64 %30, %16
  br i1 %31, label %17, label %22, !llvm.loop !16

32:                                               ; preds = %50, %17
  %33 = icmp slt i32 %4, 1
  br i1 %33, label %83, label %34

34:                                               ; preds = %32
  %35 = shl i64 %3, 32
  %36 = ashr exact i64 %35, 32
  %37 = add i64 %3, 1
  %38 = and i64 %37, 4294967295
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 1, i64 0
  %40 = load i32, i32* %39, align 8, !tbaa !14
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %83, label %73

42:                                               ; preds = %19, %50
  %43 = phi i64 [ 1, %19 ], [ %51, %50 ]
  %44 = getelementptr inbounds i32, i32* %10, i64 %43
  %45 = load i32, i32* %44, align 4, !tbaa !14
  %46 = srem i32 %45, 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %43, i64 %47
  store i32 1, i32* %48, align 4, !tbaa !14
  %49 = add nsw i64 %43, -1
  br label %53

50:                                               ; preds = %53
  %51 = add nuw nsw i64 %43, 1
  %52 = icmp eq i64 %51, %21
  br i1 %52, label %32, label %42, !llvm.loop !19

53:                                               ; preds = %42, %53
  %54 = phi i64 [ 0, %42 ], [ %71, %53 ]
  %55 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %49, i64 %54
  %56 = load i32, i32* %55, align 4, !tbaa !14
  %57 = trunc i64 %54 to i32
  %58 = mul i32 %57, 10
  %59 = add i32 %58, %45
  %60 = srem i32 %59, 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %43, i64 %61
  %63 = load i32, i32* %62, align 4, !tbaa !14
  %64 = icmp sgt i32 %56, %63
  %65 = select i1 %64, i32 %56, i32 %63
  store i32 %65, i32* %62, align 4
  %66 = load i32, i32* %55, align 4, !tbaa !14
  %67 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %43, i64 %54
  %68 = load i32, i32* %67, align 4, !tbaa !14
  %69 = icmp sgt i32 %66, %68
  %70 = select i1 %69, i32 %66, i32 %68
  store i32 %70, i32* %67, align 4
  %71 = add nuw nsw i64 %54, 1
  %72 = icmp eq i64 %71, 8
  br i1 %72, label %50, label %53, !llvm.loop !20

73:                                               ; preds = %34, %77
  %74 = phi i64 [ %75, %77 ], [ 1, %34 ]
  %75 = add nuw nsw i64 %74, 1
  %76 = icmp eq i64 %75, %38
  br i1 %76, label %81, label %77, !llvm.loop !21

77:                                               ; preds = %73
  %78 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %75, i64 0
  %79 = load i32, i32* %78, align 8, !tbaa !14
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %73, !llvm.loop !21

81:                                               ; preds = %73, %77
  %82 = icmp sge i64 %74, %36
  br label %83

83:                                               ; preds = %81, %34, %32
  %84 = phi i1 [ %33, %32 ], [ %33, %34 ], [ %82, %81 ]
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  ret i32 %86
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1_reprocessed.cpp() #5 section ".text.startup" {
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
!20 = distinct !{!20, !17, !18}
!21 = distinct !{!21, !17, !18}
