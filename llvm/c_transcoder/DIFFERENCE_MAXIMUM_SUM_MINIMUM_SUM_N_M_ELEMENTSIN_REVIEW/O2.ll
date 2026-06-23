; ModuleID = 'benchmark/c_transcoder/DIFFERENCE_MAXIMUM_SUM_MINIMUM_SUM_N_M_ELEMENTSIN_REVIEW/DIFFERENCE_MAXIMUM_SUM_MINIMUM_SUM_N_M_ELEMENTSIN_REVIEW_processed.c'
source_filename = "benchmark/c_transcoder/DIFFERENCE_MAXIMUM_SUM_MINIMUM_SUM_N_M_ELEMENTSIN_REVIEW/DIFFERENCE_MAXIMUM_SUM_MINIMUM_SUM_N_M_ELEMENTSIN_REVIEW_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %5) #3
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %129

8:                                                ; preds = %3
  %9 = zext i32 %2 to i64
  %10 = icmp ult i32 %2, 8
  br i1 %10, label %120, label %11

11:                                               ; preds = %8
  %12 = and i64 %9, 4294967288
  %13 = sub nsw i64 %4, %12
  %14 = add nsw i64 %12, -8
  %15 = lshr exact i64 %14, 3
  %16 = add nuw nsw i64 %15, 1
  %17 = and i64 %16, 1
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %76, label %19

19:                                               ; preds = %11
  %20 = and i64 %16, 4611686018427387902
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i64 [ 0, %19 ], [ %73, %21 ]
  %23 = phi <4 x i32> [ zeroinitializer, %19 ], [ %59, %21 ]
  %24 = phi <4 x i32> [ zeroinitializer, %19 ], [ %60, %21 ]
  %25 = phi <4 x i32> [ zeroinitializer, %19 ], [ %71, %21 ]
  %26 = phi <4 x i32> [ zeroinitializer, %19 ], [ %72, %21 ]
  %27 = phi i64 [ 0, %19 ], [ %74, %21 ]
  %28 = xor i64 %22, -1
  %29 = add i64 %28, %4
  %30 = getelementptr inbounds i32, i32* %0, i64 %22
  %31 = bitcast i32* %30 to <4 x i32>*
  %32 = load <4 x i32>, <4 x i32>* %31, align 4, !tbaa !5
  %33 = getelementptr inbounds i32, i32* %30, i64 4
  %34 = bitcast i32* %33 to <4 x i32>*
  %35 = load <4 x i32>, <4 x i32>* %34, align 4, !tbaa !5
  %36 = add <4 x i32> %32, %23
  %37 = add <4 x i32> %35, %24
  %38 = getelementptr inbounds i32, i32* %0, i64 %29
  %39 = getelementptr inbounds i32, i32* %38, i64 -3
  %40 = bitcast i32* %39 to <4 x i32>*
  %41 = load <4 x i32>, <4 x i32>* %40, align 4, !tbaa !5
  %42 = shufflevector <4 x i32> %41, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %43 = getelementptr inbounds i32, i32* %38, i64 -4
  %44 = getelementptr inbounds i32, i32* %43, i64 -3
  %45 = bitcast i32* %44 to <4 x i32>*
  %46 = load <4 x i32>, <4 x i32>* %45, align 4, !tbaa !5
  %47 = shufflevector <4 x i32> %46, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %48 = add <4 x i32> %42, %25
  %49 = add <4 x i32> %47, %26
  %50 = or i64 %22, 8
  %51 = sub nuw nsw i64 -9, %22
  %52 = add i64 %51, %4
  %53 = getelementptr inbounds i32, i32* %0, i64 %50
  %54 = bitcast i32* %53 to <4 x i32>*
  %55 = load <4 x i32>, <4 x i32>* %54, align 4, !tbaa !5
  %56 = getelementptr inbounds i32, i32* %53, i64 4
  %57 = bitcast i32* %56 to <4 x i32>*
  %58 = load <4 x i32>, <4 x i32>* %57, align 4, !tbaa !5
  %59 = add <4 x i32> %55, %36
  %60 = add <4 x i32> %58, %37
  %61 = getelementptr inbounds i32, i32* %0, i64 %52
  %62 = getelementptr inbounds i32, i32* %61, i64 -3
  %63 = bitcast i32* %62 to <4 x i32>*
  %64 = load <4 x i32>, <4 x i32>* %63, align 4, !tbaa !5
  %65 = shufflevector <4 x i32> %64, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %66 = getelementptr inbounds i32, i32* %61, i64 -4
  %67 = getelementptr inbounds i32, i32* %66, i64 -3
  %68 = bitcast i32* %67 to <4 x i32>*
  %69 = load <4 x i32>, <4 x i32>* %68, align 4, !tbaa !5
  %70 = shufflevector <4 x i32> %69, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %71 = add <4 x i32> %65, %48
  %72 = add <4 x i32> %70, %49
  %73 = add nuw i64 %22, 16
  %74 = add i64 %27, 2
  %75 = icmp eq i64 %74, %20
  br i1 %75, label %76, label %21, !llvm.loop !9

76:                                               ; preds = %21, %11
  %77 = phi <4 x i32> [ undef, %11 ], [ %59, %21 ]
  %78 = phi <4 x i32> [ undef, %11 ], [ %60, %21 ]
  %79 = phi <4 x i32> [ undef, %11 ], [ %71, %21 ]
  %80 = phi <4 x i32> [ undef, %11 ], [ %72, %21 ]
  %81 = phi i64 [ 0, %11 ], [ %73, %21 ]
  %82 = phi <4 x i32> [ zeroinitializer, %11 ], [ %59, %21 ]
  %83 = phi <4 x i32> [ zeroinitializer, %11 ], [ %60, %21 ]
  %84 = phi <4 x i32> [ zeroinitializer, %11 ], [ %71, %21 ]
  %85 = phi <4 x i32> [ zeroinitializer, %11 ], [ %72, %21 ]
  %86 = icmp eq i64 %17, 0
  br i1 %86, label %110, label %87

87:                                               ; preds = %76
  %88 = xor i64 %81, -1
  %89 = add i64 %88, %4
  %90 = getelementptr inbounds i32, i32* %0, i64 %81
  %91 = bitcast i32* %90 to <4 x i32>*
  %92 = load <4 x i32>, <4 x i32>* %91, align 4, !tbaa !5
  %93 = getelementptr inbounds i32, i32* %90, i64 4
  %94 = bitcast i32* %93 to <4 x i32>*
  %95 = load <4 x i32>, <4 x i32>* %94, align 4, !tbaa !5
  %96 = add <4 x i32> %92, %82
  %97 = add <4 x i32> %95, %83
  %98 = getelementptr inbounds i32, i32* %0, i64 %89
  %99 = getelementptr inbounds i32, i32* %98, i64 -3
  %100 = bitcast i32* %99 to <4 x i32>*
  %101 = load <4 x i32>, <4 x i32>* %100, align 4, !tbaa !5
  %102 = shufflevector <4 x i32> %101, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %103 = getelementptr inbounds i32, i32* %98, i64 -4
  %104 = getelementptr inbounds i32, i32* %103, i64 -3
  %105 = bitcast i32* %104 to <4 x i32>*
  %106 = load <4 x i32>, <4 x i32>* %105, align 4, !tbaa !5
  %107 = shufflevector <4 x i32> %106, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %108 = add <4 x i32> %102, %84
  %109 = add <4 x i32> %107, %85
  br label %110

110:                                              ; preds = %76, %87
  %111 = phi <4 x i32> [ %77, %76 ], [ %96, %87 ]
  %112 = phi <4 x i32> [ %78, %76 ], [ %97, %87 ]
  %113 = phi <4 x i32> [ %79, %76 ], [ %108, %87 ]
  %114 = phi <4 x i32> [ %80, %76 ], [ %109, %87 ]
  %115 = add <4 x i32> %114, %113
  %116 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %115)
  %117 = add <4 x i32> %112, %111
  %118 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %117)
  %119 = icmp eq i64 %12, %9
  br i1 %119, label %125, label %120

120:                                              ; preds = %8, %110
  %121 = phi i64 [ 0, %8 ], [ %12, %110 ]
  %122 = phi i64 [ %4, %8 ], [ %13, %110 ]
  %123 = phi i32 [ 0, %8 ], [ %118, %110 ]
  %124 = phi i32 [ 0, %8 ], [ %116, %110 ]
  br label %131

125:                                              ; preds = %131, %110
  %126 = phi i32 [ %118, %110 ], [ %139, %131 ]
  %127 = phi i32 [ %116, %110 ], [ %142, %131 ]
  %128 = sub nsw i32 %127, %126
  br label %129

129:                                              ; preds = %125, %3
  %130 = phi i32 [ %128, %125 ], [ 0, %3 ]
  ret i32 %130

131:                                              ; preds = %120, %131
  %132 = phi i64 [ %143, %131 ], [ %121, %120 ]
  %133 = phi i64 [ %136, %131 ], [ %122, %120 ]
  %134 = phi i32 [ %139, %131 ], [ %123, %120 ]
  %135 = phi i32 [ %142, %131 ], [ %124, %120 ]
  %136 = add nsw i64 %133, -1
  %137 = getelementptr inbounds i32, i32* %0, i64 %132
  %138 = load i32, i32* %137, align 4, !tbaa !5
  %139 = add nsw i32 %138, %134
  %140 = getelementptr inbounds i32, i32* %0, i64 %136
  %141 = load i32, i32* %140, align 4, !tbaa !5
  %142 = add nsw i32 %141, %135
  %143 = add nuw nsw i64 %132, 1
  %144 = icmp eq i64 %143, %9
  br i1 %144, label %125, label %131, !llvm.loop !12
}

declare i32 @sort(...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { nounwind }

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
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !10, !13, !11}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
