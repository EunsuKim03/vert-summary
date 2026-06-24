; ModuleID = 'benchmark/cpp_transcoder/FIND_A_ROTATION_WITH_MAXIMUM_HAMMING_DISTANCE/FIND_A_ROTATION_WITH_MAXIMUM_HAMMING_DISTANCE_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FIND_A_ROTATION_WITH_MAXIMUM_HAMMING_DISTANCE/FIND_A_ROTATION_WITH_MAXIMUM_HAMMING_DISTANCE_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_A_ROTATION_WITH_MAXIMUM_HAMMING_DISTANCE_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = bitcast i32* %0 to i8*
  %4 = shl nsw i32 %1, 1
  %5 = or i32 %4, 1
  %6 = zext i32 %5 to i64
  %7 = alloca i32, i64 %6, align 16
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %158

9:                                                ; preds = %2
  %10 = bitcast i32* %7 to i8*
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %10, i8* align 4 %3, i64 %12, i1 false), !tbaa !5
  %13 = zext i32 %1 to i64
  %14 = getelementptr i32, i32* %7, i64 %13
  %15 = bitcast i32* %14 to i8*
  %16 = zext i32 %1 to i64
  %17 = shl nuw nsw i64 %16, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %3, i64 %17, i1 false), !tbaa !5
  %18 = icmp eq i32 %1, 1
  br i1 %18, label %158, label %19

19:                                               ; preds = %9
  %20 = zext i32 %1 to i64
  %21 = zext i32 %1 to i64
  %22 = add nuw nsw i64 %21, 1
  %23 = add nuw nsw i64 %21, 1
  br label %24

24:                                               ; preds = %19, %152
  %25 = phi i64 [ 0, %19 ], [ %157, %152 ]
  %26 = phi i64 [ 1, %19 ], [ %155, %152 ]
  %27 = phi i32 [ 0, %19 ], [ %154, %152 ]
  %28 = add i64 %23, %25
  %29 = add i64 %25, 2
  %30 = call i64 @llvm.umax.i64(i64 %28, i64 %29)
  %31 = xor i64 %25, -1
  %32 = add i64 %30, %31
  %33 = add i64 %32, -8
  %34 = lshr i64 %33, 3
  %35 = add nuw nsw i64 %34, 1
  %36 = add i64 %22, %25
  %37 = add i64 %25, 2
  %38 = call i64 @llvm.umax.i64(i64 %36, i64 %37)
  %39 = xor i64 %25, -1
  %40 = add i64 %38, %39
  %41 = add nuw nsw i64 %26, %20
  br i1 %8, label %42, label %135

42:                                               ; preds = %24
  %43 = icmp ult i64 %40, 8
  br i1 %43, label %131, label %44

44:                                               ; preds = %42
  %45 = and i64 %40, -8
  %46 = add i64 %26, %45
  %47 = and i64 %35, 1
  %48 = icmp ult i64 %33, 8
  br i1 %48, label %98, label %49

49:                                               ; preds = %44
  %50 = and i64 %35, 4611686018427387902
  br label %51

51:                                               ; preds = %51, %49
  %52 = phi i64 [ 0, %49 ], [ %95, %51 ]
  %53 = phi <4 x i32> [ zeroinitializer, %49 ], [ %93, %51 ]
  %54 = phi <4 x i32> [ zeroinitializer, %49 ], [ %94, %51 ]
  %55 = phi i64 [ 0, %49 ], [ %96, %51 ]
  %56 = add i64 %26, %52
  %57 = getelementptr inbounds i32, i32* %7, i64 %56
  %58 = bitcast i32* %57 to <4 x i32>*
  %59 = load <4 x i32>, <4 x i32>* %58, align 4, !tbaa !5
  %60 = getelementptr inbounds i32, i32* %57, i64 4
  %61 = bitcast i32* %60 to <4 x i32>*
  %62 = load <4 x i32>, <4 x i32>* %61, align 4, !tbaa !5
  %63 = getelementptr inbounds i32, i32* %0, i64 %52
  %64 = bitcast i32* %63 to <4 x i32>*
  %65 = load <4 x i32>, <4 x i32>* %64, align 4, !tbaa !5
  %66 = getelementptr inbounds i32, i32* %63, i64 4
  %67 = bitcast i32* %66 to <4 x i32>*
  %68 = load <4 x i32>, <4 x i32>* %67, align 4, !tbaa !5
  %69 = icmp ne <4 x i32> %59, %65
  %70 = icmp ne <4 x i32> %62, %68
  %71 = zext <4 x i1> %69 to <4 x i32>
  %72 = zext <4 x i1> %70 to <4 x i32>
  %73 = add <4 x i32> %53, %71
  %74 = add <4 x i32> %54, %72
  %75 = or i64 %52, 8
  %76 = add i64 %26, %75
  %77 = getelementptr inbounds i32, i32* %7, i64 %76
  %78 = bitcast i32* %77 to <4 x i32>*
  %79 = load <4 x i32>, <4 x i32>* %78, align 4, !tbaa !5
  %80 = getelementptr inbounds i32, i32* %77, i64 4
  %81 = bitcast i32* %80 to <4 x i32>*
  %82 = load <4 x i32>, <4 x i32>* %81, align 4, !tbaa !5
  %83 = getelementptr inbounds i32, i32* %0, i64 %75
  %84 = bitcast i32* %83 to <4 x i32>*
  %85 = load <4 x i32>, <4 x i32>* %84, align 4, !tbaa !5
  %86 = getelementptr inbounds i32, i32* %83, i64 4
  %87 = bitcast i32* %86 to <4 x i32>*
  %88 = load <4 x i32>, <4 x i32>* %87, align 4, !tbaa !5
  %89 = icmp ne <4 x i32> %79, %85
  %90 = icmp ne <4 x i32> %82, %88
  %91 = zext <4 x i1> %89 to <4 x i32>
  %92 = zext <4 x i1> %90 to <4 x i32>
  %93 = add <4 x i32> %73, %91
  %94 = add <4 x i32> %74, %92
  %95 = add nuw i64 %52, 16
  %96 = add i64 %55, 2
  %97 = icmp eq i64 %96, %50
  br i1 %97, label %98, label %51, !llvm.loop !9

98:                                               ; preds = %51, %44
  %99 = phi <4 x i32> [ undef, %44 ], [ %93, %51 ]
  %100 = phi <4 x i32> [ undef, %44 ], [ %94, %51 ]
  %101 = phi i64 [ 0, %44 ], [ %95, %51 ]
  %102 = phi <4 x i32> [ zeroinitializer, %44 ], [ %93, %51 ]
  %103 = phi <4 x i32> [ zeroinitializer, %44 ], [ %94, %51 ]
  %104 = icmp eq i64 %47, 0
  br i1 %104, label %125, label %105

105:                                              ; preds = %98
  %106 = add i64 %26, %101
  %107 = getelementptr inbounds i32, i32* %7, i64 %106
  %108 = bitcast i32* %107 to <4 x i32>*
  %109 = load <4 x i32>, <4 x i32>* %108, align 4, !tbaa !5
  %110 = getelementptr inbounds i32, i32* %107, i64 4
  %111 = bitcast i32* %110 to <4 x i32>*
  %112 = load <4 x i32>, <4 x i32>* %111, align 4, !tbaa !5
  %113 = getelementptr inbounds i32, i32* %0, i64 %101
  %114 = bitcast i32* %113 to <4 x i32>*
  %115 = load <4 x i32>, <4 x i32>* %114, align 4, !tbaa !5
  %116 = getelementptr inbounds i32, i32* %113, i64 4
  %117 = bitcast i32* %116 to <4 x i32>*
  %118 = load <4 x i32>, <4 x i32>* %117, align 4, !tbaa !5
  %119 = icmp ne <4 x i32> %109, %115
  %120 = icmp ne <4 x i32> %112, %118
  %121 = zext <4 x i1> %119 to <4 x i32>
  %122 = zext <4 x i1> %120 to <4 x i32>
  %123 = add <4 x i32> %102, %121
  %124 = add <4 x i32> %103, %122
  br label %125

125:                                              ; preds = %98, %105
  %126 = phi <4 x i32> [ %99, %98 ], [ %123, %105 ]
  %127 = phi <4 x i32> [ %100, %98 ], [ %124, %105 ]
  %128 = add <4 x i32> %127, %126
  %129 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %128)
  %130 = icmp eq i64 %40, %45
  br i1 %130, label %135, label %131

131:                                              ; preds = %42, %125
  %132 = phi i64 [ %26, %42 ], [ %46, %125 ]
  %133 = phi i64 [ 0, %42 ], [ %45, %125 ]
  %134 = phi i32 [ 0, %42 ], [ %129, %125 ]
  br label %138

135:                                              ; preds = %138, %125, %24
  %136 = phi i32 [ 0, %24 ], [ %129, %125 ], [ %148, %138 ]
  %137 = icmp eq i32 %136, %1
  br i1 %137, label %158, label %152

138:                                              ; preds = %131, %138
  %139 = phi i64 [ %149, %138 ], [ %132, %131 ]
  %140 = phi i64 [ %150, %138 ], [ %133, %131 ]
  %141 = phi i32 [ %148, %138 ], [ %134, %131 ]
  %142 = getelementptr inbounds i32, i32* %7, i64 %139
  %143 = load i32, i32* %142, align 4, !tbaa !5
  %144 = getelementptr inbounds i32, i32* %0, i64 %140
  %145 = load i32, i32* %144, align 4, !tbaa !5
  %146 = icmp ne i32 %143, %145
  %147 = zext i1 %146 to i32
  %148 = add nuw nsw i32 %141, %147
  %149 = add nuw nsw i64 %139, 1
  %150 = add nuw nsw i64 %140, 1
  %151 = icmp ult i64 %149, %41
  br i1 %151, label %138, label %135, !llvm.loop !12

152:                                              ; preds = %135
  %153 = icmp slt i32 %27, %136
  %154 = select i1 %153, i32 %136, i32 %27
  %155 = add nuw nsw i64 %26, 1
  %156 = icmp eq i64 %155, %21
  %157 = add i64 %25, 1
  br i1 %156, label %158, label %24, !llvm.loop !14

158:                                              ; preds = %152, %135, %2, %9
  %159 = phi i32 [ 0, %9 ], [ 0, %2 ], [ %1, %135 ], [ %154, %152 ]
  ret i32 %159
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_A_ROTATION_WITH_MAXIMUM_HAMMING_DISTANCE_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }

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
!12 = distinct !{!12, !10, !13, !11}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10}
