; ModuleID = 'benchmark/cpp_transcoder/SUM_BINOMIAL_COEFFICIENTS/SUM_BINOMIAL_COEFFICIENTS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/SUM_BINOMIAL_COEFFICIENTS/SUM_BINOMIAL_COEFFICIENTS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SUM_BINOMIAL_COEFFICIENTS_processed.cpp, i8* null }]

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
  br i1 %6, label %160, label %7

7:                                                ; preds = %1, %126
  %8 = phi i64 [ %127, %126 ], [ 0, %1 ]
  %9 = phi i64 [ %128, %126 ], [ 1, %1 ]
  %10 = add nsw i64 %8, -1
  %11 = mul nsw i64 %10, %3
  %12 = getelementptr inbounds i32, i32* %5, i64 %11
  %13 = mul nuw nsw i64 %8, %3
  %14 = getelementptr inbounds i32, i32* %5, i64 %13
  %15 = and i64 %9, 1
  %16 = icmp eq i64 %8, 0
  br i1 %16, label %109, label %17

17:                                               ; preds = %7
  %18 = and i64 %9, 9223372036854775806
  br label %130

19:                                               ; preds = %126
  br i1 %6, label %160, label %20

20:                                               ; preds = %19
  %21 = zext i32 %0 to i64
  %22 = mul nuw nsw i64 %3, %21
  %23 = getelementptr inbounds i32, i32* %5, i64 %22
  %24 = icmp ult i32 %2, 8
  br i1 %24, label %106, label %25

25:                                               ; preds = %20
  %26 = and i64 %3, 4294967288
  %27 = add nsw i64 %26, -8
  %28 = lshr exact i64 %27, 3
  %29 = add nuw nsw i64 %28, 1
  %30 = and i64 %29, 3
  %31 = icmp ult i64 %27, 24
  br i1 %31, label %77, label %32

32:                                               ; preds = %25
  %33 = and i64 %29, 4611686018427387900
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi i64 [ 0, %32 ], [ %74, %34 ]
  %36 = phi <4 x i32> [ zeroinitializer, %32 ], [ %72, %34 ]
  %37 = phi <4 x i32> [ zeroinitializer, %32 ], [ %73, %34 ]
  %38 = phi i64 [ 0, %32 ], [ %75, %34 ]
  %39 = getelementptr inbounds i32, i32* %23, i64 %35
  %40 = bitcast i32* %39 to <4 x i32>*
  %41 = load <4 x i32>, <4 x i32>* %40, align 4, !tbaa !5
  %42 = getelementptr inbounds i32, i32* %39, i64 4
  %43 = bitcast i32* %42 to <4 x i32>*
  %44 = load <4 x i32>, <4 x i32>* %43, align 4, !tbaa !5
  %45 = add <4 x i32> %41, %36
  %46 = add <4 x i32> %44, %37
  %47 = or i64 %35, 8
  %48 = getelementptr inbounds i32, i32* %23, i64 %47
  %49 = bitcast i32* %48 to <4 x i32>*
  %50 = load <4 x i32>, <4 x i32>* %49, align 4, !tbaa !5
  %51 = getelementptr inbounds i32, i32* %48, i64 4
  %52 = bitcast i32* %51 to <4 x i32>*
  %53 = load <4 x i32>, <4 x i32>* %52, align 4, !tbaa !5
  %54 = add <4 x i32> %50, %45
  %55 = add <4 x i32> %53, %46
  %56 = or i64 %35, 16
  %57 = getelementptr inbounds i32, i32* %23, i64 %56
  %58 = bitcast i32* %57 to <4 x i32>*
  %59 = load <4 x i32>, <4 x i32>* %58, align 4, !tbaa !5
  %60 = getelementptr inbounds i32, i32* %57, i64 4
  %61 = bitcast i32* %60 to <4 x i32>*
  %62 = load <4 x i32>, <4 x i32>* %61, align 4, !tbaa !5
  %63 = add <4 x i32> %59, %54
  %64 = add <4 x i32> %62, %55
  %65 = or i64 %35, 24
  %66 = getelementptr inbounds i32, i32* %23, i64 %65
  %67 = bitcast i32* %66 to <4 x i32>*
  %68 = load <4 x i32>, <4 x i32>* %67, align 4, !tbaa !5
  %69 = getelementptr inbounds i32, i32* %66, i64 4
  %70 = bitcast i32* %69 to <4 x i32>*
  %71 = load <4 x i32>, <4 x i32>* %70, align 4, !tbaa !5
  %72 = add <4 x i32> %68, %63
  %73 = add <4 x i32> %71, %64
  %74 = add nuw i64 %35, 32
  %75 = add i64 %38, 4
  %76 = icmp eq i64 %75, %33
  br i1 %76, label %77, label %34, !llvm.loop !9

77:                                               ; preds = %34, %25
  %78 = phi <4 x i32> [ undef, %25 ], [ %72, %34 ]
  %79 = phi <4 x i32> [ undef, %25 ], [ %73, %34 ]
  %80 = phi i64 [ 0, %25 ], [ %74, %34 ]
  %81 = phi <4 x i32> [ zeroinitializer, %25 ], [ %72, %34 ]
  %82 = phi <4 x i32> [ zeroinitializer, %25 ], [ %73, %34 ]
  %83 = icmp eq i64 %30, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %77, %84
  %85 = phi i64 [ %97, %84 ], [ %80, %77 ]
  %86 = phi <4 x i32> [ %95, %84 ], [ %81, %77 ]
  %87 = phi <4 x i32> [ %96, %84 ], [ %82, %77 ]
  %88 = phi i64 [ %98, %84 ], [ 0, %77 ]
  %89 = getelementptr inbounds i32, i32* %23, i64 %85
  %90 = bitcast i32* %89 to <4 x i32>*
  %91 = load <4 x i32>, <4 x i32>* %90, align 4, !tbaa !5
  %92 = getelementptr inbounds i32, i32* %89, i64 4
  %93 = bitcast i32* %92 to <4 x i32>*
  %94 = load <4 x i32>, <4 x i32>* %93, align 4, !tbaa !5
  %95 = add <4 x i32> %91, %86
  %96 = add <4 x i32> %94, %87
  %97 = add nuw i64 %85, 8
  %98 = add i64 %88, 1
  %99 = icmp eq i64 %98, %30
  br i1 %99, label %100, label %84, !llvm.loop !12

100:                                              ; preds = %84, %77
  %101 = phi <4 x i32> [ %78, %77 ], [ %95, %84 ]
  %102 = phi <4 x i32> [ %79, %77 ], [ %96, %84 ]
  %103 = add <4 x i32> %102, %101
  %104 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %103)
  %105 = icmp eq i64 %26, %3
  br i1 %105, label %160, label %106

106:                                              ; preds = %20, %100
  %107 = phi i64 [ 0, %20 ], [ %26, %100 ]
  %108 = phi i32 [ 0, %20 ], [ %104, %100 ]
  br label %162

109:                                              ; preds = %154, %7
  %110 = phi i64 [ 0, %7 ], [ %157, %154 ]
  %111 = icmp eq i64 %15, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %109
  %113 = icmp eq i64 %110, 0
  %114 = icmp eq i64 %110, %8
  %115 = select i1 %113, i1 true, i1 %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %112
  %117 = add nsw i64 %110, -1
  %118 = getelementptr inbounds i32, i32* %12, i64 %117
  %119 = load i32, i32* %118, align 4, !tbaa !5
  %120 = getelementptr inbounds i32, i32* %12, i64 %110
  %121 = load i32, i32* %120, align 4, !tbaa !5
  %122 = add nsw i32 %121, %119
  br label %123

123:                                              ; preds = %116, %112
  %124 = phi i32 [ %122, %116 ], [ 1, %112 ]
  %125 = getelementptr inbounds i32, i32* %14, i64 %110
  store i32 %124, i32* %125, align 4, !tbaa !5
  br label %126

126:                                              ; preds = %109, %123
  %127 = add nuw nsw i64 %8, 1
  %128 = add nuw nsw i64 %9, 1
  %129 = icmp eq i64 %127, %3
  br i1 %129, label %19, label %7, !llvm.loop !14

130:                                              ; preds = %154, %17
  %131 = phi i64 [ 0, %17 ], [ %157, %154 ]
  %132 = phi i64 [ 0, %17 ], [ %158, %154 ]
  %133 = icmp eq i64 %131, 0
  %134 = icmp eq i64 %131, %8
  %135 = select i1 %133, i1 true, i1 %134
  br i1 %135, label %143, label %136

136:                                              ; preds = %130
  %137 = add nsw i64 %131, -1
  %138 = getelementptr inbounds i32, i32* %12, i64 %137
  %139 = load i32, i32* %138, align 4, !tbaa !5
  %140 = getelementptr inbounds i32, i32* %12, i64 %131
  %141 = load i32, i32* %140, align 4, !tbaa !5
  %142 = add nsw i32 %141, %139
  br label %143

143:                                              ; preds = %130, %136
  %144 = phi i32 [ %142, %136 ], [ 1, %130 ]
  %145 = getelementptr inbounds i32, i32* %14, i64 %131
  store i32 %144, i32* %145, align 4, !tbaa !5
  %146 = or i64 %131, 1
  %147 = icmp eq i64 %146, %8
  br i1 %147, label %154, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds i32, i32* %12, i64 %131
  %150 = load i32, i32* %149, align 4, !tbaa !5
  %151 = getelementptr inbounds i32, i32* %12, i64 %146
  %152 = load i32, i32* %151, align 4, !tbaa !5
  %153 = add nsw i32 %152, %150
  br label %154

154:                                              ; preds = %148, %143
  %155 = phi i32 [ %153, %148 ], [ 1, %143 ]
  %156 = getelementptr inbounds i32, i32* %14, i64 %146
  store i32 %155, i32* %156, align 4, !tbaa !5
  %157 = add nuw nsw i64 %131, 2
  %158 = add i64 %132, 2
  %159 = icmp eq i64 %158, %18
  br i1 %159, label %109, label %130, !llvm.loop !15

160:                                              ; preds = %162, %100, %1, %19
  %161 = phi i32 [ 0, %19 ], [ 0, %1 ], [ %104, %100 ], [ %167, %162 ]
  ret i32 %161

162:                                              ; preds = %106, %162
  %163 = phi i64 [ %168, %162 ], [ %107, %106 ]
  %164 = phi i32 [ %167, %162 ], [ %108, %106 ]
  %165 = getelementptr inbounds i32, i32* %23, i64 %163
  %166 = load i32, i32* %165, align 4, !tbaa !5
  %167 = add nsw i32 %166, %164
  %168 = add nuw nsw i64 %163, 1
  %169 = icmp eq i64 %168, %3
  br i1 %169, label %160, label %162, !llvm.loop !16
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SUM_BINOMIAL_COEFFICIENTS_processed.cpp() #4 section ".text.startup" {
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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !17, !11}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
