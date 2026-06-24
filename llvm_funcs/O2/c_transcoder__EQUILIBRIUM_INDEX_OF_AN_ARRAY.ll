; ModuleID = 'benchmark/c_transcoder/EQUILIBRIUM_INDEX_OF_AN_ARRAY/EQUILIBRIUM_INDEX_OF_AN_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/EQUILIBRIUM_INDEX_OF_AN_ARRAY/EQUILIBRIUM_INDEX_OF_AN_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %4 = zext i32 %3 to i64
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %216, %2
  %7 = phi i64 [ %116, %216 ], [ 0, %2 ]
  %8 = phi i64 [ %219, %216 ], [ 1, %2 ]
  %9 = xor i64 %7, -1
  %10 = add nsw i64 %9, %5
  %11 = add i64 %10, -8
  %12 = lshr i64 %11, 3
  %13 = add nuw nsw i64 %12, 1
  %14 = and i64 %7, 9223372036854775800
  %15 = add nsw i64 %14, -8
  %16 = lshr exact i64 %15, 3
  %17 = add nuw nsw i64 %16, 1
  %18 = xor i64 %7, -1
  %19 = add nsw i64 %18, %5
  %20 = icmp eq i64 %7, %4
  br i1 %20, label %222, label %21

21:                                               ; preds = %6
  %22 = icmp eq i64 %7, 0
  br i1 %22, label %114, label %23

23:                                               ; preds = %21
  %24 = icmp ult i64 %7, 8
  br i1 %24, label %103, label %25

25:                                               ; preds = %23
  %26 = and i64 %7, 9223372036854775800
  %27 = and i64 %17, 3
  %28 = icmp ult i64 %15, 24
  br i1 %28, label %74, label %29

29:                                               ; preds = %25
  %30 = and i64 %17, 4611686018427387900
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi i64 [ 0, %29 ], [ %71, %31 ]
  %33 = phi <4 x i32> [ zeroinitializer, %29 ], [ %69, %31 ]
  %34 = phi <4 x i32> [ zeroinitializer, %29 ], [ %70, %31 ]
  %35 = phi i64 [ 0, %29 ], [ %72, %31 ]
  %36 = getelementptr inbounds i32, i32* %0, i64 %32
  %37 = bitcast i32* %36 to <4 x i32>*
  %38 = load <4 x i32>, <4 x i32>* %37, align 4, !tbaa !5
  %39 = getelementptr inbounds i32, i32* %36, i64 4
  %40 = bitcast i32* %39 to <4 x i32>*
  %41 = load <4 x i32>, <4 x i32>* %40, align 4, !tbaa !5
  %42 = add <4 x i32> %38, %33
  %43 = add <4 x i32> %41, %34
  %44 = or i64 %32, 8
  %45 = getelementptr inbounds i32, i32* %0, i64 %44
  %46 = bitcast i32* %45 to <4 x i32>*
  %47 = load <4 x i32>, <4 x i32>* %46, align 4, !tbaa !5
  %48 = getelementptr inbounds i32, i32* %45, i64 4
  %49 = bitcast i32* %48 to <4 x i32>*
  %50 = load <4 x i32>, <4 x i32>* %49, align 4, !tbaa !5
  %51 = add <4 x i32> %47, %42
  %52 = add <4 x i32> %50, %43
  %53 = or i64 %32, 16
  %54 = getelementptr inbounds i32, i32* %0, i64 %53
  %55 = bitcast i32* %54 to <4 x i32>*
  %56 = load <4 x i32>, <4 x i32>* %55, align 4, !tbaa !5
  %57 = getelementptr inbounds i32, i32* %54, i64 4
  %58 = bitcast i32* %57 to <4 x i32>*
  %59 = load <4 x i32>, <4 x i32>* %58, align 4, !tbaa !5
  %60 = add <4 x i32> %56, %51
  %61 = add <4 x i32> %59, %52
  %62 = or i64 %32, 24
  %63 = getelementptr inbounds i32, i32* %0, i64 %62
  %64 = bitcast i32* %63 to <4 x i32>*
  %65 = load <4 x i32>, <4 x i32>* %64, align 4, !tbaa !5
  %66 = getelementptr inbounds i32, i32* %63, i64 4
  %67 = bitcast i32* %66 to <4 x i32>*
  %68 = load <4 x i32>, <4 x i32>* %67, align 4, !tbaa !5
  %69 = add <4 x i32> %65, %60
  %70 = add <4 x i32> %68, %61
  %71 = add nuw i64 %32, 32
  %72 = add i64 %35, 4
  %73 = icmp eq i64 %72, %30
  br i1 %73, label %74, label %31, !llvm.loop !9

74:                                               ; preds = %31, %25
  %75 = phi <4 x i32> [ undef, %25 ], [ %69, %31 ]
  %76 = phi <4 x i32> [ undef, %25 ], [ %70, %31 ]
  %77 = phi i64 [ 0, %25 ], [ %71, %31 ]
  %78 = phi <4 x i32> [ zeroinitializer, %25 ], [ %69, %31 ]
  %79 = phi <4 x i32> [ zeroinitializer, %25 ], [ %70, %31 ]
  %80 = icmp eq i64 %27, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %74, %81
  %82 = phi i64 [ %94, %81 ], [ %77, %74 ]
  %83 = phi <4 x i32> [ %92, %81 ], [ %78, %74 ]
  %84 = phi <4 x i32> [ %93, %81 ], [ %79, %74 ]
  %85 = phi i64 [ %95, %81 ], [ 0, %74 ]
  %86 = getelementptr inbounds i32, i32* %0, i64 %82
  %87 = bitcast i32* %86 to <4 x i32>*
  %88 = load <4 x i32>, <4 x i32>* %87, align 4, !tbaa !5
  %89 = getelementptr inbounds i32, i32* %86, i64 4
  %90 = bitcast i32* %89 to <4 x i32>*
  %91 = load <4 x i32>, <4 x i32>* %90, align 4, !tbaa !5
  %92 = add <4 x i32> %88, %83
  %93 = add <4 x i32> %91, %84
  %94 = add nuw i64 %82, 8
  %95 = add i64 %85, 1
  %96 = icmp eq i64 %95, %27
  br i1 %96, label %97, label %81, !llvm.loop !12

97:                                               ; preds = %81, %74
  %98 = phi <4 x i32> [ %75, %74 ], [ %92, %81 ]
  %99 = phi <4 x i32> [ %76, %74 ], [ %93, %81 ]
  %100 = add <4 x i32> %99, %98
  %101 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %100)
  %102 = icmp eq i64 %7, %26
  br i1 %102, label %114, label %103

103:                                              ; preds = %23, %97
  %104 = phi i64 [ 0, %23 ], [ %26, %97 ]
  %105 = phi i32 [ 0, %23 ], [ %101, %97 ]
  br label %106

106:                                              ; preds = %103, %106
  %107 = phi i64 [ %112, %106 ], [ %104, %103 ]
  %108 = phi i32 [ %111, %106 ], [ %105, %103 ]
  %109 = getelementptr inbounds i32, i32* %0, i64 %107
  %110 = load i32, i32* %109, align 4, !tbaa !5
  %111 = add nsw i32 %110, %108
  %112 = add nuw nsw i64 %107, 1
  %113 = icmp eq i64 %112, %7
  br i1 %113, label %114, label %106, !llvm.loop !14

114:                                              ; preds = %106, %97, %21
  %115 = phi i32 [ 0, %21 ], [ %101, %97 ], [ %111, %106 ]
  %116 = add nuw nsw i64 %7, 1
  %117 = trunc i64 %116 to i32
  %118 = icmp slt i32 %117, %1
  br i1 %118, label %119, label %216

119:                                              ; preds = %114
  %120 = icmp ult i64 %19, 8
  br i1 %120, label %205, label %121

121:                                              ; preds = %119
  %122 = and i64 %19, -8
  %123 = add i64 %8, %122
  %124 = and i64 %13, 3
  %125 = icmp ult i64 %11, 24
  br i1 %125, label %175, label %126

126:                                              ; preds = %121
  %127 = and i64 %13, 4611686018427387900
  br label %128

128:                                              ; preds = %128, %126
  %129 = phi i64 [ 0, %126 ], [ %172, %128 ]
  %130 = phi <4 x i32> [ zeroinitializer, %126 ], [ %170, %128 ]
  %131 = phi <4 x i32> [ zeroinitializer, %126 ], [ %171, %128 ]
  %132 = phi i64 [ 0, %126 ], [ %173, %128 ]
  %133 = add i64 %8, %129
  %134 = getelementptr inbounds i32, i32* %0, i64 %133
  %135 = bitcast i32* %134 to <4 x i32>*
  %136 = load <4 x i32>, <4 x i32>* %135, align 4, !tbaa !5
  %137 = getelementptr inbounds i32, i32* %134, i64 4
  %138 = bitcast i32* %137 to <4 x i32>*
  %139 = load <4 x i32>, <4 x i32>* %138, align 4, !tbaa !5
  %140 = add <4 x i32> %136, %130
  %141 = add <4 x i32> %139, %131
  %142 = or i64 %129, 8
  %143 = add i64 %8, %142
  %144 = getelementptr inbounds i32, i32* %0, i64 %143
  %145 = bitcast i32* %144 to <4 x i32>*
  %146 = load <4 x i32>, <4 x i32>* %145, align 4, !tbaa !5
  %147 = getelementptr inbounds i32, i32* %144, i64 4
  %148 = bitcast i32* %147 to <4 x i32>*
  %149 = load <4 x i32>, <4 x i32>* %148, align 4, !tbaa !5
  %150 = add <4 x i32> %146, %140
  %151 = add <4 x i32> %149, %141
  %152 = or i64 %129, 16
  %153 = add i64 %8, %152
  %154 = getelementptr inbounds i32, i32* %0, i64 %153
  %155 = bitcast i32* %154 to <4 x i32>*
  %156 = load <4 x i32>, <4 x i32>* %155, align 4, !tbaa !5
  %157 = getelementptr inbounds i32, i32* %154, i64 4
  %158 = bitcast i32* %157 to <4 x i32>*
  %159 = load <4 x i32>, <4 x i32>* %158, align 4, !tbaa !5
  %160 = add <4 x i32> %156, %150
  %161 = add <4 x i32> %159, %151
  %162 = or i64 %129, 24
  %163 = add i64 %8, %162
  %164 = getelementptr inbounds i32, i32* %0, i64 %163
  %165 = bitcast i32* %164 to <4 x i32>*
  %166 = load <4 x i32>, <4 x i32>* %165, align 4, !tbaa !5
  %167 = getelementptr inbounds i32, i32* %164, i64 4
  %168 = bitcast i32* %167 to <4 x i32>*
  %169 = load <4 x i32>, <4 x i32>* %168, align 4, !tbaa !5
  %170 = add <4 x i32> %166, %160
  %171 = add <4 x i32> %169, %161
  %172 = add nuw i64 %129, 32
  %173 = add i64 %132, 4
  %174 = icmp eq i64 %173, %127
  br i1 %174, label %175, label %128, !llvm.loop !16

175:                                              ; preds = %128, %121
  %176 = phi <4 x i32> [ undef, %121 ], [ %170, %128 ]
  %177 = phi <4 x i32> [ undef, %121 ], [ %171, %128 ]
  %178 = phi i64 [ 0, %121 ], [ %172, %128 ]
  %179 = phi <4 x i32> [ zeroinitializer, %121 ], [ %170, %128 ]
  %180 = phi <4 x i32> [ zeroinitializer, %121 ], [ %171, %128 ]
  %181 = icmp eq i64 %124, 0
  br i1 %181, label %199, label %182

182:                                              ; preds = %175, %182
  %183 = phi i64 [ %196, %182 ], [ %178, %175 ]
  %184 = phi <4 x i32> [ %194, %182 ], [ %179, %175 ]
  %185 = phi <4 x i32> [ %195, %182 ], [ %180, %175 ]
  %186 = phi i64 [ %197, %182 ], [ 0, %175 ]
  %187 = add i64 %8, %183
  %188 = getelementptr inbounds i32, i32* %0, i64 %187
  %189 = bitcast i32* %188 to <4 x i32>*
  %190 = load <4 x i32>, <4 x i32>* %189, align 4, !tbaa !5
  %191 = getelementptr inbounds i32, i32* %188, i64 4
  %192 = bitcast i32* %191 to <4 x i32>*
  %193 = load <4 x i32>, <4 x i32>* %192, align 4, !tbaa !5
  %194 = add <4 x i32> %190, %184
  %195 = add <4 x i32> %193, %185
  %196 = add nuw i64 %183, 8
  %197 = add i64 %186, 1
  %198 = icmp eq i64 %197, %124
  br i1 %198, label %199, label %182, !llvm.loop !17

199:                                              ; preds = %182, %175
  %200 = phi <4 x i32> [ %176, %175 ], [ %194, %182 ]
  %201 = phi <4 x i32> [ %177, %175 ], [ %195, %182 ]
  %202 = add <4 x i32> %201, %200
  %203 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %202)
  %204 = icmp eq i64 %19, %122
  br i1 %204, label %216, label %205

205:                                              ; preds = %119, %199
  %206 = phi i64 [ %8, %119 ], [ %123, %199 ]
  %207 = phi i32 [ 0, %119 ], [ %203, %199 ]
  br label %208

208:                                              ; preds = %205, %208
  %209 = phi i64 [ %214, %208 ], [ %206, %205 ]
  %210 = phi i32 [ %213, %208 ], [ %207, %205 ]
  %211 = getelementptr inbounds i32, i32* %0, i64 %209
  %212 = load i32, i32* %211, align 4, !tbaa !5
  %213 = add nsw i32 %212, %210
  %214 = add nuw nsw i64 %209, 1
  %215 = icmp eq i64 %214, %5
  br i1 %215, label %216, label %208, !llvm.loop !18

216:                                              ; preds = %208, %199, %114
  %217 = phi i32 [ 0, %114 ], [ %203, %199 ], [ %213, %208 ]
  %218 = icmp eq i32 %115, %217
  %219 = add nuw nsw i64 %8, 1
  br i1 %218, label %220, label %6, !llvm.loop !19

220:                                              ; preds = %216
  %221 = trunc i64 %7 to i32
  br label %222

222:                                              ; preds = %6, %220
  %223 = phi i32 [ %221, %220 ], [ -1, %6 ]
  ret i32 %223
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind readnone willreturn }

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
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !10, !15, !11}
!19 = distinct !{!19, !10}
