; ModuleID = 'llvm/cpp_transcoder/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp slt i32 %1, 3
  br i1 %3, label %148, label %4

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -2
  %6 = add nsw i32 %1, -1
  %7 = zext i32 %6 to i64
  %8 = zext i32 %5 to i64
  %9 = zext i32 %6 to i64
  %10 = add i32 %1, -3
  br label %16

11:                                               ; preds = %27, %16
  %12 = phi i32 [ %20, %16 ], [ %28, %27 ]
  %13 = add nuw nsw i64 %19, 1
  %14 = add nuw nsw i64 %18, 1
  %15 = icmp eq i64 %23, %8
  br i1 %15, label %148, label %16, !llvm.loop !5

16:                                               ; preds = %4, %11
  %17 = phi i64 [ 0, %4 ], [ %23, %11 ]
  %18 = phi i64 [ 1, %4 ], [ %14, %11 ]
  %19 = phi i64 [ 2, %4 ], [ %13, %11 ]
  %20 = phi i32 [ -2147483648, %4 ], [ %12, %11 ]
  %21 = trunc i64 %17 to i32
  %22 = trunc i64 %17 to i32
  %23 = add nuw nsw i64 %17, 1
  %24 = icmp ult i64 %23, %7
  br i1 %24, label %25, label %11

25:                                               ; preds = %16
  %26 = getelementptr inbounds i32, i32* %0, i64 %17
  br label %32

27:                                               ; preds = %137, %127, %32
  %28 = phi i32 [ %36, %32 ], [ %132, %127 ], [ %144, %137 ]
  %29 = add nuw nsw i64 %35, 1
  %30 = icmp eq i64 %49, %9
  %31 = add i32 %33, 1
  br i1 %30, label %11, label %32, !llvm.loop !7

32:                                               ; preds = %25, %27
  %33 = phi i32 [ 0, %25 ], [ %31, %27 ]
  %34 = phi i64 [ %18, %25 ], [ %49, %27 ]
  %35 = phi i64 [ %19, %25 ], [ %29, %27 ]
  %36 = phi i32 [ %20, %25 ], [ %28, %27 ]
  %37 = add i32 %33, %21
  %38 = sub i32 %10, %37
  %39 = zext i32 %38 to i64
  %40 = add nuw nsw i64 %39, 1
  %41 = and i64 %40, 8589934584
  %42 = add nsw i64 %41, -8
  %43 = lshr exact i64 %42, 3
  %44 = add nuw nsw i64 %43, 1
  %45 = add i32 %33, %22
  %46 = sub i32 %10, %45
  %47 = zext i32 %46 to i64
  %48 = add nuw nsw i64 %47, 1
  %49 = add nuw nsw i64 %34, 1
  %50 = trunc i64 %49 to i32
  %51 = icmp slt i32 %50, %1
  br i1 %51, label %52, label %27

52:                                               ; preds = %32
  %53 = load i32, i32* %26, align 4, !tbaa !8
  %54 = getelementptr inbounds i32, i32* %0, i64 %34
  %55 = load i32, i32* %54, align 4, !tbaa !8
  %56 = mul nsw i32 %55, %53
  %57 = icmp ult i32 %46, 7
  br i1 %57, label %134, label %58

58:                                               ; preds = %52
  %59 = and i64 %48, 8589934584
  %60 = add nuw i64 %35, %59
  %61 = insertelement <4 x i32> poison, i32 %36, i64 0
  %62 = shufflevector <4 x i32> %61, <4 x i32> poison, <4 x i32> zeroinitializer
  %63 = insertelement <4 x i32> poison, i32 %56, i64 0
  %64 = shufflevector <4 x i32> %63, <4 x i32> poison, <4 x i32> zeroinitializer
  %65 = insertelement <4 x i32> poison, i32 %56, i64 0
  %66 = shufflevector <4 x i32> %65, <4 x i32> poison, <4 x i32> zeroinitializer
  %67 = and i64 %44, 1
  %68 = icmp eq i64 %42, 0
  br i1 %68, label %106, label %69

69:                                               ; preds = %58
  %70 = and i64 %44, 4611686018427387902
  br label %71

71:                                               ; preds = %71, %69
  %72 = phi i64 [ 0, %69 ], [ %103, %71 ]
  %73 = phi <4 x i32> [ %62, %69 ], [ %101, %71 ]
  %74 = phi <4 x i32> [ %62, %69 ], [ %102, %71 ]
  %75 = phi i64 [ 0, %69 ], [ %104, %71 ]
  %76 = add i64 %35, %72
  %77 = getelementptr inbounds i32, i32* %0, i64 %76
  %78 = bitcast i32* %77 to <4 x i32>*
  %79 = load <4 x i32>, <4 x i32>* %78, align 4, !tbaa !8
  %80 = getelementptr inbounds i32, i32* %77, i64 4
  %81 = bitcast i32* %80 to <4 x i32>*
  %82 = load <4 x i32>, <4 x i32>* %81, align 4, !tbaa !8
  %83 = mul nsw <4 x i32> %64, %79
  %84 = mul nsw <4 x i32> %66, %82
  %85 = icmp slt <4 x i32> %73, %83
  %86 = icmp slt <4 x i32> %74, %84
  %87 = select <4 x i1> %85, <4 x i32> %83, <4 x i32> %73
  %88 = select <4 x i1> %86, <4 x i32> %84, <4 x i32> %74
  %89 = or i64 %72, 8
  %90 = add i64 %35, %89
  %91 = getelementptr inbounds i32, i32* %0, i64 %90
  %92 = bitcast i32* %91 to <4 x i32>*
  %93 = load <4 x i32>, <4 x i32>* %92, align 4, !tbaa !8
  %94 = getelementptr inbounds i32, i32* %91, i64 4
  %95 = bitcast i32* %94 to <4 x i32>*
  %96 = load <4 x i32>, <4 x i32>* %95, align 4, !tbaa !8
  %97 = mul nsw <4 x i32> %64, %93
  %98 = mul nsw <4 x i32> %66, %96
  %99 = icmp slt <4 x i32> %87, %97
  %100 = icmp slt <4 x i32> %88, %98
  %101 = select <4 x i1> %99, <4 x i32> %97, <4 x i32> %87
  %102 = select <4 x i1> %100, <4 x i32> %98, <4 x i32> %88
  %103 = add nuw i64 %72, 16
  %104 = add i64 %75, 2
  %105 = icmp eq i64 %104, %70
  br i1 %105, label %106, label %71, !llvm.loop !12

106:                                              ; preds = %71, %58
  %107 = phi <4 x i32> [ undef, %58 ], [ %101, %71 ]
  %108 = phi <4 x i32> [ undef, %58 ], [ %102, %71 ]
  %109 = phi i64 [ 0, %58 ], [ %103, %71 ]
  %110 = phi <4 x i32> [ %62, %58 ], [ %101, %71 ]
  %111 = phi <4 x i32> [ %62, %58 ], [ %102, %71 ]
  %112 = icmp eq i64 %67, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %106
  %114 = add i64 %35, %109
  %115 = getelementptr inbounds i32, i32* %0, i64 %114
  %116 = bitcast i32* %115 to <4 x i32>*
  %117 = load <4 x i32>, <4 x i32>* %116, align 4, !tbaa !8
  %118 = getelementptr inbounds i32, i32* %115, i64 4
  %119 = bitcast i32* %118 to <4 x i32>*
  %120 = load <4 x i32>, <4 x i32>* %119, align 4, !tbaa !8
  %121 = mul nsw <4 x i32> %64, %117
  %122 = mul nsw <4 x i32> %66, %120
  %123 = icmp slt <4 x i32> %110, %121
  %124 = icmp slt <4 x i32> %111, %122
  %125 = select <4 x i1> %123, <4 x i32> %121, <4 x i32> %110
  %126 = select <4 x i1> %124, <4 x i32> %122, <4 x i32> %111
  br label %127

127:                                              ; preds = %106, %113
  %128 = phi <4 x i32> [ %107, %106 ], [ %125, %113 ]
  %129 = phi <4 x i32> [ %108, %106 ], [ %126, %113 ]
  %130 = icmp sgt <4 x i32> %128, %129
  %131 = select <4 x i1> %130, <4 x i32> %128, <4 x i32> %129
  %132 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %131)
  %133 = icmp eq i64 %48, %59
  br i1 %133, label %27, label %134

134:                                              ; preds = %52, %127
  %135 = phi i64 [ %35, %52 ], [ %60, %127 ]
  %136 = phi i32 [ %36, %52 ], [ %132, %127 ]
  br label %137

137:                                              ; preds = %134, %137
  %138 = phi i64 [ %145, %137 ], [ %135, %134 ]
  %139 = phi i32 [ %144, %137 ], [ %136, %134 ]
  %140 = getelementptr inbounds i32, i32* %0, i64 %138
  %141 = load i32, i32* %140, align 4, !tbaa !8
  %142 = mul nsw i32 %56, %141
  %143 = icmp slt i32 %139, %142
  %144 = select i1 %143, i32 %142, i32 %139
  %145 = add nuw nsw i64 %138, 1
  %146 = trunc i64 %145 to i32
  %147 = icmp slt i32 %146, %1
  br i1 %147, label %137, label %27, !llvm.loop !14

148:                                              ; preds = %11, %2
  %149 = phi i32 [ -1, %2 ], [ %12, %11 ]
  ret i32 %149
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_reprocessed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !6, !13}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !6, !15, !13}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
