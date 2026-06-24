; ModuleID = 'benchmark/c_transcoder/SUM_SQUARES_BINOMIAL_COEFFICIENTS/SUM_SQUARES_BINOMIAL_COEFFICIENTS_processed.c'
source_filename = "benchmark/c_transcoder/SUM_SQUARES_BINOMIAL_COEFFICIENTS/SUM_SQUARES_BINOMIAL_COEFFICIENTS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = mul nuw i64 %3, %3
  %5 = alloca i32, i64 %4, align 16
  %6 = icmp slt i32 %0, 0
  br i1 %6, label %111, label %7

7:                                                ; preds = %1, %108
  %8 = phi i64 [ %109, %108 ], [ 0, %1 ]
  %9 = trunc i64 %8 to i32
  %10 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %9, i32 noundef %0) #3
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %108, label %12

12:                                               ; preds = %7
  %13 = add nsw i64 %8, -1
  %14 = mul nsw i64 %13, %3
  %15 = getelementptr inbounds i32, i32* %5, i64 %14
  %16 = mul nuw nsw i64 %8, %3
  %17 = getelementptr inbounds i32, i32* %5, i64 %16
  br label %89

18:                                               ; preds = %108
  br i1 %6, label %111, label %19

19:                                               ; preds = %18
  %20 = zext i32 %0 to i64
  %21 = mul nuw nsw i64 %3, %20
  %22 = getelementptr inbounds i32, i32* %5, i64 %21
  %23 = icmp ult i32 %2, 8
  br i1 %23, label %86, label %24

24:                                               ; preds = %19
  %25 = and i64 %3, 4294967288
  %26 = add nsw i64 %25, -8
  %27 = lshr exact i64 %26, 3
  %28 = add nuw nsw i64 %27, 1
  %29 = and i64 %28, 1
  %30 = icmp eq i64 %26, 0
  br i1 %30, label %62, label %31

31:                                               ; preds = %24
  %32 = and i64 %28, 4611686018427387902
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 0, %31 ], [ %59, %33 ]
  %35 = phi <4 x i32> [ zeroinitializer, %31 ], [ %57, %33 ]
  %36 = phi <4 x i32> [ zeroinitializer, %31 ], [ %58, %33 ]
  %37 = phi i64 [ 0, %31 ], [ %60, %33 ]
  %38 = getelementptr inbounds i32, i32* %22, i64 %34
  %39 = bitcast i32* %38 to <4 x i32>*
  %40 = load <4 x i32>, <4 x i32>* %39, align 4, !tbaa !5
  %41 = getelementptr inbounds i32, i32* %38, i64 4
  %42 = bitcast i32* %41 to <4 x i32>*
  %43 = load <4 x i32>, <4 x i32>* %42, align 4, !tbaa !5
  %44 = mul nsw <4 x i32> %40, %40
  %45 = mul nsw <4 x i32> %43, %43
  %46 = add <4 x i32> %44, %35
  %47 = add <4 x i32> %45, %36
  %48 = or i64 %34, 8
  %49 = getelementptr inbounds i32, i32* %22, i64 %48
  %50 = bitcast i32* %49 to <4 x i32>*
  %51 = load <4 x i32>, <4 x i32>* %50, align 4, !tbaa !5
  %52 = getelementptr inbounds i32, i32* %49, i64 4
  %53 = bitcast i32* %52 to <4 x i32>*
  %54 = load <4 x i32>, <4 x i32>* %53, align 4, !tbaa !5
  %55 = mul nsw <4 x i32> %51, %51
  %56 = mul nsw <4 x i32> %54, %54
  %57 = add <4 x i32> %55, %46
  %58 = add <4 x i32> %56, %47
  %59 = add nuw i64 %34, 16
  %60 = add i64 %37, 2
  %61 = icmp eq i64 %60, %32
  br i1 %61, label %62, label %33, !llvm.loop !9

62:                                               ; preds = %33, %24
  %63 = phi <4 x i32> [ undef, %24 ], [ %57, %33 ]
  %64 = phi <4 x i32> [ undef, %24 ], [ %58, %33 ]
  %65 = phi i64 [ 0, %24 ], [ %59, %33 ]
  %66 = phi <4 x i32> [ zeroinitializer, %24 ], [ %57, %33 ]
  %67 = phi <4 x i32> [ zeroinitializer, %24 ], [ %58, %33 ]
  %68 = icmp eq i64 %29, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds i32, i32* %22, i64 %65
  %71 = bitcast i32* %70 to <4 x i32>*
  %72 = load <4 x i32>, <4 x i32>* %71, align 4, !tbaa !5
  %73 = getelementptr inbounds i32, i32* %70, i64 4
  %74 = bitcast i32* %73 to <4 x i32>*
  %75 = load <4 x i32>, <4 x i32>* %74, align 4, !tbaa !5
  %76 = mul nsw <4 x i32> %72, %72
  %77 = mul nsw <4 x i32> %75, %75
  %78 = add <4 x i32> %76, %66
  %79 = add <4 x i32> %77, %67
  br label %80

80:                                               ; preds = %62, %69
  %81 = phi <4 x i32> [ %63, %62 ], [ %78, %69 ]
  %82 = phi <4 x i32> [ %64, %62 ], [ %79, %69 ]
  %83 = add <4 x i32> %82, %81
  %84 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %83)
  %85 = icmp eq i64 %25, %3
  br i1 %85, label %111, label %86

86:                                               ; preds = %19, %80
  %87 = phi i64 [ 0, %19 ], [ %25, %80 ]
  %88 = phi i32 [ 0, %19 ], [ %84, %80 ]
  br label %113

89:                                               ; preds = %12, %101
  %90 = phi i64 [ 0, %12 ], [ %104, %101 ]
  %91 = icmp eq i64 %90, 0
  %92 = icmp eq i64 %90, %8
  %93 = or i1 %91, %92
  br i1 %93, label %101, label %94

94:                                               ; preds = %89
  %95 = add nsw i64 %90, -1
  %96 = getelementptr inbounds i32, i32* %15, i64 %95
  %97 = load i32, i32* %96, align 4, !tbaa !5
  %98 = getelementptr inbounds i32, i32* %15, i64 %90
  %99 = load i32, i32* %98, align 4, !tbaa !5
  %100 = add nsw i32 %99, %97
  br label %101

101:                                              ; preds = %89, %94
  %102 = phi i32 [ %100, %94 ], [ 1, %89 ]
  %103 = getelementptr inbounds i32, i32* %17, i64 %90
  store i32 %102, i32* %103, align 4, !tbaa !5
  %104 = add nuw nsw i64 %90, 1
  %105 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %9, i32 noundef %0) #3
  %106 = sext i32 %105 to i64
  %107 = icmp slt i64 %90, %106
  br i1 %107, label %89, label %108, !llvm.loop !12

108:                                              ; preds = %101, %7
  %109 = add nuw nsw i64 %8, 1
  %110 = icmp eq i64 %109, %3
  br i1 %110, label %18, label %7, !llvm.loop !13

111:                                              ; preds = %113, %80, %1, %18
  %112 = phi i32 [ 0, %18 ], [ 0, %1 ], [ %84, %80 ], [ %119, %113 ]
  ret i32 %112

113:                                              ; preds = %86, %113
  %114 = phi i64 [ %120, %113 ], [ %87, %86 ]
  %115 = phi i32 [ %119, %113 ], [ %88, %86 ]
  %116 = getelementptr inbounds i32, i32* %22, i64 %114
  %117 = load i32, i32* %116, align 4, !tbaa !5
  %118 = mul nsw i32 %117, %117
  %119 = add nuw nsw i32 %118, %115
  %120 = add nuw nsw i64 %114, 1
  %121 = icmp eq i64 %120, %3
  br i1 %121, label %111, label %113, !llvm.loop !14
}

declare i32 @min(...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { nounwind }

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
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10, !15, !11}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
