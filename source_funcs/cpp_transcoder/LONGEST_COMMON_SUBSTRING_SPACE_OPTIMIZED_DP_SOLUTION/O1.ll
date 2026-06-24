; ModuleID = 'benchmark/cpp_transcoder/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION_processed.cpp'
source_filename = "benchmark/cpp_transcoder/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION_processed.cpp, i8* null }]

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
  %7 = and i64 %6, 4294967295
  %8 = shl nuw nsw i64 %7, 1
  %9 = alloca i32, i64 %8, align 16
  %10 = and i64 %4, 2147483648
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = and i64 %6, 2147483648
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %17 = add i64 %6, 1
  %18 = add i64 %4, 1
  %19 = and i64 %18, 4294967295
  %20 = and i64 %17, 4294967295
  br label %21

21:                                               ; preds = %12, %43
  %22 = phi i64 [ 0, %12 ], [ %46, %43 ]
  %23 = phi i32 [ 0, %12 ], [ %45, %43 ]
  %24 = phi i32 [ 0, %12 ], [ %44, %43 ]
  br i1 %14, label %25, label %43

25:                                               ; preds = %21
  %26 = icmp eq i64 %22, 0
  %27 = add nsw i64 %22, -1
  %28 = zext i32 %23 to i64
  %29 = mul nuw nsw i64 %7, %28
  %30 = getelementptr inbounds i32, i32* %9, i64 %29
  %31 = sub nsw i32 1, %23
  %32 = zext i32 %31 to i64
  %33 = mul nuw nsw i64 %7, %32
  %34 = getelementptr inbounds i32, i32* %9, i64 %33
  %35 = zext i32 %23 to i64
  %36 = mul nuw nsw i64 %7, %35
  %37 = getelementptr inbounds i32, i32* %9, i64 %36
  %38 = zext i32 %23 to i64
  %39 = mul nuw nsw i64 %7, %38
  %40 = getelementptr inbounds i32, i32* %9, i64 %39
  br label %48

41:                                               ; preds = %43, %2
  %42 = phi i32 [ 0, %2 ], [ %44, %43 ]
  ret i32 %42

43:                                               ; preds = %73, %21
  %44 = phi i32 [ %24, %21 ], [ %74, %73 ]
  %45 = sub nsw i32 1, %23
  %46 = add nuw nsw i64 %22, 1
  %47 = icmp eq i64 %46, %19
  br i1 %47, label %41, label %21, !llvm.loop !12

48:                                               ; preds = %25, %73
  %49 = phi i64 [ 0, %25 ], [ %75, %73 ]
  %50 = phi i32 [ %24, %25 ], [ %74, %73 ]
  %51 = icmp eq i64 %49, 0
  %52 = select i1 %26, i1 true, i1 %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = getelementptr inbounds i32, i32* %40, i64 %49
  store i32 0, i32* %54, align 4, !tbaa !15
  br label %73

55:                                               ; preds = %48
  %56 = load i8*, i8** %15, align 8, !tbaa !17
  %57 = getelementptr inbounds i8, i8* %56, i64 %27
  %58 = load i8, i8* %57, align 1, !tbaa !18
  %59 = add nsw i64 %49, -1
  %60 = load i8*, i8** %16, align 8, !tbaa !17
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  %62 = load i8, i8* %61, align 1, !tbaa !18
  %63 = icmp eq i8 %58, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = getelementptr inbounds i32, i32* %34, i64 %59
  %66 = load i32, i32* %65, align 4, !tbaa !15
  %67 = add nsw i32 %66, 1
  %68 = getelementptr inbounds i32, i32* %37, i64 %49
  store i32 %67, i32* %68, align 4, !tbaa !15
  %69 = icmp slt i32 %50, %67
  %70 = select i1 %69, i32 %67, i32 %50
  br label %73

71:                                               ; preds = %55
  %72 = getelementptr inbounds i32, i32* %30, i64 %49
  store i32 0, i32* %72, align 4, !tbaa !15
  br label %73

73:                                               ; preds = %53, %71, %64
  %74 = phi i32 [ %50, %53 ], [ %70, %64 ], [ %50, %71 ]
  %75 = add nuw nsw i64 %49, 1
  %76 = icmp eq i64 %75, %20
  br i1 %76, label %43, label %48, !llvm.loop !19
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !9, i64 0}
!17 = !{!6, !8, i64 0}
!18 = !{!9, !9, i64 0}
!19 = distinct !{!19, !13, !14}
