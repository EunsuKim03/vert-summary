; ModuleID = 'benchmark/cpp_transcoder/FIND_THE_MISSING_NUMBER_2/FIND_THE_MISSING_NUMBER_2_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FIND_THE_MISSING_NUMBER_2/FIND_THE_MISSING_NUMBER_2_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_THE_MISSING_NUMBER_2_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load i32, i32* %0, align 4, !tbaa !5
  %4 = icmp sgt i32 %1, 1
  br i1 %4, label %5, label %97

5:                                                ; preds = %2
  %6 = zext i32 %1 to i64
  %7 = add nsw i64 %6, -1
  %8 = icmp ult i64 %7, 8
  br i1 %8, label %94, label %9

9:                                                ; preds = %5
  %10 = and i64 %7, -8
  %11 = or i64 %10, 1
  %12 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %3, i64 0
  %13 = add nsw i64 %10, -8
  %14 = lshr exact i64 %13, 3
  %15 = add nuw nsw i64 %14, 1
  %16 = and i64 %15, 3
  %17 = icmp ult i64 %13, 24
  br i1 %17, label %64, label %18

18:                                               ; preds = %9
  %19 = and i64 %15, 4611686018427387900
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i64 [ 0, %18 ], [ %61, %20 ]
  %22 = phi <4 x i32> [ %12, %18 ], [ %59, %20 ]
  %23 = phi <4 x i32> [ zeroinitializer, %18 ], [ %60, %20 ]
  %24 = phi i64 [ 0, %18 ], [ %62, %20 ]
  %25 = or i64 %21, 1
  %26 = getelementptr inbounds i32, i32* %0, i64 %25
  %27 = bitcast i32* %26 to <4 x i32>*
  %28 = load <4 x i32>, <4 x i32>* %27, align 4, !tbaa !5
  %29 = getelementptr inbounds i32, i32* %26, i64 4
  %30 = bitcast i32* %29 to <4 x i32>*
  %31 = load <4 x i32>, <4 x i32>* %30, align 4, !tbaa !5
  %32 = xor <4 x i32> %28, %22
  %33 = xor <4 x i32> %31, %23
  %34 = or i64 %21, 9
  %35 = getelementptr inbounds i32, i32* %0, i64 %34
  %36 = bitcast i32* %35 to <4 x i32>*
  %37 = load <4 x i32>, <4 x i32>* %36, align 4, !tbaa !5
  %38 = getelementptr inbounds i32, i32* %35, i64 4
  %39 = bitcast i32* %38 to <4 x i32>*
  %40 = load <4 x i32>, <4 x i32>* %39, align 4, !tbaa !5
  %41 = xor <4 x i32> %37, %32
  %42 = xor <4 x i32> %40, %33
  %43 = or i64 %21, 17
  %44 = getelementptr inbounds i32, i32* %0, i64 %43
  %45 = bitcast i32* %44 to <4 x i32>*
  %46 = load <4 x i32>, <4 x i32>* %45, align 4, !tbaa !5
  %47 = getelementptr inbounds i32, i32* %44, i64 4
  %48 = bitcast i32* %47 to <4 x i32>*
  %49 = load <4 x i32>, <4 x i32>* %48, align 4, !tbaa !5
  %50 = xor <4 x i32> %46, %41
  %51 = xor <4 x i32> %49, %42
  %52 = or i64 %21, 25
  %53 = getelementptr inbounds i32, i32* %0, i64 %52
  %54 = bitcast i32* %53 to <4 x i32>*
  %55 = load <4 x i32>, <4 x i32>* %54, align 4, !tbaa !5
  %56 = getelementptr inbounds i32, i32* %53, i64 4
  %57 = bitcast i32* %56 to <4 x i32>*
  %58 = load <4 x i32>, <4 x i32>* %57, align 4, !tbaa !5
  %59 = xor <4 x i32> %55, %50
  %60 = xor <4 x i32> %58, %51
  %61 = add nuw i64 %21, 32
  %62 = add i64 %24, 4
  %63 = icmp eq i64 %62, %19
  br i1 %63, label %64, label %20, !llvm.loop !9

64:                                               ; preds = %20, %9
  %65 = phi <4 x i32> [ undef, %9 ], [ %59, %20 ]
  %66 = phi <4 x i32> [ undef, %9 ], [ %60, %20 ]
  %67 = phi i64 [ 0, %9 ], [ %61, %20 ]
  %68 = phi <4 x i32> [ %12, %9 ], [ %59, %20 ]
  %69 = phi <4 x i32> [ zeroinitializer, %9 ], [ %60, %20 ]
  %70 = icmp eq i64 %16, 0
  br i1 %70, label %88, label %71

71:                                               ; preds = %64, %71
  %72 = phi i64 [ %85, %71 ], [ %67, %64 ]
  %73 = phi <4 x i32> [ %83, %71 ], [ %68, %64 ]
  %74 = phi <4 x i32> [ %84, %71 ], [ %69, %64 ]
  %75 = phi i64 [ %86, %71 ], [ 0, %64 ]
  %76 = or i64 %72, 1
  %77 = getelementptr inbounds i32, i32* %0, i64 %76
  %78 = bitcast i32* %77 to <4 x i32>*
  %79 = load <4 x i32>, <4 x i32>* %78, align 4, !tbaa !5
  %80 = getelementptr inbounds i32, i32* %77, i64 4
  %81 = bitcast i32* %80 to <4 x i32>*
  %82 = load <4 x i32>, <4 x i32>* %81, align 4, !tbaa !5
  %83 = xor <4 x i32> %79, %73
  %84 = xor <4 x i32> %82, %74
  %85 = add nuw i64 %72, 8
  %86 = add i64 %75, 1
  %87 = icmp eq i64 %86, %16
  br i1 %87, label %88, label %71, !llvm.loop !12

88:                                               ; preds = %71, %64
  %89 = phi <4 x i32> [ %65, %64 ], [ %83, %71 ]
  %90 = phi <4 x i32> [ %66, %64 ], [ %84, %71 ]
  %91 = xor <4 x i32> %90, %89
  %92 = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %91)
  %93 = icmp eq i64 %7, %10
  br i1 %93, label %97, label %94

94:                                               ; preds = %5, %88
  %95 = phi i64 [ 1, %5 ], [ %11, %88 ]
  %96 = phi i32 [ %3, %5 ], [ %92, %88 ]
  br label %163

97:                                               ; preds = %163, %88, %2
  %98 = phi i32 [ %3, %2 ], [ %92, %88 ], [ %168, %163 ]
  %99 = icmp slt i32 %1, 1
  br i1 %99, label %171, label %100

100:                                              ; preds = %97
  %101 = add i32 %1, 1
  %102 = icmp ult i32 %1, 8
  br i1 %102, label %160, label %103

103:                                              ; preds = %100
  %104 = and i32 %1, -8
  %105 = or i32 %104, 2
  %106 = add i32 %104, -8
  %107 = lshr exact i32 %106, 3
  %108 = add nuw nsw i32 %107, 1
  %109 = and i32 %108, 3
  %110 = icmp ult i32 %106, 24
  br i1 %110, label %136, label %111

111:                                              ; preds = %103
  %112 = and i32 %108, 1073741820
  br label %113

113:                                              ; preds = %113, %111
  %114 = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %111 ], [ %133, %113 ]
  %115 = phi <4 x i32> [ <i32 1, i32 0, i32 0, i32 0>, %111 ], [ %131, %113 ]
  %116 = phi <4 x i32> [ zeroinitializer, %111 ], [ %132, %113 ]
  %117 = phi i32 [ 0, %111 ], [ %134, %113 ]
  %118 = add <4 x i32> %114, <i32 4, i32 4, i32 4, i32 4>
  %119 = xor <4 x i32> %114, %115
  %120 = xor <4 x i32> %118, %116
  %121 = add <4 x i32> %114, <i32 8, i32 8, i32 8, i32 8>
  %122 = add <4 x i32> %114, <i32 12, i32 12, i32 12, i32 12>
  %123 = xor <4 x i32> %121, %119
  %124 = xor <4 x i32> %122, %120
  %125 = add <4 x i32> %114, <i32 16, i32 16, i32 16, i32 16>
  %126 = add <4 x i32> %114, <i32 20, i32 20, i32 20, i32 20>
  %127 = xor <4 x i32> %125, %123
  %128 = xor <4 x i32> %126, %124
  %129 = add <4 x i32> %114, <i32 24, i32 24, i32 24, i32 24>
  %130 = add <4 x i32> %114, <i32 28, i32 28, i32 28, i32 28>
  %131 = xor <4 x i32> %129, %127
  %132 = xor <4 x i32> %130, %128
  %133 = add <4 x i32> %114, <i32 32, i32 32, i32 32, i32 32>
  %134 = add i32 %117, 4
  %135 = icmp eq i32 %134, %112
  br i1 %135, label %136, label %113, !llvm.loop !14

136:                                              ; preds = %113, %103
  %137 = phi <4 x i32> [ undef, %103 ], [ %131, %113 ]
  %138 = phi <4 x i32> [ undef, %103 ], [ %132, %113 ]
  %139 = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %103 ], [ %133, %113 ]
  %140 = phi <4 x i32> [ <i32 1, i32 0, i32 0, i32 0>, %103 ], [ %131, %113 ]
  %141 = phi <4 x i32> [ zeroinitializer, %103 ], [ %132, %113 ]
  %142 = icmp eq i32 %109, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %136, %143
  %144 = phi <4 x i32> [ %151, %143 ], [ %139, %136 ]
  %145 = phi <4 x i32> [ %149, %143 ], [ %140, %136 ]
  %146 = phi <4 x i32> [ %150, %143 ], [ %141, %136 ]
  %147 = phi i32 [ %152, %143 ], [ 0, %136 ]
  %148 = add <4 x i32> %144, <i32 4, i32 4, i32 4, i32 4>
  %149 = xor <4 x i32> %144, %145
  %150 = xor <4 x i32> %148, %146
  %151 = add <4 x i32> %144, <i32 8, i32 8, i32 8, i32 8>
  %152 = add i32 %147, 1
  %153 = icmp eq i32 %152, %109
  br i1 %153, label %154, label %143, !llvm.loop !15

154:                                              ; preds = %143, %136
  %155 = phi <4 x i32> [ %137, %136 ], [ %149, %143 ]
  %156 = phi <4 x i32> [ %138, %136 ], [ %150, %143 ]
  %157 = xor <4 x i32> %156, %155
  %158 = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %157)
  %159 = icmp eq i32 %104, %1
  br i1 %159, label %171, label %160

160:                                              ; preds = %100, %154
  %161 = phi i32 [ 2, %100 ], [ %105, %154 ]
  %162 = phi i32 [ 1, %100 ], [ %158, %154 ]
  br label %174

163:                                              ; preds = %94, %163
  %164 = phi i64 [ %169, %163 ], [ %95, %94 ]
  %165 = phi i32 [ %168, %163 ], [ %96, %94 ]
  %166 = getelementptr inbounds i32, i32* %0, i64 %164
  %167 = load i32, i32* %166, align 4, !tbaa !5
  %168 = xor i32 %167, %165
  %169 = add nuw nsw i64 %164, 1
  %170 = icmp eq i64 %169, %6
  br i1 %170, label %97, label %163, !llvm.loop !16

171:                                              ; preds = %174, %154, %97
  %172 = phi i32 [ 1, %97 ], [ %158, %154 ], [ %177, %174 ]
  %173 = xor i32 %172, %98
  ret i32 %173

174:                                              ; preds = %160, %174
  %175 = phi i32 [ %178, %174 ], [ %161, %160 ]
  %176 = phi i32 [ %177, %174 ], [ %162, %160 ]
  %177 = xor i32 %175, %176
  %178 = add nuw i32 %175, 1
  %179 = icmp eq i32 %175, %101
  br i1 %179, label %171, label %174, !llvm.loop !18
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_THE_MISSING_NUMBER_2_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !10, !17, !11}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !10, !17, !11}
