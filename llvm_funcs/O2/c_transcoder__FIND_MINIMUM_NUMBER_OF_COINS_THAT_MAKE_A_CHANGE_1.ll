; ModuleID = 'benchmark/c_transcoder/FIND_MINIMUM_NUMBER_OF_COINS_THAT_MAKE_A_CHANGE_1/FIND_MINIMUM_NUMBER_OF_COINS_THAT_MAKE_A_CHANGE_1_processed.c'
source_filename = "benchmark/c_transcoder/FIND_MINIMUM_NUMBER_OF_COINS_THAT_MAKE_A_CHANGE_1/FIND_MINIMUM_NUMBER_OF_COINS_THAT_MAKE_A_CHANGE_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %2, 1
  %5 = zext i32 %4 to i64
  %6 = alloca i32, i64 %5, align 16
  store i32 0, i32* %6, align 16, !tbaa !5
  %7 = icmp slt i32 %2, 1
  br i1 %7, label %79, label %8

8:                                                ; preds = %3
  %9 = add nsw i64 %5, -1
  %10 = icmp ult i64 %9, 8
  br i1 %10, label %63, label %11

11:                                               ; preds = %8
  %12 = and i64 %9, -8
  %13 = or i64 %12, 1
  %14 = add nsw i64 %12, -8
  %15 = lshr exact i64 %14, 3
  %16 = add nuw nsw i64 %15, 1
  %17 = and i64 %16, 3
  %18 = icmp ult i64 %14, 24
  br i1 %18, label %47, label %19

19:                                               ; preds = %11
  %20 = and i64 %16, 4611686018427387900
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i64 [ 0, %19 ], [ %44, %21 ]
  %23 = phi i64 [ 0, %19 ], [ %45, %21 ]
  %24 = or i64 %22, 1
  %25 = getelementptr inbounds i32, i32* %6, i64 %24
  %26 = bitcast i32* %25 to <4 x i32>*
  store <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32>* %26, align 4, !tbaa !5
  %27 = getelementptr inbounds i32, i32* %25, i64 4
  %28 = bitcast i32* %27 to <4 x i32>*
  store <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32>* %28, align 4, !tbaa !5
  %29 = or i64 %22, 9
  %30 = getelementptr inbounds i32, i32* %6, i64 %29
  %31 = bitcast i32* %30 to <4 x i32>*
  store <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32>* %31, align 4, !tbaa !5
  %32 = getelementptr inbounds i32, i32* %30, i64 4
  %33 = bitcast i32* %32 to <4 x i32>*
  store <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32>* %33, align 4, !tbaa !5
  %34 = or i64 %22, 17
  %35 = getelementptr inbounds i32, i32* %6, i64 %34
  %36 = bitcast i32* %35 to <4 x i32>*
  store <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32>* %36, align 4, !tbaa !5
  %37 = getelementptr inbounds i32, i32* %35, i64 4
  %38 = bitcast i32* %37 to <4 x i32>*
  store <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32>* %38, align 4, !tbaa !5
  %39 = or i64 %22, 25
  %40 = getelementptr inbounds i32, i32* %6, i64 %39
  %41 = bitcast i32* %40 to <4 x i32>*
  store <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32>* %41, align 4, !tbaa !5
  %42 = getelementptr inbounds i32, i32* %40, i64 4
  %43 = bitcast i32* %42 to <4 x i32>*
  store <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32>* %43, align 4, !tbaa !5
  %44 = add nuw i64 %22, 32
  %45 = add i64 %23, 4
  %46 = icmp eq i64 %45, %20
  br i1 %46, label %47, label %21, !llvm.loop !9

47:                                               ; preds = %21, %11
  %48 = phi i64 [ 0, %11 ], [ %44, %21 ]
  %49 = icmp eq i64 %17, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %47, %50
  %51 = phi i64 [ %58, %50 ], [ %48, %47 ]
  %52 = phi i64 [ %59, %50 ], [ 0, %47 ]
  %53 = or i64 %51, 1
  %54 = getelementptr inbounds i32, i32* %6, i64 %53
  %55 = bitcast i32* %54 to <4 x i32>*
  store <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32>* %55, align 4, !tbaa !5
  %56 = getelementptr inbounds i32, i32* %54, i64 4
  %57 = bitcast i32* %56 to <4 x i32>*
  store <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32>* %57, align 4, !tbaa !5
  %58 = add nuw i64 %51, 8
  %59 = add i64 %52, 1
  %60 = icmp eq i64 %59, %17
  br i1 %60, label %61, label %50, !llvm.loop !12

61:                                               ; preds = %50, %47
  %62 = icmp eq i64 %9, %12
  br i1 %62, label %65, label %63

63:                                               ; preds = %8, %61
  %64 = phi i64 [ 1, %8 ], [ %13, %61 ]
  br label %69

65:                                               ; preds = %69, %61
  br i1 %7, label %79, label %66

66:                                               ; preds = %65
  %67 = icmp sgt i32 %1, 0
  %68 = zext i32 %1 to i64
  br label %74

69:                                               ; preds = %63, %69
  %70 = phi i64 [ %72, %69 ], [ %64, %63 ]
  %71 = getelementptr inbounds i32, i32* %6, i64 %70
  store i32 2147483647, i32* %71, align 4, !tbaa !5
  %72 = add nuw nsw i64 %70, 1
  %73 = icmp eq i64 %72, %5
  br i1 %73, label %65, label %69, !llvm.loop !14

74:                                               ; preds = %66, %83
  %75 = phi i64 [ 1, %66 ], [ %84, %83 ]
  br i1 %67, label %76, label %83

76:                                               ; preds = %74
  %77 = getelementptr inbounds i32, i32* %6, i64 %75
  %78 = trunc i64 %75 to i32
  br label %86

79:                                               ; preds = %83, %3, %65
  %80 = sext i32 %2 to i64
  %81 = getelementptr inbounds i32, i32* %6, i64 %80
  %82 = load i32, i32* %81, align 4, !tbaa !5
  ret i32 %82

83:                                               ; preds = %103, %74
  %84 = add nuw nsw i64 %75, 1
  %85 = icmp eq i64 %84, %5
  br i1 %85, label %79, label %74, !llvm.loop !16

86:                                               ; preds = %76, %103
  %87 = phi i64 [ 0, %76 ], [ %104, %103 ]
  %88 = getelementptr inbounds i32, i32* %0, i64 %87
  %89 = load i32, i32* %88, align 4, !tbaa !5
  %90 = sext i32 %89 to i64
  %91 = icmp slt i64 %75, %90
  br i1 %91, label %103, label %92

92:                                               ; preds = %86
  %93 = sub nsw i32 %78, %89
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %6, i64 %94
  %96 = load i32, i32* %95, align 4, !tbaa !5
  %97 = icmp eq i32 %96, 2147483647
  br i1 %97, label %103, label %98

98:                                               ; preds = %92
  %99 = add nsw i32 %96, 1
  %100 = load i32, i32* %77, align 4, !tbaa !5
  %101 = icmp slt i32 %99, %100
  %102 = select i1 %101, i32 %99, i32 %100
  store i32 %102, i32* %77, align 4
  br label %103

103:                                              ; preds = %98, %92, %86
  %104 = add nuw nsw i64 %87, 1
  %105 = icmp eq i64 %104, %68
  br i1 %105, label %83, label %86, !llvm.loop !17
}

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
