; ModuleID = 'benchmark/cpp_transcoder/SUM_SQUARES_BINOMIAL_COEFFICIENTS/SUM_SQUARES_BINOMIAL_COEFFICIENTS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/SUM_SQUARES_BINOMIAL_COEFFICIENTS/SUM_SQUARES_BINOMIAL_COEFFICIENTS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SUM_SQUARES_BINOMIAL_COEFFICIENTS_processed.cpp, i8* null }]

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
  br i1 %6, label %141, label %7

7:                                                ; preds = %1, %137
  %8 = phi i64 [ %138, %137 ], [ 0, %1 ]
  %9 = phi i64 [ %139, %137 ], [ 1, %1 ]
  %10 = add nsw i64 %8, -1
  %11 = mul nsw i64 %10, %3
  %12 = getelementptr inbounds i32, i32* %5, i64 %11
  %13 = mul nuw nsw i64 %8, %3
  %14 = getelementptr inbounds i32, i32* %5, i64 %13
  %15 = and i64 %9, 1
  %16 = icmp eq i64 %8, 0
  br i1 %16, label %120, label %17

17:                                               ; preds = %7
  %18 = and i64 %9, 9223372036854775806
  br label %90

19:                                               ; preds = %137
  br i1 %6, label %141, label %20

20:                                               ; preds = %19
  %21 = zext i32 %0 to i64
  %22 = mul nuw nsw i64 %3, %21
  %23 = getelementptr inbounds i32, i32* %5, i64 %22
  %24 = icmp ult i32 %2, 8
  br i1 %24, label %87, label %25

25:                                               ; preds = %20
  %26 = and i64 %3, 4294967288
  %27 = add nsw i64 %26, -8
  %28 = lshr exact i64 %27, 3
  %29 = add nuw nsw i64 %28, 1
  %30 = and i64 %29, 1
  %31 = icmp eq i64 %27, 0
  br i1 %31, label %63, label %32

32:                                               ; preds = %25
  %33 = and i64 %29, 4611686018427387902
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi i64 [ 0, %32 ], [ %60, %34 ]
  %36 = phi <4 x i32> [ zeroinitializer, %32 ], [ %58, %34 ]
  %37 = phi <4 x i32> [ zeroinitializer, %32 ], [ %59, %34 ]
  %38 = phi i64 [ 0, %32 ], [ %61, %34 ]
  %39 = getelementptr inbounds i32, i32* %23, i64 %35
  %40 = bitcast i32* %39 to <4 x i32>*
  %41 = load <4 x i32>, <4 x i32>* %40, align 4, !tbaa !5
  %42 = getelementptr inbounds i32, i32* %39, i64 4
  %43 = bitcast i32* %42 to <4 x i32>*
  %44 = load <4 x i32>, <4 x i32>* %43, align 4, !tbaa !5
  %45 = mul nsw <4 x i32> %41, %41
  %46 = mul nsw <4 x i32> %44, %44
  %47 = add <4 x i32> %45, %36
  %48 = add <4 x i32> %46, %37
  %49 = or i64 %35, 8
  %50 = getelementptr inbounds i32, i32* %23, i64 %49
  %51 = bitcast i32* %50 to <4 x i32>*
  %52 = load <4 x i32>, <4 x i32>* %51, align 4, !tbaa !5
  %53 = getelementptr inbounds i32, i32* %50, i64 4
  %54 = bitcast i32* %53 to <4 x i32>*
  %55 = load <4 x i32>, <4 x i32>* %54, align 4, !tbaa !5
  %56 = mul nsw <4 x i32> %52, %52
  %57 = mul nsw <4 x i32> %55, %55
  %58 = add <4 x i32> %56, %47
  %59 = add <4 x i32> %57, %48
  %60 = add nuw i64 %35, 16
  %61 = add i64 %38, 2
  %62 = icmp eq i64 %61, %33
  br i1 %62, label %63, label %34, !llvm.loop !9

63:                                               ; preds = %34, %25
  %64 = phi <4 x i32> [ undef, %25 ], [ %58, %34 ]
  %65 = phi <4 x i32> [ undef, %25 ], [ %59, %34 ]
  %66 = phi i64 [ 0, %25 ], [ %60, %34 ]
  %67 = phi <4 x i32> [ zeroinitializer, %25 ], [ %58, %34 ]
  %68 = phi <4 x i32> [ zeroinitializer, %25 ], [ %59, %34 ]
  %69 = icmp eq i64 %30, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds i32, i32* %23, i64 %66
  %72 = bitcast i32* %71 to <4 x i32>*
  %73 = load <4 x i32>, <4 x i32>* %72, align 4, !tbaa !5
  %74 = getelementptr inbounds i32, i32* %71, i64 4
  %75 = bitcast i32* %74 to <4 x i32>*
  %76 = load <4 x i32>, <4 x i32>* %75, align 4, !tbaa !5
  %77 = mul nsw <4 x i32> %73, %73
  %78 = mul nsw <4 x i32> %76, %76
  %79 = add <4 x i32> %77, %67
  %80 = add <4 x i32> %78, %68
  br label %81

81:                                               ; preds = %63, %70
  %82 = phi <4 x i32> [ %64, %63 ], [ %79, %70 ]
  %83 = phi <4 x i32> [ %65, %63 ], [ %80, %70 ]
  %84 = add <4 x i32> %83, %82
  %85 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %84)
  %86 = icmp eq i64 %26, %3
  br i1 %86, label %141, label %87

87:                                               ; preds = %20, %81
  %88 = phi i64 [ 0, %20 ], [ %26, %81 ]
  %89 = phi i32 [ 0, %20 ], [ %85, %81 ]
  br label %143

90:                                               ; preds = %114, %17
  %91 = phi i64 [ 0, %17 ], [ %117, %114 ]
  %92 = phi i64 [ 0, %17 ], [ %118, %114 ]
  %93 = icmp eq i64 %91, 0
  %94 = icmp eq i64 %91, %8
  %95 = select i1 %93, i1 true, i1 %94
  br i1 %95, label %103, label %96

96:                                               ; preds = %90
  %97 = add nsw i64 %91, -1
  %98 = getelementptr inbounds i32, i32* %12, i64 %97
  %99 = load i32, i32* %98, align 4, !tbaa !5
  %100 = getelementptr inbounds i32, i32* %12, i64 %91
  %101 = load i32, i32* %100, align 4, !tbaa !5
  %102 = add nsw i32 %101, %99
  br label %103

103:                                              ; preds = %90, %96
  %104 = phi i32 [ %102, %96 ], [ 1, %90 ]
  %105 = getelementptr inbounds i32, i32* %14, i64 %91
  store i32 %104, i32* %105, align 4, !tbaa !5
  %106 = or i64 %91, 1
  %107 = icmp eq i64 %106, %8
  br i1 %107, label %114, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds i32, i32* %12, i64 %91
  %110 = load i32, i32* %109, align 4, !tbaa !5
  %111 = getelementptr inbounds i32, i32* %12, i64 %106
  %112 = load i32, i32* %111, align 4, !tbaa !5
  %113 = add nsw i32 %112, %110
  br label %114

114:                                              ; preds = %108, %103
  %115 = phi i32 [ %113, %108 ], [ 1, %103 ]
  %116 = getelementptr inbounds i32, i32* %14, i64 %106
  store i32 %115, i32* %116, align 4, !tbaa !5
  %117 = add nuw nsw i64 %91, 2
  %118 = add i64 %92, 2
  %119 = icmp eq i64 %118, %18
  br i1 %119, label %120, label %90, !llvm.loop !12

120:                                              ; preds = %114, %7
  %121 = phi i64 [ 0, %7 ], [ %117, %114 ]
  %122 = icmp eq i64 %15, 0
  br i1 %122, label %137, label %123

123:                                              ; preds = %120
  %124 = icmp eq i64 %121, 0
  %125 = icmp eq i64 %121, %8
  %126 = select i1 %124, i1 true, i1 %125
  br i1 %126, label %134, label %127

127:                                              ; preds = %123
  %128 = add nsw i64 %121, -1
  %129 = getelementptr inbounds i32, i32* %12, i64 %128
  %130 = load i32, i32* %129, align 4, !tbaa !5
  %131 = getelementptr inbounds i32, i32* %12, i64 %121
  %132 = load i32, i32* %131, align 4, !tbaa !5
  %133 = add nsw i32 %132, %130
  br label %134

134:                                              ; preds = %127, %123
  %135 = phi i32 [ %133, %127 ], [ 1, %123 ]
  %136 = getelementptr inbounds i32, i32* %14, i64 %121
  store i32 %135, i32* %136, align 4, !tbaa !5
  br label %137

137:                                              ; preds = %120, %134
  %138 = add nuw nsw i64 %8, 1
  %139 = add nuw nsw i64 %9, 1
  %140 = icmp eq i64 %138, %3
  br i1 %140, label %19, label %7, !llvm.loop !13

141:                                              ; preds = %143, %81, %1, %19
  %142 = phi i32 [ 0, %19 ], [ 0, %1 ], [ %85, %81 ], [ %149, %143 ]
  ret i32 %142

143:                                              ; preds = %87, %143
  %144 = phi i64 [ %150, %143 ], [ %88, %87 ]
  %145 = phi i32 [ %149, %143 ], [ %89, %87 ]
  %146 = getelementptr inbounds i32, i32* %23, i64 %144
  %147 = load i32, i32* %146, align 4, !tbaa !5
  %148 = mul nsw i32 %147, %147
  %149 = add nuw nsw i32 %148, %145
  %150 = add nuw nsw i64 %144, 1
  %151 = icmp eq i64 %150, %3
  br i1 %151, label %141, label %143, !llvm.loop !14
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SUM_SQUARES_BINOMIAL_COEFFICIENTS_processed.cpp() #4 section ".text.startup" {
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
