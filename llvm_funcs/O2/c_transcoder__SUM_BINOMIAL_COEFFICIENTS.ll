; ModuleID = 'benchmark/c_transcoder/SUM_BINOMIAL_COEFFICIENTS/SUM_BINOMIAL_COEFFICIENTS_processed.c'
source_filename = "benchmark/c_transcoder/SUM_BINOMIAL_COEFFICIENTS/SUM_BINOMIAL_COEFFICIENTS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = mul nuw i64 %3, %3
  %5 = alloca i32, i64 %4, align 16
  %6 = icmp slt i32 %0, 0
  br i1 %6, label %130, label %7

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
  br label %111

18:                                               ; preds = %108
  br i1 %6, label %130, label %19

19:                                               ; preds = %18
  %20 = zext i32 %0 to i64
  %21 = mul nuw nsw i64 %3, %20
  %22 = getelementptr inbounds i32, i32* %5, i64 %21
  %23 = icmp ult i32 %2, 8
  br i1 %23, label %105, label %24

24:                                               ; preds = %19
  %25 = and i64 %3, 4294967288
  %26 = add nsw i64 %25, -8
  %27 = lshr exact i64 %26, 3
  %28 = add nuw nsw i64 %27, 1
  %29 = and i64 %28, 3
  %30 = icmp ult i64 %26, 24
  br i1 %30, label %76, label %31

31:                                               ; preds = %24
  %32 = and i64 %28, 4611686018427387900
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 0, %31 ], [ %73, %33 ]
  %35 = phi <4 x i32> [ zeroinitializer, %31 ], [ %71, %33 ]
  %36 = phi <4 x i32> [ zeroinitializer, %31 ], [ %72, %33 ]
  %37 = phi i64 [ 0, %31 ], [ %74, %33 ]
  %38 = getelementptr inbounds i32, i32* %22, i64 %34
  %39 = bitcast i32* %38 to <4 x i32>*
  %40 = load <4 x i32>, <4 x i32>* %39, align 4, !tbaa !5
  %41 = getelementptr inbounds i32, i32* %38, i64 4
  %42 = bitcast i32* %41 to <4 x i32>*
  %43 = load <4 x i32>, <4 x i32>* %42, align 4, !tbaa !5
  %44 = add <4 x i32> %40, %35
  %45 = add <4 x i32> %43, %36
  %46 = or i64 %34, 8
  %47 = getelementptr inbounds i32, i32* %22, i64 %46
  %48 = bitcast i32* %47 to <4 x i32>*
  %49 = load <4 x i32>, <4 x i32>* %48, align 4, !tbaa !5
  %50 = getelementptr inbounds i32, i32* %47, i64 4
  %51 = bitcast i32* %50 to <4 x i32>*
  %52 = load <4 x i32>, <4 x i32>* %51, align 4, !tbaa !5
  %53 = add <4 x i32> %49, %44
  %54 = add <4 x i32> %52, %45
  %55 = or i64 %34, 16
  %56 = getelementptr inbounds i32, i32* %22, i64 %55
  %57 = bitcast i32* %56 to <4 x i32>*
  %58 = load <4 x i32>, <4 x i32>* %57, align 4, !tbaa !5
  %59 = getelementptr inbounds i32, i32* %56, i64 4
  %60 = bitcast i32* %59 to <4 x i32>*
  %61 = load <4 x i32>, <4 x i32>* %60, align 4, !tbaa !5
  %62 = add <4 x i32> %58, %53
  %63 = add <4 x i32> %61, %54
  %64 = or i64 %34, 24
  %65 = getelementptr inbounds i32, i32* %22, i64 %64
  %66 = bitcast i32* %65 to <4 x i32>*
  %67 = load <4 x i32>, <4 x i32>* %66, align 4, !tbaa !5
  %68 = getelementptr inbounds i32, i32* %65, i64 4
  %69 = bitcast i32* %68 to <4 x i32>*
  %70 = load <4 x i32>, <4 x i32>* %69, align 4, !tbaa !5
  %71 = add <4 x i32> %67, %62
  %72 = add <4 x i32> %70, %63
  %73 = add nuw i64 %34, 32
  %74 = add i64 %37, 4
  %75 = icmp eq i64 %74, %32
  br i1 %75, label %76, label %33, !llvm.loop !9

76:                                               ; preds = %33, %24
  %77 = phi <4 x i32> [ undef, %24 ], [ %71, %33 ]
  %78 = phi <4 x i32> [ undef, %24 ], [ %72, %33 ]
  %79 = phi i64 [ 0, %24 ], [ %73, %33 ]
  %80 = phi <4 x i32> [ zeroinitializer, %24 ], [ %71, %33 ]
  %81 = phi <4 x i32> [ zeroinitializer, %24 ], [ %72, %33 ]
  %82 = icmp eq i64 %29, 0
  br i1 %82, label %99, label %83

83:                                               ; preds = %76, %83
  %84 = phi i64 [ %96, %83 ], [ %79, %76 ]
  %85 = phi <4 x i32> [ %94, %83 ], [ %80, %76 ]
  %86 = phi <4 x i32> [ %95, %83 ], [ %81, %76 ]
  %87 = phi i64 [ %97, %83 ], [ 0, %76 ]
  %88 = getelementptr inbounds i32, i32* %22, i64 %84
  %89 = bitcast i32* %88 to <4 x i32>*
  %90 = load <4 x i32>, <4 x i32>* %89, align 4, !tbaa !5
  %91 = getelementptr inbounds i32, i32* %88, i64 4
  %92 = bitcast i32* %91 to <4 x i32>*
  %93 = load <4 x i32>, <4 x i32>* %92, align 4, !tbaa !5
  %94 = add <4 x i32> %90, %85
  %95 = add <4 x i32> %93, %86
  %96 = add nuw i64 %84, 8
  %97 = add i64 %87, 1
  %98 = icmp eq i64 %97, %29
  br i1 %98, label %99, label %83, !llvm.loop !12

99:                                               ; preds = %83, %76
  %100 = phi <4 x i32> [ %77, %76 ], [ %94, %83 ]
  %101 = phi <4 x i32> [ %78, %76 ], [ %95, %83 ]
  %102 = add <4 x i32> %101, %100
  %103 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %102)
  %104 = icmp eq i64 %25, %3
  br i1 %104, label %130, label %105

105:                                              ; preds = %19, %99
  %106 = phi i64 [ 0, %19 ], [ %25, %99 ]
  %107 = phi i32 [ 0, %19 ], [ %103, %99 ]
  br label %132

108:                                              ; preds = %123, %7
  %109 = add nuw nsw i64 %8, 1
  %110 = icmp eq i64 %109, %3
  br i1 %110, label %18, label %7, !llvm.loop !14

111:                                              ; preds = %12, %123
  %112 = phi i64 [ 0, %12 ], [ %126, %123 ]
  %113 = icmp eq i64 %112, 0
  %114 = icmp eq i64 %112, %8
  %115 = or i1 %113, %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %111
  %117 = add nsw i64 %112, -1
  %118 = getelementptr inbounds i32, i32* %15, i64 %117
  %119 = load i32, i32* %118, align 4, !tbaa !5
  %120 = getelementptr inbounds i32, i32* %15, i64 %112
  %121 = load i32, i32* %120, align 4, !tbaa !5
  %122 = add nsw i32 %121, %119
  br label %123

123:                                              ; preds = %111, %116
  %124 = phi i32 [ %122, %116 ], [ 1, %111 ]
  %125 = getelementptr inbounds i32, i32* %17, i64 %112
  store i32 %124, i32* %125, align 4, !tbaa !5
  %126 = add nuw nsw i64 %112, 1
  %127 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %9, i32 noundef %0) #3
  %128 = sext i32 %127 to i64
  %129 = icmp slt i64 %112, %128
  br i1 %129, label %111, label %108, !llvm.loop !15

130:                                              ; preds = %132, %99, %1, %18
  %131 = phi i32 [ 0, %18 ], [ 0, %1 ], [ %103, %99 ], [ %137, %132 ]
  ret i32 %131

132:                                              ; preds = %105, %132
  %133 = phi i64 [ %138, %132 ], [ %106, %105 ]
  %134 = phi i32 [ %137, %132 ], [ %107, %105 ]
  %135 = getelementptr inbounds i32, i32* %22, i64 %133
  %136 = load i32, i32* %135, align 4, !tbaa !5
  %137 = add nsw i32 %136, %134
  %138 = add nuw nsw i64 %133, 1
  %139 = icmp eq i64 %138, %3
  br i1 %139, label %130, label %132, !llvm.loop !16
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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !17, !11}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
