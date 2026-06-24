; ModuleID = 'benchmark/c_transcoder/CONVERT_STRICTLY_INCREASING_ARRAY_MINIMUM_CHANGES/CONVERT_STRICTLY_INCREASING_ARRAY_MINIMUM_CHANGES_processed.c'
source_filename = "benchmark/c_transcoder/CONVERT_STRICTLY_INCREASING_ARRAY_MINIMUM_CHANGES/CONVERT_STRICTLY_INCREASING_ARRAY_MINIMUM_CHANGES_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %91

6:                                                ; preds = %2
  %7 = icmp ult i32 %1, 8
  br i1 %7, label %77, label %8

8:                                                ; preds = %6
  %9 = and i64 %3, 4294967288
  %10 = add nsw i64 %9, -8
  %11 = lshr exact i64 %10, 3
  %12 = add nuw nsw i64 %11, 1
  %13 = and i64 %12, 7
  %14 = icmp ult i64 %10, 56
  br i1 %14, label %62, label %15

15:                                               ; preds = %8
  %16 = and i64 %12, 4611686018427387896
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i64 [ 0, %15 ], [ %59, %17 ]
  %19 = phi i64 [ 0, %15 ], [ %60, %17 ]
  %20 = getelementptr inbounds i32, i32* %4, i64 %18
  %21 = bitcast i32* %20 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %21, align 16, !tbaa !5
  %22 = getelementptr inbounds i32, i32* %20, i64 4
  %23 = bitcast i32* %22 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %23, align 16, !tbaa !5
  %24 = or i64 %18, 8
  %25 = getelementptr inbounds i32, i32* %4, i64 %24
  %26 = bitcast i32* %25 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %26, align 16, !tbaa !5
  %27 = getelementptr inbounds i32, i32* %25, i64 4
  %28 = bitcast i32* %27 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %28, align 16, !tbaa !5
  %29 = or i64 %18, 16
  %30 = getelementptr inbounds i32, i32* %4, i64 %29
  %31 = bitcast i32* %30 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %31, align 16, !tbaa !5
  %32 = getelementptr inbounds i32, i32* %30, i64 4
  %33 = bitcast i32* %32 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %33, align 16, !tbaa !5
  %34 = or i64 %18, 24
  %35 = getelementptr inbounds i32, i32* %4, i64 %34
  %36 = bitcast i32* %35 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %36, align 16, !tbaa !5
  %37 = getelementptr inbounds i32, i32* %35, i64 4
  %38 = bitcast i32* %37 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %38, align 16, !tbaa !5
  %39 = or i64 %18, 32
  %40 = getelementptr inbounds i32, i32* %4, i64 %39
  %41 = bitcast i32* %40 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %41, align 16, !tbaa !5
  %42 = getelementptr inbounds i32, i32* %40, i64 4
  %43 = bitcast i32* %42 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %43, align 16, !tbaa !5
  %44 = or i64 %18, 40
  %45 = getelementptr inbounds i32, i32* %4, i64 %44
  %46 = bitcast i32* %45 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %46, align 16, !tbaa !5
  %47 = getelementptr inbounds i32, i32* %45, i64 4
  %48 = bitcast i32* %47 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %48, align 16, !tbaa !5
  %49 = or i64 %18, 48
  %50 = getelementptr inbounds i32, i32* %4, i64 %49
  %51 = bitcast i32* %50 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %51, align 16, !tbaa !5
  %52 = getelementptr inbounds i32, i32* %50, i64 4
  %53 = bitcast i32* %52 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %53, align 16, !tbaa !5
  %54 = or i64 %18, 56
  %55 = getelementptr inbounds i32, i32* %4, i64 %54
  %56 = bitcast i32* %55 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %56, align 16, !tbaa !5
  %57 = getelementptr inbounds i32, i32* %55, i64 4
  %58 = bitcast i32* %57 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %58, align 16, !tbaa !5
  %59 = add nuw i64 %18, 64
  %60 = add nuw i64 %19, 8
  %61 = icmp eq i64 %60, %16
  br i1 %61, label %62, label %17, !llvm.loop !9

62:                                               ; preds = %17, %8
  %63 = phi i64 [ 0, %8 ], [ %59, %17 ]
  %64 = icmp eq i64 %13, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %62, %65
  %66 = phi i64 [ %72, %65 ], [ %63, %62 ]
  %67 = phi i64 [ %73, %65 ], [ 0, %62 ]
  %68 = getelementptr inbounds i32, i32* %4, i64 %66
  %69 = bitcast i32* %68 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %69, align 16, !tbaa !5
  %70 = getelementptr inbounds i32, i32* %68, i64 4
  %71 = bitcast i32* %70 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %71, align 16, !tbaa !5
  %72 = add nuw i64 %66, 8
  %73 = add i64 %67, 1
  %74 = icmp eq i64 %73, %13
  br i1 %74, label %75, label %65, !llvm.loop !12

75:                                               ; preds = %65, %62
  %76 = icmp eq i64 %9, %3
  br i1 %76, label %79, label %77

77:                                               ; preds = %6, %75
  %78 = phi i64 [ 0, %6 ], [ %9, %75 ]
  br label %81

79:                                               ; preds = %81, %75
  %80 = icmp sgt i32 %1, 1
  br i1 %80, label %86, label %91

81:                                               ; preds = %77, %81
  %82 = phi i64 [ %84, %81 ], [ %78, %77 ]
  %83 = getelementptr inbounds i32, i32* %4, i64 %82
  store i32 1, i32* %83, align 4, !tbaa !5
  %84 = add nuw nsw i64 %82, 1
  %85 = icmp eq i64 %84, %3
  br i1 %85, label %79, label %81, !llvm.loop !14

86:                                               ; preds = %79, %94
  %87 = phi i64 [ %97, %94 ], [ 1, %79 ]
  %88 = phi i32 [ %96, %94 ], [ 0, %79 ]
  %89 = getelementptr inbounds i32, i32* %0, i64 %87
  %90 = getelementptr inbounds i32, i32* %4, i64 %87
  br label %99

91:                                               ; preds = %94, %2, %79
  %92 = phi i32 [ 0, %79 ], [ 0, %2 ], [ %96, %94 ]
  %93 = sub nsw i32 %1, %92
  ret i32 %93

94:                                               ; preds = %116
  %95 = load i32, i32* %90, align 4, !tbaa !5
  %96 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %88, i32 noundef %95) #2
  %97 = add nuw nsw i64 %87, 1
  %98 = icmp eq i64 %97, %3
  br i1 %98, label %91, label %86, !llvm.loop !16

99:                                               ; preds = %86, %116
  %100 = phi i64 [ 0, %86 ], [ %117, %116 ]
  %101 = load i32, i32* %89, align 4, !tbaa !5
  %102 = getelementptr inbounds i32, i32* %0, i64 %100
  %103 = load i32, i32* %102, align 4, !tbaa !5
  %104 = icmp sgt i32 %101, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %99
  %106 = sub nsw i64 %87, %100
  %107 = sub nsw i32 %101, %103
  %108 = sext i32 %107 to i64
  %109 = icmp sgt i64 %106, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %90, align 4, !tbaa !5
  %112 = getelementptr inbounds i32, i32* %4, i64 %100
  %113 = load i32, i32* %112, align 4, !tbaa !5
  %114 = add nsw i32 %113, 1
  %115 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %111, i32 noundef %114) #2
  store i32 %115, i32* %90, align 4, !tbaa !5
  br label %116

116:                                              ; preds = %99, %105, %110
  %117 = add nuw nsw i64 %100, 1
  %118 = icmp eq i64 %117, %87
  br i1 %118, label %94, label %99, !llvm.loop !17
}

declare i32 @max(...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
