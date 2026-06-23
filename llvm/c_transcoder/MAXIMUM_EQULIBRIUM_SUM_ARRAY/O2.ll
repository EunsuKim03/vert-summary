; ModuleID = 'benchmark/c_transcoder/MAXIMUM_EQULIBRIUM_SUM_ARRAY/MAXIMUM_EQULIBRIUM_SUM_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_EQULIBRIUM_SUM_ARRAY/MAXIMUM_EQULIBRIUM_SUM_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -1
  %6 = zext i32 %1 to i64
  %7 = add nsw i64 %6, -1
  %8 = zext i32 %5 to i64
  %9 = zext i32 %1 to i64
  %10 = add nsw i64 %9, -2
  br label %13

11:                                               ; preds = %215, %2
  %12 = phi i32 [ -2147483648, %2 ], [ %216, %215 ]
  ret i32 %12

13:                                               ; preds = %4, %215
  %14 = phi i64 [ 0, %4 ], [ %217, %215 ]
  %15 = phi i32 [ -2147483648, %4 ], [ %216, %215 ]
  %16 = call i64 @llvm.smin.i64(i64 %14, i64 %10)
  %17 = xor i64 %16, -1
  %18 = add i64 %17, %9
  %19 = add i64 %18, -8
  %20 = lshr i64 %19, 3
  %21 = add nuw nsw i64 %20, 1
  %22 = and i64 %14, 9223372036854775800
  %23 = add nsw i64 %22, -8
  %24 = lshr exact i64 %23, 3
  %25 = add nuw nsw i64 %24, 1
  %26 = call i64 @llvm.smin.i64(i64 %14, i64 %10)
  %27 = xor i64 %26, -1
  %28 = add i64 %27, %9
  %29 = getelementptr inbounds i32, i32* %0, i64 %14
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = icmp eq i64 %14, 0
  br i1 %31, label %116, label %32

32:                                               ; preds = %13
  %33 = icmp ult i64 %14, 8
  br i1 %33, label %113, label %34

34:                                               ; preds = %32
  %35 = and i64 %14, 9223372036854775800
  %36 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %30, i64 0
  %37 = and i64 %25, 3
  %38 = icmp ult i64 %23, 24
  br i1 %38, label %84, label %39

39:                                               ; preds = %34
  %40 = and i64 %25, 4611686018427387900
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i64 [ 0, %39 ], [ %81, %41 ]
  %43 = phi <4 x i32> [ %36, %39 ], [ %79, %41 ]
  %44 = phi <4 x i32> [ zeroinitializer, %39 ], [ %80, %41 ]
  %45 = phi i64 [ 0, %39 ], [ %82, %41 ]
  %46 = getelementptr inbounds i32, i32* %0, i64 %42
  %47 = bitcast i32* %46 to <4 x i32>*
  %48 = load <4 x i32>, <4 x i32>* %47, align 4, !tbaa !5
  %49 = getelementptr inbounds i32, i32* %46, i64 4
  %50 = bitcast i32* %49 to <4 x i32>*
  %51 = load <4 x i32>, <4 x i32>* %50, align 4, !tbaa !5
  %52 = add <4 x i32> %48, %43
  %53 = add <4 x i32> %51, %44
  %54 = or i64 %42, 8
  %55 = getelementptr inbounds i32, i32* %0, i64 %54
  %56 = bitcast i32* %55 to <4 x i32>*
  %57 = load <4 x i32>, <4 x i32>* %56, align 4, !tbaa !5
  %58 = getelementptr inbounds i32, i32* %55, i64 4
  %59 = bitcast i32* %58 to <4 x i32>*
  %60 = load <4 x i32>, <4 x i32>* %59, align 4, !tbaa !5
  %61 = add <4 x i32> %57, %52
  %62 = add <4 x i32> %60, %53
  %63 = or i64 %42, 16
  %64 = getelementptr inbounds i32, i32* %0, i64 %63
  %65 = bitcast i32* %64 to <4 x i32>*
  %66 = load <4 x i32>, <4 x i32>* %65, align 4, !tbaa !5
  %67 = getelementptr inbounds i32, i32* %64, i64 4
  %68 = bitcast i32* %67 to <4 x i32>*
  %69 = load <4 x i32>, <4 x i32>* %68, align 4, !tbaa !5
  %70 = add <4 x i32> %66, %61
  %71 = add <4 x i32> %69, %62
  %72 = or i64 %42, 24
  %73 = getelementptr inbounds i32, i32* %0, i64 %72
  %74 = bitcast i32* %73 to <4 x i32>*
  %75 = load <4 x i32>, <4 x i32>* %74, align 4, !tbaa !5
  %76 = getelementptr inbounds i32, i32* %73, i64 4
  %77 = bitcast i32* %76 to <4 x i32>*
  %78 = load <4 x i32>, <4 x i32>* %77, align 4, !tbaa !5
  %79 = add <4 x i32> %75, %70
  %80 = add <4 x i32> %78, %71
  %81 = add nuw i64 %42, 32
  %82 = add i64 %45, 4
  %83 = icmp eq i64 %82, %40
  br i1 %83, label %84, label %41, !llvm.loop !9

84:                                               ; preds = %41, %34
  %85 = phi <4 x i32> [ undef, %34 ], [ %79, %41 ]
  %86 = phi <4 x i32> [ undef, %34 ], [ %80, %41 ]
  %87 = phi i64 [ 0, %34 ], [ %81, %41 ]
  %88 = phi <4 x i32> [ %36, %34 ], [ %79, %41 ]
  %89 = phi <4 x i32> [ zeroinitializer, %34 ], [ %80, %41 ]
  %90 = icmp eq i64 %37, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %84, %91
  %92 = phi i64 [ %104, %91 ], [ %87, %84 ]
  %93 = phi <4 x i32> [ %102, %91 ], [ %88, %84 ]
  %94 = phi <4 x i32> [ %103, %91 ], [ %89, %84 ]
  %95 = phi i64 [ %105, %91 ], [ 0, %84 ]
  %96 = getelementptr inbounds i32, i32* %0, i64 %92
  %97 = bitcast i32* %96 to <4 x i32>*
  %98 = load <4 x i32>, <4 x i32>* %97, align 4, !tbaa !5
  %99 = getelementptr inbounds i32, i32* %96, i64 4
  %100 = bitcast i32* %99 to <4 x i32>*
  %101 = load <4 x i32>, <4 x i32>* %100, align 4, !tbaa !5
  %102 = add <4 x i32> %98, %93
  %103 = add <4 x i32> %101, %94
  %104 = add nuw i64 %92, 8
  %105 = add i64 %95, 1
  %106 = icmp eq i64 %105, %37
  br i1 %106, label %107, label %91, !llvm.loop !12

107:                                              ; preds = %91, %84
  %108 = phi <4 x i32> [ %85, %84 ], [ %102, %91 ]
  %109 = phi <4 x i32> [ %86, %84 ], [ %103, %91 ]
  %110 = add <4 x i32> %109, %108
  %111 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %110)
  %112 = icmp eq i64 %14, %35
  br i1 %112, label %116, label %113

113:                                              ; preds = %32, %107
  %114 = phi i64 [ 0, %32 ], [ %35, %107 ]
  %115 = phi i32 [ %30, %32 ], [ %111, %107 ]
  br label %194

116:                                              ; preds = %194, %107, %13
  %117 = phi i32 [ %30, %13 ], [ %111, %107 ], [ %199, %194 ]
  %118 = icmp ult i64 %14, %8
  br i1 %118, label %119, label %202

119:                                              ; preds = %116
  %120 = icmp ult i64 %28, 8
  br i1 %120, label %191, label %121

121:                                              ; preds = %119
  %122 = and i64 %28, -8
  %123 = sub i64 %7, %122
  %124 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %30, i64 0
  %125 = and i64 %21, 1
  %126 = icmp ult i64 %19, 8
  br i1 %126, label %164, label %127

127:                                              ; preds = %121
  %128 = and i64 %21, 4611686018427387902
  br label %129

129:                                              ; preds = %129, %127
  %130 = phi i64 [ 0, %127 ], [ %161, %129 ]
  %131 = phi <4 x i32> [ %124, %127 ], [ %159, %129 ]
  %132 = phi <4 x i32> [ zeroinitializer, %127 ], [ %160, %129 ]
  %133 = phi i64 [ 0, %127 ], [ %162, %129 ]
  %134 = sub i64 %7, %130
  %135 = getelementptr inbounds i32, i32* %0, i64 %134
  %136 = getelementptr inbounds i32, i32* %135, i64 -3
  %137 = bitcast i32* %136 to <4 x i32>*
  %138 = load <4 x i32>, <4 x i32>* %137, align 4, !tbaa !5
  %139 = shufflevector <4 x i32> %138, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %140 = getelementptr inbounds i32, i32* %135, i64 -4
  %141 = getelementptr inbounds i32, i32* %140, i64 -3
  %142 = bitcast i32* %141 to <4 x i32>*
  %143 = load <4 x i32>, <4 x i32>* %142, align 4, !tbaa !5
  %144 = shufflevector <4 x i32> %143, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %145 = add <4 x i32> %139, %131
  %146 = add <4 x i32> %144, %132
  %147 = or i64 %130, 8
  %148 = sub i64 %7, %147
  %149 = getelementptr inbounds i32, i32* %0, i64 %148
  %150 = getelementptr inbounds i32, i32* %149, i64 -3
  %151 = bitcast i32* %150 to <4 x i32>*
  %152 = load <4 x i32>, <4 x i32>* %151, align 4, !tbaa !5
  %153 = shufflevector <4 x i32> %152, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %154 = getelementptr inbounds i32, i32* %149, i64 -4
  %155 = getelementptr inbounds i32, i32* %154, i64 -3
  %156 = bitcast i32* %155 to <4 x i32>*
  %157 = load <4 x i32>, <4 x i32>* %156, align 4, !tbaa !5
  %158 = shufflevector <4 x i32> %157, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %159 = add <4 x i32> %153, %145
  %160 = add <4 x i32> %158, %146
  %161 = add nuw i64 %130, 16
  %162 = add i64 %133, 2
  %163 = icmp eq i64 %162, %128
  br i1 %163, label %164, label %129, !llvm.loop !14

164:                                              ; preds = %129, %121
  %165 = phi <4 x i32> [ undef, %121 ], [ %159, %129 ]
  %166 = phi <4 x i32> [ undef, %121 ], [ %160, %129 ]
  %167 = phi i64 [ 0, %121 ], [ %161, %129 ]
  %168 = phi <4 x i32> [ %124, %121 ], [ %159, %129 ]
  %169 = phi <4 x i32> [ zeroinitializer, %121 ], [ %160, %129 ]
  %170 = icmp eq i64 %125, 0
  br i1 %170, label %185, label %171

171:                                              ; preds = %164
  %172 = sub i64 %7, %167
  %173 = getelementptr inbounds i32, i32* %0, i64 %172
  %174 = getelementptr inbounds i32, i32* %173, i64 -3
  %175 = bitcast i32* %174 to <4 x i32>*
  %176 = load <4 x i32>, <4 x i32>* %175, align 4, !tbaa !5
  %177 = shufflevector <4 x i32> %176, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %178 = getelementptr inbounds i32, i32* %173, i64 -4
  %179 = getelementptr inbounds i32, i32* %178, i64 -3
  %180 = bitcast i32* %179 to <4 x i32>*
  %181 = load <4 x i32>, <4 x i32>* %180, align 4, !tbaa !5
  %182 = shufflevector <4 x i32> %181, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %183 = add <4 x i32> %177, %168
  %184 = add <4 x i32> %182, %169
  br label %185

185:                                              ; preds = %164, %171
  %186 = phi <4 x i32> [ %165, %164 ], [ %183, %171 ]
  %187 = phi <4 x i32> [ %166, %164 ], [ %184, %171 ]
  %188 = add <4 x i32> %187, %186
  %189 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %188)
  %190 = icmp eq i64 %28, %122
  br i1 %190, label %202, label %191

191:                                              ; preds = %119, %185
  %192 = phi i64 [ %7, %119 ], [ %123, %185 ]
  %193 = phi i32 [ %30, %119 ], [ %189, %185 ]
  br label %205

194:                                              ; preds = %113, %194
  %195 = phi i64 [ %200, %194 ], [ %114, %113 ]
  %196 = phi i32 [ %199, %194 ], [ %115, %113 ]
  %197 = getelementptr inbounds i32, i32* %0, i64 %195
  %198 = load i32, i32* %197, align 4, !tbaa !5
  %199 = add nsw i32 %198, %196
  %200 = add nuw nsw i64 %195, 1
  %201 = icmp eq i64 %200, %14
  br i1 %201, label %116, label %194, !llvm.loop !15

202:                                              ; preds = %205, %185, %116
  %203 = phi i32 [ %30, %116 ], [ %189, %185 ], [ %210, %205 ]
  %204 = icmp eq i32 %117, %203
  br i1 %204, label %213, label %215

205:                                              ; preds = %191, %205
  %206 = phi i64 [ %211, %205 ], [ %192, %191 ]
  %207 = phi i32 [ %210, %205 ], [ %193, %191 ]
  %208 = getelementptr inbounds i32, i32* %0, i64 %206
  %209 = load i32, i32* %208, align 4, !tbaa !5
  %210 = add nsw i32 %209, %207
  %211 = add nsw i64 %206, -1
  %212 = icmp sgt i64 %211, %14
  br i1 %212, label %205, label %202, !llvm.loop !17

213:                                              ; preds = %202
  %214 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %15, i32 noundef %117) #4
  br label %215

215:                                              ; preds = %213, %202
  %216 = phi i32 [ %214, %213 ], [ %15, %202 ]
  %217 = add nuw nsw i64 %14, 1
  %218 = icmp eq i64 %217, %9
  br i1 %218, label %11, label %13, !llvm.loop !18
}

declare i32 @max(...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nosync nounwind readnone willreturn }
attributes #4 = { nounwind }

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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !16, !11}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !10, !16, !11}
!18 = distinct !{!18, !10}
