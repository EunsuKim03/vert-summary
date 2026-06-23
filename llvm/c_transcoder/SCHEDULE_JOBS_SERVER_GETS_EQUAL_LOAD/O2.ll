; ModuleID = 'benchmark/c_transcoder/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD_processed.c'
source_filename = "benchmark/c_transcoder/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef %0, i32* nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %183

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = icmp ult i32 %2, 4
  br i1 %7, label %94, label %8

8:                                                ; preds = %5
  %9 = and i64 %6, 4294967292
  %10 = add nsw i64 %9, -4
  %11 = lshr exact i64 %10, 2
  %12 = add nuw nsw i64 %11, 1
  %13 = and i64 %12, 1
  %14 = icmp eq i64 %10, 0
  br i1 %14, label %62, label %15

15:                                               ; preds = %8
  %16 = and i64 %12, 9223372036854775806
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i64 [ 0, %15 ], [ %59, %17 ]
  %19 = phi <2 x i64> [ zeroinitializer, %15 ], [ %57, %17 ]
  %20 = phi <2 x i64> [ zeroinitializer, %15 ], [ %58, %17 ]
  %21 = phi i64 [ 0, %15 ], [ %60, %17 ]
  %22 = getelementptr inbounds i32, i32* %0, i64 %18
  %23 = bitcast i32* %22 to <2 x i32>*
  %24 = load <2 x i32>, <2 x i32>* %23, align 4, !tbaa !5
  %25 = getelementptr inbounds i32, i32* %22, i64 2
  %26 = bitcast i32* %25 to <2 x i32>*
  %27 = load <2 x i32>, <2 x i32>* %26, align 4, !tbaa !5
  %28 = getelementptr inbounds i32, i32* %1, i64 %18
  %29 = bitcast i32* %28 to <2 x i32>*
  %30 = load <2 x i32>, <2 x i32>* %29, align 4, !tbaa !5
  %31 = getelementptr inbounds i32, i32* %28, i64 2
  %32 = bitcast i32* %31 to <2 x i32>*
  %33 = load <2 x i32>, <2 x i32>* %32, align 4, !tbaa !5
  %34 = add nsw <2 x i32> %30, %24
  %35 = add nsw <2 x i32> %33, %27
  %36 = sext <2 x i32> %34 to <2 x i64>
  %37 = sext <2 x i32> %35 to <2 x i64>
  %38 = add <2 x i64> %19, %36
  %39 = add <2 x i64> %20, %37
  %40 = or i64 %18, 4
  %41 = getelementptr inbounds i32, i32* %0, i64 %40
  %42 = bitcast i32* %41 to <2 x i32>*
  %43 = load <2 x i32>, <2 x i32>* %42, align 4, !tbaa !5
  %44 = getelementptr inbounds i32, i32* %41, i64 2
  %45 = bitcast i32* %44 to <2 x i32>*
  %46 = load <2 x i32>, <2 x i32>* %45, align 4, !tbaa !5
  %47 = getelementptr inbounds i32, i32* %1, i64 %40
  %48 = bitcast i32* %47 to <2 x i32>*
  %49 = load <2 x i32>, <2 x i32>* %48, align 4, !tbaa !5
  %50 = getelementptr inbounds i32, i32* %47, i64 2
  %51 = bitcast i32* %50 to <2 x i32>*
  %52 = load <2 x i32>, <2 x i32>* %51, align 4, !tbaa !5
  %53 = add nsw <2 x i32> %49, %43
  %54 = add nsw <2 x i32> %52, %46
  %55 = sext <2 x i32> %53 to <2 x i64>
  %56 = sext <2 x i32> %54 to <2 x i64>
  %57 = add <2 x i64> %38, %55
  %58 = add <2 x i64> %39, %56
  %59 = add nuw i64 %18, 8
  %60 = add i64 %21, 2
  %61 = icmp eq i64 %60, %16
  br i1 %61, label %62, label %17, !llvm.loop !9

62:                                               ; preds = %17, %8
  %63 = phi <2 x i64> [ undef, %8 ], [ %57, %17 ]
  %64 = phi <2 x i64> [ undef, %8 ], [ %58, %17 ]
  %65 = phi i64 [ 0, %8 ], [ %59, %17 ]
  %66 = phi <2 x i64> [ zeroinitializer, %8 ], [ %57, %17 ]
  %67 = phi <2 x i64> [ zeroinitializer, %8 ], [ %58, %17 ]
  %68 = icmp eq i64 %13, 0
  br i1 %68, label %88, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds i32, i32* %0, i64 %65
  %71 = bitcast i32* %70 to <2 x i32>*
  %72 = load <2 x i32>, <2 x i32>* %71, align 4, !tbaa !5
  %73 = getelementptr inbounds i32, i32* %70, i64 2
  %74 = bitcast i32* %73 to <2 x i32>*
  %75 = load <2 x i32>, <2 x i32>* %74, align 4, !tbaa !5
  %76 = getelementptr inbounds i32, i32* %1, i64 %65
  %77 = bitcast i32* %76 to <2 x i32>*
  %78 = load <2 x i32>, <2 x i32>* %77, align 4, !tbaa !5
  %79 = getelementptr inbounds i32, i32* %76, i64 2
  %80 = bitcast i32* %79 to <2 x i32>*
  %81 = load <2 x i32>, <2 x i32>* %80, align 4, !tbaa !5
  %82 = add nsw <2 x i32> %78, %72
  %83 = add nsw <2 x i32> %81, %75
  %84 = sext <2 x i32> %82 to <2 x i64>
  %85 = sext <2 x i32> %83 to <2 x i64>
  %86 = add <2 x i64> %66, %84
  %87 = add <2 x i64> %67, %85
  br label %88

88:                                               ; preds = %62, %69
  %89 = phi <2 x i64> [ %63, %62 ], [ %86, %69 ]
  %90 = phi <2 x i64> [ %64, %62 ], [ %87, %69 ]
  %91 = add <2 x i64> %90, %89
  %92 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %91)
  %93 = icmp eq i64 %9, %6
  br i1 %93, label %109, label %94

94:                                               ; preds = %5, %88
  %95 = phi i64 [ 0, %5 ], [ %9, %88 ]
  %96 = phi i64 [ 0, %5 ], [ %92, %88 ]
  br label %97

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %107, %97 ], [ %95, %94 ]
  %99 = phi i64 [ %106, %97 ], [ %96, %94 ]
  %100 = getelementptr inbounds i32, i32* %0, i64 %98
  %101 = load i32, i32* %100, align 4, !tbaa !5
  %102 = getelementptr inbounds i32, i32* %1, i64 %98
  %103 = load i32, i32* %102, align 4, !tbaa !5
  %104 = add nsw i32 %103, %101
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %99, %105
  %107 = add nuw nsw i64 %98, 1
  %108 = icmp eq i64 %107, %6
  br i1 %108, label %109, label %97, !llvm.loop !12

109:                                              ; preds = %97, %88
  %110 = phi i64 [ %92, %88 ], [ %106, %97 ]
  %111 = icmp eq i32 %2, 1
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32, i32* %0, align 4, !tbaa !5
  %114 = load i32, i32* %1, align 4, !tbaa !5
  %115 = add nsw i32 %114, %113
  br label %183

116:                                              ; preds = %109
  %117 = sext i32 %2 to i64
  %118 = srem i64 %110, %117
  %119 = sdiv i64 %110, %117
  %120 = icmp eq i64 %118, 0
  br i1 %120, label %121, label %183

121:                                              ; preds = %116
  %122 = trunc i64 %119 to i32
  br i1 %4, label %123, label %183

123:                                              ; preds = %121
  %124 = zext i32 %2 to i64
  br label %128

125:                                              ; preds = %172
  br i1 %4, label %126, label %183

126:                                              ; preds = %125
  %127 = zext i32 %2 to i64
  br label %177

128:                                              ; preds = %123, %172
  %129 = phi i64 [ 0, %123 ], [ %173, %172 ]
  %130 = getelementptr inbounds i32, i32* %0, i64 %129
  %131 = load i32, i32* %130, align 4, !tbaa !5
  %132 = icmp sgt i32 %131, %122
  br i1 %132, label %183, label %133

133:                                              ; preds = %128
  %134 = icmp eq i64 %129, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %133
  %136 = add i64 %129, 4294967295
  %137 = and i64 %136, 4294967295
  %138 = getelementptr inbounds i32, i32* %1, i64 %137
  %139 = load i32, i32* %138, align 4, !tbaa !5
  %140 = add nsw i32 %139, %131
  store i32 %140, i32* %130, align 4, !tbaa !5
  store i32 0, i32* %138, align 4, !tbaa !5
  %141 = load i32, i32* %130, align 4, !tbaa !5
  br label %142

142:                                              ; preds = %135, %133
  %143 = phi i32 [ %141, %135 ], [ %131, %133 ]
  %144 = icmp eq i32 %143, %122
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = add nuw nsw i64 %129, 1
  br label %172

147:                                              ; preds = %142
  %148 = getelementptr inbounds i32, i32* %1, i64 %129
  %149 = load i32, i32* %148, align 4, !tbaa !5
  %150 = add nsw i32 %149, %143
  %151 = add nuw nsw i64 %129, 1
  %152 = icmp slt i64 %151, %117
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = getelementptr inbounds i32, i32* %1, i64 %151
  %155 = load i32, i32* %154, align 4, !tbaa !5
  %156 = add nsw i32 %155, %150
  br label %157

157:                                              ; preds = %153, %147
  %158 = phi i32 [ %156, %153 ], [ %150, %147 ]
  %159 = icmp eq i32 %158, %122
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  store i32 %122, i32* %130, align 4, !tbaa !5
  %161 = getelementptr inbounds i32, i32* %1, i64 %151
  store i32 0, i32* %161, align 4, !tbaa !5
  store i32 0, i32* %148, align 4, !tbaa !5
  br label %172

162:                                              ; preds = %157
  %163 = icmp eq i32 %150, %122
  br i1 %163, label %164, label %165

164:                                              ; preds = %162
  store i32 %122, i32* %130, align 4, !tbaa !5
  store i32 0, i32* %148, align 4, !tbaa !5
  br label %172

165:                                              ; preds = %162
  br i1 %152, label %166, label %183

166:                                              ; preds = %165
  %167 = getelementptr inbounds i32, i32* %1, i64 %151
  %168 = load i32, i32* %167, align 4, !tbaa !5
  %169 = add nsw i32 %168, %143
  %170 = icmp eq i32 %169, %122
  br i1 %170, label %171, label %183

171:                                              ; preds = %166
  store i32 %122, i32* %130, align 4, !tbaa !5
  store i32 0, i32* %167, align 4, !tbaa !5
  br label %172

172:                                              ; preds = %145, %160, %164, %171
  %173 = phi i64 [ %146, %145 ], [ %151, %160 ], [ %151, %164 ], [ %151, %171 ]
  %174 = icmp eq i64 %173, %124
  br i1 %174, label %125, label %128, !llvm.loop !14

175:                                              ; preds = %177
  %176 = icmp eq i64 %182, %127
  br i1 %176, label %183, label %177, !llvm.loop !15

177:                                              ; preds = %126, %175
  %178 = phi i64 [ 0, %126 ], [ %182, %175 ]
  %179 = getelementptr inbounds i32, i32* %1, i64 %178
  %180 = load i32, i32* %179, align 4, !tbaa !5
  %181 = icmp eq i32 %180, 0
  %182 = add nuw nsw i64 %178, 1
  br i1 %181, label %175, label %183

183:                                              ; preds = %128, %165, %166, %175, %177, %3, %121, %125, %116, %112
  %184 = phi i32 [ %115, %112 ], [ -1, %116 ], [ %122, %125 ], [ %122, %121 ], [ 0, %3 ], [ %122, %175 ], [ -1, %177 ], [ -1, %166 ], [ -1, %165 ], [ -1, %128 ]
  ret i32 %184
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #1

attributes #0 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10, !13, !11}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
