; ModuleID = 'llvm/cpp_transcoder/MAXIMUM_TRIPLET_SUM_ARRAY/MAXIMUM_TRIPLET_SUM_ARRAY_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MAXIMUM_TRIPLET_SUM_ARRAY/MAXIMUM_TRIPLET_SUM_ARRAY_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_TRIPLET_SUM_ARRAY_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = zext i32 %1 to i64
  %7 = add i32 %1, -3
  br label %15

8:                                                ; preds = %26, %15
  %9 = phi i32 [ %19, %15 ], [ %27, %26 ]
  %10 = add nuw nsw i64 %18, 1
  %11 = add nuw nsw i64 %17, 1
  %12 = icmp eq i64 %22, %6
  br i1 %12, label %13, label %15, !llvm.loop !5

13:                                               ; preds = %8, %2
  %14 = phi i32 [ -2147483648, %2 ], [ %9, %8 ]
  ret i32 %14

15:                                               ; preds = %4, %8
  %16 = phi i64 [ 0, %4 ], [ %22, %8 ]
  %17 = phi i64 [ 1, %4 ], [ %11, %8 ]
  %18 = phi i64 [ 2, %4 ], [ %10, %8 ]
  %19 = phi i32 [ -2147483648, %4 ], [ %9, %8 ]
  %20 = trunc i64 %16 to i32
  %21 = trunc i64 %16 to i32
  %22 = add nuw nsw i64 %16, 1
  %23 = icmp ult i64 %22, %5
  br i1 %23, label %24, label %8

24:                                               ; preds = %15
  %25 = getelementptr inbounds i32, i32* %0, i64 %16
  br label %31

26:                                               ; preds = %136, %126, %31
  %27 = phi i32 [ %35, %31 ], [ %131, %126 ], [ %143, %136 ]
  %28 = add nuw nsw i64 %34, 1
  %29 = icmp eq i64 %48, %6
  %30 = add i32 %32, 1
  br i1 %29, label %8, label %31, !llvm.loop !7

31:                                               ; preds = %24, %26
  %32 = phi i32 [ 0, %24 ], [ %30, %26 ]
  %33 = phi i64 [ %17, %24 ], [ %48, %26 ]
  %34 = phi i64 [ %18, %24 ], [ %28, %26 ]
  %35 = phi i32 [ %19, %24 ], [ %27, %26 ]
  %36 = add i32 %32, %20
  %37 = sub i32 %7, %36
  %38 = zext i32 %37 to i64
  %39 = add nuw nsw i64 %38, 1
  %40 = and i64 %39, 8589934584
  %41 = add nsw i64 %40, -8
  %42 = lshr exact i64 %41, 3
  %43 = add nuw nsw i64 %42, 1
  %44 = add i32 %32, %21
  %45 = sub i32 %7, %44
  %46 = zext i32 %45 to i64
  %47 = add nuw nsw i64 %46, 1
  %48 = add nuw nsw i64 %33, 1
  %49 = trunc i64 %48 to i32
  %50 = icmp slt i32 %49, %1
  br i1 %50, label %51, label %26

51:                                               ; preds = %31
  %52 = load i32, i32* %25, align 4, !tbaa !8
  %53 = getelementptr inbounds i32, i32* %0, i64 %33
  %54 = load i32, i32* %53, align 4, !tbaa !8
  %55 = add nsw i32 %54, %52
  %56 = icmp ult i32 %45, 7
  br i1 %56, label %133, label %57

57:                                               ; preds = %51
  %58 = and i64 %47, 8589934584
  %59 = add nuw i64 %34, %58
  %60 = insertelement <4 x i32> poison, i32 %35, i64 0
  %61 = shufflevector <4 x i32> %60, <4 x i32> poison, <4 x i32> zeroinitializer
  %62 = insertelement <4 x i32> poison, i32 %55, i64 0
  %63 = shufflevector <4 x i32> %62, <4 x i32> poison, <4 x i32> zeroinitializer
  %64 = insertelement <4 x i32> poison, i32 %55, i64 0
  %65 = shufflevector <4 x i32> %64, <4 x i32> poison, <4 x i32> zeroinitializer
  %66 = and i64 %43, 1
  %67 = icmp eq i64 %41, 0
  br i1 %67, label %105, label %68

68:                                               ; preds = %57
  %69 = and i64 %43, 4611686018427387902
  br label %70

70:                                               ; preds = %70, %68
  %71 = phi i64 [ 0, %68 ], [ %102, %70 ]
  %72 = phi <4 x i32> [ %61, %68 ], [ %100, %70 ]
  %73 = phi <4 x i32> [ %61, %68 ], [ %101, %70 ]
  %74 = phi i64 [ 0, %68 ], [ %103, %70 ]
  %75 = add i64 %34, %71
  %76 = getelementptr inbounds i32, i32* %0, i64 %75
  %77 = bitcast i32* %76 to <4 x i32>*
  %78 = load <4 x i32>, <4 x i32>* %77, align 4, !tbaa !8
  %79 = getelementptr inbounds i32, i32* %76, i64 4
  %80 = bitcast i32* %79 to <4 x i32>*
  %81 = load <4 x i32>, <4 x i32>* %80, align 4, !tbaa !8
  %82 = add nsw <4 x i32> %63, %78
  %83 = add nsw <4 x i32> %65, %81
  %84 = icmp slt <4 x i32> %72, %82
  %85 = icmp slt <4 x i32> %73, %83
  %86 = select <4 x i1> %84, <4 x i32> %82, <4 x i32> %72
  %87 = select <4 x i1> %85, <4 x i32> %83, <4 x i32> %73
  %88 = or i64 %71, 8
  %89 = add i64 %34, %88
  %90 = getelementptr inbounds i32, i32* %0, i64 %89
  %91 = bitcast i32* %90 to <4 x i32>*
  %92 = load <4 x i32>, <4 x i32>* %91, align 4, !tbaa !8
  %93 = getelementptr inbounds i32, i32* %90, i64 4
  %94 = bitcast i32* %93 to <4 x i32>*
  %95 = load <4 x i32>, <4 x i32>* %94, align 4, !tbaa !8
  %96 = add nsw <4 x i32> %63, %92
  %97 = add nsw <4 x i32> %65, %95
  %98 = icmp slt <4 x i32> %86, %96
  %99 = icmp slt <4 x i32> %87, %97
  %100 = select <4 x i1> %98, <4 x i32> %96, <4 x i32> %86
  %101 = select <4 x i1> %99, <4 x i32> %97, <4 x i32> %87
  %102 = add nuw i64 %71, 16
  %103 = add i64 %74, 2
  %104 = icmp eq i64 %103, %69
  br i1 %104, label %105, label %70, !llvm.loop !12

105:                                              ; preds = %70, %57
  %106 = phi <4 x i32> [ undef, %57 ], [ %100, %70 ]
  %107 = phi <4 x i32> [ undef, %57 ], [ %101, %70 ]
  %108 = phi i64 [ 0, %57 ], [ %102, %70 ]
  %109 = phi <4 x i32> [ %61, %57 ], [ %100, %70 ]
  %110 = phi <4 x i32> [ %61, %57 ], [ %101, %70 ]
  %111 = icmp eq i64 %66, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %105
  %113 = add i64 %34, %108
  %114 = getelementptr inbounds i32, i32* %0, i64 %113
  %115 = bitcast i32* %114 to <4 x i32>*
  %116 = load <4 x i32>, <4 x i32>* %115, align 4, !tbaa !8
  %117 = getelementptr inbounds i32, i32* %114, i64 4
  %118 = bitcast i32* %117 to <4 x i32>*
  %119 = load <4 x i32>, <4 x i32>* %118, align 4, !tbaa !8
  %120 = add nsw <4 x i32> %63, %116
  %121 = add nsw <4 x i32> %65, %119
  %122 = icmp slt <4 x i32> %109, %120
  %123 = icmp slt <4 x i32> %110, %121
  %124 = select <4 x i1> %122, <4 x i32> %120, <4 x i32> %109
  %125 = select <4 x i1> %123, <4 x i32> %121, <4 x i32> %110
  br label %126

126:                                              ; preds = %105, %112
  %127 = phi <4 x i32> [ %106, %105 ], [ %124, %112 ]
  %128 = phi <4 x i32> [ %107, %105 ], [ %125, %112 ]
  %129 = icmp sgt <4 x i32> %127, %128
  %130 = select <4 x i1> %129, <4 x i32> %127, <4 x i32> %128
  %131 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %130)
  %132 = icmp eq i64 %47, %58
  br i1 %132, label %26, label %133

133:                                              ; preds = %51, %126
  %134 = phi i64 [ %34, %51 ], [ %59, %126 ]
  %135 = phi i32 [ %35, %51 ], [ %131, %126 ]
  br label %136

136:                                              ; preds = %133, %136
  %137 = phi i64 [ %144, %136 ], [ %134, %133 ]
  %138 = phi i32 [ %143, %136 ], [ %135, %133 ]
  %139 = getelementptr inbounds i32, i32* %0, i64 %137
  %140 = load i32, i32* %139, align 4, !tbaa !8
  %141 = add nsw i32 %55, %140
  %142 = icmp slt i32 %138, %141
  %143 = select i1 %142, i32 %141, i32 %138
  %144 = add nuw nsw i64 %137, 1
  %145 = trunc i64 %144 to i32
  %146 = icmp slt i32 %145, %1
  br i1 %146, label %136, label %26, !llvm.loop !14
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_TRIPLET_SUM_ARRAY_reprocessed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !6, !13}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !6, !15, !13}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
