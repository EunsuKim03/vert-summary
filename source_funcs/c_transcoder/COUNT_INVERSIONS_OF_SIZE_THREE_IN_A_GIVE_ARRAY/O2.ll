; ModuleID = 'benchmark/c_transcoder/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 2
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -2
  %6 = add nsw i32 %1, -1
  %7 = zext i32 %6 to i64
  %8 = zext i32 %5 to i64
  %9 = zext i32 %6 to i64
  %10 = add i32 %1, -3
  br label %18

11:                                               ; preds = %144, %18
  %12 = phi i32 [ %22, %18 ], [ %145, %144 ]
  %13 = add nuw nsw i64 %21, 1
  %14 = add nuw nsw i64 %20, 1
  %15 = icmp eq i64 %25, %8
  br i1 %15, label %16, label %18, !llvm.loop !5

16:                                               ; preds = %11, %2
  %17 = phi i32 [ 0, %2 ], [ %12, %11 ]
  ret i32 %17

18:                                               ; preds = %4, %11
  %19 = phi i64 [ 0, %4 ], [ %25, %11 ]
  %20 = phi i64 [ 1, %4 ], [ %14, %11 ]
  %21 = phi i64 [ 2, %4 ], [ %13, %11 ]
  %22 = phi i32 [ 0, %4 ], [ %12, %11 ]
  %23 = trunc i64 %19 to i32
  %24 = trunc i64 %19 to i32
  %25 = add nuw nsw i64 %19, 1
  %26 = icmp ult i64 %25, %7
  br i1 %26, label %27, label %11

27:                                               ; preds = %18
  %28 = getelementptr inbounds i32, i32* %0, i64 %19
  %29 = load i32, i32* %28, align 4, !tbaa !7
  br label %30

30:                                               ; preds = %27, %144
  %31 = phi i32 [ 0, %27 ], [ %148, %144 ]
  %32 = phi i64 [ %20, %27 ], [ %50, %144 ]
  %33 = phi i64 [ %21, %27 ], [ %146, %144 ]
  %34 = phi i32 [ %22, %27 ], [ %145, %144 ]
  %35 = add i32 %31, %23
  %36 = sub i32 %10, %35
  %37 = zext i32 %36 to i64
  %38 = add nuw nsw i64 %37, 1
  %39 = and i64 %38, 8589934584
  %40 = add nsw i64 %39, -8
  %41 = lshr exact i64 %40, 3
  %42 = add nuw nsw i64 %41, 1
  %43 = add i32 %31, %24
  %44 = sub i32 %10, %43
  %45 = zext i32 %44 to i64
  %46 = add nuw nsw i64 %45, 1
  %47 = getelementptr inbounds i32, i32* %0, i64 %32
  %48 = load i32, i32* %47, align 4, !tbaa !7
  %49 = icmp sgt i32 %29, %48
  %50 = add nuw nsw i64 %32, 1
  %51 = trunc i64 %50 to i32
  %52 = icmp slt i32 %51, %1
  %53 = select i1 %49, i1 %52, i1 false
  br i1 %53, label %54, label %144

54:                                               ; preds = %30
  %55 = icmp ult i32 %44, 7
  br i1 %55, label %130, label %56

56:                                               ; preds = %54
  %57 = and i64 %46, 8589934584
  %58 = add nuw i64 %33, %57
  %59 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %34, i64 0
  %60 = insertelement <4 x i32> poison, i32 %48, i64 0
  %61 = shufflevector <4 x i32> %60, <4 x i32> poison, <4 x i32> zeroinitializer
  %62 = insertelement <4 x i32> poison, i32 %48, i64 0
  %63 = shufflevector <4 x i32> %62, <4 x i32> poison, <4 x i32> zeroinitializer
  %64 = and i64 %42, 1
  %65 = icmp eq i64 %40, 0
  br i1 %65, label %103, label %66

66:                                               ; preds = %56
  %67 = and i64 %42, 4611686018427387902
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i64 [ 0, %66 ], [ %100, %68 ]
  %70 = phi <4 x i32> [ %59, %66 ], [ %98, %68 ]
  %71 = phi <4 x i32> [ zeroinitializer, %66 ], [ %99, %68 ]
  %72 = phi i64 [ 0, %66 ], [ %101, %68 ]
  %73 = add i64 %33, %69
  %74 = getelementptr inbounds i32, i32* %0, i64 %73
  %75 = bitcast i32* %74 to <4 x i32>*
  %76 = load <4 x i32>, <4 x i32>* %75, align 4, !tbaa !7
  %77 = getelementptr inbounds i32, i32* %74, i64 4
  %78 = bitcast i32* %77 to <4 x i32>*
  %79 = load <4 x i32>, <4 x i32>* %78, align 4, !tbaa !7
  %80 = icmp sgt <4 x i32> %61, %76
  %81 = icmp sgt <4 x i32> %63, %79
  %82 = zext <4 x i1> %80 to <4 x i32>
  %83 = zext <4 x i1> %81 to <4 x i32>
  %84 = add <4 x i32> %70, %82
  %85 = add <4 x i32> %71, %83
  %86 = or i64 %69, 8
  %87 = add i64 %33, %86
  %88 = getelementptr inbounds i32, i32* %0, i64 %87
  %89 = bitcast i32* %88 to <4 x i32>*
  %90 = load <4 x i32>, <4 x i32>* %89, align 4, !tbaa !7
  %91 = getelementptr inbounds i32, i32* %88, i64 4
  %92 = bitcast i32* %91 to <4 x i32>*
  %93 = load <4 x i32>, <4 x i32>* %92, align 4, !tbaa !7
  %94 = icmp sgt <4 x i32> %61, %90
  %95 = icmp sgt <4 x i32> %63, %93
  %96 = zext <4 x i1> %94 to <4 x i32>
  %97 = zext <4 x i1> %95 to <4 x i32>
  %98 = add <4 x i32> %84, %96
  %99 = add <4 x i32> %85, %97
  %100 = add nuw i64 %69, 16
  %101 = add i64 %72, 2
  %102 = icmp eq i64 %101, %67
  br i1 %102, label %103, label %68, !llvm.loop !11

103:                                              ; preds = %68, %56
  %104 = phi <4 x i32> [ undef, %56 ], [ %98, %68 ]
  %105 = phi <4 x i32> [ undef, %56 ], [ %99, %68 ]
  %106 = phi i64 [ 0, %56 ], [ %100, %68 ]
  %107 = phi <4 x i32> [ %59, %56 ], [ %98, %68 ]
  %108 = phi <4 x i32> [ zeroinitializer, %56 ], [ %99, %68 ]
  %109 = icmp eq i64 %64, 0
  br i1 %109, label %124, label %110

110:                                              ; preds = %103
  %111 = add i64 %33, %106
  %112 = getelementptr inbounds i32, i32* %0, i64 %111
  %113 = bitcast i32* %112 to <4 x i32>*
  %114 = load <4 x i32>, <4 x i32>* %113, align 4, !tbaa !7
  %115 = getelementptr inbounds i32, i32* %112, i64 4
  %116 = bitcast i32* %115 to <4 x i32>*
  %117 = load <4 x i32>, <4 x i32>* %116, align 4, !tbaa !7
  %118 = icmp sgt <4 x i32> %61, %114
  %119 = icmp sgt <4 x i32> %63, %117
  %120 = zext <4 x i1> %118 to <4 x i32>
  %121 = zext <4 x i1> %119 to <4 x i32>
  %122 = add <4 x i32> %107, %120
  %123 = add <4 x i32> %108, %121
  br label %124

124:                                              ; preds = %103, %110
  %125 = phi <4 x i32> [ %104, %103 ], [ %122, %110 ]
  %126 = phi <4 x i32> [ %105, %103 ], [ %123, %110 ]
  %127 = add <4 x i32> %126, %125
  %128 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %127)
  %129 = icmp eq i64 %46, %57
  br i1 %129, label %144, label %130

130:                                              ; preds = %54, %124
  %131 = phi i64 [ %33, %54 ], [ %58, %124 ]
  %132 = phi i32 [ %34, %54 ], [ %128, %124 ]
  br label %133

133:                                              ; preds = %130, %133
  %134 = phi i64 [ %141, %133 ], [ %131, %130 ]
  %135 = phi i32 [ %140, %133 ], [ %132, %130 ]
  %136 = getelementptr inbounds i32, i32* %0, i64 %134
  %137 = load i32, i32* %136, align 4, !tbaa !7
  %138 = icmp sgt i32 %48, %137
  %139 = zext i1 %138 to i32
  %140 = add nsw i32 %135, %139
  %141 = add nuw nsw i64 %134, 1
  %142 = trunc i64 %141 to i32
  %143 = icmp slt i32 %142, %1
  br i1 %143, label %133, label %144, !llvm.loop !13

144:                                              ; preds = %133, %124, %30
  %145 = phi i32 [ %34, %30 ], [ %128, %124 ], [ %140, %133 ]
  %146 = add nuw nsw i64 %33, 1
  %147 = icmp eq i64 %50, %9
  %148 = add i32 %31, 1
  br i1 %147, label %11, label %30, !llvm.loop !15
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #1

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6, !12}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !6, !14, !12}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !6}
