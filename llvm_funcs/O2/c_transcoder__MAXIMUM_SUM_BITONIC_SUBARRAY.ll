; ModuleID = 'benchmark/c_transcoder/MAXIMUM_SUM_BITONIC_SUBARRAY/MAXIMUM_SUM_BITONIC_SUBARRAY_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_SUM_BITONIC_SUBARRAY/MAXIMUM_SUM_BITONIC_SUBARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = alloca i32, i64 %3, align 16
  %6 = load i32, i32* %0, align 4, !tbaa !5
  store i32 %6, i32* %4, align 16, !tbaa !5
  %7 = icmp sgt i32 %1, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = add nsw i64 %3, -1
  %10 = and i64 %9, 1
  %11 = icmp eq i32 %1, 2
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = and i64 %9, -2
  br label %61

14:                                               ; preds = %2
  %15 = add nsw i32 %1, -1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %0, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = getelementptr inbounds i32, i32* %5, i64 %16
  store i32 %18, i32* %19, align 4, !tbaa !5
  br label %82

20:                                               ; preds = %61, %8
  %21 = phi i32 [ %6, %8 ], [ %77, %61 ]
  %22 = phi i32 [ %6, %8 ], [ %74, %61 ]
  %23 = phi i64 [ 1, %8 ], [ %79, %61 ]
  %24 = icmp eq i64 %10, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds i32, i32* %0, i64 %23
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = icmp sgt i32 %27, %22
  %29 = select i1 %28, i32 %21, i32 0
  %30 = add nsw i32 %27, %29
  %31 = getelementptr inbounds i32, i32* %4, i64 %23
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %20, %25
  %33 = add nsw i32 %1, -1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %0, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !5
  %37 = getelementptr inbounds i32, i32* %5, i64 %34
  store i32 %36, i32* %37, align 4, !tbaa !5
  br i1 %7, label %38, label %82

38:                                               ; preds = %32
  %39 = add nsw i32 %1, -2
  %40 = zext i32 %39 to i64
  %41 = and i64 %40, 1
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = getelementptr inbounds i32, i32* %0, i64 %40
  %45 = load i32, i32* %44, align 4, !tbaa !5
  %46 = add nuw nsw i64 %40, 1
  %47 = getelementptr inbounds i32, i32* %0, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !5
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = getelementptr inbounds i32, i32* %5, i64 %46
  %52 = load i32, i32* %51, align 4, !tbaa !5
  %53 = add nsw i32 %52, %45
  br label %54

54:                                               ; preds = %50, %43
  %55 = phi i32 [ %53, %50 ], [ %45, %43 ]
  %56 = getelementptr inbounds i32, i32* %5, i64 %40
  store i32 %55, i32* %56, align 4
  %57 = add nsw i64 %40, -1
  br label %58

58:                                               ; preds = %54, %38
  %59 = phi i64 [ %40, %38 ], [ %57, %54 ]
  %60 = icmp eq i32 %39, 0
  br i1 %60, label %82, label %136

61:                                               ; preds = %61, %12
  %62 = phi i32 [ %6, %12 ], [ %77, %61 ]
  %63 = phi i32 [ %6, %12 ], [ %74, %61 ]
  %64 = phi i64 [ 1, %12 ], [ %79, %61 ]
  %65 = phi i64 [ 0, %12 ], [ %80, %61 ]
  %66 = getelementptr inbounds i32, i32* %0, i64 %64
  %67 = load i32, i32* %66, align 4, !tbaa !5
  %68 = icmp sgt i32 %67, %63
  %69 = select i1 %68, i32 %62, i32 0
  %70 = add nsw i32 %67, %69
  %71 = getelementptr inbounds i32, i32* %4, i64 %64
  store i32 %70, i32* %71, align 4
  %72 = add nuw nsw i64 %64, 1
  %73 = getelementptr inbounds i32, i32* %0, i64 %72
  %74 = load i32, i32* %73, align 4, !tbaa !5
  %75 = icmp sgt i32 %74, %67
  %76 = select i1 %75, i32 %70, i32 0
  %77 = add nsw i32 %74, %76
  %78 = getelementptr inbounds i32, i32* %4, i64 %72
  store i32 %77, i32* %78, align 4
  %79 = add nuw nsw i64 %64, 2
  %80 = add i64 %65, 2
  %81 = icmp eq i64 %80, %13
  br i1 %81, label %20, label %61, !llvm.loop !9

82:                                               ; preds = %58, %161, %14, %32
  %83 = icmp sgt i32 %1, 0
  br i1 %83, label %84, label %166

84:                                               ; preds = %82
  %85 = load i32, i32* %5, align 16, !tbaa !5
  %86 = icmp eq i32 %1, 1
  br i1 %86, label %166, label %87, !llvm.loop !11

87:                                               ; preds = %84
  %88 = add nsw i64 %3, -1
  %89 = icmp ult i64 %88, 8
  br i1 %89, label %133, label %90

90:                                               ; preds = %87
  %91 = and i64 %88, -8
  %92 = or i64 %91, 1
  %93 = insertelement <4 x i32> poison, i32 %85, i64 0
  %94 = shufflevector <4 x i32> %93, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %95

95:                                               ; preds = %95, %90
  %96 = phi i64 [ 0, %90 ], [ %126, %95 ]
  %97 = phi <4 x i32> [ %94, %90 ], [ %124, %95 ]
  %98 = phi <4 x i32> [ %94, %90 ], [ %125, %95 ]
  %99 = or i64 %96, 1
  %100 = getelementptr inbounds i32, i32* %4, i64 %99
  %101 = bitcast i32* %100 to <4 x i32>*
  %102 = load <4 x i32>, <4 x i32>* %101, align 4, !tbaa !5
  %103 = getelementptr inbounds i32, i32* %100, i64 4
  %104 = bitcast i32* %103 to <4 x i32>*
  %105 = load <4 x i32>, <4 x i32>* %104, align 4, !tbaa !5
  %106 = getelementptr inbounds i32, i32* %0, i64 %99
  %107 = bitcast i32* %106 to <4 x i32>*
  %108 = load <4 x i32>, <4 x i32>* %107, align 4, !tbaa !5
  %109 = getelementptr inbounds i32, i32* %106, i64 4
  %110 = bitcast i32* %109 to <4 x i32>*
  %111 = load <4 x i32>, <4 x i32>* %110, align 4, !tbaa !5
  %112 = getelementptr inbounds i32, i32* %5, i64 %99
  %113 = bitcast i32* %112 to <4 x i32>*
  %114 = load <4 x i32>, <4 x i32>* %113, align 4, !tbaa !5
  %115 = getelementptr inbounds i32, i32* %112, i64 4
  %116 = bitcast i32* %115 to <4 x i32>*
  %117 = load <4 x i32>, <4 x i32>* %116, align 4, !tbaa !5
  %118 = add nsw <4 x i32> %114, %102
  %119 = add nsw <4 x i32> %117, %105
  %120 = sub <4 x i32> %118, %108
  %121 = sub <4 x i32> %119, %111
  %122 = icmp slt <4 x i32> %97, %120
  %123 = icmp slt <4 x i32> %98, %121
  %124 = select <4 x i1> %122, <4 x i32> %120, <4 x i32> %97
  %125 = select <4 x i1> %123, <4 x i32> %121, <4 x i32> %98
  %126 = add nuw i64 %96, 8
  %127 = icmp eq i64 %126, %91
  br i1 %127, label %128, label %95, !llvm.loop !12

128:                                              ; preds = %95
  %129 = icmp sgt <4 x i32> %124, %125
  %130 = select <4 x i1> %129, <4 x i32> %124, <4 x i32> %125
  %131 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %130)
  %132 = icmp eq i64 %88, %91
  br i1 %132, label %166, label %133

133:                                              ; preds = %87, %128
  %134 = phi i64 [ 1, %87 ], [ %92, %128 ]
  %135 = phi i32 [ %85, %87 ], [ %131, %128 ]
  br label %168

136:                                              ; preds = %58, %161
  %137 = phi i64 [ %164, %161 ], [ %59, %58 ]
  %138 = getelementptr inbounds i32, i32* %0, i64 %137
  %139 = load i32, i32* %138, align 4, !tbaa !5
  %140 = add nuw nsw i64 %137, 1
  %141 = getelementptr inbounds i32, i32* %0, i64 %140
  %142 = load i32, i32* %141, align 4, !tbaa !5
  %143 = icmp sgt i32 %139, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %136
  %145 = getelementptr inbounds i32, i32* %5, i64 %140
  %146 = load i32, i32* %145, align 4, !tbaa !5
  %147 = add nsw i32 %146, %139
  br label %148

148:                                              ; preds = %136, %144
  %149 = phi i32 [ %147, %144 ], [ %139, %136 ]
  %150 = getelementptr inbounds i32, i32* %5, i64 %137
  store i32 %149, i32* %150, align 4
  %151 = add nsw i64 %137, -1
  %152 = getelementptr inbounds i32, i32* %0, i64 %151
  %153 = load i32, i32* %152, align 4, !tbaa !5
  %154 = getelementptr inbounds i32, i32* %0, i64 %137
  %155 = load i32, i32* %154, align 4, !tbaa !5
  %156 = icmp sgt i32 %153, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %148
  %158 = getelementptr inbounds i32, i32* %5, i64 %137
  %159 = load i32, i32* %158, align 4, !tbaa !5
  %160 = add nsw i32 %159, %153
  br label %161

161:                                              ; preds = %157, %148
  %162 = phi i32 [ %160, %157 ], [ %153, %148 ]
  %163 = getelementptr inbounds i32, i32* %5, i64 %151
  store i32 %162, i32* %163, align 4
  %164 = add nsw i64 %137, -2
  %165 = icmp sgt i64 %137, 1
  br i1 %165, label %136, label %82, !llvm.loop !14

166:                                              ; preds = %168, %84, %128, %82
  %167 = phi i32 [ -2147483648, %82 ], [ %85, %84 ], [ %131, %128 ], [ %180, %168 ]
  ret i32 %167

168:                                              ; preds = %133, %168
  %169 = phi i64 [ %181, %168 ], [ %134, %133 ]
  %170 = phi i32 [ %180, %168 ], [ %135, %133 ]
  %171 = getelementptr inbounds i32, i32* %4, i64 %169
  %172 = load i32, i32* %171, align 4, !tbaa !5
  %173 = getelementptr inbounds i32, i32* %0, i64 %169
  %174 = load i32, i32* %173, align 4, !tbaa !5
  %175 = getelementptr inbounds i32, i32* %5, i64 %169
  %176 = load i32, i32* %175, align 4, !tbaa !5
  %177 = add nsw i32 %176, %172
  %178 = sub i32 %177, %174
  %179 = icmp slt i32 %170, %178
  %180 = select i1 %179, i32 %178, i32 %170
  %181 = add nuw nsw i64 %169, 1
  %182 = icmp eq i64 %181, %3
  br i1 %182, label %166, label %168, !llvm.loop !15
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #1

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10, !13}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10, !16, !13}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
