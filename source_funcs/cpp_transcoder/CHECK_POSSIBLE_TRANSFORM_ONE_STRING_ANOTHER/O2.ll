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
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i8 1, i8* %12, align 16, !tbaa !12
  br label %56

16:                                               ; preds = %2
  %17 = and i64 %6, 2147483648
  %18 = icmp eq i64 %17, 0
  %19 = add nuw i64 %4, 1
  %20 = and i64 %19, 4294967295
  %21 = add nsw i64 %20, -1
  %22 = and i64 %19, 3
  %23 = icmp ult i64 %21, 3
  br i1 %23, label %41, label %24

24:                                               ; preds = %16
  %25 = sub nsw i64 %20, %22
  br label %26

26:                                               ; preds = %59, %24
  %27 = phi i64 [ 0, %24 ], [ %60, %59 ]
  %28 = phi i64 [ 0, %24 ], [ %61, %59 ]
  br i1 %18, label %29, label %59

29:                                               ; preds = %26
  %30 = mul nuw nsw i64 %10, %27
  %31 = getelementptr i8, i8* %12, i64 %30
  call void @llvm.memset.p0i8.i64(i8* align 4 %31, i8 0, i64 %10, i1 false), !tbaa !12
  %32 = or i64 %27, 1
  %33 = mul nuw nsw i64 %10, %32
  %34 = getelementptr i8, i8* %12, i64 %33
  call void @llvm.memset.p0i8.i64(i8* align 1 %34, i8 0, i64 %10, i1 false), !tbaa !12
  %35 = or i64 %27, 2
  %36 = mul nuw nsw i64 %10, %35
  %37 = getelementptr i8, i8* %12, i64 %36
  call void @llvm.memset.p0i8.i64(i8* align 2 %37, i8 0, i64 %10, i1 false), !tbaa !12
  %38 = or i64 %27, 3
  %39 = mul nuw nsw i64 %10, %38
  %40 = getelementptr i8, i8* %12, i64 %39
  call void @llvm.memset.p0i8.i64(i8* align 1 %40, i8 0, i64 %10, i1 false), !tbaa !12
  br label %59

41:                                               ; preds = %59, %16
  %42 = phi i64 [ 0, %16 ], [ %60, %59 ]
  %43 = icmp eq i64 %22, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %41, %50
  %45 = phi i64 [ %51, %50 ], [ %42, %41 ]
  %46 = phi i64 [ %52, %50 ], [ 0, %41 ]
  br i1 %18, label %47, label %50

47:                                               ; preds = %44
  %48 = mul nuw nsw i64 %10, %45
  %49 = getelementptr i8, i8* %12, i64 %48
  call void @llvm.memset.p0i8.i64(i8* align 1 %49, i8 0, i64 %10, i1 false), !tbaa !12
  br label %50

50:                                               ; preds = %47, %44
  %51 = add nuw nsw i64 %45, 1
  %52 = add i64 %46, 1
  %53 = icmp eq i64 %52, %22
  br i1 %53, label %54, label %44, !llvm.loop !14

54:                                               ; preds = %50, %41
  store i8 1, i8* %12, align 16, !tbaa !12
  %55 = icmp eq i64 %4, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %15, %54
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  br label %63

59:                                               ; preds = %26, %29
  %60 = add nuw nsw i64 %27, 4
  %61 = add i64 %28, 4
  %62 = icmp eq i64 %61, %25
  br i1 %62, label %41, label %26, !llvm.loop !16

63:                                               ; preds = %56, %80
  %64 = phi i64 [ 0, %56 ], [ %67, %80 ]
  %65 = mul nuw nsw i64 %64, %10
  %66 = getelementptr inbounds i8, i8* %12, i64 %65
  %67 = add nuw nsw i64 %64, 1
  %68 = mul nuw nsw i64 %10, %67
  %69 = getelementptr inbounds i8, i8* %12, i64 %68
  br label %82

70:                                               ; preds = %80, %54
  %71 = shl i64 %4, 32
  %72 = ashr exact i64 %71, 32
  %73 = mul nsw i64 %10, %72
  %74 = getelementptr inbounds i8, i8* %12, i64 %73
  %75 = shl i64 %6, 32
  %76 = ashr exact i64 %75, 32
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1, !tbaa !12, !range !18
  %79 = zext i8 %78 to i32
  ret i32 %79

80:                                               ; preds = %108
  %81 = icmp eq i64 %67, %4
  br i1 %81, label %70, label %63, !llvm.loop !19

82:                                               ; preds = %63, %108
  %83 = phi i64 [ 0, %63 ], [ %109, %108 ]
  %84 = getelementptr inbounds i8, i8* %66, i64 %83
  %85 = load i8, i8* %84, align 1, !tbaa !12, !range !18
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %108, label %87

87:                                               ; preds = %82
  %88 = icmp ugt i64 %6, %83
  %89 = load i8*, i8** %57, align 8, !tbaa !20
  %90 = getelementptr inbounds i8, i8* %89, i64 %64
  %91 = load i8, i8* %90, align 1, !tbaa !21
  %92 = sext i8 %91 to i32
  br i1 %88, label %93, label %103

93:                                               ; preds = %87
  %94 = tail call i32 @toupper(i32 noundef %92) #7
  %95 = load i8*, i8** %58, align 8, !tbaa !20
  %96 = getelementptr inbounds i8, i8* %95, i64 %83
  %97 = load i8, i8* %96, align 1, !tbaa !21
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %94, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = add nuw nsw i64 %83, 1
  %102 = getelementptr inbounds i8, i8* %69, i64 %101
  store i8 1, i8* %102, align 1, !tbaa !12
  br label %103

103:                                              ; preds = %87, %100, %93
  %104 = tail call i32 @isupper(i32 noundef %92) #7
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = getelementptr inbounds i8, i8* %69, i64 %83
  store i8 1, i8* %107, align 1, !tbaa !12
  br label %108

108:                                              ; preds = %82, %106, %103
  %109 = add nuw nsw i64 %83, 1
  %110 = icmp eq i64 %83, %6
  br i1 %110, label %80, label %82, !llvm.loop !22
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @toupper(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @isupper(i32 noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER_processed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8
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
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{i8 0, i8 2}
!19 = distinct !{!19, !17}
!20 = !{!6, !8, i64 0}
!21 = !{!9, !9, i64 0}
!22 = distinct !{!22, !17}
