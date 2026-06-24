; ModuleID = 'benchmark/cpp_transcoder/FIND_SUM_EVEN_INDEX_BINOMIAL_COEFFICIENTS/FIND_SUM_EVEN_INDEX_BINOMIAL_COEFFICIENTS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FIND_SUM_EVEN_INDEX_BINOMIAL_COEFFICIENTS/FIND_SUM_EVEN_INDEX_BINOMIAL_COEFFICIENTS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_SUM_EVEN_INDEX_BINOMIAL_COEFFICIENTS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = mul nuw i64 %3, %3
  %5 = alloca i32, i64 %4, align 16
  %6 = icmp slt i32 %0, 0
  br i1 %6, label %108, label %7

7:                                                ; preds = %1, %104
  %8 = phi i64 [ %105, %104 ], [ 0, %1 ]
  %9 = phi i64 [ %106, %104 ], [ 1, %1 ]
  %10 = add nsw i64 %8, -1
  %11 = mul nsw i64 %10, %3
  %12 = getelementptr inbounds i32, i32* %5, i64 %11
  %13 = mul nuw nsw i64 %8, %3
  %14 = getelementptr inbounds i32, i32* %5, i64 %13
  %15 = and i64 %9, 1
  %16 = icmp eq i64 %8, 0
  br i1 %16, label %87, label %17

17:                                               ; preds = %7
  %18 = and i64 %9, 9223372036854775806
  br label %57

19:                                               ; preds = %104
  br i1 %6, label %108, label %20

20:                                               ; preds = %19
  %21 = zext i32 %0 to i64
  %22 = mul nuw nsw i64 %3, %21
  %23 = getelementptr inbounds i32, i32* %5, i64 %22
  %24 = lshr i64 %21, 1
  %25 = add nuw nsw i64 %24, 1
  %26 = icmp ult i32 %0, 16
  br i1 %26, label %54, label %27

27:                                               ; preds = %20
  %28 = and i64 %25, 7
  %29 = icmp eq i64 %28, 0
  %30 = select i1 %29, i64 8, i64 %28
  %31 = sub nsw i64 %25, %30
  %32 = shl nsw i64 %31, 1
  br label %33

33:                                               ; preds = %33, %27
  %34 = phi i64 [ 0, %27 ], [ %49, %33 ]
  %35 = phi <4 x i32> [ zeroinitializer, %27 ], [ %47, %33 ]
  %36 = phi <4 x i32> [ zeroinitializer, %27 ], [ %48, %33 ]
  %37 = shl i64 %34, 1
  %38 = or i64 %37, 8
  %39 = getelementptr inbounds i32, i32* %23, i64 %37
  %40 = getelementptr inbounds i32, i32* %23, i64 %38
  %41 = bitcast i32* %39 to <8 x i32>*
  %42 = bitcast i32* %40 to <8 x i32>*
  %43 = load <8 x i32>, <8 x i32>* %41, align 4, !tbaa !5
  %44 = load <8 x i32>, <8 x i32>* %42, align 4, !tbaa !5
  %45 = shufflevector <8 x i32> %43, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %46 = shufflevector <8 x i32> %44, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %47 = add <4 x i32> %45, %35
  %48 = add <4 x i32> %46, %36
  %49 = add nuw i64 %34, 8
  %50 = icmp eq i64 %49, %31
  br i1 %50, label %51, label %33, !llvm.loop !9

51:                                               ; preds = %33
  %52 = add <4 x i32> %48, %47
  %53 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %52)
  br label %54

54:                                               ; preds = %20, %51
  %55 = phi i64 [ 0, %20 ], [ %32, %51 ]
  %56 = phi i32 [ 0, %20 ], [ %53, %51 ]
  br label %110

57:                                               ; preds = %81, %17
  %58 = phi i64 [ 0, %17 ], [ %84, %81 ]
  %59 = phi i64 [ 0, %17 ], [ %85, %81 ]
  %60 = icmp eq i64 %58, 0
  %61 = icmp eq i64 %58, %8
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %57
  %64 = add nsw i64 %58, -1
  %65 = getelementptr inbounds i32, i32* %12, i64 %64
  %66 = load i32, i32* %65, align 4, !tbaa !5
  %67 = getelementptr inbounds i32, i32* %12, i64 %58
  %68 = load i32, i32* %67, align 4, !tbaa !5
  %69 = add nsw i32 %68, %66
  br label %70

70:                                               ; preds = %57, %63
  %71 = phi i32 [ %69, %63 ], [ 1, %57 ]
  %72 = getelementptr inbounds i32, i32* %14, i64 %58
  store i32 %71, i32* %72, align 4, !tbaa !5
  %73 = or i64 %58, 1
  %74 = icmp eq i64 %73, %8
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds i32, i32* %12, i64 %58
  %77 = load i32, i32* %76, align 4, !tbaa !5
  %78 = getelementptr inbounds i32, i32* %12, i64 %73
  %79 = load i32, i32* %78, align 4, !tbaa !5
  %80 = add nsw i32 %79, %77
  br label %81

81:                                               ; preds = %75, %70
  %82 = phi i32 [ %80, %75 ], [ 1, %70 ]
  %83 = getelementptr inbounds i32, i32* %14, i64 %73
  store i32 %82, i32* %83, align 4, !tbaa !5
  %84 = add nuw nsw i64 %58, 2
  %85 = add i64 %59, 2
  %86 = icmp eq i64 %85, %18
  br i1 %86, label %87, label %57, !llvm.loop !12

87:                                               ; preds = %81, %7
  %88 = phi i64 [ 0, %7 ], [ %84, %81 ]
  %89 = icmp eq i64 %15, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %87
  %91 = icmp eq i64 %88, 0
  %92 = icmp eq i64 %88, %8
  %93 = select i1 %91, i1 true, i1 %92
  br i1 %93, label %101, label %94

94:                                               ; preds = %90
  %95 = add nsw i64 %88, -1
  %96 = getelementptr inbounds i32, i32* %12, i64 %95
  %97 = load i32, i32* %96, align 4, !tbaa !5
  %98 = getelementptr inbounds i32, i32* %12, i64 %88
  %99 = load i32, i32* %98, align 4, !tbaa !5
  %100 = add nsw i32 %99, %97
  br label %101

101:                                              ; preds = %94, %90
  %102 = phi i32 [ %100, %94 ], [ 1, %90 ]
  %103 = getelementptr inbounds i32, i32* %14, i64 %88
  store i32 %102, i32* %103, align 4, !tbaa !5
  br label %104

104:                                              ; preds = %87, %101
  %105 = add nuw nsw i64 %8, 1
  %106 = add nuw nsw i64 %9, 1
  %107 = icmp eq i64 %105, %3
  br i1 %107, label %19, label %7, !llvm.loop !13

108:                                              ; preds = %110, %1, %19
  %109 = phi i32 [ 0, %19 ], [ 0, %1 ], [ %115, %110 ]
  ret i32 %109

110:                                              ; preds = %54, %110
  %111 = phi i64 [ %116, %110 ], [ %55, %54 ]
  %112 = phi i32 [ %115, %110 ], [ %56, %54 ]
  %113 = getelementptr inbounds i32, i32* %23, i64 %111
  %114 = load i32, i32* %113, align 4, !tbaa !5
  %115 = add nsw i32 %114, %112
  %116 = add nuw nsw i64 %111, 2
  %117 = icmp ugt i64 %116, %21
  br i1 %117, label %108, label %110, !llvm.loop !14
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_SUM_EVEN_INDEX_BINOMIAL_COEFFICIENTS_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10, !15, !11}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
