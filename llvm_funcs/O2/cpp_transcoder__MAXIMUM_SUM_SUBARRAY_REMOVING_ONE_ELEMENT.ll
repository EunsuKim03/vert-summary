; ModuleID = 'benchmark/cpp_transcoder/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
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
  br label %58

14:                                               ; preds = %2
  %15 = add nsw i32 %1, -1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %0, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = getelementptr inbounds i32, i32* %5, i64 %16
  store i32 %18, i32* %19, align 4, !tbaa !5
  br label %215

20:                                               ; preds = %58, %8
  %21 = phi i64 [ 1, %8 ], [ %75, %58 ]
  %22 = phi i32 [ %6, %8 ], [ %73, %58 ]
  %23 = icmp eq i64 %10, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds i32, i32* %0, i64 %21
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = add nsw i32 %26, %22
  %28 = icmp slt i32 %26, %27
  %29 = select i1 %28, i32 %27, i32 %26
  %30 = getelementptr inbounds i32, i32* %4, i64 %21
  store i32 %29, i32* %30, align 4, !tbaa !5
  br label %31

31:                                               ; preds = %20, %24
  %32 = add nsw i32 %1, -1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %0, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = getelementptr inbounds i32, i32* %5, i64 %33
  store i32 %35, i32* %36, align 4, !tbaa !5
  br i1 %7, label %37, label %215

37:                                               ; preds = %31
  %38 = add nsw i32 %1, -2
  %39 = zext i32 %38 to i64
  %40 = and i64 %39, 1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = getelementptr inbounds i32, i32* %0, i64 %39
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = add nsw i32 %44, %35
  %46 = icmp slt i32 %44, %45
  %47 = select i1 %46, i32 %45, i32 %44
  %48 = icmp slt i32 %35, %47
  %49 = select i1 %48, i32 %47, i32 %35
  %50 = getelementptr inbounds i32, i32* %5, i64 %39
  store i32 %47, i32* %50, align 4, !tbaa !5
  %51 = add nsw i64 %39, -1
  br label %52

52:                                               ; preds = %42, %37
  %53 = phi i32 [ undef, %37 ], [ %49, %42 ]
  %54 = phi i64 [ %39, %37 ], [ %51, %42 ]
  %55 = phi i32 [ %35, %37 ], [ %47, %42 ]
  %56 = phi i32 [ %35, %37 ], [ %49, %42 ]
  %57 = icmp eq i32 %38, 0
  br i1 %57, label %78, label %192

58:                                               ; preds = %58, %12
  %59 = phi i64 [ 1, %12 ], [ %75, %58 ]
  %60 = phi i32 [ %6, %12 ], [ %73, %58 ]
  %61 = phi i64 [ 0, %12 ], [ %76, %58 ]
  %62 = getelementptr inbounds i32, i32* %0, i64 %59
  %63 = load i32, i32* %62, align 4, !tbaa !5
  %64 = add nsw i32 %63, %60
  %65 = icmp slt i32 %63, %64
  %66 = select i1 %65, i32 %64, i32 %63
  %67 = getelementptr inbounds i32, i32* %4, i64 %59
  store i32 %66, i32* %67, align 4, !tbaa !5
  %68 = add nuw nsw i64 %59, 1
  %69 = getelementptr inbounds i32, i32* %0, i64 %68
  %70 = load i32, i32* %69, align 4, !tbaa !5
  %71 = add nsw i32 %70, %66
  %72 = icmp slt i32 %70, %71
  %73 = select i1 %72, i32 %71, i32 %70
  %74 = getelementptr inbounds i32, i32* %4, i64 %68
  store i32 %73, i32* %74, align 4, !tbaa !5
  %75 = add nuw nsw i64 %59, 2
  %76 = add i64 %61, 2
  %77 = icmp eq i64 %76, %13
  br i1 %77, label %20, label %58, !llvm.loop !9

78:                                               ; preds = %192, %52
  %79 = phi i32 [ %53, %52 ], [ %211, %192 ]
  %80 = icmp sgt i32 %1, 2
  br i1 %80, label %81, label %215

81:                                               ; preds = %78
  %82 = zext i32 %32 to i64
  %83 = getelementptr inbounds i32, i32* %5, i64 2
  %84 = load i32, i32* %83, align 8, !tbaa !5
  %85 = add nsw i32 %84, %6
  %86 = icmp slt i32 %79, %85
  %87 = select i1 %86, i32 %85, i32 %79
  %88 = icmp eq i32 %32, 2
  br i1 %88, label %215, label %89, !llvm.loop !11

89:                                               ; preds = %81
  %90 = add nsw i64 %82, -2
  %91 = icmp ult i64 %90, 8
  br i1 %91, label %188, label %92

92:                                               ; preds = %89
  %93 = and i64 %90, -8
  %94 = or i64 %93, 2
  %95 = or i64 %93, 1
  %96 = insertelement <4 x i32> poison, i32 %87, i64 0
  %97 = shufflevector <4 x i32> %96, <4 x i32> poison, <4 x i32> zeroinitializer
  %98 = add nsw i64 %93, -8
  %99 = lshr exact i64 %98, 3
  %100 = add nuw nsw i64 %99, 1
  %101 = and i64 %100, 1
  %102 = icmp eq i64 %98, 0
  br i1 %102, label %153, label %103

103:                                              ; preds = %92
  %104 = and i64 %100, 4611686018427387902
  br label %105

105:                                              ; preds = %105, %103
  %106 = phi i64 [ 0, %103 ], [ %150, %105 ]
  %107 = phi <4 x i32> [ %97, %103 ], [ %148, %105 ]
  %108 = phi <4 x i32> [ %97, %103 ], [ %149, %105 ]
  %109 = phi i64 [ 0, %103 ], [ %151, %105 ]
  %110 = or i64 %106, 1
  %111 = getelementptr inbounds i32, i32* %4, i64 %110
  %112 = bitcast i32* %111 to <4 x i32>*
  %113 = load <4 x i32>, <4 x i32>* %112, align 4, !tbaa !5
  %114 = getelementptr inbounds i32, i32* %111, i64 4
  %115 = bitcast i32* %114 to <4 x i32>*
  %116 = load <4 x i32>, <4 x i32>* %115, align 4, !tbaa !5
  %117 = or i64 %106, 3
  %118 = getelementptr inbounds i32, i32* %5, i64 %117
  %119 = bitcast i32* %118 to <4 x i32>*
  %120 = load <4 x i32>, <4 x i32>* %119, align 4, !tbaa !5
  %121 = getelementptr inbounds i32, i32* %118, i64 4
  %122 = bitcast i32* %121 to <4 x i32>*
  %123 = load <4 x i32>, <4 x i32>* %122, align 4, !tbaa !5
  %124 = add nsw <4 x i32> %120, %113
  %125 = add nsw <4 x i32> %123, %116
  %126 = icmp slt <4 x i32> %107, %124
  %127 = icmp slt <4 x i32> %108, %125
  %128 = select <4 x i1> %126, <4 x i32> %124, <4 x i32> %107
  %129 = select <4 x i1> %127, <4 x i32> %125, <4 x i32> %108
  %130 = or i64 %106, 9
  %131 = getelementptr inbounds i32, i32* %4, i64 %130
  %132 = bitcast i32* %131 to <4 x i32>*
  %133 = load <4 x i32>, <4 x i32>* %132, align 4, !tbaa !5
  %134 = getelementptr inbounds i32, i32* %131, i64 4
  %135 = bitcast i32* %134 to <4 x i32>*
  %136 = load <4 x i32>, <4 x i32>* %135, align 4, !tbaa !5
  %137 = or i64 %106, 11
  %138 = getelementptr inbounds i32, i32* %5, i64 %137
  %139 = bitcast i32* %138 to <4 x i32>*
  %140 = load <4 x i32>, <4 x i32>* %139, align 4, !tbaa !5
  %141 = getelementptr inbounds i32, i32* %138, i64 4
  %142 = bitcast i32* %141 to <4 x i32>*
  %143 = load <4 x i32>, <4 x i32>* %142, align 4, !tbaa !5
  %144 = add nsw <4 x i32> %140, %133
  %145 = add nsw <4 x i32> %143, %136
  %146 = icmp slt <4 x i32> %128, %144
  %147 = icmp slt <4 x i32> %129, %145
  %148 = select <4 x i1> %146, <4 x i32> %144, <4 x i32> %128
  %149 = select <4 x i1> %147, <4 x i32> %145, <4 x i32> %129
  %150 = add nuw i64 %106, 16
  %151 = add i64 %109, 2
  %152 = icmp eq i64 %151, %104
  br i1 %152, label %153, label %105, !llvm.loop !12

153:                                              ; preds = %105, %92
  %154 = phi <4 x i32> [ undef, %92 ], [ %148, %105 ]
  %155 = phi <4 x i32> [ undef, %92 ], [ %149, %105 ]
  %156 = phi i64 [ 0, %92 ], [ %150, %105 ]
  %157 = phi <4 x i32> [ %97, %92 ], [ %148, %105 ]
  %158 = phi <4 x i32> [ %97, %92 ], [ %149, %105 ]
  %159 = icmp eq i64 %101, 0
  br i1 %159, label %181, label %160

160:                                              ; preds = %153
  %161 = or i64 %156, 1
  %162 = getelementptr inbounds i32, i32* %4, i64 %161
  %163 = bitcast i32* %162 to <4 x i32>*
  %164 = load <4 x i32>, <4 x i32>* %163, align 4, !tbaa !5
  %165 = getelementptr inbounds i32, i32* %162, i64 4
  %166 = bitcast i32* %165 to <4 x i32>*
  %167 = load <4 x i32>, <4 x i32>* %166, align 4, !tbaa !5
  %168 = or i64 %156, 3
  %169 = getelementptr inbounds i32, i32* %5, i64 %168
  %170 = bitcast i32* %169 to <4 x i32>*
  %171 = load <4 x i32>, <4 x i32>* %170, align 4, !tbaa !5
  %172 = getelementptr inbounds i32, i32* %169, i64 4
  %173 = bitcast i32* %172 to <4 x i32>*
  %174 = load <4 x i32>, <4 x i32>* %173, align 4, !tbaa !5
  %175 = add nsw <4 x i32> %171, %164
  %176 = add nsw <4 x i32> %174, %167
  %177 = icmp slt <4 x i32> %157, %175
  %178 = icmp slt <4 x i32> %158, %176
  %179 = select <4 x i1> %177, <4 x i32> %175, <4 x i32> %157
  %180 = select <4 x i1> %178, <4 x i32> %176, <4 x i32> %158
  br label %181

181:                                              ; preds = %153, %160
  %182 = phi <4 x i32> [ %154, %153 ], [ %179, %160 ]
  %183 = phi <4 x i32> [ %155, %153 ], [ %180, %160 ]
  %184 = icmp sgt <4 x i32> %182, %183
  %185 = select <4 x i1> %184, <4 x i32> %182, <4 x i32> %183
  %186 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %185)
  %187 = icmp eq i64 %90, %93
  br i1 %187, label %215, label %188

188:                                              ; preds = %89, %181
  %189 = phi i32 [ %87, %89 ], [ %186, %181 ]
  %190 = phi i64 [ 2, %89 ], [ %94, %181 ]
  %191 = phi i64 [ 1, %89 ], [ %95, %181 ]
  br label %217

192:                                              ; preds = %52, %192
  %193 = phi i64 [ %213, %192 ], [ %54, %52 ]
  %194 = phi i32 [ %209, %192 ], [ %55, %52 ]
  %195 = phi i32 [ %211, %192 ], [ %56, %52 ]
  %196 = getelementptr inbounds i32, i32* %0, i64 %193
  %197 = load i32, i32* %196, align 4, !tbaa !5
  %198 = add nsw i32 %197, %194
  %199 = icmp slt i32 %197, %198
  %200 = select i1 %199, i32 %198, i32 %197
  %201 = icmp slt i32 %195, %200
  %202 = select i1 %201, i32 %200, i32 %195
  %203 = getelementptr inbounds i32, i32* %5, i64 %193
  store i32 %200, i32* %203, align 4, !tbaa !5
  %204 = add nsw i64 %193, -1
  %205 = getelementptr inbounds i32, i32* %0, i64 %204
  %206 = load i32, i32* %205, align 4, !tbaa !5
  %207 = add nsw i32 %206, %200
  %208 = icmp slt i32 %206, %207
  %209 = select i1 %208, i32 %207, i32 %206
  %210 = icmp slt i32 %202, %209
  %211 = select i1 %210, i32 %209, i32 %202
  %212 = getelementptr inbounds i32, i32* %5, i64 %204
  store i32 %209, i32* %212, align 4, !tbaa !5
  %213 = add nsw i64 %193, -2
  %214 = icmp eq i64 %204, 0
  br i1 %214, label %78, label %192, !llvm.loop !14

215:                                              ; preds = %217, %81, %181, %31, %14, %78
  %216 = phi i32 [ %79, %78 ], [ %18, %14 ], [ %35, %31 ], [ %87, %81 ], [ %186, %181 ], [ %228, %217 ]
  ret i32 %216

217:                                              ; preds = %188, %217
  %218 = phi i32 [ %228, %217 ], [ %189, %188 ]
  %219 = phi i64 [ %223, %217 ], [ %190, %188 ]
  %220 = phi i64 [ %219, %217 ], [ %191, %188 ]
  %221 = getelementptr inbounds i32, i32* %4, i64 %220
  %222 = load i32, i32* %221, align 4, !tbaa !5
  %223 = add nuw nsw i64 %219, 1
  %224 = getelementptr inbounds i32, i32* %5, i64 %223
  %225 = load i32, i32* %224, align 4, !tbaa !5
  %226 = add nsw i32 %225, %222
  %227 = icmp slt i32 %218, %226
  %228 = select i1 %227, i32 %226, i32 %218
  %229 = icmp eq i64 %223, %82
  br i1 %229, label %215, label %217, !llvm.loop !15
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10, !13}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10, !16, !13}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
