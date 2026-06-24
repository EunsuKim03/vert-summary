; ModuleID = 'benchmark/cpp_transcoder/FIND_RECTANGLE_BINARY_MATRIX_CORNERS_1/FIND_RECTANGLE_BINARY_MATRIX_CORNERS_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FIND_RECTANGLE_BINARY_MATRIX_CORNERS_1/FIND_RECTANGLE_BINARY_MATRIX_CORNERS_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<int>, std::allocator<std::vector<int>>>::_Vector_impl_data" = type { %"class.std::vector.0"*, %"class.std::vector.0"*, %"class.std::vector.0"* }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { i32*, i32*, i32* }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_RECTANGLE_BINARY_MATRIX_CORNERS_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldRKSt6vectorIS_IiSaIiEESaIS1_EE(%"class.std::vector"* nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %3 = load %"class.std::vector.0"*, %"class.std::vector.0"** %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %5 = load %"class.std::vector.0"*, %"class.std::vector.0"** %4, align 8, !tbaa !10
  %6 = ptrtoint %"class.std::vector.0"* %3 to i64
  %7 = ptrtoint %"class.std::vector.0"* %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 24
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %93, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %5, i64 0, i32 0, i32 0, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8, !tbaa !11
  %15 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %5, i64 0, i32 0, i32 0, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8, !tbaa !13
  %17 = ptrtoint i32* %14 to i64
  %18 = ptrtoint i32* %16 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 2
  %21 = trunc i64 %20 to i32
  %22 = icmp sgt i32 %10, 0
  br i1 %22, label %23, label %89

23:                                               ; preds = %12
  %24 = icmp sgt i32 %21, 0
  %25 = shl i64 %19, 30
  %26 = ashr i64 %25, 32
  %27 = and i64 %9, 4294967295
  %28 = and i64 %20, 4294967295
  %29 = shl i64 %9, 32
  %30 = ashr exact i64 %29, 32
  %31 = and i64 %20, 4294967295
  br label %34

32:                                               ; preds = %85
  %33 = icmp eq i64 %88, %27
  br i1 %33, label %89, label %34, !llvm.loop !14

34:                                               ; preds = %23, %32
  %35 = phi i64 [ 0, %23 ], [ %88, %32 ]
  br i1 %24, label %36, label %85

36:                                               ; preds = %34
  %37 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %5, i64 %35, i32 0, i32 0, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8, !tbaa !13
  br label %39

39:                                               ; preds = %36, %81
  %40 = phi i64 [ 0, %36 ], [ %82, %81 ]
  %41 = phi i64 [ 1, %36 ], [ %83, %81 ]
  %42 = getelementptr inbounds i32, i32* %38, i64 %40
  %43 = load i32, i32* %42, align 4, !tbaa !17
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %81

45:                                               ; preds = %39
  %46 = add nuw nsw i64 %40, 1
  %47 = icmp slt i64 %46, %26
  br label %48

48:                                               ; preds = %45, %75
  %49 = phi i64 [ %35, %45 ], [ %50, %75 ]
  %50 = add nuw nsw i64 %49, 1
  %51 = icmp slt i64 %50, %30
  br i1 %51, label %52, label %78

52:                                               ; preds = %48
  br i1 %47, label %53, label %75

53:                                               ; preds = %52
  %54 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %5, i64 %50, i32 0, i32 0, i32 0, i32 0
  br label %55

55:                                               ; preds = %53, %70
  %56 = phi i64 [ %41, %53 ], [ %71, %70 ]
  %57 = phi i1 [ %47, %53 ], [ %73, %70 ]
  %58 = getelementptr inbounds i32, i32* %38, i64 %56
  %59 = load i32, i32* %58, align 4, !tbaa !17
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load i32*, i32** %54, align 8, !tbaa !13
  %63 = getelementptr inbounds i32, i32* %62, i64 %40
  %64 = load i32, i32* %63, align 4, !tbaa !17
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = getelementptr inbounds i32, i32* %62, i64 %56
  %68 = load i32, i32* %67, align 4, !tbaa !17
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %75, label %70

70:                                               ; preds = %55, %61, %66
  %71 = add nuw nsw i64 %56, 1
  %72 = trunc i64 %71 to i32
  %73 = icmp slt i32 %72, %21
  %74 = icmp eq i64 %71, %31
  br i1 %74, label %75, label %55, !llvm.loop !19

75:                                               ; preds = %70, %66, %52
  %76 = phi i1 [ %47, %52 ], [ %73, %70 ], [ %57, %66 ]
  %77 = phi i32 [ 11, %52 ], [ 11, %70 ], [ 1, %66 ]
  br i1 %76, label %78, label %48, !llvm.loop !20

78:                                               ; preds = %48, %75
  %79 = phi i32 [ %77, %75 ], [ 8, %48 ]
  %80 = icmp eq i32 %79, 8
  br i1 %80, label %81, label %85

81:                                               ; preds = %39, %78
  %82 = add nuw nsw i64 %40, 1
  %83 = add nuw nsw i64 %41, 1
  %84 = icmp eq i64 %82, %28
  br i1 %84, label %85, label %39, !llvm.loop !21

85:                                               ; preds = %78, %81, %34
  %86 = phi i32 [ 5, %34 ], [ %79, %78 ], [ 5, %81 ]
  %87 = icmp eq i32 %86, 5
  %88 = add nuw nsw i64 %35, 1
  br i1 %87, label %32, label %89

89:                                               ; preds = %85, %32, %12
  %90 = phi i32 [ 2, %12 ], [ %86, %85 ], [ 2, %32 ]
  %91 = icmp ne i32 %90, 2
  %92 = zext i1 %91 to i32
  br label %93

93:                                               ; preds = %1, %89
  %94 = phi i32 [ %92, %89 ], [ 0, %1 ]
  ret i32 %94
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_RECTANGLE_BINARY_MATRIX_CORNERS_1_processed.cpp() #4 section ".text.startup" {
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
!5 = !{!6, !7, i64 8}
!6 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!6, !7, i64 0}
!11 = !{!12, !7, i64 8}
!12 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !7, i64 0, !7, i64 8, !7, i64 16}
!13 = !{!12, !7, i64 0}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !8, i64 0}
!19 = distinct !{!19, !15, !16}
!20 = distinct !{!20, !15, !16}
!21 = distinct !{!21, !15, !16}
