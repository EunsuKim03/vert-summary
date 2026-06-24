; ModuleID = 'benchmark/c_transcoder/MAXIMIZE_SUM_ARRII/MAXIMIZE_SUM_ARRII_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMIZE_SUM_ARRII/MAXIMIZE_SUM_ARRII_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #3
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %82

7:                                                ; preds = %2
  %8 = zext i32 %1 to i64
  %9 = icmp ult i32 %1, 8
  br i1 %9, label %79, label %10

10:                                               ; preds = %7
  %11 = and i64 %8, 4294967288
  %12 = add nsw i64 %11, -8
  %13 = lshr exact i64 %12, 3
  %14 = add nuw nsw i64 %13, 1
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %12, 0
  br i1 %16, label %53, label %17

17:                                               ; preds = %10
  %18 = and i64 %14, 4611686018427387902
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i64 [ 0, %17 ], [ %49, %19 ]
  %21 = phi <4 x i32> [ zeroinitializer, %17 ], [ %47, %19 ]
  %22 = phi <4 x i32> [ zeroinitializer, %17 ], [ %48, %19 ]
  %23 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %17 ], [ %50, %19 ]
  %24 = phi i64 [ 0, %17 ], [ %51, %19 ]
  %25 = add <4 x i32> %23, <i32 4, i32 4, i32 4, i32 4>
  %26 = getelementptr inbounds i32, i32* %0, i64 %20
  %27 = bitcast i32* %26 to <4 x i32>*
  %28 = load <4 x i32>, <4 x i32>* %27, align 4, !tbaa !5
  %29 = getelementptr inbounds i32, i32* %26, i64 4
  %30 = bitcast i32* %29 to <4 x i32>*
  %31 = load <4 x i32>, <4 x i32>* %30, align 4, !tbaa !5
  %32 = mul nsw <4 x i32> %28, %23
  %33 = mul nsw <4 x i32> %31, %25
  %34 = add <4 x i32> %32, %21
  %35 = add <4 x i32> %33, %22
  %36 = or i64 %20, 8
  %37 = add <4 x i32> %23, <i32 8, i32 8, i32 8, i32 8>
  %38 = add <4 x i32> %23, <i32 12, i32 12, i32 12, i32 12>
  %39 = getelementptr inbounds i32, i32* %0, i64 %36
  %40 = bitcast i32* %39 to <4 x i32>*
  %41 = load <4 x i32>, <4 x i32>* %40, align 4, !tbaa !5
  %42 = getelementptr inbounds i32, i32* %39, i64 4
  %43 = bitcast i32* %42 to <4 x i32>*
  %44 = load <4 x i32>, <4 x i32>* %43, align 4, !tbaa !5
  %45 = mul nsw <4 x i32> %41, %37
  %46 = mul nsw <4 x i32> %44, %38
  %47 = add <4 x i32> %45, %34
  %48 = add <4 x i32> %46, %35
  %49 = add nuw i64 %20, 16
  %50 = add <4 x i32> %23, <i32 16, i32 16, i32 16, i32 16>
  %51 = add i64 %24, 2
  %52 = icmp eq i64 %51, %18
  br i1 %52, label %53, label %19, !llvm.loop !9

53:                                               ; preds = %19, %10
  %54 = phi <4 x i32> [ undef, %10 ], [ %47, %19 ]
  %55 = phi <4 x i32> [ undef, %10 ], [ %48, %19 ]
  %56 = phi i64 [ 0, %10 ], [ %49, %19 ]
  %57 = phi <4 x i32> [ zeroinitializer, %10 ], [ %47, %19 ]
  %58 = phi <4 x i32> [ zeroinitializer, %10 ], [ %48, %19 ]
  %59 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %10 ], [ %50, %19 ]
  %60 = icmp eq i64 %15, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %53
  %62 = add <4 x i32> %59, <i32 4, i32 4, i32 4, i32 4>
  %63 = getelementptr inbounds i32, i32* %0, i64 %56
  %64 = bitcast i32* %63 to <4 x i32>*
  %65 = load <4 x i32>, <4 x i32>* %64, align 4, !tbaa !5
  %66 = getelementptr inbounds i32, i32* %63, i64 4
  %67 = bitcast i32* %66 to <4 x i32>*
  %68 = load <4 x i32>, <4 x i32>* %67, align 4, !tbaa !5
  %69 = mul nsw <4 x i32> %65, %59
  %70 = mul nsw <4 x i32> %68, %62
  %71 = add <4 x i32> %69, %57
  %72 = add <4 x i32> %70, %58
  br label %73

73:                                               ; preds = %53, %61
  %74 = phi <4 x i32> [ %54, %53 ], [ %71, %61 ]
  %75 = phi <4 x i32> [ %55, %53 ], [ %72, %61 ]
  %76 = add <4 x i32> %75, %74
  %77 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %76)
  %78 = icmp eq i64 %11, %8
  br i1 %78, label %82, label %79

79:                                               ; preds = %7, %73
  %80 = phi i64 [ 0, %7 ], [ %11, %73 ]
  %81 = phi i32 [ 0, %7 ], [ %77, %73 ]
  br label %84

82:                                               ; preds = %84, %73, %2
  %83 = phi i32 [ 0, %2 ], [ %77, %73 ], [ %91, %84 ]
  ret i32 %83

84:                                               ; preds = %79, %84
  %85 = phi i64 [ %92, %84 ], [ %80, %79 ]
  %86 = phi i32 [ %91, %84 ], [ %81, %79 ]
  %87 = getelementptr inbounds i32, i32* %0, i64 %85
  %88 = load i32, i32* %87, align 4, !tbaa !5
  %89 = trunc i64 %85 to i32
  %90 = mul nsw i32 %88, %89
  %91 = add nsw i32 %90, %86
  %92 = add nuw nsw i64 %85, 1
  %93 = icmp eq i64 %92, %8
  br i1 %93, label %82, label %84, !llvm.loop !12
}

declare i32 @sort(...) local_unnamed_addr #1

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
!12 = distinct !{!12, !10, !13, !11}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
