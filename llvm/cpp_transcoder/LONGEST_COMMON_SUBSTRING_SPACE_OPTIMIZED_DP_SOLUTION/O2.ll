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
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = and i64 %6, 2147483648
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %17 = add i64 %6, 1
  %18 = add nuw i64 %4, 1
  %19 = and i64 %18, 4294967295
  %20 = and i64 %17, 4294967295
  br label %21

21:                                               ; preds = %12, %39
  %22 = phi i64 [ 0, %12 ], [ %42, %39 ]
  %23 = phi i32 [ 0, %12 ], [ %40, %39 ]
  %24 = phi i32 [ 0, %12 ], [ %41, %39 ]
  br i1 %14, label %27, label %25

25:                                               ; preds = %21
  %26 = sub nsw i32 1, %23
  br label %39

27:                                               ; preds = %21
  %28 = icmp eq i64 %22, 0
  %29 = add nsw i64 %22, -1
  %30 = zext i32 %23 to i64
  %31 = mul nuw nsw i64 %7, %30
  %32 = getelementptr inbounds i32, i32* %9, i64 %31
  %33 = sub nsw i32 1, %23
  %34 = zext i32 %33 to i64
  %35 = mul nuw nsw i64 %7, %34
  %36 = getelementptr inbounds i32, i32* %9, i64 %35
  br label %44

37:                                               ; preds = %39, %2
  %38 = phi i32 [ 0, %2 ], [ %41, %39 ]
  ret i32 %38

39:                                               ; preds = %69, %25
  %40 = phi i32 [ %26, %25 ], [ %33, %69 ]
  %41 = phi i32 [ %24, %25 ], [ %70, %69 ]
  %42 = add nuw nsw i64 %22, 1
  %43 = icmp eq i64 %42, %19
  br i1 %43, label %37, label %21, !llvm.loop !12

44:                                               ; preds = %27, %69
  %45 = phi i64 [ 0, %27 ], [ %71, %69 ]
  %46 = phi i32 [ %24, %27 ], [ %70, %69 ]
  %47 = icmp eq i64 %45, 0
  %48 = select i1 %28, i1 true, i1 %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = getelementptr inbounds i32, i32* %32, i64 %45
  store i32 0, i32* %50, align 4, !tbaa !14
  br label %69

51:                                               ; preds = %44
  %52 = load i8*, i8** %15, align 8, !tbaa !16
  %53 = getelementptr inbounds i8, i8* %52, i64 %29
  %54 = load i8, i8* %53, align 1, !tbaa !17
  %55 = add nsw i64 %45, -1
  %56 = load i8*, i8** %16, align 8, !tbaa !16
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  %58 = load i8, i8* %57, align 1, !tbaa !17
  %59 = icmp eq i8 %54, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = getelementptr inbounds i32, i32* %36, i64 %55
  %62 = load i32, i32* %61, align 4, !tbaa !14
  %63 = add nsw i32 %62, 1
  %64 = getelementptr inbounds i32, i32* %32, i64 %45
  store i32 %63, i32* %64, align 4, !tbaa !14
  %65 = icmp slt i32 %46, %63
  %66 = select i1 %65, i32 %63, i32 %46
  br label %69

67:                                               ; preds = %51
  %68 = getelementptr inbounds i32, i32* %32, i64 %45
  store i32 0, i32* %68, align 4, !tbaa !14
  br label %69

69:                                               ; preds = %49, %67, %60
  %70 = phi i32 [ %46, %49 ], [ %66, %60 ], [ %46, %67 ]
  %71 = add nuw nsw i64 %45, 1
  %72 = icmp eq i64 %71, %20
  br i1 %72, label %39, label %44, !llvm.loop !18
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !9, i64 0}
!16 = !{!6, !8, i64 0}
!17 = !{!9, !9, i64 0}
!18 = distinct !{!18, !13}
