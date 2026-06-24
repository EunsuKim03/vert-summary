; ModuleID = 'benchmark/cpp_transcoder/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %213

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = icmp ult i32 %1, 8
  br i1 %6, label %88, label %7

7:                                                ; preds = %4
  %8 = and i64 %5, 4294967288
  %9 = add nsw i64 %8, -8
  %10 = lshr exact i64 %9, 3
  %11 = add nuw nsw i64 %10, 1
  %12 = and i64 %11, 3
  %13 = icmp ult i64 %9, 24
  br i1 %13, label %59, label %14

14:                                               ; preds = %7
  %15 = and i64 %11, 4611686018427387900
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %56, %16 ]
  %18 = phi <4 x i32> [ zeroinitializer, %14 ], [ %54, %16 ]
  %19 = phi <4 x i32> [ zeroinitializer, %14 ], [ %55, %16 ]
  %20 = phi i64 [ 0, %14 ], [ %57, %16 ]
  %21 = getelementptr inbounds i32, i32* %0, i64 %17
  %22 = bitcast i32* %21 to <4 x i32>*
  %23 = load <4 x i32>, <4 x i32>* %22, align 4, !tbaa !5
  %24 = getelementptr inbounds i32, i32* %21, i64 4
  %25 = bitcast i32* %24 to <4 x i32>*
  %26 = load <4 x i32>, <4 x i32>* %25, align 4, !tbaa !5
  %27 = add <4 x i32> %23, %18
  %28 = add <4 x i32> %26, %19
  %29 = or i64 %17, 8
  %30 = getelementptr inbounds i32, i32* %0, i64 %29
  %31 = bitcast i32* %30 to <4 x i32>*
  %32 = load <4 x i32>, <4 x i32>* %31, align 4, !tbaa !5
  %33 = getelementptr inbounds i32, i32* %30, i64 4
  %34 = bitcast i32* %33 to <4 x i32>*
  %35 = load <4 x i32>, <4 x i32>* %34, align 4, !tbaa !5
  %36 = add <4 x i32> %32, %27
  %37 = add <4 x i32> %35, %28
  %38 = or i64 %17, 16
  %39 = getelementptr inbounds i32, i32* %0, i64 %38
  %40 = bitcast i32* %39 to <4 x i32>*
  %41 = load <4 x i32>, <4 x i32>* %40, align 4, !tbaa !5
  %42 = getelementptr inbounds i32, i32* %39, i64 4
  %43 = bitcast i32* %42 to <4 x i32>*
  %44 = load <4 x i32>, <4 x i32>* %43, align 4, !tbaa !5
  %45 = add <4 x i32> %41, %36
  %46 = add <4 x i32> %44, %37
  %47 = or i64 %17, 24
  %48 = getelementptr inbounds i32, i32* %0, i64 %47
  %49 = bitcast i32* %48 to <4 x i32>*
  %50 = load <4 x i32>, <4 x i32>* %49, align 4, !tbaa !5
  %51 = getelementptr inbounds i32, i32* %48, i64 4
  %52 = bitcast i32* %51 to <4 x i32>*
  %53 = load <4 x i32>, <4 x i32>* %52, align 4, !tbaa !5
  %54 = add <4 x i32> %50, %45
  %55 = add <4 x i32> %53, %46
  %56 = add nuw i64 %17, 32
  %57 = add i64 %20, 4
  %58 = icmp eq i64 %57, %15
  br i1 %58, label %59, label %16, !llvm.loop !9

59:                                               ; preds = %16, %7
  %60 = phi <4 x i32> [ undef, %7 ], [ %54, %16 ]
  %61 = phi <4 x i32> [ undef, %7 ], [ %55, %16 ]
  %62 = phi i64 [ 0, %7 ], [ %56, %16 ]
  %63 = phi <4 x i32> [ zeroinitializer, %7 ], [ %54, %16 ]
  %64 = phi <4 x i32> [ zeroinitializer, %7 ], [ %55, %16 ]
  %65 = icmp eq i64 %12, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %59, %66
  %67 = phi i64 [ %79, %66 ], [ %62, %59 ]
  %68 = phi <4 x i32> [ %77, %66 ], [ %63, %59 ]
  %69 = phi <4 x i32> [ %78, %66 ], [ %64, %59 ]
  %70 = phi i64 [ %80, %66 ], [ 0, %59 ]
  %71 = getelementptr inbounds i32, i32* %0, i64 %67
  %72 = bitcast i32* %71 to <4 x i32>*
  %73 = load <4 x i32>, <4 x i32>* %72, align 4, !tbaa !5
  %74 = getelementptr inbounds i32, i32* %71, i64 4
  %75 = bitcast i32* %74 to <4 x i32>*
  %76 = load <4 x i32>, <4 x i32>* %75, align 4, !tbaa !5
  %77 = add <4 x i32> %73, %68
  %78 = add <4 x i32> %76, %69
  %79 = add nuw i64 %67, 8
  %80 = add i64 %70, 1
  %81 = icmp eq i64 %80, %12
  br i1 %81, label %82, label %66, !llvm.loop !12

82:                                               ; preds = %66, %59
  %83 = phi <4 x i32> [ %60, %59 ], [ %77, %66 ]
  %84 = phi <4 x i32> [ %61, %59 ], [ %78, %66 ]
  %85 = add <4 x i32> %84, %83
  %86 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %85)
  %87 = icmp eq i64 %8, %5
  br i1 %87, label %91, label %88

88:                                               ; preds = %4, %82
  %89 = phi i64 [ 0, %4 ], [ %8, %82 ]
  %90 = phi i32 [ 0, %4 ], [ %86, %82 ]
  br label %168

91:                                               ; preds = %168, %82
  %92 = phi i32 [ %86, %82 ], [ %173, %168 ]
  br i1 %3, label %93, label %213

93:                                               ; preds = %91
  %94 = zext i32 %1 to i64
  %95 = icmp ult i32 %1, 8
  br i1 %95, label %165, label %96

96:                                               ; preds = %93
  %97 = and i64 %5, 4294967288
  %98 = add nsw i64 %97, -8
  %99 = lshr exact i64 %98, 3
  %100 = add nuw nsw i64 %99, 1
  %101 = and i64 %100, 1
  %102 = icmp eq i64 %98, 0
  br i1 %102, label %139, label %103

103:                                              ; preds = %96
  %104 = and i64 %100, 4611686018427387902
  br label %105

105:                                              ; preds = %105, %103
  %106 = phi i64 [ 0, %103 ], [ %135, %105 ]
  %107 = phi <4 x i32> [ zeroinitializer, %103 ], [ %133, %105 ]
  %108 = phi <4 x i32> [ zeroinitializer, %103 ], [ %134, %105 ]
  %109 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %103 ], [ %136, %105 ]
  %110 = phi i64 [ 0, %103 ], [ %137, %105 ]
  %111 = add <4 x i32> %109, <i32 4, i32 4, i32 4, i32 4>
  %112 = getelementptr inbounds i32, i32* %0, i64 %106
  %113 = bitcast i32* %112 to <4 x i32>*
  %114 = load <4 x i32>, <4 x i32>* %113, align 4, !tbaa !5
  %115 = getelementptr inbounds i32, i32* %112, i64 4
  %116 = bitcast i32* %115 to <4 x i32>*
  %117 = load <4 x i32>, <4 x i32>* %116, align 4, !tbaa !5
  %118 = mul nsw <4 x i32> %114, %109
  %119 = mul nsw <4 x i32> %117, %111
  %120 = add <4 x i32> %118, %107
  %121 = add <4 x i32> %119, %108
  %122 = or i64 %106, 8
  %123 = add <4 x i32> %109, <i32 8, i32 8, i32 8, i32 8>
  %124 = add <4 x i32> %109, <i32 12, i32 12, i32 12, i32 12>
  %125 = getelementptr inbounds i32, i32* %0, i64 %122
  %126 = bitcast i32* %125 to <4 x i32>*
  %127 = load <4 x i32>, <4 x i32>* %126, align 4, !tbaa !5
  %128 = getelementptr inbounds i32, i32* %125, i64 4
  %129 = bitcast i32* %128 to <4 x i32>*
  %130 = load <4 x i32>, <4 x i32>* %129, align 4, !tbaa !5
  %131 = mul nsw <4 x i32> %127, %123
  %132 = mul nsw <4 x i32> %130, %124
  %133 = add <4 x i32> %131, %120
  %134 = add <4 x i32> %132, %121
  %135 = add nuw i64 %106, 16
  %136 = add <4 x i32> %109, <i32 16, i32 16, i32 16, i32 16>
  %137 = add i64 %110, 2
  %138 = icmp eq i64 %137, %104
  br i1 %138, label %139, label %105, !llvm.loop !14

139:                                              ; preds = %105, %96
  %140 = phi <4 x i32> [ undef, %96 ], [ %133, %105 ]
  %141 = phi <4 x i32> [ undef, %96 ], [ %134, %105 ]
  %142 = phi i64 [ 0, %96 ], [ %135, %105 ]
  %143 = phi <4 x i32> [ zeroinitializer, %96 ], [ %133, %105 ]
  %144 = phi <4 x i32> [ zeroinitializer, %96 ], [ %134, %105 ]
  %145 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %96 ], [ %136, %105 ]
  %146 = icmp eq i64 %101, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %139
  %148 = add <4 x i32> %145, <i32 4, i32 4, i32 4, i32 4>
  %149 = getelementptr inbounds i32, i32* %0, i64 %142
  %150 = bitcast i32* %149 to <4 x i32>*
  %151 = load <4 x i32>, <4 x i32>* %150, align 4, !tbaa !5
  %152 = getelementptr inbounds i32, i32* %149, i64 4
  %153 = bitcast i32* %152 to <4 x i32>*
  %154 = load <4 x i32>, <4 x i32>* %153, align 4, !tbaa !5
  %155 = mul nsw <4 x i32> %151, %145
  %156 = mul nsw <4 x i32> %154, %148
  %157 = add <4 x i32> %155, %143
  %158 = add <4 x i32> %156, %144
  br label %159

159:                                              ; preds = %139, %147
  %160 = phi <4 x i32> [ %140, %139 ], [ %157, %147 ]
  %161 = phi <4 x i32> [ %141, %139 ], [ %158, %147 ]
  %162 = add <4 x i32> %161, %160
  %163 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %162)
  %164 = icmp eq i64 %97, %5
  br i1 %164, label %176, label %165

165:                                              ; preds = %93, %159
  %166 = phi i64 [ 0, %93 ], [ %97, %159 ]
  %167 = phi i32 [ 0, %93 ], [ %163, %159 ]
  br label %186

168:                                              ; preds = %88, %168
  %169 = phi i64 [ %174, %168 ], [ %89, %88 ]
  %170 = phi i32 [ %173, %168 ], [ %90, %88 ]
  %171 = getelementptr inbounds i32, i32* %0, i64 %169
  %172 = load i32, i32* %171, align 4, !tbaa !5
  %173 = add nsw i32 %172, %170
  %174 = add nuw nsw i64 %169, 1
  %175 = icmp eq i64 %174, %5
  br i1 %175, label %91, label %168, !llvm.loop !15

176:                                              ; preds = %186, %159
  %177 = phi i32 [ %163, %159 ], [ %193, %186 ]
  %178 = icmp sgt i32 %1, 1
  br i1 %178, label %179, label %213

179:                                              ; preds = %176
  %180 = add nsw i32 %1, -1
  %181 = add nsw i64 %5, -1
  %182 = and i64 %181, 1
  %183 = icmp eq i32 %1, 2
  br i1 %183, label %198, label %184

184:                                              ; preds = %179
  %185 = and i64 %181, -2
  br label %215

186:                                              ; preds = %165, %186
  %187 = phi i64 [ %194, %186 ], [ %166, %165 ]
  %188 = phi i32 [ %193, %186 ], [ %167, %165 ]
  %189 = getelementptr inbounds i32, i32* %0, i64 %187
  %190 = load i32, i32* %189, align 4, !tbaa !5
  %191 = trunc i64 %187 to i32
  %192 = mul nsw i32 %190, %191
  %193 = add nsw i32 %192, %188
  %194 = add nuw nsw i64 %187, 1
  %195 = icmp eq i64 %194, %94
  br i1 %195, label %176, label %186, !llvm.loop !17

196:                                              ; preds = %215
  %197 = add nuw i64 %216, 1
  br label %198

198:                                              ; preds = %196, %179
  %199 = phi i32 [ undef, %179 ], [ %236, %196 ]
  %200 = phi i64 [ 0, %179 ], [ %197, %196 ]
  %201 = phi i32 [ %177, %179 ], [ %234, %196 ]
  %202 = phi i32 [ %177, %179 ], [ %236, %196 ]
  %203 = icmp eq i64 %182, 0
  br i1 %203, label %213, label %204

204:                                              ; preds = %198
  %205 = getelementptr inbounds i32, i32* %0, i64 %200
  %206 = load i32, i32* %205, align 4, !tbaa !5
  %207 = mul nsw i32 %206, %180
  %208 = sub i32 %201, %92
  %209 = add i32 %208, %206
  %210 = add i32 %209, %207
  %211 = icmp slt i32 %202, %210
  %212 = select i1 %211, i32 %210, i32 %202
  br label %213

213:                                              ; preds = %204, %198, %2, %91, %176
  %214 = phi i32 [ %177, %176 ], [ 0, %91 ], [ 0, %2 ], [ %199, %198 ], [ %212, %204 ]
  ret i32 %214

215:                                              ; preds = %215, %184
  %216 = phi i64 [ 1, %184 ], [ %237, %215 ]
  %217 = phi i32 [ %177, %184 ], [ %234, %215 ]
  %218 = phi i32 [ %177, %184 ], [ %236, %215 ]
  %219 = phi i64 [ 0, %184 ], [ %238, %215 ]
  %220 = add nsw i64 %216, -1
  %221 = getelementptr inbounds i32, i32* %0, i64 %220
  %222 = load i32, i32* %221, align 4, !tbaa !5
  %223 = mul nsw i32 %222, %180
  %224 = sub i32 %217, %92
  %225 = add i32 %224, %222
  %226 = add i32 %225, %223
  %227 = icmp slt i32 %218, %226
  %228 = select i1 %227, i32 %226, i32 %218
  %229 = getelementptr inbounds i32, i32* %0, i64 %216
  %230 = load i32, i32* %229, align 4, !tbaa !5
  %231 = mul nsw i32 %230, %180
  %232 = sub i32 %226, %92
  %233 = add i32 %232, %230
  %234 = add i32 %233, %231
  %235 = icmp slt i32 %228, %234
  %236 = select i1 %235, i32 %234, i32 %228
  %237 = add nuw nsw i64 %216, 2
  %238 = add i64 %219, 2
  %239 = icmp eq i64 %238, %185
  br i1 %239, label %196, label %215, !llvm.loop !18
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!15 = distinct !{!15, !10, !16, !11}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !10, !16, !11}
!18 = distinct !{!18, !10}
