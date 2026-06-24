; ModuleID = 'benchmark/cpp_transcoder/NUMBER_SUBSEQUENCES_AB_STRING_REPEATED_K_TIMES/NUMBER_SUBSEQUENCES_AB_STRING_REPEATED_K_TIMES_processed.cpp'
source_filename = "benchmark/cpp_transcoder/NUMBER_SUBSEQUENCES_AB_STRING_REPEATED_K_TIMES/NUMBER_SUBSEQUENCES_AB_STRING_REPEATED_K_TIMES_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_NUMBER_SUBSEQUENCES_AB_STRING_REPEATED_K_TIMES_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8, !tbaa !5
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !tbaa !12
  %10 = and i64 %4, 4294967295
  %11 = and i64 %4, 1
  %12 = icmp eq i64 %10, 1
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = sub nsw i64 %10, %11
  br label %45

15:                                               ; preds = %45, %7
  %16 = phi i32 [ undef, %7 ], [ %66, %45 ]
  %17 = phi i32 [ undef, %7 ], [ %71, %45 ]
  %18 = phi i64 [ 0, %7 ], [ %72, %45 ]
  %19 = phi i32 [ 0, %7 ], [ %71, %45 ]
  %20 = phi i32 [ 0, %7 ], [ %66, %45 ]
  %21 = phi i32 [ undef, %7 ], [ %69, %45 ]
  %22 = icmp eq i64 %11, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds i8, i8* %9, i64 %18
  %25 = load i8, i8* %24, align 1, !tbaa !13
  %26 = icmp eq i8 %25, 97
  %27 = zext i1 %26 to i32
  %28 = add nuw nsw i32 %20, %27
  %29 = icmp eq i8 %25, 98
  %30 = select i1 %29, i32 %28, i32 0
  %31 = add nsw i32 %30, %21
  %32 = zext i1 %29 to i32
  %33 = add nuw nsw i32 %19, %32
  br label %34

34:                                               ; preds = %23, %15, %2
  %35 = phi i32 [ undef, %2 ], [ %21, %15 ], [ %31, %23 ]
  %36 = phi i32 [ 0, %2 ], [ %16, %15 ], [ %28, %23 ]
  %37 = phi i32 [ 0, %2 ], [ %17, %15 ], [ %33, %23 ]
  %38 = mul nsw i32 %35, %1
  %39 = add nsw i32 %1, -1
  %40 = mul nsw i32 %39, %1
  %41 = sdiv i32 %40, 2
  %42 = mul nsw i32 %36, %41
  %43 = mul nsw i32 %42, %37
  %44 = add nsw i32 %43, %38
  ret i32 %44

45:                                               ; preds = %45, %13
  %46 = phi i64 [ 0, %13 ], [ %72, %45 ]
  %47 = phi i32 [ 0, %13 ], [ %71, %45 ]
  %48 = phi i32 [ 0, %13 ], [ %66, %45 ]
  %49 = phi i32 [ undef, %13 ], [ %69, %45 ]
  %50 = phi i64 [ 0, %13 ], [ %73, %45 ]
  %51 = getelementptr inbounds i8, i8* %9, i64 %46
  %52 = load i8, i8* %51, align 1, !tbaa !13
  %53 = icmp eq i8 %52, 97
  %54 = zext i1 %53 to i32
  %55 = add nuw nsw i32 %48, %54
  %56 = icmp eq i8 %52, 98
  %57 = select i1 %56, i32 %55, i32 0
  %58 = add nsw i32 %57, %49
  %59 = zext i1 %56 to i32
  %60 = add nuw nsw i32 %47, %59
  %61 = or i64 %46, 1
  %62 = getelementptr inbounds i8, i8* %9, i64 %61
  %63 = load i8, i8* %62, align 1, !tbaa !13
  %64 = icmp eq i8 %63, 97
  %65 = zext i1 %64 to i32
  %66 = add nuw nsw i32 %55, %65
  %67 = icmp eq i8 %63, 98
  %68 = select i1 %67, i32 %66, i32 0
  %69 = add nsw i32 %68, %58
  %70 = zext i1 %67 to i32
  %71 = add nuw nsw i32 %60, %70
  %72 = add nuw nsw i64 %46, 2
  %73 = add i64 %50, 2
  %74 = icmp eq i64 %73, %14
  br i1 %74, label %15, label %45, !llvm.loop !14
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_NUMBER_SUBSEQUENCES_AB_STRING_REPEATED_K_TIMES_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
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
!12 = !{!6, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
