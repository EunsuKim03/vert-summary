; ModuleID = 'benchmark/c_transcoder/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_1/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_1_processed.c'
source_filename = "benchmark/c_transcoder/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_1/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, %1
  br i1 %4, label %157, label %5

5:                                                ; preds = %3
  %6 = load i32, i32* %0, align 4, !tbaa !5
  %7 = icmp sgt i32 %2, 1
  br i1 %7, label %8, label %100

8:                                                ; preds = %5
  %9 = zext i32 %2 to i64
  %10 = add nsw i64 %9, -1
  %11 = icmp ult i64 %10, 8
  br i1 %11, label %97, label %12

12:                                               ; preds = %8
  %13 = and i64 %10, -8
  %14 = or i64 %13, 1
  %15 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %6, i64 0
  %16 = add nsw i64 %13, -8
  %17 = lshr exact i64 %16, 3
  %18 = add nuw nsw i64 %17, 1
  %19 = and i64 %18, 3
  %20 = icmp ult i64 %16, 24
  br i1 %20, label %67, label %21

21:                                               ; preds = %12
  %22 = and i64 %18, 4611686018427387900
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i64 [ 0, %21 ], [ %64, %23 ]
  %25 = phi <4 x i32> [ %15, %21 ], [ %62, %23 ]
  %26 = phi <4 x i32> [ zeroinitializer, %21 ], [ %63, %23 ]
  %27 = phi i64 [ 0, %21 ], [ %65, %23 ]
  %28 = or i64 %24, 1
  %29 = getelementptr inbounds i32, i32* %0, i64 %28
  %30 = bitcast i32* %29 to <4 x i32>*
  %31 = load <4 x i32>, <4 x i32>* %30, align 4, !tbaa !5
  %32 = getelementptr inbounds i32, i32* %29, i64 4
  %33 = bitcast i32* %32 to <4 x i32>*
  %34 = load <4 x i32>, <4 x i32>* %33, align 4, !tbaa !5
  %35 = add <4 x i32> %31, %25
  %36 = add <4 x i32> %34, %26
  %37 = or i64 %24, 9
  %38 = getelementptr inbounds i32, i32* %0, i64 %37
  %39 = bitcast i32* %38 to <4 x i32>*
  %40 = load <4 x i32>, <4 x i32>* %39, align 4, !tbaa !5
  %41 = getelementptr inbounds i32, i32* %38, i64 4
  %42 = bitcast i32* %41 to <4 x i32>*
  %43 = load <4 x i32>, <4 x i32>* %42, align 4, !tbaa !5
  %44 = add <4 x i32> %40, %35
  %45 = add <4 x i32> %43, %36
  %46 = or i64 %24, 17
  %47 = getelementptr inbounds i32, i32* %0, i64 %46
  %48 = bitcast i32* %47 to <4 x i32>*
  %49 = load <4 x i32>, <4 x i32>* %48, align 4, !tbaa !5
  %50 = getelementptr inbounds i32, i32* %47, i64 4
  %51 = bitcast i32* %50 to <4 x i32>*
  %52 = load <4 x i32>, <4 x i32>* %51, align 4, !tbaa !5
  %53 = add <4 x i32> %49, %44
  %54 = add <4 x i32> %52, %45
  %55 = or i64 %24, 25
  %56 = getelementptr inbounds i32, i32* %0, i64 %55
  %57 = bitcast i32* %56 to <4 x i32>*
  %58 = load <4 x i32>, <4 x i32>* %57, align 4, !tbaa !5
  %59 = getelementptr inbounds i32, i32* %56, i64 4
  %60 = bitcast i32* %59 to <4 x i32>*
  %61 = load <4 x i32>, <4 x i32>* %60, align 4, !tbaa !5
  %62 = add <4 x i32> %58, %53
  %63 = add <4 x i32> %61, %54
  %64 = add nuw i64 %24, 32
  %65 = add i64 %27, 4
  %66 = icmp eq i64 %65, %22
  br i1 %66, label %67, label %23, !llvm.loop !9

67:                                               ; preds = %23, %12
  %68 = phi <4 x i32> [ undef, %12 ], [ %62, %23 ]
  %69 = phi <4 x i32> [ undef, %12 ], [ %63, %23 ]
  %70 = phi i64 [ 0, %12 ], [ %64, %23 ]
  %71 = phi <4 x i32> [ %15, %12 ], [ %62, %23 ]
  %72 = phi <4 x i32> [ zeroinitializer, %12 ], [ %63, %23 ]
  %73 = icmp eq i64 %19, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %67, %74
  %75 = phi i64 [ %88, %74 ], [ %70, %67 ]
  %76 = phi <4 x i32> [ %86, %74 ], [ %71, %67 ]
  %77 = phi <4 x i32> [ %87, %74 ], [ %72, %67 ]
  %78 = phi i64 [ %89, %74 ], [ 0, %67 ]
  %79 = or i64 %75, 1
  %80 = getelementptr inbounds i32, i32* %0, i64 %79
  %81 = bitcast i32* %80 to <4 x i32>*
  %82 = load <4 x i32>, <4 x i32>* %81, align 4, !tbaa !5
  %83 = getelementptr inbounds i32, i32* %80, i64 4
  %84 = bitcast i32* %83 to <4 x i32>*
  %85 = load <4 x i32>, <4 x i32>* %84, align 4, !tbaa !5
  %86 = add <4 x i32> %82, %76
  %87 = add <4 x i32> %85, %77
  %88 = add nuw i64 %75, 8
  %89 = add i64 %78, 1
  %90 = icmp eq i64 %89, %19
  br i1 %90, label %91, label %74, !llvm.loop !12

91:                                               ; preds = %74, %67
  %92 = phi <4 x i32> [ %68, %67 ], [ %86, %74 ]
  %93 = phi <4 x i32> [ %69, %67 ], [ %87, %74 ]
  %94 = add <4 x i32> %93, %92
  %95 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %94)
  %96 = icmp eq i64 %10, %13
  br i1 %96, label %100, label %97

97:                                               ; preds = %8, %91
  %98 = phi i64 [ 1, %8 ], [ %14, %91 ]
  %99 = phi i32 [ %6, %8 ], [ %95, %91 ]
  br label %115

100:                                              ; preds = %115, %91, %5
  %101 = phi i32 [ %6, %5 ], [ %95, %91 ], [ %120, %115 ]
  %102 = add nsw i32 %2, -1
  %103 = icmp slt i32 %2, %1
  br i1 %103, label %104, label %123

104:                                              ; preds = %100
  %105 = sext i32 %2 to i64
  %106 = sext i32 %1 to i64
  %107 = sub nsw i64 %106, %105
  %108 = xor i64 %105, -1
  %109 = and i64 %107, 1
  %110 = icmp eq i64 %109, 0
  %111 = add nsw i64 %105, 1
  %112 = select i1 %110, i64 %105, i64 %111
  %113 = sub nsw i64 0, %106
  %114 = icmp eq i64 %108, %113
  br i1 %114, label %123, label %127

115:                                              ; preds = %97, %115
  %116 = phi i64 [ %121, %115 ], [ %98, %97 ]
  %117 = phi i32 [ %120, %115 ], [ %99, %97 ]
  %118 = getelementptr inbounds i32, i32* %0, i64 %116
  %119 = load i32, i32* %118, align 4, !tbaa !5
  %120 = add nsw i32 %119, %117
  %121 = add nuw nsw i64 %116, 1
  %122 = icmp eq i64 %121, %9
  br i1 %122, label %100, label %115, !llvm.loop !14

123:                                              ; preds = %104, %127, %100
  %124 = phi i32 [ %102, %100 ], [ %102, %104 ], [ %154, %127 ]
  %125 = sub i32 1, %2
  %126 = add i32 %125, %124
  br label %157

127:                                              ; preds = %104, %127
  %128 = phi i64 [ %155, %127 ], [ %112, %104 ]
  %129 = phi i32 [ %150, %127 ], [ undef, %104 ]
  %130 = phi i32 [ %154, %127 ], [ %102, %104 ]
  %131 = phi i32 [ %152, %127 ], [ %101, %104 ]
  %132 = getelementptr inbounds i32, i32* %0, i64 %128
  %133 = load i32, i32* %132, align 4, !tbaa !5
  %134 = add nsw i32 %133, %129
  %135 = sub nsw i64 %128, %105
  %136 = getelementptr inbounds i32, i32* %0, i64 %135
  %137 = load i32, i32* %136, align 4, !tbaa !5
  %138 = sub i32 %134, %137
  %139 = icmp sgt i32 %138, %131
  %140 = select i1 %139, i32 %138, i32 %131
  %141 = trunc i64 %128 to i32
  %142 = select i1 %139, i32 %141, i32 %130
  %143 = add nsw i64 %128, 1
  %144 = getelementptr inbounds i32, i32* %0, i64 %143
  %145 = load i32, i32* %144, align 4, !tbaa !5
  %146 = add nsw i32 %145, %138
  %147 = sub nsw i64 %143, %105
  %148 = getelementptr inbounds i32, i32* %0, i64 %147
  %149 = load i32, i32* %148, align 4, !tbaa !5
  %150 = sub i32 %146, %149
  %151 = icmp sgt i32 %150, %140
  %152 = select i1 %151, i32 %150, i32 %140
  %153 = trunc i64 %143 to i32
  %154 = select i1 %151, i32 %153, i32 %142
  %155 = add nsw i64 %128, 2
  %156 = icmp eq i64 %155, %106
  br i1 %156, label %123, label %127, !llvm.loop !16

157:                                              ; preds = %3, %123
  %158 = phi i32 [ %126, %123 ], [ -1, %3 ]
  ret i32 %158
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #1

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone willreturn }

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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !10, !15, !11}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !10}
