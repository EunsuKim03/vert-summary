; ModuleID = 'llvm/cpp_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = add i32 %2, 1
  %5 = zext i32 %4 to i64
  %6 = add nsw i32 %1, 1
  %7 = zext i32 %6 to i64
  %8 = mul nuw i64 %5, %7
  %9 = alloca i32, i64 %8, align 16
  %10 = bitcast i32* %9 to i8*
  %11 = icmp slt i32 %2, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %3
  %13 = add nsw i64 %5, -1
  %14 = and i64 %5, 3
  %15 = icmp ult i64 %13, 3
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = and i64 %5, 4294967292
  br label %33

18:                                               ; preds = %33, %12
  %19 = phi i64 [ 0, %12 ], [ %47, %33 ]
  %20 = icmp eq i64 %14, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ %26, %21 ], [ %19, %18 ]
  %23 = phi i64 [ %27, %21 ], [ 0, %18 ]
  %24 = mul nuw nsw i64 %22, %7
  %25 = getelementptr inbounds i32, i32* %9, i64 %24
  store i32 0, i32* %25, align 4, !tbaa !5
  %26 = add nuw nsw i64 %22, 1
  %27 = add i64 %23, 1
  %28 = icmp eq i64 %27, %14
  br i1 %28, label %29, label %21, !llvm.loop !9

29:                                               ; preds = %18, %21, %3
  %30 = icmp slt i32 %1, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %29
  %32 = shl nuw nsw i64 %7, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %32, i1 false), !tbaa !5
  br label %50

33:                                               ; preds = %33, %16
  %34 = phi i64 [ 0, %16 ], [ %47, %33 ]
  %35 = phi i64 [ 0, %16 ], [ %48, %33 ]
  %36 = mul nuw nsw i64 %34, %7
  %37 = getelementptr inbounds i32, i32* %9, i64 %36
  store i32 0, i32* %37, align 16, !tbaa !5
  %38 = or i64 %34, 1
  %39 = mul nuw nsw i64 %38, %7
  %40 = getelementptr inbounds i32, i32* %9, i64 %39
  store i32 0, i32* %40, align 4, !tbaa !5
  %41 = or i64 %34, 2
  %42 = mul nuw nsw i64 %41, %7
  %43 = getelementptr inbounds i32, i32* %9, i64 %42
  store i32 0, i32* %43, align 8, !tbaa !5
  %44 = or i64 %34, 3
  %45 = mul nuw nsw i64 %44, %7
  %46 = getelementptr inbounds i32, i32* %9, i64 %45
  store i32 0, i32* %46, align 4, !tbaa !5
  %47 = add nuw nsw i64 %34, 4
  %48 = add i64 %35, 4
  %49 = icmp eq i64 %48, %17
  br i1 %49, label %18, label %33, !llvm.loop !11

50:                                               ; preds = %31, %29
  %51 = icmp slt i32 %2, 1
  br i1 %51, label %63, label %52

52:                                               ; preds = %50
  %53 = icmp sgt i32 %1, 1
  %54 = zext i32 %1 to i64
  br label %55

55:                                               ; preds = %52, %179
  %56 = phi i64 [ 1, %52 ], [ %180, %179 ]
  br i1 %53, label %57, label %179

57:                                               ; preds = %55
  %58 = add nsw i64 %56, -1
  %59 = mul nuw nsw i64 %58, %7
  %60 = getelementptr inbounds i32, i32* %9, i64 %59
  %61 = mul nuw nsw i64 %56, %7
  %62 = getelementptr inbounds i32, i32* %9, i64 %61
  br label %71

63:                                               ; preds = %179, %50
  %64 = sext i32 %2 to i64
  %65 = mul nsw i64 %64, %7
  %66 = getelementptr inbounds i32, i32* %9, i64 %65
  %67 = add nsw i32 %1, -1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4, !tbaa !5
  ret i32 %70

71:                                               ; preds = %57, %182
  %72 = phi i64 [ 0, %57 ], [ %192, %182 ]
  %73 = phi i64 [ 1, %57 ], [ %190, %182 ]
  %74 = and i64 %73, 9223372036854775800
  %75 = add nsw i64 %74, -8
  %76 = lshr exact i64 %75, 3
  %77 = add nuw nsw i64 %76, 1
  %78 = add i64 %72, 1
  %79 = getelementptr inbounds i32, i32* %0, i64 %73
  %80 = load i32, i32* %79, align 4, !tbaa !5
  %81 = icmp ult i64 %78, 8
  br i1 %81, label %176, label %82

82:                                               ; preds = %71
  %83 = and i64 %78, -8
  %84 = insertelement <4 x i32> poison, i32 %80, i64 0
  %85 = shufflevector <4 x i32> %84, <4 x i32> poison, <4 x i32> zeroinitializer
  %86 = insertelement <4 x i32> poison, i32 %80, i64 0
  %87 = shufflevector <4 x i32> %86, <4 x i32> poison, <4 x i32> zeroinitializer
  %88 = and i64 %77, 1
  %89 = icmp eq i64 %75, 0
  br i1 %89, label %141, label %90

90:                                               ; preds = %82
  %91 = and i64 %77, 4611686018427387902
  br label %92

92:                                               ; preds = %92, %90
  %93 = phi i64 [ 0, %90 ], [ %138, %92 ]
  %94 = phi <4 x i32> [ <i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648>, %90 ], [ %136, %92 ]
  %95 = phi <4 x i32> [ <i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648>, %90 ], [ %137, %92 ]
  %96 = phi i64 [ 0, %90 ], [ %139, %92 ]
  %97 = getelementptr inbounds i32, i32* %0, i64 %93
  %98 = bitcast i32* %97 to <4 x i32>*
  %99 = load <4 x i32>, <4 x i32>* %98, align 4, !tbaa !5
  %100 = getelementptr inbounds i32, i32* %97, i64 4
  %101 = bitcast i32* %100 to <4 x i32>*
  %102 = load <4 x i32>, <4 x i32>* %101, align 4, !tbaa !5
  %103 = sub nsw <4 x i32> %85, %99
  %104 = sub nsw <4 x i32> %87, %102
  %105 = getelementptr inbounds i32, i32* %60, i64 %93
  %106 = bitcast i32* %105 to <4 x i32>*
  %107 = load <4 x i32>, <4 x i32>* %106, align 4, !tbaa !5
  %108 = getelementptr inbounds i32, i32* %105, i64 4
  %109 = bitcast i32* %108 to <4 x i32>*
  %110 = load <4 x i32>, <4 x i32>* %109, align 4, !tbaa !5
  %111 = add nsw <4 x i32> %103, %107
  %112 = add nsw <4 x i32> %104, %110
  %113 = icmp slt <4 x i32> %94, %111
  %114 = icmp slt <4 x i32> %95, %112
  %115 = select <4 x i1> %113, <4 x i32> %111, <4 x i32> %94
  %116 = select <4 x i1> %114, <4 x i32> %112, <4 x i32> %95
  %117 = or i64 %93, 8
  %118 = getelementptr inbounds i32, i32* %0, i64 %117
  %119 = bitcast i32* %118 to <4 x i32>*
  %120 = load <4 x i32>, <4 x i32>* %119, align 4, !tbaa !5
  %121 = getelementptr inbounds i32, i32* %118, i64 4
  %122 = bitcast i32* %121 to <4 x i32>*
  %123 = load <4 x i32>, <4 x i32>* %122, align 4, !tbaa !5
  %124 = sub nsw <4 x i32> %85, %120
  %125 = sub nsw <4 x i32> %87, %123
  %126 = getelementptr inbounds i32, i32* %60, i64 %117
  %127 = bitcast i32* %126 to <4 x i32>*
  %128 = load <4 x i32>, <4 x i32>* %127, align 4, !tbaa !5
  %129 = getelementptr inbounds i32, i32* %126, i64 4
  %130 = bitcast i32* %129 to <4 x i32>*
  %131 = load <4 x i32>, <4 x i32>* %130, align 4, !tbaa !5
  %132 = add nsw <4 x i32> %124, %128
  %133 = add nsw <4 x i32> %125, %131
  %134 = icmp slt <4 x i32> %115, %132
  %135 = icmp slt <4 x i32> %116, %133
  %136 = select <4 x i1> %134, <4 x i32> %132, <4 x i32> %115
  %137 = select <4 x i1> %135, <4 x i32> %133, <4 x i32> %116
  %138 = add nuw i64 %93, 16
  %139 = add i64 %96, 2
  %140 = icmp eq i64 %139, %91
  br i1 %140, label %141, label %92, !llvm.loop !13

141:                                              ; preds = %92, %82
  %142 = phi <4 x i32> [ undef, %82 ], [ %136, %92 ]
  %143 = phi <4 x i32> [ undef, %82 ], [ %137, %92 ]
  %144 = phi i64 [ 0, %82 ], [ %138, %92 ]
  %145 = phi <4 x i32> [ <i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648>, %82 ], [ %136, %92 ]
  %146 = phi <4 x i32> [ <i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648>, %82 ], [ %137, %92 ]
  %147 = icmp eq i64 %88, 0
  br i1 %147, label %169, label %148

148:                                              ; preds = %141
  %149 = getelementptr inbounds i32, i32* %0, i64 %144
  %150 = bitcast i32* %149 to <4 x i32>*
  %151 = load <4 x i32>, <4 x i32>* %150, align 4, !tbaa !5
  %152 = getelementptr inbounds i32, i32* %149, i64 4
  %153 = bitcast i32* %152 to <4 x i32>*
  %154 = load <4 x i32>, <4 x i32>* %153, align 4, !tbaa !5
  %155 = sub nsw <4 x i32> %85, %151
  %156 = sub nsw <4 x i32> %87, %154
  %157 = getelementptr inbounds i32, i32* %60, i64 %144
  %158 = bitcast i32* %157 to <4 x i32>*
  %159 = load <4 x i32>, <4 x i32>* %158, align 4, !tbaa !5
  %160 = getelementptr inbounds i32, i32* %157, i64 4
  %161 = bitcast i32* %160 to <4 x i32>*
  %162 = load <4 x i32>, <4 x i32>* %161, align 4, !tbaa !5
  %163 = add nsw <4 x i32> %155, %159
  %164 = add nsw <4 x i32> %156, %162
  %165 = icmp slt <4 x i32> %145, %163
  %166 = icmp slt <4 x i32> %146, %164
  %167 = select <4 x i1> %165, <4 x i32> %163, <4 x i32> %145
  %168 = select <4 x i1> %166, <4 x i32> %164, <4 x i32> %146
  br label %169

169:                                              ; preds = %141, %148
  %170 = phi <4 x i32> [ %142, %141 ], [ %167, %148 ]
  %171 = phi <4 x i32> [ %143, %141 ], [ %168, %148 ]
  %172 = icmp sgt <4 x i32> %170, %171
  %173 = select <4 x i1> %172, <4 x i32> %170, <4 x i32> %171
  %174 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %173)
  %175 = icmp eq i64 %78, %83
  br i1 %175, label %182, label %176

176:                                              ; preds = %71, %169
  %177 = phi i64 [ 0, %71 ], [ %83, %169 ]
  %178 = phi i32 [ -2147483648, %71 ], [ %174, %169 ]
  br label %193

179:                                              ; preds = %182, %55
  %180 = add nuw nsw i64 %56, 1
  %181 = icmp eq i64 %180, %5
  br i1 %181, label %63, label %55, !llvm.loop !15

182:                                              ; preds = %193, %169
  %183 = phi i32 [ %174, %169 ], [ %203, %193 ]
  %184 = add nsw i64 %73, -1
  %185 = getelementptr inbounds i32, i32* %62, i64 %184
  %186 = load i32, i32* %185, align 4, !tbaa !5
  %187 = icmp slt i32 %186, %183
  %188 = select i1 %187, i32 %183, i32 %186
  %189 = getelementptr inbounds i32, i32* %62, i64 %73
  store i32 %188, i32* %189, align 4, !tbaa !5
  %190 = add nuw nsw i64 %73, 1
  %191 = icmp eq i64 %190, %54
  %192 = add i64 %72, 1
  br i1 %191, label %179, label %71, !llvm.loop !16

193:                                              ; preds = %176, %193
  %194 = phi i64 [ %204, %193 ], [ %177, %176 ]
  %195 = phi i32 [ %203, %193 ], [ %178, %176 ]
  %196 = getelementptr inbounds i32, i32* %0, i64 %194
  %197 = load i32, i32* %196, align 4, !tbaa !5
  %198 = sub nsw i32 %80, %197
  %199 = getelementptr inbounds i32, i32* %60, i64 %194
  %200 = load i32, i32* %199, align 4, !tbaa !5
  %201 = add nsw i32 %198, %200
  %202 = icmp slt i32 %195, %201
  %203 = select i1 %202, i32 %201, i32 %195
  %204 = add nuw nsw i64 %194, 1
  %205 = icmp eq i64 %204, %73
  br i1 %205, label %182, label %193, !llvm.loop !17
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_reprocessed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #6

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }

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
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12, !14}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12, !18, !14}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
