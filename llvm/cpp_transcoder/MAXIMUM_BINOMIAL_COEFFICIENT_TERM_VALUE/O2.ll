; ModuleID = 'benchmark/cpp_transcoder/MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE/MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE/MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE_processed.cpp, i8* null }]

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
  br i1 %6, label %142, label %7

7:                                                ; preds = %1, %108
  %8 = phi i64 [ %109, %108 ], [ 0, %1 ]
  %9 = phi i64 [ %110, %108 ], [ 1, %1 ]
  %10 = add nsw i64 %8, -1
  %11 = mul nsw i64 %10, %3
  %12 = getelementptr inbounds i32, i32* %5, i64 %11
  %13 = mul nuw nsw i64 %8, %3
  %14 = getelementptr inbounds i32, i32* %5, i64 %13
  %15 = and i64 %9, 1
  %16 = icmp eq i64 %8, 0
  br i1 %16, label %91, label %17

17:                                               ; preds = %7
  %18 = and i64 %9, 9223372036854775806
  br label %112

19:                                               ; preds = %108
  br i1 %6, label %142, label %20

20:                                               ; preds = %19
  %21 = zext i32 %0 to i64
  %22 = mul nuw nsw i64 %3, %21
  %23 = getelementptr inbounds i32, i32* %5, i64 %22
  %24 = icmp ult i32 %2, 8
  br i1 %24, label %88, label %25

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
  %45 = icmp slt <4 x i32> %36, %41
  %46 = icmp slt <4 x i32> %37, %44
  %47 = select <4 x i1> %45, <4 x i32> %41, <4 x i32> %36
  %48 = select <4 x i1> %46, <4 x i32> %44, <4 x i32> %37
  %49 = or i64 %35, 8
  %50 = getelementptr inbounds i32, i32* %23, i64 %49
  %51 = bitcast i32* %50 to <4 x i32>*
  %52 = load <4 x i32>, <4 x i32>* %51, align 4, !tbaa !5
  %53 = getelementptr inbounds i32, i32* %50, i64 4
  %54 = bitcast i32* %53 to <4 x i32>*
  %55 = load <4 x i32>, <4 x i32>* %54, align 4, !tbaa !5
  %56 = icmp slt <4 x i32> %47, %52
  %57 = icmp slt <4 x i32> %48, %55
  %58 = select <4 x i1> %56, <4 x i32> %52, <4 x i32> %47
  %59 = select <4 x i1> %57, <4 x i32> %55, <4 x i32> %48
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
  %77 = icmp slt <4 x i32> %67, %73
  %78 = icmp slt <4 x i32> %68, %76
  %79 = select <4 x i1> %77, <4 x i32> %73, <4 x i32> %67
  %80 = select <4 x i1> %78, <4 x i32> %76, <4 x i32> %68
  br label %81

81:                                               ; preds = %63, %70
  %82 = phi <4 x i32> [ %64, %63 ], [ %79, %70 ]
  %83 = phi <4 x i32> [ %65, %63 ], [ %80, %70 ]
  %84 = icmp sgt <4 x i32> %82, %83
  %85 = select <4 x i1> %84, <4 x i32> %82, <4 x i32> %83
  %86 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %85)
  %87 = icmp eq i64 %26, %3
  br i1 %87, label %142, label %88

88:                                               ; preds = %20, %81
  %89 = phi i64 [ 0, %20 ], [ %26, %81 ]
  %90 = phi i32 [ 0, %20 ], [ %86, %81 ]
  br label %144

91:                                               ; preds = %136, %7
  %92 = phi i64 [ 0, %7 ], [ %139, %136 ]
  %93 = icmp eq i64 %15, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %91
  %95 = icmp eq i64 %92, 0
  %96 = icmp eq i64 %92, %8
  %97 = select i1 %95, i1 true, i1 %96
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = add nsw i64 %92, -1
  %100 = getelementptr inbounds i32, i32* %12, i64 %99
  %101 = load i32, i32* %100, align 4, !tbaa !5
  %102 = getelementptr inbounds i32, i32* %12, i64 %92
  %103 = load i32, i32* %102, align 4, !tbaa !5
  %104 = add nsw i32 %103, %101
  br label %105

105:                                              ; preds = %98, %94
  %106 = phi i32 [ %104, %98 ], [ 1, %94 ]
  %107 = getelementptr inbounds i32, i32* %14, i64 %92
  store i32 %106, i32* %107, align 4, !tbaa !5
  br label %108

108:                                              ; preds = %91, %105
  %109 = add nuw nsw i64 %8, 1
  %110 = add nuw nsw i64 %9, 1
  %111 = icmp eq i64 %109, %3
  br i1 %111, label %19, label %7, !llvm.loop !12

112:                                              ; preds = %136, %17
  %113 = phi i64 [ 0, %17 ], [ %139, %136 ]
  %114 = phi i64 [ 0, %17 ], [ %140, %136 ]
  %115 = icmp eq i64 %113, 0
  %116 = icmp eq i64 %113, %8
  %117 = select i1 %115, i1 true, i1 %116
  br i1 %117, label %125, label %118

118:                                              ; preds = %112
  %119 = add nsw i64 %113, -1
  %120 = getelementptr inbounds i32, i32* %12, i64 %119
  %121 = load i32, i32* %120, align 4, !tbaa !5
  %122 = getelementptr inbounds i32, i32* %12, i64 %113
  %123 = load i32, i32* %122, align 4, !tbaa !5
  %124 = add nsw i32 %123, %121
  br label %125

125:                                              ; preds = %112, %118
  %126 = phi i32 [ %124, %118 ], [ 1, %112 ]
  %127 = getelementptr inbounds i32, i32* %14, i64 %113
  store i32 %126, i32* %127, align 4, !tbaa !5
  %128 = or i64 %113, 1
  %129 = icmp eq i64 %128, %8
  br i1 %129, label %136, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds i32, i32* %12, i64 %113
  %132 = load i32, i32* %131, align 4, !tbaa !5
  %133 = getelementptr inbounds i32, i32* %12, i64 %128
  %134 = load i32, i32* %133, align 4, !tbaa !5
  %135 = add nsw i32 %134, %132
  br label %136

136:                                              ; preds = %130, %125
  %137 = phi i32 [ %135, %130 ], [ 1, %125 ]
  %138 = getelementptr inbounds i32, i32* %14, i64 %128
  store i32 %137, i32* %138, align 4, !tbaa !5
  %139 = add nuw nsw i64 %113, 2
  %140 = add i64 %114, 2
  %141 = icmp eq i64 %140, %18
  br i1 %141, label %91, label %112, !llvm.loop !13

142:                                              ; preds = %144, %81, %1, %19
  %143 = phi i32 [ 0, %19 ], [ 0, %1 ], [ %86, %81 ], [ %150, %144 ]
  ret i32 %143

144:                                              ; preds = %88, %144
  %145 = phi i64 [ %151, %144 ], [ %89, %88 ]
  %146 = phi i32 [ %150, %144 ], [ %90, %88 ]
  %147 = getelementptr inbounds i32, i32* %23, i64 %145
  %148 = load i32, i32* %147, align 4, !tbaa !5
  %149 = icmp slt i32 %146, %148
  %150 = select i1 %149, i32 %148, i32 %146
  %151 = add nuw nsw i64 %145, 1
  %152 = icmp eq i64 %151, %3
  br i1 %152, label %142, label %144, !llvm.loop !14
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_BINOMIAL_COEFFICIENT_TERM_VALUE_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

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
