; ModuleID = 'benchmark/c_transcoder/FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE/FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_processed.c'
source_filename = "benchmark/c_transcoder/FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE/FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = zext i32 %3 to i64
  %6 = alloca i32, i64 %5, align 16
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %100

8:                                                ; preds = %4
  %9 = icmp ult i32 %3, 8
  br i1 %9, label %98, label %10

10:                                               ; preds = %8
  %11 = and i64 %5, 4294967288
  %12 = add nsw i64 %11, -8
  %13 = lshr exact i64 %12, 3
  %14 = add nuw nsw i64 %13, 1
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %12, 0
  br i1 %16, label %70, label %17

17:                                               ; preds = %10
  %18 = and i64 %14, 4611686018427387902
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i64 [ 0, %17 ], [ %67, %19 ]
  %21 = phi i64 [ 0, %17 ], [ %68, %19 ]
  %22 = getelementptr inbounds i32, i32* %1, i64 %20
  %23 = bitcast i32* %22 to <4 x i32>*
  %24 = load <4 x i32>, <4 x i32>* %23, align 4, !tbaa !5
  %25 = getelementptr inbounds i32, i32* %22, i64 4
  %26 = bitcast i32* %25 to <4 x i32>*
  %27 = load <4 x i32>, <4 x i32>* %26, align 4, !tbaa !5
  %28 = mul nsw <4 x i32> %24, %24
  %29 = mul nsw <4 x i32> %27, %27
  %30 = getelementptr inbounds i32, i32* %2, i64 %20
  %31 = bitcast i32* %30 to <4 x i32>*
  %32 = load <4 x i32>, <4 x i32>* %31, align 4, !tbaa !5
  %33 = getelementptr inbounds i32, i32* %30, i64 4
  %34 = bitcast i32* %33 to <4 x i32>*
  %35 = load <4 x i32>, <4 x i32>* %34, align 4, !tbaa !5
  %36 = mul nsw <4 x i32> %32, %32
  %37 = mul nsw <4 x i32> %35, %35
  %38 = add nuw nsw <4 x i32> %36, %28
  %39 = add nuw nsw <4 x i32> %37, %29
  %40 = getelementptr inbounds i32, i32* %6, i64 %20
  %41 = bitcast i32* %40 to <4 x i32>*
  store <4 x i32> %38, <4 x i32>* %41, align 16, !tbaa !5
  %42 = getelementptr inbounds i32, i32* %40, i64 4
  %43 = bitcast i32* %42 to <4 x i32>*
  store <4 x i32> %39, <4 x i32>* %43, align 16, !tbaa !5
  %44 = or i64 %20, 8
  %45 = getelementptr inbounds i32, i32* %1, i64 %44
  %46 = bitcast i32* %45 to <4 x i32>*
  %47 = load <4 x i32>, <4 x i32>* %46, align 4, !tbaa !5
  %48 = getelementptr inbounds i32, i32* %45, i64 4
  %49 = bitcast i32* %48 to <4 x i32>*
  %50 = load <4 x i32>, <4 x i32>* %49, align 4, !tbaa !5
  %51 = mul nsw <4 x i32> %47, %47
  %52 = mul nsw <4 x i32> %50, %50
  %53 = getelementptr inbounds i32, i32* %2, i64 %44
  %54 = bitcast i32* %53 to <4 x i32>*
  %55 = load <4 x i32>, <4 x i32>* %54, align 4, !tbaa !5
  %56 = getelementptr inbounds i32, i32* %53, i64 4
  %57 = bitcast i32* %56 to <4 x i32>*
  %58 = load <4 x i32>, <4 x i32>* %57, align 4, !tbaa !5
  %59 = mul nsw <4 x i32> %55, %55
  %60 = mul nsw <4 x i32> %58, %58
  %61 = add nuw nsw <4 x i32> %59, %51
  %62 = add nuw nsw <4 x i32> %60, %52
  %63 = getelementptr inbounds i32, i32* %6, i64 %44
  %64 = bitcast i32* %63 to <4 x i32>*
  store <4 x i32> %61, <4 x i32>* %64, align 16, !tbaa !5
  %65 = getelementptr inbounds i32, i32* %63, i64 4
  %66 = bitcast i32* %65 to <4 x i32>*
  store <4 x i32> %62, <4 x i32>* %66, align 16, !tbaa !5
  %67 = add nuw i64 %20, 16
  %68 = add i64 %21, 2
  %69 = icmp eq i64 %68, %18
  br i1 %69, label %70, label %19, !llvm.loop !9

70:                                               ; preds = %19, %10
  %71 = phi i64 [ 0, %10 ], [ %67, %19 ]
  %72 = icmp eq i64 %15, 0
  br i1 %72, label %96, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds i32, i32* %1, i64 %71
  %75 = bitcast i32* %74 to <4 x i32>*
  %76 = load <4 x i32>, <4 x i32>* %75, align 4, !tbaa !5
  %77 = getelementptr inbounds i32, i32* %74, i64 4
  %78 = bitcast i32* %77 to <4 x i32>*
  %79 = load <4 x i32>, <4 x i32>* %78, align 4, !tbaa !5
  %80 = mul nsw <4 x i32> %76, %76
  %81 = mul nsw <4 x i32> %79, %79
  %82 = getelementptr inbounds i32, i32* %2, i64 %71
  %83 = bitcast i32* %82 to <4 x i32>*
  %84 = load <4 x i32>, <4 x i32>* %83, align 4, !tbaa !5
  %85 = getelementptr inbounds i32, i32* %82, i64 4
  %86 = bitcast i32* %85 to <4 x i32>*
  %87 = load <4 x i32>, <4 x i32>* %86, align 4, !tbaa !5
  %88 = mul nsw <4 x i32> %84, %84
  %89 = mul nsw <4 x i32> %87, %87
  %90 = add nuw nsw <4 x i32> %88, %80
  %91 = add nuw nsw <4 x i32> %89, %81
  %92 = getelementptr inbounds i32, i32* %6, i64 %71
  %93 = bitcast i32* %92 to <4 x i32>*
  store <4 x i32> %90, <4 x i32>* %93, align 16, !tbaa !5
  %94 = getelementptr inbounds i32, i32* %92, i64 4
  %95 = bitcast i32* %94 to <4 x i32>*
  store <4 x i32> %91, <4 x i32>* %95, align 16, !tbaa !5
  br label %96

96:                                               ; preds = %70, %73
  %97 = icmp eq i64 %11, %5
  br i1 %97, label %100, label %98

98:                                               ; preds = %8, %96
  %99 = phi i64 [ 0, %8 ], [ %11, %96 ]
  br label %108

100:                                              ; preds = %108, %96, %4
  %101 = sext i32 %3 to i64
  %102 = getelementptr inbounds i32, i32* %6, i64 %101
  %103 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %6, i32* noundef nonnull %102) #2
  %104 = add nsw i32 %0, -1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %6, i64 %105
  %107 = load i32, i32* %106, align 4, !tbaa !5
  ret i32 %107

108:                                              ; preds = %98, %108
  %109 = phi i64 [ %118, %108 ], [ %99, %98 ]
  %110 = getelementptr inbounds i32, i32* %1, i64 %109
  %111 = load i32, i32* %110, align 4, !tbaa !5
  %112 = mul nsw i32 %111, %111
  %113 = getelementptr inbounds i32, i32* %2, i64 %109
  %114 = load i32, i32* %113, align 4, !tbaa !5
  %115 = mul nsw i32 %114, %114
  %116 = add nuw nsw i32 %115, %112
  %117 = getelementptr inbounds i32, i32* %6, i64 %109
  store i32 %116, i32* %117, align 4, !tbaa !5
  %118 = add nuw nsw i64 %109, 1
  %119 = icmp eq i64 %118, %5
  br i1 %119, label %100, label %108, !llvm.loop !12
}

declare i32 @sort(...) local_unnamed_addr #1

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
!12 = distinct !{!12, !10, !13, !11}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
