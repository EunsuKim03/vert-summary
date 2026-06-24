; ModuleID = 'benchmark/c_transcoder/SUM_LARGEST_PRIME_FACTOR_NUMBER_LESS_EQUAL_N/SUM_LARGEST_PRIME_FACTOR_NUMBER_LESS_EQUAL_N_processed.c'
source_filename = "benchmark/c_transcoder/SUM_LARGEST_PRIME_FACTOR_NUMBER_LESS_EQUAL_N/SUM_LARGEST_PRIME_FACTOR_NUMBER_LESS_EQUAL_N_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = bitcast i32* %4 to i8*
  %6 = shl nuw nsw i64 %3, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 %6, i1 false)
  %7 = icmp slt i32 %0, 4
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = lshr i32 %0, 1
  %10 = zext i32 %0 to i64
  %11 = add nuw nsw i32 %9, 1
  %12 = zext i32 %11 to i64
  br label %100

13:                                               ; preds = %117, %1
  %14 = icmp slt i32 %0, 2
  br i1 %14, label %121, label %15

15:                                               ; preds = %13
  %16 = add nsw i64 %3, -2
  %17 = icmp ult i64 %16, 8
  br i1 %17, label %97, label %18

18:                                               ; preds = %15
  %19 = and i64 %16, -8
  %20 = or i64 %19, 2
  %21 = add nsw i64 %19, -8
  %22 = lshr exact i64 %21, 3
  %23 = add nuw nsw i64 %22, 1
  %24 = and i64 %23, 1
  %25 = icmp eq i64 %21, 0
  br i1 %25, label %69, label %26

26:                                               ; preds = %18
  %27 = and i64 %23, 4611686018427387902
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i64 [ 0, %26 ], [ %63, %28 ]
  %30 = phi <4 x i32> [ zeroinitializer, %26 ], [ %61, %28 ]
  %31 = phi <4 x i32> [ zeroinitializer, %26 ], [ %62, %28 ]
  %32 = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %26 ], [ %64, %28 ]
  %33 = phi i64 [ 0, %26 ], [ %65, %28 ]
  %34 = or i64 %29, 2
  %35 = add <4 x i32> %32, <i32 4, i32 4, i32 4, i32 4>
  %36 = getelementptr inbounds i32, i32* %4, i64 %34
  %37 = bitcast i32* %36 to <4 x i32>*
  %38 = load <4 x i32>, <4 x i32>* %37, align 8, !tbaa !5
  %39 = getelementptr inbounds i32, i32* %36, i64 4
  %40 = bitcast i32* %39 to <4 x i32>*
  %41 = load <4 x i32>, <4 x i32>* %40, align 8, !tbaa !5
  %42 = icmp eq <4 x i32> %38, zeroinitializer
  %43 = icmp eq <4 x i32> %41, zeroinitializer
  %44 = select <4 x i1> %42, <4 x i32> %32, <4 x i32> %38
  %45 = select <4 x i1> %43, <4 x i32> %35, <4 x i32> %41
  %46 = add <4 x i32> %44, %30
  %47 = add <4 x i32> %45, %31
  %48 = add <4 x i32> %32, <i32 8, i32 8, i32 8, i32 8>
  %49 = or i64 %29, 10
  %50 = add <4 x i32> %32, <i32 12, i32 12, i32 12, i32 12>
  %51 = getelementptr inbounds i32, i32* %4, i64 %49
  %52 = bitcast i32* %51 to <4 x i32>*
  %53 = load <4 x i32>, <4 x i32>* %52, align 8, !tbaa !5
  %54 = getelementptr inbounds i32, i32* %51, i64 4
  %55 = bitcast i32* %54 to <4 x i32>*
  %56 = load <4 x i32>, <4 x i32>* %55, align 8, !tbaa !5
  %57 = icmp eq <4 x i32> %53, zeroinitializer
  %58 = icmp eq <4 x i32> %56, zeroinitializer
  %59 = select <4 x i1> %57, <4 x i32> %48, <4 x i32> %53
  %60 = select <4 x i1> %58, <4 x i32> %50, <4 x i32> %56
  %61 = add <4 x i32> %59, %46
  %62 = add <4 x i32> %60, %47
  %63 = add nuw i64 %29, 16
  %64 = add <4 x i32> %32, <i32 16, i32 16, i32 16, i32 16>
  %65 = add i64 %33, 2
  %66 = icmp eq i64 %65, %27
  br i1 %66, label %67, label %28, !llvm.loop !9

67:                                               ; preds = %28
  %68 = or i64 %63, 2
  br label %69

69:                                               ; preds = %67, %18
  %70 = phi <4 x i32> [ undef, %18 ], [ %61, %67 ]
  %71 = phi <4 x i32> [ undef, %18 ], [ %62, %67 ]
  %72 = phi i64 [ 2, %18 ], [ %68, %67 ]
  %73 = phi <4 x i32> [ zeroinitializer, %18 ], [ %61, %67 ]
  %74 = phi <4 x i32> [ zeroinitializer, %18 ], [ %62, %67 ]
  %75 = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %18 ], [ %64, %67 ]
  %76 = icmp eq i64 %24, 0
  br i1 %76, label %91, label %77

77:                                               ; preds = %69
  %78 = add <4 x i32> %75, <i32 4, i32 4, i32 4, i32 4>
  %79 = getelementptr inbounds i32, i32* %4, i64 %72
  %80 = bitcast i32* %79 to <4 x i32>*
  %81 = load <4 x i32>, <4 x i32>* %80, align 8, !tbaa !5
  %82 = getelementptr inbounds i32, i32* %79, i64 4
  %83 = bitcast i32* %82 to <4 x i32>*
  %84 = load <4 x i32>, <4 x i32>* %83, align 8, !tbaa !5
  %85 = icmp eq <4 x i32> %81, zeroinitializer
  %86 = icmp eq <4 x i32> %84, zeroinitializer
  %87 = select <4 x i1> %85, <4 x i32> %75, <4 x i32> %81
  %88 = select <4 x i1> %86, <4 x i32> %78, <4 x i32> %84
  %89 = add <4 x i32> %87, %73
  %90 = add <4 x i32> %88, %74
  br label %91

91:                                               ; preds = %69, %77
  %92 = phi <4 x i32> [ %70, %69 ], [ %89, %77 ]
  %93 = phi <4 x i32> [ %71, %69 ], [ %90, %77 ]
  %94 = add <4 x i32> %93, %92
  %95 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %94)
  %96 = icmp eq i64 %16, %19
  br i1 %96, label %121, label %97

97:                                               ; preds = %15, %91
  %98 = phi i64 [ 2, %15 ], [ %20, %91 ]
  %99 = phi i32 [ 0, %15 ], [ %95, %91 ]
  br label %123

100:                                              ; preds = %8, %117
  %101 = phi i64 [ 2, %8 ], [ %118, %117 ]
  %102 = phi i64 [ 4, %8 ], [ %119, %117 ]
  %103 = getelementptr inbounds i32, i32* %4, i64 %101
  %104 = load i32, i32* %103, align 4, !tbaa !5
  %105 = icmp ne i32 %104, 0
  %106 = shl nuw nsw i64 %101, 1
  %107 = icmp ugt i64 %106, %10
  %108 = select i1 %105, i1 true, i1 %107
  br i1 %108, label %117, label %109

109:                                              ; preds = %100
  %110 = trunc i64 %101 to i32
  br label %111

111:                                              ; preds = %109, %111
  %112 = phi i64 [ %102, %109 ], [ %114, %111 ]
  %113 = getelementptr inbounds i32, i32* %4, i64 %112
  store i32 %110, i32* %113, align 4, !tbaa !5
  %114 = add nuw nsw i64 %112, %101
  %115 = trunc i64 %114 to i32
  %116 = icmp sgt i32 %115, %0
  br i1 %116, label %117, label %111, !llvm.loop !12

117:                                              ; preds = %111, %100
  %118 = add nuw nsw i64 %101, 1
  %119 = add nuw nsw i64 %102, 2
  %120 = icmp eq i64 %118, %12
  br i1 %120, label %13, label %100, !llvm.loop !13

121:                                              ; preds = %123, %91, %13
  %122 = phi i32 [ 0, %13 ], [ %95, %91 ], [ %131, %123 ]
  ret i32 %122

123:                                              ; preds = %97, %123
  %124 = phi i64 [ %132, %123 ], [ %98, %97 ]
  %125 = phi i32 [ %131, %123 ], [ %99, %97 ]
  %126 = getelementptr inbounds i32, i32* %4, i64 %124
  %127 = load i32, i32* %126, align 4, !tbaa !5
  %128 = icmp eq i32 %127, 0
  %129 = trunc i64 %124 to i32
  %130 = select i1 %128, i32 %129, i32 %127
  %131 = add nsw i32 %130, %125
  %132 = add nuw nsw i64 %124, 1
  %133 = icmp eq i64 %132, %3
  br i1 %133, label %121, label %123, !llvm.loop !14
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nofree nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
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
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10, !15, !11}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
