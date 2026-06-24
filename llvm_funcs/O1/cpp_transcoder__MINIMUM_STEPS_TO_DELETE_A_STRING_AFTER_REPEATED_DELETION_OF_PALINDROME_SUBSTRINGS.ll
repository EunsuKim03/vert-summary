; ModuleID = 'benchmark/cpp_transcoder/MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS/MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS/MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS_processed.cpp, i8* null }]

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
  %9 = icmp slt i32 %4, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = shl nuw nsw i64 %6, 2
  %12 = add i64 %3, 1
  %13 = and i64 %12, 4294967295
  br label %14

14:                                               ; preds = %10, %14
  %15 = phi i64 [ 0, %10 ], [ %19, %14 ]
  %16 = mul nuw nsw i64 %6, %15
  %17 = getelementptr i32, i32* %8, i64 %16
  %18 = bitcast i32* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 %11, i1 false), !tbaa !12
  %19 = add nuw nsw i64 %15, 1
  %20 = icmp eq i64 %19, %13
  br i1 %20, label %21, label %14, !llvm.loop !14

21:                                               ; preds = %14, %1
  %22 = icmp slt i32 %4, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %25 = and i64 %3, 4294967295
  br label %32

26:                                               ; preds = %38, %21
  %27 = shl i64 %3, 32
  %28 = add i64 %27, -4294967296
  %29 = ashr exact i64 %28, 32
  %30 = getelementptr inbounds i32, i32* %8, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !12
  ret i32 %31

32:                                               ; preds = %23, %38
  %33 = phi i32 [ %4, %23 ], [ %41, %38 ]
  %34 = phi i64 [ 0, %23 ], [ %40, %38 ]
  %35 = phi i32 [ 1, %23 ], [ %39, %38 ]
  %36 = icmp eq i32 %35, 1
  %37 = zext i32 %33 to i64
  br label %43

38:                                               ; preds = %108
  %39 = add nuw nsw i32 %35, 1
  %40 = add nuw nsw i64 %34, 1
  %41 = add i32 %33, -1
  %42 = icmp eq i64 %40, %25
  br i1 %42, label %26, label %32, !llvm.loop !17

43:                                               ; preds = %32, %108
  %44 = phi i64 [ 0, %32 ], [ %109, %108 ]
  %45 = phi i64 [ %34, %32 ], [ %110, %108 ]
  %46 = phi i32 [ %35, %32 ], [ %112, %108 ]
  %47 = phi i32 [ 2, %32 ], [ %111, %108 ]
  %48 = sext i32 %47 to i64
  br i1 %36, label %49, label %53

49:                                               ; preds = %43
  %50 = mul nuw nsw i64 %6, %44
  %51 = getelementptr inbounds i32, i32* %8, i64 %50
  %52 = getelementptr inbounds i32, i32* %51, i64 %45
  store i32 1, i32* %52, align 4, !tbaa !12
  br label %108

53:                                               ; preds = %43
  %54 = add nuw nsw i64 %44, 1
  %55 = mul nuw nsw i64 %6, %54
  %56 = getelementptr inbounds i32, i32* %8, i64 %55
  %57 = getelementptr inbounds i32, i32* %56, i64 %45
  %58 = load i32, i32* %57, align 4, !tbaa !12
  %59 = add nsw i32 %58, 1
  %60 = mul nuw nsw i64 %6, %44
  %61 = getelementptr inbounds i32, i32* %8, i64 %60
  %62 = getelementptr inbounds i32, i32* %61, i64 %45
  store i32 %59, i32* %62, align 4, !tbaa !12
  %63 = load i8*, i8** %24, align 8, !tbaa !18
  %64 = getelementptr inbounds i8, i8* %63, i64 %44
  %65 = load i8, i8* %64, align 1, !tbaa !19
  %66 = getelementptr inbounds i8, i8* %63, i64 %54
  %67 = load i8, i8* %66, align 1, !tbaa !19
  %68 = icmp eq i8 %65, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %53
  %70 = add nuw nsw i64 %44, 2
  %71 = mul nuw nsw i64 %6, %70
  %72 = getelementptr inbounds i32, i32* %8, i64 %71
  %73 = getelementptr inbounds i32, i32* %72, i64 %45
  %74 = load i32, i32* %73, align 4, !tbaa !12
  %75 = add nsw i32 %74, 1
  %76 = icmp slt i32 %59, %75
  %77 = select i1 %76, i32 %59, i32 %75
  store i32 %77, i32* %62, align 4, !tbaa !12
  br label %78

78:                                               ; preds = %69, %53
  %79 = shl i64 %44, 32
  %80 = add i64 %79, 8589934592
  %81 = ashr exact i64 %80, 32
  %82 = icmp sgt i64 %81, %45
  br i1 %82, label %108, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds i32, i32* %8, i64 %45
  br label %85

85:                                               ; preds = %83, %104
  %86 = phi i64 [ %105, %104 ], [ %48, %83 ]
  %87 = and i64 %86, 4294967295
  %88 = getelementptr inbounds i8, i8* %63, i64 %87
  %89 = load i8, i8* %88, align 1, !tbaa !19
  %90 = icmp eq i8 %65, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = add nsw i64 %86, -1
  %93 = getelementptr inbounds i32, i32* %56, i64 %92
  %94 = load i32, i32* %93, align 4, !tbaa !12
  %95 = add i64 %86, 1
  %96 = and i64 %95, 4294967295
  %97 = mul nuw nsw i64 %6, %96
  %98 = getelementptr inbounds i32, i32* %84, i64 %97
  %99 = load i32, i32* %98, align 4, !tbaa !12
  %100 = add nsw i32 %99, %94
  %101 = load i32, i32* %62, align 4, !tbaa !12
  %102 = icmp slt i32 %101, %100
  %103 = select i1 %102, i32 %101, i32 %100
  store i32 %103, i32* %62, align 4, !tbaa !12
  br label %104

104:                                              ; preds = %85, %91
  %105 = add nsw i64 %86, 1
  %106 = trunc i64 %105 to i32
  %107 = icmp eq i32 %46, %106
  br i1 %107, label %108, label %85, !llvm.loop !20

108:                                              ; preds = %104, %78, %49
  %109 = add nuw nsw i64 %44, 1
  %110 = add nuw nsw i64 %45, 1
  %111 = add nuw i32 %47, 1
  %112 = add nuw i32 %46, 1
  %113 = icmp eq i64 %109, %37
  br i1 %113, label %38, label %43, !llvm.loop !21
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_STEPS_TO_DELETE_A_STRING_AFTER_REPEATED_DELETION_OF_PALINDROME_SUBSTRINGS_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !15, !16}
!18 = !{!6, !8, i64 0}
!19 = !{!9, !9, i64 0}
!20 = distinct !{!20, !15, !16}
!21 = distinct !{!21, !15, !16}
