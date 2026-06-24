; ModuleID = 'benchmark/c_transcoder/COUNTS_PATHS_POINT_REACH_ORIGIN_1/COUNTS_PATHS_POINT_REACH_ORIGIN_1_processed.c'
source_filename = "benchmark/c_transcoder/COUNTS_PATHS_POINT_REACH_ORIGIN_1/COUNTS_PATHS_POINT_REACH_ORIGIN_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %0, 1
  %4 = zext i32 %3 to i64
  %5 = add i32 %1, 1
  %6 = zext i32 %5 to i64
  %7 = mul nuw i64 %6, %4
  %8 = alloca i32, i64 %7, align 16
  %9 = icmp slt i32 %0, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = add nsw i64 %4, -1
  %12 = and i64 %4, 3
  %13 = icmp ult i64 %11, 3
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = and i64 %4, 4294967292
  br label %102

16:                                               ; preds = %102, %10
  %17 = phi i64 [ 0, %10 ], [ %116, %102 ]
  %18 = icmp eq i64 %12, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ %24, %19 ], [ %17, %16 ]
  %21 = phi i64 [ %25, %19 ], [ 0, %16 ]
  %22 = mul nuw nsw i64 %20, %6
  %23 = getelementptr inbounds i32, i32* %8, i64 %22
  store i32 1, i32* %23, align 4, !tbaa !5
  %24 = add nuw nsw i64 %20, 1
  %25 = add i64 %21, 1
  %26 = icmp eq i64 %25, %12
  br i1 %26, label %27, label %19, !llvm.loop !9

27:                                               ; preds = %16, %19, %2
  %28 = icmp slt i32 %1, 0
  br i1 %28, label %119, label %29

29:                                               ; preds = %27
  %30 = icmp ult i32 %5, 8
  br i1 %30, label %100, label %31

31:                                               ; preds = %29
  %32 = and i64 %6, 4294967288
  %33 = add nsw i64 %32, -8
  %34 = lshr exact i64 %33, 3
  %35 = add nuw nsw i64 %34, 1
  %36 = and i64 %35, 7
  %37 = icmp ult i64 %33, 56
  br i1 %37, label %85, label %38

38:                                               ; preds = %31
  %39 = and i64 %35, 4611686018427387896
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi i64 [ 0, %38 ], [ %82, %40 ]
  %42 = phi i64 [ 0, %38 ], [ %83, %40 ]
  %43 = getelementptr inbounds i32, i32* %8, i64 %41
  %44 = bitcast i32* %43 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %44, align 16, !tbaa !5
  %45 = getelementptr inbounds i32, i32* %43, i64 4
  %46 = bitcast i32* %45 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %46, align 16, !tbaa !5
  %47 = or i64 %41, 8
  %48 = getelementptr inbounds i32, i32* %8, i64 %47
  %49 = bitcast i32* %48 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %49, align 16, !tbaa !5
  %50 = getelementptr inbounds i32, i32* %48, i64 4
  %51 = bitcast i32* %50 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %51, align 16, !tbaa !5
  %52 = or i64 %41, 16
  %53 = getelementptr inbounds i32, i32* %8, i64 %52
  %54 = bitcast i32* %53 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %54, align 16, !tbaa !5
  %55 = getelementptr inbounds i32, i32* %53, i64 4
  %56 = bitcast i32* %55 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %56, align 16, !tbaa !5
  %57 = or i64 %41, 24
  %58 = getelementptr inbounds i32, i32* %8, i64 %57
  %59 = bitcast i32* %58 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %59, align 16, !tbaa !5
  %60 = getelementptr inbounds i32, i32* %58, i64 4
  %61 = bitcast i32* %60 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %61, align 16, !tbaa !5
  %62 = or i64 %41, 32
  %63 = getelementptr inbounds i32, i32* %8, i64 %62
  %64 = bitcast i32* %63 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %64, align 16, !tbaa !5
  %65 = getelementptr inbounds i32, i32* %63, i64 4
  %66 = bitcast i32* %65 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %66, align 16, !tbaa !5
  %67 = or i64 %41, 40
  %68 = getelementptr inbounds i32, i32* %8, i64 %67
  %69 = bitcast i32* %68 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %69, align 16, !tbaa !5
  %70 = getelementptr inbounds i32, i32* %68, i64 4
  %71 = bitcast i32* %70 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %71, align 16, !tbaa !5
  %72 = or i64 %41, 48
  %73 = getelementptr inbounds i32, i32* %8, i64 %72
  %74 = bitcast i32* %73 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %74, align 16, !tbaa !5
  %75 = getelementptr inbounds i32, i32* %73, i64 4
  %76 = bitcast i32* %75 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %76, align 16, !tbaa !5
  %77 = or i64 %41, 56
  %78 = getelementptr inbounds i32, i32* %8, i64 %77
  %79 = bitcast i32* %78 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %79, align 16, !tbaa !5
  %80 = getelementptr inbounds i32, i32* %78, i64 4
  %81 = bitcast i32* %80 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %81, align 16, !tbaa !5
  %82 = add nuw i64 %41, 64
  %83 = add nuw i64 %42, 8
  %84 = icmp eq i64 %83, %39
  br i1 %84, label %85, label %40, !llvm.loop !11

85:                                               ; preds = %40, %31
  %86 = phi i64 [ 0, %31 ], [ %82, %40 ]
  %87 = icmp eq i64 %36, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %85, %88
  %89 = phi i64 [ %95, %88 ], [ %86, %85 ]
  %90 = phi i64 [ %96, %88 ], [ 0, %85 ]
  %91 = getelementptr inbounds i32, i32* %8, i64 %89
  %92 = bitcast i32* %91 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %92, align 16, !tbaa !5
  %93 = getelementptr inbounds i32, i32* %91, i64 4
  %94 = bitcast i32* %93 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %94, align 16, !tbaa !5
  %95 = add nuw i64 %89, 8
  %96 = add i64 %90, 1
  %97 = icmp eq i64 %96, %36
  br i1 %97, label %98, label %88, !llvm.loop !14

98:                                               ; preds = %88, %85
  %99 = icmp eq i64 %32, %6
  br i1 %99, label %119, label %100

100:                                              ; preds = %29, %98
  %101 = phi i64 [ 0, %29 ], [ %32, %98 ]
  br label %129

102:                                              ; preds = %102, %14
  %103 = phi i64 [ 0, %14 ], [ %116, %102 ]
  %104 = phi i64 [ 0, %14 ], [ %117, %102 ]
  %105 = mul nuw nsw i64 %103, %6
  %106 = getelementptr inbounds i32, i32* %8, i64 %105
  store i32 1, i32* %106, align 16, !tbaa !5
  %107 = or i64 %103, 1
  %108 = mul nuw nsw i64 %107, %6
  %109 = getelementptr inbounds i32, i32* %8, i64 %108
  store i32 1, i32* %109, align 4, !tbaa !5
  %110 = or i64 %103, 2
  %111 = mul nuw nsw i64 %110, %6
  %112 = getelementptr inbounds i32, i32* %8, i64 %111
  store i32 1, i32* %112, align 8, !tbaa !5
  %113 = or i64 %103, 3
  %114 = mul nuw nsw i64 %113, %6
  %115 = getelementptr inbounds i32, i32* %8, i64 %114
  store i32 1, i32* %115, align 4, !tbaa !5
  %116 = add nuw nsw i64 %103, 4
  %117 = add i64 %104, 4
  %118 = icmp eq i64 %117, %15
  br i1 %118, label %16, label %102, !llvm.loop !15

119:                                              ; preds = %129, %98, %27
  %120 = icmp slt i32 %0, 1
  br i1 %120, label %143, label %121

121:                                              ; preds = %119
  %122 = icmp slt i32 %1, 1
  %123 = add nsw i64 %6, -1
  %124 = add nsw i64 %6, -2
  %125 = and i64 %123, 3
  %126 = icmp ult i64 %124, 3
  %127 = and i64 %123, -4
  %128 = icmp eq i64 %125, 0
  br label %134

129:                                              ; preds = %100, %129
  %130 = phi i64 [ %132, %129 ], [ %101, %100 ]
  %131 = getelementptr inbounds i32, i32* %8, i64 %130
  store i32 1, i32* %131, align 4, !tbaa !5
  %132 = add nuw nsw i64 %130, 1
  %133 = icmp eq i64 %132, %6
  br i1 %133, label %119, label %129, !llvm.loop !16

134:                                              ; preds = %121, %164
  %135 = phi i64 [ 1, %121 ], [ %165, %164 ]
  br i1 %122, label %164, label %136

136:                                              ; preds = %134
  %137 = add nsw i64 %135, -1
  %138 = mul nuw nsw i64 %137, %6
  %139 = getelementptr inbounds i32, i32* %8, i64 %138
  %140 = mul nuw nsw i64 %135, %6
  %141 = getelementptr inbounds i32, i32* %8, i64 %140
  %142 = load i32, i32* %141, align 4, !tbaa !5
  br i1 %126, label %150, label %167

143:                                              ; preds = %164, %119
  %144 = sext i32 %0 to i64
  %145 = mul nsw i64 %6, %144
  %146 = getelementptr inbounds i32, i32* %8, i64 %145
  %147 = sext i32 %1 to i64
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4, !tbaa !5
  ret i32 %149

150:                                              ; preds = %167, %136
  %151 = phi i32 [ %142, %136 ], [ %188, %167 ]
  %152 = phi i64 [ 1, %136 ], [ %190, %167 ]
  br i1 %128, label %164, label %153

153:                                              ; preds = %150, %153
  %154 = phi i32 [ %159, %153 ], [ %151, %150 ]
  %155 = phi i64 [ %161, %153 ], [ %152, %150 ]
  %156 = phi i64 [ %162, %153 ], [ 0, %150 ]
  %157 = getelementptr inbounds i32, i32* %139, i64 %155
  %158 = load i32, i32* %157, align 4, !tbaa !5
  %159 = add nsw i32 %154, %158
  %160 = getelementptr inbounds i32, i32* %141, i64 %155
  store i32 %159, i32* %160, align 4, !tbaa !5
  %161 = add nuw nsw i64 %155, 1
  %162 = add i64 %156, 1
  %163 = icmp eq i64 %162, %125
  br i1 %163, label %164, label %153, !llvm.loop !18

164:                                              ; preds = %150, %153, %134
  %165 = add nuw nsw i64 %135, 1
  %166 = icmp eq i64 %165, %4
  br i1 %166, label %143, label %134, !llvm.loop !19

167:                                              ; preds = %136, %167
  %168 = phi i32 [ %188, %167 ], [ %142, %136 ]
  %169 = phi i64 [ %190, %167 ], [ 1, %136 ]
  %170 = phi i64 [ %191, %167 ], [ 0, %136 ]
  %171 = getelementptr inbounds i32, i32* %139, i64 %169
  %172 = load i32, i32* %171, align 4, !tbaa !5
  %173 = add nsw i32 %168, %172
  %174 = getelementptr inbounds i32, i32* %141, i64 %169
  store i32 %173, i32* %174, align 4, !tbaa !5
  %175 = add nuw nsw i64 %169, 1
  %176 = getelementptr inbounds i32, i32* %139, i64 %175
  %177 = load i32, i32* %176, align 4, !tbaa !5
  %178 = add nsw i32 %173, %177
  %179 = getelementptr inbounds i32, i32* %141, i64 %175
  store i32 %178, i32* %179, align 4, !tbaa !5
  %180 = add nuw nsw i64 %169, 2
  %181 = getelementptr inbounds i32, i32* %139, i64 %180
  %182 = load i32, i32* %181, align 4, !tbaa !5
  %183 = add nsw i32 %178, %182
  %184 = getelementptr inbounds i32, i32* %141, i64 %180
  store i32 %183, i32* %184, align 4, !tbaa !5
  %185 = add nuw nsw i64 %169, 3
  %186 = getelementptr inbounds i32, i32* %139, i64 %185
  %187 = load i32, i32* %186, align 4, !tbaa !5
  %188 = add nsw i32 %183, %187
  %189 = getelementptr inbounds i32, i32* %141, i64 %185
  store i32 %188, i32* %189, align 4, !tbaa !5
  %190 = add nuw nsw i64 %169, 4
  %191 = add i64 %170, 4
  %192 = icmp eq i64 %191, %127
  br i1 %192, label %150, label %167, !llvm.loop !20
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12, !17, !13}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
