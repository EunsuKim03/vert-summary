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
  br i1 %11, label %82, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %5, i64 0, i32 0, i32 0, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8, !tbaa !11
  %15 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %5, i64 0, i32 0, i32 0, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8, !tbaa !13
  %17 = ptrtoint i32* %14 to i64
  %18 = ptrtoint i32* %16 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 2
  %21 = icmp sgt i32 %10, 0
  br i1 %21, label %22, label %82

22:                                               ; preds = %12
  %23 = trunc i64 %20 to i32
  %24 = icmp sgt i32 %23, 0
  %25 = shl i64 %19, 30
  %26 = ashr i64 %25, 32
  %27 = shl i64 %9, 32
  %28 = ashr exact i64 %27, 32
  %29 = and i64 %9, 4294967295
  %30 = and i64 %20, 4294967295
  br label %31

31:                                               ; preds = %22, %78
  %32 = phi i64 [ 0, %22 ], [ %79, %78 ]
  %33 = phi i64 [ 1, %22 ], [ %80, %78 ]
  br i1 %24, label %36, label %34

34:                                               ; preds = %31
  %35 = add nuw nsw i64 %32, 1
  br label %78

36:                                               ; preds = %31
  %37 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %5, i64 %32, i32 0, i32 0, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8, !tbaa !13
  %39 = add nuw nsw i64 %32, 1
  %40 = icmp sge i64 %39, %28
  br label %41

41:                                               ; preds = %36, %75
  %42 = phi i64 [ 0, %36 ], [ %48, %75 ]
  %43 = phi i64 [ 1, %36 ], [ %76, %75 ]
  %44 = getelementptr inbounds i32, i32* %38, i64 %42
  %45 = load i32, i32* %44, align 4, !tbaa !14
  %46 = icmp ne i32 %45, 1
  %47 = select i1 %46, i1 true, i1 %40
  %48 = add nuw nsw i64 %42, 1
  br i1 %47, label %75, label %49

49:                                               ; preds = %41
  %50 = icmp slt i64 %48, %26
  br label %54

51:                                               ; preds = %72, %54
  %52 = add nuw nsw i64 %55, 1
  %53 = icmp eq i64 %52, %29
  br i1 %53, label %75, label %54

54:                                               ; preds = %49, %51
  %55 = phi i64 [ %33, %49 ], [ %52, %51 ]
  br i1 %50, label %56, label %51

56:                                               ; preds = %54
  %57 = getelementptr inbounds %"class.std::vector.0", %"class.std::vector.0"* %5, i64 %55, i32 0, i32 0, i32 0, i32 0
  br label %58

58:                                               ; preds = %56, %72
  %59 = phi i64 [ %43, %56 ], [ %73, %72 ]
  %60 = getelementptr inbounds i32, i32* %38, i64 %59
  %61 = load i32, i32* %60, align 4, !tbaa !14
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load i32*, i32** %57, align 8, !tbaa !13
  %65 = getelementptr inbounds i32, i32* %64, i64 %42
  %66 = load i32, i32* %65, align 4, !tbaa !14
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = getelementptr inbounds i32, i32* %64, i64 %59
  %70 = load i32, i32* %69, align 4, !tbaa !14
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %82, label %72

72:                                               ; preds = %58, %63, %68
  %73 = add nuw nsw i64 %59, 1
  %74 = icmp eq i64 %73, %30
  br i1 %74, label %51, label %58, !llvm.loop !16

75:                                               ; preds = %51, %41
  %76 = add nuw nsw i64 %43, 1
  %77 = icmp eq i64 %48, %30
  br i1 %77, label %78, label %41, !llvm.loop !18

78:                                               ; preds = %75, %34
  %79 = phi i64 [ %35, %34 ], [ %39, %75 ]
  %80 = add nuw nsw i64 %33, 1
  %81 = icmp eq i64 %79, %29
  br i1 %81, label %82, label %31, !llvm.loop !19

82:                                               ; preds = %78, %68, %12, %1
  %83 = phi i32 [ 0, %1 ], [ 0, %12 ], [ 1, %68 ], [ 0, %78 ]
  ret i32 %83
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_RECTANGLE_BINARY_MATRIX_CORNERS_1_processed.cpp() #4 section ".text.startup" {
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
!5 = !{!6, !7, i64 8}
!6 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!6, !7, i64 0}
!11 = !{!12, !7, i64 8}
!12 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !7, i64 0, !7, i64 8, !7, i64 16}
!13 = !{!12, !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !8, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
