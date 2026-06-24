; ModuleID = 'benchmark/c_transcoder/SUM_MATRIX_ELEMENT_ABSOLUTE_DIFFERENCE_ROW_COLUMN_NUMBERS/SUM_MATRIX_ELEMENT_ABSOLUTE_DIFFERENCE_ROW_COLUMN_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/SUM_MATRIX_ELEMENT_ABSOLUTE_DIFFERENCE_ROW_COLUMN_NUMBERS/SUM_MATRIX_ELEMENT_ABSOLUTE_DIFFERENCE_ROW_COLUMN_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = zext i32 %0 to i64
  %3 = mul nuw i64 %2, %2
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp sgt i32 %0, 0
  br i1 %5, label %6, label %143

6:                                                ; preds = %1
  %7 = icmp ult i32 %0, 8
  %8 = and i64 %2, 4294967288
  %9 = icmp eq i64 %8, %2
  br label %10

10:                                               ; preds = %6, %52
  %11 = phi i64 [ %53, %52 ], [ 0, %6 ]
  %12 = mul nuw nsw i64 %11, %2
  %13 = getelementptr inbounds i32, i32* %4, i64 %12
  br i1 %7, label %37, label %14

14:                                               ; preds = %10
  %15 = insertelement <4 x i64> poison, i64 %11, i64 0
  %16 = shufflevector <4 x i64> %15, <4 x i64> poison, <4 x i32> zeroinitializer
  %17 = insertelement <4 x i64> poison, i64 %11, i64 0
  %18 = shufflevector <4 x i64> %17, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %19

19:                                               ; preds = %19, %14
  %20 = phi i64 [ 0, %14 ], [ %33, %19 ]
  %21 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %14 ], [ %34, %19 ]
  %22 = add <4 x i64> %21, <i64 4, i64 4, i64 4, i64 4>
  %23 = sub nsw <4 x i64> %16, %21
  %24 = sub nsw <4 x i64> %18, %22
  %25 = trunc <4 x i64> %23 to <4 x i32>
  %26 = trunc <4 x i64> %24 to <4 x i32>
  %27 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %25, i1 true)
  %28 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %26, i1 true)
  %29 = getelementptr inbounds i32, i32* %13, i64 %20
  %30 = bitcast i32* %29 to <4 x i32>*
  store <4 x i32> %27, <4 x i32>* %30, align 4, !tbaa !5
  %31 = getelementptr inbounds i32, i32* %29, i64 4
  %32 = bitcast i32* %31 to <4 x i32>*
  store <4 x i32> %28, <4 x i32>* %32, align 4, !tbaa !5
  %33 = add nuw i64 %20, 8
  %34 = add <4 x i64> %21, <i64 8, i64 8, i64 8, i64 8>
  %35 = icmp eq i64 %33, %8
  br i1 %35, label %36, label %19, !llvm.loop !9

36:                                               ; preds = %19
  br i1 %9, label %52, label %37

37:                                               ; preds = %10, %36
  %38 = phi i64 [ 0, %10 ], [ %8, %36 ]
  br label %55

39:                                               ; preds = %52
  br i1 %5, label %40, label %143

40:                                               ; preds = %39
  %41 = and i64 %2, 4294967288
  %42 = add nsw i64 %41, -8
  %43 = lshr exact i64 %42, 3
  %44 = add nuw nsw i64 %43, 1
  %45 = icmp ult i32 %0, 8
  %46 = and i64 %2, 4294967288
  %47 = and i64 %44, 3
  %48 = icmp ult i64 %42, 24
  %49 = and i64 %44, 4611686018427387900
  %50 = icmp eq i64 %47, 0
  %51 = icmp eq i64 %46, %2
  br label %63

52:                                               ; preds = %55, %36
  %53 = add nuw nsw i64 %11, 1
  %54 = icmp eq i64 %53, %2
  br i1 %54, label %39, label %10, !llvm.loop !12

55:                                               ; preds = %37, %55
  %56 = phi i64 [ %61, %55 ], [ %38, %37 ]
  %57 = sub nsw i64 %11, %56
  %58 = trunc i64 %57 to i32
  %59 = tail call i32 @llvm.abs.i32(i32 %58, i1 true)
  %60 = getelementptr inbounds i32, i32* %13, i64 %56
  store i32 %59, i32* %60, align 4, !tbaa !5
  %61 = add nuw nsw i64 %56, 1
  %62 = icmp eq i64 %61, %2
  br i1 %62, label %52, label %55, !llvm.loop !13

63:                                               ; preds = %40, %145
  %64 = phi i64 [ %147, %145 ], [ 0, %40 ]
  %65 = phi i32 [ %146, %145 ], [ 0, %40 ]
  %66 = mul nuw nsw i64 %64, %2
  %67 = getelementptr inbounds i32, i32* %4, i64 %66
  br i1 %45, label %140, label %68

68:                                               ; preds = %63
  %69 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %65, i64 0
  br i1 %48, label %113, label %70

70:                                               ; preds = %68, %70
  %71 = phi i64 [ %110, %70 ], [ 0, %68 ]
  %72 = phi <4 x i32> [ %108, %70 ], [ %69, %68 ]
  %73 = phi <4 x i32> [ %109, %70 ], [ zeroinitializer, %68 ]
  %74 = phi i64 [ %111, %70 ], [ 0, %68 ]
  %75 = getelementptr inbounds i32, i32* %67, i64 %71
  %76 = bitcast i32* %75 to <4 x i32>*
  %77 = load <4 x i32>, <4 x i32>* %76, align 4, !tbaa !5
  %78 = getelementptr inbounds i32, i32* %75, i64 4
  %79 = bitcast i32* %78 to <4 x i32>*
  %80 = load <4 x i32>, <4 x i32>* %79, align 4, !tbaa !5
  %81 = add <4 x i32> %77, %72
  %82 = add <4 x i32> %80, %73
  %83 = or i64 %71, 8
  %84 = getelementptr inbounds i32, i32* %67, i64 %83
  %85 = bitcast i32* %84 to <4 x i32>*
  %86 = load <4 x i32>, <4 x i32>* %85, align 4, !tbaa !5
  %87 = getelementptr inbounds i32, i32* %84, i64 4
  %88 = bitcast i32* %87 to <4 x i32>*
  %89 = load <4 x i32>, <4 x i32>* %88, align 4, !tbaa !5
  %90 = add <4 x i32> %86, %81
  %91 = add <4 x i32> %89, %82
  %92 = or i64 %71, 16
  %93 = getelementptr inbounds i32, i32* %67, i64 %92
  %94 = bitcast i32* %93 to <4 x i32>*
  %95 = load <4 x i32>, <4 x i32>* %94, align 4, !tbaa !5
  %96 = getelementptr inbounds i32, i32* %93, i64 4
  %97 = bitcast i32* %96 to <4 x i32>*
  %98 = load <4 x i32>, <4 x i32>* %97, align 4, !tbaa !5
  %99 = add <4 x i32> %95, %90
  %100 = add <4 x i32> %98, %91
  %101 = or i64 %71, 24
  %102 = getelementptr inbounds i32, i32* %67, i64 %101
  %103 = bitcast i32* %102 to <4 x i32>*
  %104 = load <4 x i32>, <4 x i32>* %103, align 4, !tbaa !5
  %105 = getelementptr inbounds i32, i32* %102, i64 4
  %106 = bitcast i32* %105 to <4 x i32>*
  %107 = load <4 x i32>, <4 x i32>* %106, align 4, !tbaa !5
  %108 = add <4 x i32> %104, %99
  %109 = add <4 x i32> %107, %100
  %110 = add nuw i64 %71, 32
  %111 = add i64 %74, 4
  %112 = icmp eq i64 %111, %49
  br i1 %112, label %113, label %70, !llvm.loop !15

113:                                              ; preds = %70, %68
  %114 = phi <4 x i32> [ undef, %68 ], [ %108, %70 ]
  %115 = phi <4 x i32> [ undef, %68 ], [ %109, %70 ]
  %116 = phi i64 [ 0, %68 ], [ %110, %70 ]
  %117 = phi <4 x i32> [ %69, %68 ], [ %108, %70 ]
  %118 = phi <4 x i32> [ zeroinitializer, %68 ], [ %109, %70 ]
  br i1 %50, label %135, label %119

119:                                              ; preds = %113, %119
  %120 = phi i64 [ %132, %119 ], [ %116, %113 ]
  %121 = phi <4 x i32> [ %130, %119 ], [ %117, %113 ]
  %122 = phi <4 x i32> [ %131, %119 ], [ %118, %113 ]
  %123 = phi i64 [ %133, %119 ], [ 0, %113 ]
  %124 = getelementptr inbounds i32, i32* %67, i64 %120
  %125 = bitcast i32* %124 to <4 x i32>*
  %126 = load <4 x i32>, <4 x i32>* %125, align 4, !tbaa !5
  %127 = getelementptr inbounds i32, i32* %124, i64 4
  %128 = bitcast i32* %127 to <4 x i32>*
  %129 = load <4 x i32>, <4 x i32>* %128, align 4, !tbaa !5
  %130 = add <4 x i32> %126, %121
  %131 = add <4 x i32> %129, %122
  %132 = add nuw i64 %120, 8
  %133 = add i64 %123, 1
  %134 = icmp eq i64 %133, %47
  br i1 %134, label %135, label %119, !llvm.loop !16

135:                                              ; preds = %119, %113
  %136 = phi <4 x i32> [ %114, %113 ], [ %130, %119 ]
  %137 = phi <4 x i32> [ %115, %113 ], [ %131, %119 ]
  %138 = add <4 x i32> %137, %136
  %139 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %138)
  br i1 %51, label %145, label %140

140:                                              ; preds = %63, %135
  %141 = phi i64 [ 0, %63 ], [ %46, %135 ]
  %142 = phi i32 [ %65, %63 ], [ %139, %135 ]
  br label %149

143:                                              ; preds = %145, %1, %39
  %144 = phi i32 [ 0, %39 ], [ 0, %1 ], [ %146, %145 ]
  ret i32 %144

145:                                              ; preds = %149, %135
  %146 = phi i32 [ %139, %135 ], [ %154, %149 ]
  %147 = add nuw nsw i64 %64, 1
  %148 = icmp eq i64 %147, %2
  br i1 %148, label %143, label %63, !llvm.loop !18

149:                                              ; preds = %140, %149
  %150 = phi i64 [ %155, %149 ], [ %141, %140 ]
  %151 = phi i32 [ %154, %149 ], [ %142, %140 ]
  %152 = getelementptr inbounds i32, i32* %67, i64 %150
  %153 = load i32, i32* %152, align 4, !tbaa !5
  %154 = add nsw i32 %153, %151
  %155 = add nuw nsw i64 %150, 1
  %156 = icmp eq i64 %155, %2
  br i1 %156, label %145, label %149, !llvm.loop !19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nofree nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10, !14, !11}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10, !14, !11}
