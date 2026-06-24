; ModuleID = 'benchmark/c_transcoder/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY_1/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY_1_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY_1/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 2
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -1
  %6 = zext i32 %1 to i64
  %7 = zext i32 %5 to i64
  %8 = zext i32 %1 to i64
  %9 = add nsw i64 %8, -2
  br label %12

10:                                               ; preds = %158, %2
  %11 = phi i32 [ 0, %2 ], [ %161, %158 ]
  ret i32 %11

12:                                               ; preds = %4, %158
  %13 = phi i64 [ 0, %4 ], [ %164, %158 ]
  %14 = phi i64 [ 1, %4 ], [ %22, %158 ]
  %15 = phi i64 [ 2, %4 ], [ %162, %158 ]
  %16 = phi i32 [ 0, %4 ], [ %161, %158 ]
  %17 = sub i64 %9, %13
  %18 = add i64 %17, -8
  %19 = lshr i64 %18, 3
  %20 = add nuw nsw i64 %19, 1
  %21 = sub i64 %9, %13
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp ult i64 %22, %6
  %24 = getelementptr inbounds i32, i32* %0, i64 %14
  %25 = load i32, i32* %24, align 4, !tbaa !5
  br i1 %23, label %26, label %104

26:                                               ; preds = %12
  %27 = icmp ult i64 %21, 8
  br i1 %27, label %101, label %28

28:                                               ; preds = %26
  %29 = and i64 %21, -8
  %30 = add i64 %15, %29
  %31 = insertelement <4 x i32> poison, i32 %25, i64 0
  %32 = shufflevector <4 x i32> %31, <4 x i32> poison, <4 x i32> zeroinitializer
  %33 = insertelement <4 x i32> poison, i32 %25, i64 0
  %34 = shufflevector <4 x i32> %33, <4 x i32> poison, <4 x i32> zeroinitializer
  %35 = and i64 %20, 1
  %36 = icmp ult i64 %18, 8
  br i1 %36, label %74, label %37

37:                                               ; preds = %28
  %38 = and i64 %20, 4611686018427387902
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %71, %39 ]
  %41 = phi <4 x i32> [ zeroinitializer, %37 ], [ %69, %39 ]
  %42 = phi <4 x i32> [ zeroinitializer, %37 ], [ %70, %39 ]
  %43 = phi i64 [ 0, %37 ], [ %72, %39 ]
  %44 = add i64 %15, %40
  %45 = getelementptr inbounds i32, i32* %0, i64 %44
  %46 = bitcast i32* %45 to <4 x i32>*
  %47 = load <4 x i32>, <4 x i32>* %46, align 4, !tbaa !5
  %48 = getelementptr inbounds i32, i32* %45, i64 4
  %49 = bitcast i32* %48 to <4 x i32>*
  %50 = load <4 x i32>, <4 x i32>* %49, align 4, !tbaa !5
  %51 = icmp sgt <4 x i32> %32, %47
  %52 = icmp sgt <4 x i32> %34, %50
  %53 = zext <4 x i1> %51 to <4 x i32>
  %54 = zext <4 x i1> %52 to <4 x i32>
  %55 = add <4 x i32> %41, %53
  %56 = add <4 x i32> %42, %54
  %57 = or i64 %40, 8
  %58 = add i64 %15, %57
  %59 = getelementptr inbounds i32, i32* %0, i64 %58
  %60 = bitcast i32* %59 to <4 x i32>*
  %61 = load <4 x i32>, <4 x i32>* %60, align 4, !tbaa !5
  %62 = getelementptr inbounds i32, i32* %59, i64 4
  %63 = bitcast i32* %62 to <4 x i32>*
  %64 = load <4 x i32>, <4 x i32>* %63, align 4, !tbaa !5
  %65 = icmp sgt <4 x i32> %32, %61
  %66 = icmp sgt <4 x i32> %34, %64
  %67 = zext <4 x i1> %65 to <4 x i32>
  %68 = zext <4 x i1> %66 to <4 x i32>
  %69 = add <4 x i32> %55, %67
  %70 = add <4 x i32> %56, %68
  %71 = add nuw i64 %40, 16
  %72 = add i64 %43, 2
  %73 = icmp eq i64 %72, %38
  br i1 %73, label %74, label %39, !llvm.loop !9

74:                                               ; preds = %39, %28
  %75 = phi <4 x i32> [ undef, %28 ], [ %69, %39 ]
  %76 = phi <4 x i32> [ undef, %28 ], [ %70, %39 ]
  %77 = phi i64 [ 0, %28 ], [ %71, %39 ]
  %78 = phi <4 x i32> [ zeroinitializer, %28 ], [ %69, %39 ]
  %79 = phi <4 x i32> [ zeroinitializer, %28 ], [ %70, %39 ]
  %80 = icmp eq i64 %35, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %74
  %82 = add i64 %15, %77
  %83 = getelementptr inbounds i32, i32* %0, i64 %82
  %84 = bitcast i32* %83 to <4 x i32>*
  %85 = load <4 x i32>, <4 x i32>* %84, align 4, !tbaa !5
  %86 = getelementptr inbounds i32, i32* %83, i64 4
  %87 = bitcast i32* %86 to <4 x i32>*
  %88 = load <4 x i32>, <4 x i32>* %87, align 4, !tbaa !5
  %89 = icmp sgt <4 x i32> %32, %85
  %90 = icmp sgt <4 x i32> %34, %88
  %91 = zext <4 x i1> %89 to <4 x i32>
  %92 = zext <4 x i1> %90 to <4 x i32>
  %93 = add <4 x i32> %78, %91
  %94 = add <4 x i32> %79, %92
  br label %95

95:                                               ; preds = %74, %81
  %96 = phi <4 x i32> [ %75, %74 ], [ %93, %81 ]
  %97 = phi <4 x i32> [ %76, %74 ], [ %94, %81 ]
  %98 = add <4 x i32> %97, %96
  %99 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %98)
  %100 = icmp eq i64 %21, %29
  br i1 %100, label %104, label %101

101:                                              ; preds = %26, %95
  %102 = phi i64 [ %15, %26 ], [ %30, %95 ]
  %103 = phi i32 [ 0, %26 ], [ %99, %95 ]
  br label %148

104:                                              ; preds = %148, %95, %12
  %105 = phi i32 [ 0, %12 ], [ %99, %95 ], [ %155, %148 ]
  %106 = icmp ult i64 %14, 8
  %107 = icmp ugt i64 %13, 4294967295
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %145, label %109

109:                                              ; preds = %104
  %110 = and i64 %14, 9223372036854775800
  %111 = and i64 %14, 7
  %112 = insertelement <4 x i32> poison, i32 %25, i64 0
  %113 = shufflevector <4 x i32> %112, <4 x i32> poison, <4 x i32> zeroinitializer
  %114 = insertelement <4 x i32> poison, i32 %25, i64 0
  %115 = shufflevector <4 x i32> %114, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %116

116:                                              ; preds = %116, %109
  %117 = phi i64 [ 0, %109 ], [ %139, %116 ]
  %118 = phi <4 x i32> [ zeroinitializer, %109 ], [ %137, %116 ]
  %119 = phi <4 x i32> [ zeroinitializer, %109 ], [ %138, %116 ]
  %120 = xor i64 %117, -1
  %121 = add i64 %14, %120
  %122 = and i64 %121, 4294967295
  %123 = getelementptr inbounds i32, i32* %0, i64 %122
  %124 = getelementptr inbounds i32, i32* %123, i64 -3
  %125 = bitcast i32* %124 to <4 x i32>*
  %126 = load <4 x i32>, <4 x i32>* %125, align 4, !tbaa !5
  %127 = shufflevector <4 x i32> %126, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %128 = getelementptr inbounds i32, i32* %123, i64 -4
  %129 = getelementptr inbounds i32, i32* %128, i64 -3
  %130 = bitcast i32* %129 to <4 x i32>*
  %131 = load <4 x i32>, <4 x i32>* %130, align 4, !tbaa !5
  %132 = shufflevector <4 x i32> %131, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %133 = icmp slt <4 x i32> %113, %127
  %134 = icmp slt <4 x i32> %115, %132
  %135 = zext <4 x i1> %133 to <4 x i32>
  %136 = zext <4 x i1> %134 to <4 x i32>
  %137 = add <4 x i32> %118, %135
  %138 = add <4 x i32> %119, %136
  %139 = add nuw i64 %117, 8
  %140 = icmp eq i64 %139, %110
  br i1 %140, label %141, label %116, !llvm.loop !12

141:                                              ; preds = %116
  %142 = add <4 x i32> %138, %137
  %143 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %142)
  %144 = icmp eq i64 %14, %110
  br i1 %144, label %158, label %145

145:                                              ; preds = %104, %141
  %146 = phi i64 [ %14, %104 ], [ %111, %141 ]
  %147 = phi i32 [ 0, %104 ], [ %143, %141 ]
  br label %165

148:                                              ; preds = %101, %148
  %149 = phi i64 [ %156, %148 ], [ %102, %101 ]
  %150 = phi i32 [ %155, %148 ], [ %103, %101 ]
  %151 = getelementptr inbounds i32, i32* %0, i64 %149
  %152 = load i32, i32* %151, align 4, !tbaa !5
  %153 = icmp sgt i32 %25, %152
  %154 = zext i1 %153 to i32
  %155 = add nuw nsw i32 %150, %154
  %156 = add nuw nsw i64 %149, 1
  %157 = icmp eq i64 %156, %8
  br i1 %157, label %104, label %148, !llvm.loop !13

158:                                              ; preds = %165, %141
  %159 = phi i32 [ %143, %141 ], [ %174, %165 ]
  %160 = mul nsw i32 %159, %105
  %161 = add nuw nsw i32 %160, %16
  %162 = add nuw nsw i64 %15, 1
  %163 = icmp eq i64 %22, %7
  %164 = add i64 %13, 1
  br i1 %163, label %10, label %12, !llvm.loop !15

165:                                              ; preds = %145, %165
  %166 = phi i64 [ %168, %165 ], [ %146, %145 ]
  %167 = phi i32 [ %174, %165 ], [ %147, %145 ]
  %168 = add nsw i64 %166, -1
  %169 = and i64 %168, 4294967295
  %170 = getelementptr inbounds i32, i32* %0, i64 %169
  %171 = load i32, i32* %170, align 4, !tbaa !5
  %172 = icmp slt i32 %25, %171
  %173 = zext i1 %172 to i32
  %174 = add nuw nsw i32 %167, %173
  %175 = icmp sgt i64 %166, 1
  br i1 %175, label %165, label %158, !llvm.loop !16
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !14, !11}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !11}
