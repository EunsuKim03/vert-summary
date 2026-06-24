; ModuleID = 'benchmark/cpp_transcoder/PRODUCT_NODES_K_TH_LEVEL_TREE_REPRESENTED_STRING/PRODUCT_NODES_K_TH_LEVEL_TREE_REPRESENTED_STRING_processed.cpp'
source_filename = "benchmark/cpp_transcoder/PRODUCT_NODES_K_TH_LEVEL_TREE_REPRESENTED_STRING/PRODUCT_NODES_K_TH_LEVEL_TREE_REPRESENTED_STRING_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_PRODUCT_NODES_K_TH_LEVEL_TREE_REPRESENTED_STRING_processed.cpp, i8* null }]

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
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !tbaa !12
  %10 = and i64 %4, 4294967295
  %11 = and i64 %4, 1
  %12 = icmp eq i64 %10, 1
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = sub nsw i64 %10, %11
  br label %34

15:                                               ; preds = %67, %7
  %16 = phi i32 [ undef, %7 ], [ %68, %67 ]
  %17 = phi i64 [ 0, %7 ], [ %70, %67 ]
  %18 = phi i32 [ -1, %7 ], [ %69, %67 ]
  %19 = phi i32 [ 1, %7 ], [ %68, %67 ]
  %20 = icmp eq i64 %11, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8, i8* %9, i64 %17
  %23 = load i8, i8* %22, align 1, !tbaa !13
  %24 = add i8 %23, -40
  %25 = icmp uge i8 %24, 2
  %26 = icmp eq i32 %18, %1
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = sext i8 %23 to i32
  %30 = add nsw i32 %29, -48
  %31 = mul nsw i32 %30, %19
  br label %32

32:                                               ; preds = %21, %15, %28, %2
  %33 = phi i32 [ 1, %2 ], [ %16, %15 ], [ %31, %28 ], [ %19, %21 ]
  ret i32 %33

34:                                               ; preds = %67, %13
  %35 = phi i64 [ 0, %13 ], [ %70, %67 ]
  %36 = phi i32 [ -1, %13 ], [ %69, %67 ]
  %37 = phi i32 [ 1, %13 ], [ %68, %67 ]
  %38 = phi i64 [ 0, %13 ], [ %71, %67 ]
  %39 = getelementptr inbounds i8, i8* %9, i64 %35
  %40 = load i8, i8* %39, align 1, !tbaa !13
  switch i8 %40, label %45 [
    i8 40, label %41
    i8 41, label %43
  ]

41:                                               ; preds = %34
  %42 = add nsw i32 %36, 1
  br label %51

43:                                               ; preds = %34
  %44 = add nsw i32 %36, -1
  br label %51

45:                                               ; preds = %34
  %46 = icmp eq i32 %36, %1
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = sext i8 %40 to i32
  %49 = add nsw i32 %48, -48
  %50 = mul nsw i32 %49, %37
  br label %51

51:                                               ; preds = %41, %45, %47, %43
  %52 = phi i32 [ %37, %41 ], [ %37, %43 ], [ %50, %47 ], [ %37, %45 ]
  %53 = phi i32 [ %42, %41 ], [ %44, %43 ], [ %1, %47 ], [ %36, %45 ]
  %54 = or i64 %35, 1
  %55 = getelementptr inbounds i8, i8* %9, i64 %54
  %56 = load i8, i8* %55, align 1, !tbaa !13
  switch i8 %56, label %61 [
    i8 40, label %59
    i8 41, label %57
  ]

57:                                               ; preds = %51
  %58 = add nsw i32 %53, -1
  br label %67

59:                                               ; preds = %51
  %60 = add nsw i32 %53, 1
  br label %67

61:                                               ; preds = %51
  %62 = icmp eq i32 %53, %1
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  %64 = sext i8 %56 to i32
  %65 = add nsw i32 %64, -48
  %66 = mul nsw i32 %65, %52
  br label %67

67:                                               ; preds = %63, %61, %59, %57
  %68 = phi i32 [ %52, %59 ], [ %52, %57 ], [ %66, %63 ], [ %52, %61 ]
  %69 = phi i32 [ %60, %59 ], [ %58, %57 ], [ %1, %63 ], [ %53, %61 ]
  %70 = add nuw nsw i64 %35, 2
  %71 = add i64 %38, 2
  %72 = icmp eq i64 %71, %14
  br i1 %72, label %15, label %34, !llvm.loop !14
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_PRODUCT_NODES_K_TH_LEVEL_TREE_REPRESENTED_STRING_processed.cpp() #4 section ".text.startup" {
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
