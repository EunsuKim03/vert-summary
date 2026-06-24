; ModuleID = 'benchmark/c_transcoder/DICE_THROW_PROBLEM/DICE_THROW_PROBLEM_processed.c'
source_filename = "benchmark/c_transcoder/DICE_THROW_PROBLEM/DICE_THROW_PROBLEM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %1, 1
  %5 = zext i32 %4 to i64
  %6 = add i32 %2, 1
  %7 = zext i32 %6 to i64
  %8 = mul nuw i64 %7, %5
  %9 = alloca i32, i64 %8, align 16
  %10 = bitcast i32* %9 to i8*
  %11 = shl nuw i64 %8, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %11, i1 false)
  %12 = icmp sgt i32 %0, 0
  %13 = icmp sgt i32 %2, 0
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %78

15:                                               ; preds = %3
  %16 = getelementptr inbounds i32, i32* %9, i64 %7
  %17 = add nsw i32 %2, -1
  %18 = add nsw i32 %0, -1
  %19 = call i32 @llvm.umin.i32(i32 %17, i32 %18)
  %20 = add nuw i32 %19, 2
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %21, -1
  %23 = icmp ult i64 %22, 8
  br i1 %23, label %76, label %24

24:                                               ; preds = %15
  %25 = and i64 %22, -8
  %26 = or i64 %25, 1
  %27 = add nsw i64 %25, -8
  %28 = lshr exact i64 %27, 3
  %29 = add nuw nsw i64 %28, 1
  %30 = and i64 %29, 3
  %31 = icmp ult i64 %27, 24
  br i1 %31, label %60, label %32

32:                                               ; preds = %24
  %33 = and i64 %29, 4611686018427387900
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi i64 [ 0, %32 ], [ %57, %34 ]
  %36 = phi i64 [ 0, %32 ], [ %58, %34 ]
  %37 = or i64 %35, 1
  %38 = getelementptr inbounds i32, i32* %16, i64 %37
  %39 = bitcast i32* %38 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %39, align 4, !tbaa !5
  %40 = getelementptr inbounds i32, i32* %38, i64 4
  %41 = bitcast i32* %40 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %41, align 4, !tbaa !5
  %42 = or i64 %35, 9
  %43 = getelementptr inbounds i32, i32* %16, i64 %42
  %44 = bitcast i32* %43 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %44, align 4, !tbaa !5
  %45 = getelementptr inbounds i32, i32* %43, i64 4
  %46 = bitcast i32* %45 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %46, align 4, !tbaa !5
  %47 = or i64 %35, 17
  %48 = getelementptr inbounds i32, i32* %16, i64 %47
  %49 = bitcast i32* %48 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %49, align 4, !tbaa !5
  %50 = getelementptr inbounds i32, i32* %48, i64 4
  %51 = bitcast i32* %50 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %51, align 4, !tbaa !5
  %52 = or i64 %35, 25
  %53 = getelementptr inbounds i32, i32* %16, i64 %52
  %54 = bitcast i32* %53 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %54, align 4, !tbaa !5
  %55 = getelementptr inbounds i32, i32* %53, i64 4
  %56 = bitcast i32* %55 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %56, align 4, !tbaa !5
  %57 = add nuw i64 %35, 32
  %58 = add i64 %36, 4
  %59 = icmp eq i64 %58, %33
  br i1 %59, label %60, label %34, !llvm.loop !9

60:                                               ; preds = %34, %24
  %61 = phi i64 [ 0, %24 ], [ %57, %34 ]
  %62 = icmp eq i64 %30, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %60, %63
  %64 = phi i64 [ %71, %63 ], [ %61, %60 ]
  %65 = phi i64 [ %72, %63 ], [ 0, %60 ]
  %66 = or i64 %64, 1
  %67 = getelementptr inbounds i32, i32* %16, i64 %66
  %68 = bitcast i32* %67 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %68, align 4, !tbaa !5
  %69 = getelementptr inbounds i32, i32* %67, i64 4
  %70 = bitcast i32* %69 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %70, align 4, !tbaa !5
  %71 = add nuw i64 %64, 8
  %72 = add i64 %65, 1
  %73 = icmp eq i64 %72, %30
  br i1 %73, label %74, label %63, !llvm.loop !12

74:                                               ; preds = %63, %60
  %75 = icmp eq i64 %22, %25
  br i1 %75, label %78, label %76

76:                                               ; preds = %15, %74
  %77 = phi i64 [ 1, %15 ], [ %26, %74 ]
  br label %83

78:                                               ; preds = %83, %74, %3
  %79 = icmp slt i32 %1, 2
  br i1 %79, label %96, label %80

80:                                               ; preds = %78
  %81 = icmp slt i32 %2, 1
  %82 = sext i32 %0 to i64
  br label %88

83:                                               ; preds = %76, %83
  %84 = phi i64 [ %86, %83 ], [ %77, %76 ]
  %85 = getelementptr inbounds i32, i32* %16, i64 %84
  store i32 1, i32* %85, align 4, !tbaa !5
  %86 = add nuw nsw i64 %84, 1
  %87 = icmp eq i64 %86, %21
  br i1 %87, label %78, label %83, !llvm.loop !14

88:                                               ; preds = %80, %110
  %89 = phi i64 [ 2, %80 ], [ %111, %110 ]
  br i1 %81, label %110, label %90

90:                                               ; preds = %88
  %91 = add nsw i64 %89, -1
  %92 = mul nuw nsw i64 %91, %7
  %93 = getelementptr inbounds i32, i32* %9, i64 %92
  %94 = mul nuw nsw i64 %89, %7
  %95 = getelementptr inbounds i32, i32* %9, i64 %94
  br label %103

96:                                               ; preds = %110, %78
  %97 = sext i32 %1 to i64
  %98 = mul nsw i64 %7, %97
  %99 = getelementptr inbounds i32, i32* %9, i64 %98
  %100 = sext i32 %2 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4, !tbaa !5
  ret i32 %102

103:                                              ; preds = %90, %113
  %104 = phi i64 [ 1, %90 ], [ %114, %113 ]
  %105 = icmp ugt i64 %104, 1
  %106 = select i1 %12, i1 %105, i1 false
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = getelementptr inbounds i32, i32* %95, i64 %104
  %109 = load i32, i32* %108, align 4, !tbaa !5
  br label %116

110:                                              ; preds = %113, %88
  %111 = add nuw nsw i64 %89, 1
  %112 = icmp eq i64 %111, %5
  br i1 %112, label %96, label %88, !llvm.loop !16

113:                                              ; preds = %116, %103
  %114 = add nuw nsw i64 %104, 1
  %115 = icmp eq i64 %114, %7
  br i1 %115, label %110, label %103, !llvm.loop !17

116:                                              ; preds = %107, %116
  %117 = phi i32 [ %109, %107 ], [ %122, %116 ]
  %118 = phi i64 [ 1, %107 ], [ %123, %116 ]
  %119 = sub nsw i64 %104, %118
  %120 = getelementptr inbounds i32, i32* %93, i64 %119
  %121 = load i32, i32* %120, align 4, !tbaa !5
  %122 = add nsw i32 %117, %121
  store i32 %122, i32* %108, align 4, !tbaa !5
  %123 = add nuw nsw i64 %118, 1
  %124 = icmp slt i64 %118, %82
  %125 = icmp ugt i64 %104, %123
  %126 = select i1 %124, i1 %125, i1 false
  br i1 %126, label %116, label %113, !llvm.loop !18
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nofree nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

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
!14 = distinct !{!14, !10, !15, !11}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
