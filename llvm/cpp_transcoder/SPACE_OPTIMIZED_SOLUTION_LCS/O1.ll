; ModuleID = 'benchmark/cpp_transcoder/SPACE_OPTIMIZED_SOLUTION_LCS/SPACE_OPTIMIZED_SOLUTION_LCS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/SPACE_OPTIMIZED_SOLUTION_LCS/SPACE_OPTIMIZED_SOLUTION_LCS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SPACE_OPTIMIZED_SOLUTION_LCS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0, %"class.std::__cxx11::basic_string"* nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !5
  %7 = add i64 %6, 1
  %8 = and i64 %7, 4294967295
  %9 = shl nuw nsw i64 %8, 1
  %10 = alloca i32, i64 %9, align 16
  %11 = and i64 %4, 2147483648
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = and i64 %6, 2147483648
  %15 = icmp eq i64 %14, 0
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %18 = add i64 %6, 1
  %19 = add i64 %4, 1
  %20 = and i64 %19, 4294967295
  %21 = and i64 %18, 4294967295
  br label %32

22:                                               ; preds = %56
  %23 = zext i32 %35 to i64
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i64 [ %23, %22 ], [ 0, %2 ]
  %26 = mul nuw nsw i64 %25, %8
  %27 = getelementptr inbounds i32, i32* %10, i64 %26
  %28 = shl i64 %6, 32
  %29 = ashr exact i64 %28, 32
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !12
  ret i32 %31

32:                                               ; preds = %13, %56
  %33 = phi i64 [ 0, %13 ], [ %57, %56 ]
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 1
  br i1 %15, label %36, label %56

36:                                               ; preds = %32
  %37 = icmp eq i64 %33, 0
  %38 = add nsw i64 %33, -1
  %39 = xor i32 %35, 1
  %40 = zext i32 %39 to i64
  %41 = mul nuw nsw i64 %8, %40
  %42 = getelementptr inbounds i32, i32* %10, i64 %41
  %43 = zext i32 %35 to i64
  %44 = mul nuw nsw i64 %8, %43
  %45 = getelementptr inbounds i32, i32* %10, i64 %44
  %46 = xor i32 %35, 1
  %47 = zext i32 %46 to i64
  %48 = mul nuw nsw i64 %8, %47
  %49 = getelementptr inbounds i32, i32* %10, i64 %48
  %50 = zext i32 %35 to i64
  %51 = mul nuw nsw i64 %8, %50
  %52 = getelementptr inbounds i32, i32* %10, i64 %51
  %53 = zext i32 %35 to i64
  %54 = mul nuw nsw i64 %8, %53
  %55 = getelementptr inbounds i32, i32* %10, i64 %54
  br label %59

56:                                               ; preds = %83, %32
  %57 = add nuw nsw i64 %33, 1
  %58 = icmp eq i64 %57, %20
  br i1 %58, label %22, label %32, !llvm.loop !14

59:                                               ; preds = %36, %83
  %60 = phi i64 [ 0, %36 ], [ %87, %83 ]
  %61 = icmp eq i64 %60, 0
  %62 = select i1 %37, i1 true, i1 %61
  br i1 %62, label %83, label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %16, align 8, !tbaa !17
  %65 = getelementptr inbounds i8, i8* %64, i64 %38
  %66 = load i8, i8* %65, align 1, !tbaa !18
  %67 = add nsw i64 %60, -1
  %68 = load i8*, i8** %17, align 8, !tbaa !17
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  %70 = load i8, i8* %69, align 1, !tbaa !18
  %71 = icmp eq i8 %66, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = getelementptr inbounds i32, i32* %49, i64 %67
  %74 = load i32, i32* %73, align 4, !tbaa !12
  %75 = add nsw i32 %74, 1
  br label %83

76:                                               ; preds = %63
  %77 = getelementptr inbounds i32, i32* %42, i64 %60
  %78 = getelementptr inbounds i32, i32* %45, i64 %67
  %79 = load i32, i32* %77, align 4
  %80 = load i32, i32* %78, align 4
  %81 = icmp slt i32 %79, %80
  %82 = select i1 %81, i32 %80, i32 %79
  br label %83

83:                                               ; preds = %59, %76, %72
  %84 = phi i32* [ %45, %76 ], [ %52, %72 ], [ %55, %59 ]
  %85 = phi i32 [ %82, %76 ], [ %75, %72 ], [ 0, %59 ]
  %86 = getelementptr inbounds i32, i32* %84, i64 %60
  store i32 %85, i32* %86, align 4, !tbaa !12
  %87 = add nuw nsw i64 %60, 1
  %88 = icmp eq i64 %87, %21
  br i1 %88, label %56, label %59, !llvm.loop !19
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SPACE_OPTIMIZED_SOLUTION_LCS_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !9, i64 0}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!6, !8, i64 0}
!18 = !{!9, !9, i64 0}
!19 = distinct !{!19, !15, !16}
