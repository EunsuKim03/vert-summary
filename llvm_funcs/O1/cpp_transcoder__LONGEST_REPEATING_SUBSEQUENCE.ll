; ModuleID = 'benchmark/cpp_transcoder/LONGEST_REPEATING_SUBSEQUENCE/LONGEST_REPEATING_SUBSEQUENCE_processed.cpp'
source_filename = "benchmark/cpp_transcoder/LONGEST_REPEATING_SUBSEQUENCE/LONGEST_REPEATING_SUBSEQUENCE_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LONGEST_REPEATING_SUBSEQUENCE_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
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
  br i1 %22, label %41, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %25 = add i32 %4, 1
  %26 = zext i32 %25 to i64
  %27 = load i8*, i8** %24, align 8, !tbaa !17
  %28 = zext i32 %25 to i64
  br label %29

29:                                               ; preds = %23, %48
  %30 = phi i64 [ 1, %23 ], [ %49, %48 ]
  %31 = add nsw i64 %30, -1
  %32 = getelementptr inbounds i8, i8* %27, i64 %31
  %33 = load i8, i8* %32, align 1, !tbaa !18
  %34 = mul nuw nsw i64 %6, %31
  %35 = getelementptr inbounds i32, i32* %8, i64 %34
  %36 = mul nuw nsw i64 %6, %30
  %37 = mul nuw nsw i64 %6, %30
  %38 = getelementptr inbounds i32, i32* %8, i64 %37
  %39 = mul nuw nsw i64 %6, %31
  %40 = getelementptr inbounds i32, i32* %8, i64 %39
  br label %51

41:                                               ; preds = %48, %21
  %42 = shl i64 %3, 32
  %43 = ashr exact i64 %42, 32
  %44 = mul nsw i64 %43, %6
  %45 = getelementptr inbounds i32, i32* %8, i64 %44
  %46 = getelementptr inbounds i32, i32* %45, i64 %43
  %47 = load i32, i32* %46, align 4, !tbaa !12
  ret i32 %47

48:                                               ; preds = %70
  %49 = add nuw nsw i64 %30, 1
  %50 = icmp eq i64 %49, %26
  br i1 %50, label %41, label %29, !llvm.loop !19

51:                                               ; preds = %29, %70
  %52 = phi i64 [ 1, %29 ], [ %75, %70 ]
  %53 = add nsw i64 %52, -1
  %54 = getelementptr inbounds i8, i8* %27, i64 %53
  %55 = load i8, i8* %54, align 1, !tbaa !18
  %56 = icmp ne i8 %33, %55
  %57 = icmp eq i64 %30, %52
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds i32, i32* %35, i64 %53
  %61 = load i32, i32* %60, align 4, !tbaa !12
  %62 = add nsw i32 %61, 1
  br label %70

63:                                               ; preds = %51
  %64 = getelementptr inbounds i32, i32* %38, i64 %53
  %65 = getelementptr inbounds i32, i32* %40, i64 %52
  %66 = load i32, i32* %64, align 4
  %67 = load i32, i32* %65, align 4
  %68 = icmp slt i32 %66, %67
  %69 = select i1 %68, i32 %67, i32 %66
  br label %70

70:                                               ; preds = %59, %63
  %71 = phi i64 [ %36, %59 ], [ %37, %63 ]
  %72 = phi i32 [ %62, %59 ], [ %69, %63 ]
  %73 = getelementptr inbounds i32, i32* %8, i64 %71
  %74 = getelementptr inbounds i32, i32* %73, i64 %52
  store i32 %72, i32* %74, align 4, !tbaa !12
  %75 = add nuw nsw i64 %52, 1
  %76 = icmp eq i64 %75, %28
  br i1 %76, label %48, label %51, !llvm.loop !20
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LONGEST_REPEATING_SUBSEQUENCE_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!17 = !{!6, !8, i64 0}
!18 = !{!9, !9, i64 0}
!19 = distinct !{!19, !15, !16}
!20 = distinct !{!20, !15, !16}
