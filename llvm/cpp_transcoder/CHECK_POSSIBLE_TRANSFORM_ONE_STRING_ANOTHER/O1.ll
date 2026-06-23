; ModuleID = 'benchmark/cpp_transcoder/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER_processed.cpp'
source_filename = "benchmark/cpp_transcoder/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !5
  %7 = add i64 %4, 1
  %8 = and i64 %7, 4294967295
  %9 = add i64 %6, 1
  %10 = and i64 %9, 4294967295
  %11 = mul nuw i64 %10, %8
  %12 = alloca i8, i64 %11, align 16
  %13 = and i64 %4, 2147483648
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = and i64 %6, 2147483648
  %17 = icmp eq i64 %16, 0
  %18 = add i64 %4, 1
  %19 = and i64 %18, 4294967295
  br label %20

20:                                               ; preds = %15, %31
  %21 = phi i64 [ 0, %15 ], [ %32, %31 ]
  br i1 %17, label %22, label %31

22:                                               ; preds = %20
  %23 = mul nuw nsw i64 %10, %21
  %24 = getelementptr i8, i8* %12, i64 %23
  call void @llvm.memset.p0i8.i64(i8* align 1 %24, i8 0, i64 %10, i1 false), !tbaa !12
  br label %31

25:                                               ; preds = %31, %2
  store i8 1, i8* %12, align 16, !tbaa !12
  %26 = icmp eq i64 %4, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  br label %34

31:                                               ; preds = %22, %20
  %32 = add nuw nsw i64 %21, 1
  %33 = icmp eq i64 %32, %19
  br i1 %33, label %25, label %20, !llvm.loop !14

34:                                               ; preds = %27, %53
  %35 = phi i64 [ 0, %27 ], [ %38, %53 ]
  %36 = mul nuw nsw i64 %35, %10
  %37 = getelementptr inbounds i8, i8* %12, i64 %36
  %38 = add nuw nsw i64 %35, 1
  %39 = mul nuw nsw i64 %10, %38
  %40 = getelementptr inbounds i8, i8* %12, i64 %39
  %41 = mul nuw nsw i64 %10, %38
  %42 = getelementptr inbounds i8, i8* %12, i64 %41
  br label %55

43:                                               ; preds = %53, %25
  %44 = shl i64 %4, 32
  %45 = ashr exact i64 %44, 32
  %46 = mul nsw i64 %10, %45
  %47 = getelementptr inbounds i8, i8* %12, i64 %46
  %48 = shl i64 %6, 32
  %49 = ashr exact i64 %48, 32
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1, !tbaa !12, !range !17
  %52 = zext i8 %51 to i32
  ret i32 %52

53:                                               ; preds = %85
  %54 = icmp eq i64 %38, %4
  br i1 %54, label %43, label %34, !llvm.loop !18

55:                                               ; preds = %34, %85
  %56 = phi i64 [ 0, %34 ], [ %86, %85 ]
  %57 = getelementptr inbounds i8, i8* %37, i64 %56
  %58 = load i8, i8* %57, align 1, !tbaa !12, !range !17
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %85, label %60

60:                                               ; preds = %55
  %61 = icmp ugt i64 %6, %56
  br i1 %61, label %62, label %76

62:                                               ; preds = %60
  %63 = load i8*, i8** %28, align 8, !tbaa !19
  %64 = getelementptr inbounds i8, i8* %63, i64 %35
  %65 = load i8, i8* %64, align 1, !tbaa !20
  %66 = sext i8 %65 to i32
  %67 = call i32 @toupper(i32 noundef %66) #7
  %68 = load i8*, i8** %29, align 8, !tbaa !19
  %69 = getelementptr inbounds i8, i8* %68, i64 %56
  %70 = load i8, i8* %69, align 1, !tbaa !20
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %67, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = add nuw nsw i64 %56, 1
  %75 = getelementptr inbounds i8, i8* %40, i64 %74
  store i8 1, i8* %75, align 1, !tbaa !12
  br label %76

76:                                               ; preds = %73, %62, %60
  %77 = load i8*, i8** %30, align 8, !tbaa !19
  %78 = getelementptr inbounds i8, i8* %77, i64 %35
  %79 = load i8, i8* %78, align 1, !tbaa !20
  %80 = sext i8 %79 to i32
  %81 = call i32 @isupper(i32 noundef %80) #7
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = getelementptr inbounds i8, i8* %42, i64 %56
  store i8 1, i8* %84, align 1, !tbaa !12
  br label %85

85:                                               ; preds = %55, %83, %76
  %86 = add nuw nsw i64 %56, 1
  %87 = icmp eq i64 %56, %6
  br i1 %87, label %53, label %55, !llvm.loop !21
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @toupper(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @isupper(i32 noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER_processed.cpp() #5 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }

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
!13 = !{!"bool", !9, i64 0}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{i8 0, i8 2}
!18 = distinct !{!18, !15, !16}
!19 = !{!6, !8, i64 0}
!20 = !{!9, !9, i64 0}
!21 = distinct !{!21, !15, !16}
