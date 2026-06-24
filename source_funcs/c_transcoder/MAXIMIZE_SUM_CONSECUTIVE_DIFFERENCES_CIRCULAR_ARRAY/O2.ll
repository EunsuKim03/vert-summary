; ModuleID = 'benchmark/c_transcoder/MAXIMIZE_SUM_CONSECUTIVE_DIFFERENCES_CIRCULAR_ARRAY/MAXIMIZE_SUM_CONSECUTIVE_DIFFERENCES_CIRCULAR_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMIZE_SUM_CONSECUTIVE_DIFFERENCES_CIRCULAR_ARRAY/MAXIMIZE_SUM_CONSECUTIVE_DIFFERENCES_CIRCULAR_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #3
  %6 = icmp sgt i32 %1, 1
  br i1 %6, label %7, label %82

7:                                                ; preds = %2
  %8 = lshr i32 %1, 1
  %9 = zext i32 %8 to i64
  %10 = icmp ult i32 %1, 16
  br i1 %10, label %57, label %11

11:                                               ; preds = %7
  %12 = add nsw i64 %9, -1
  %13 = add i32 %1, -1
  %14 = trunc i64 %12 to i32
  %15 = sub i32 %13, %14
  %16 = icmp sgt i32 %15, %13
  %17 = icmp ugt i64 %12, 4294967295
  %18 = or i1 %16, %17
  br i1 %18, label %57, label %19

19:                                               ; preds = %11
  %20 = and i64 %9, 2147483640
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i64 [ 0, %19 ], [ %51, %21 ]
  %23 = phi <4 x i32> [ zeroinitializer, %19 ], [ %49, %21 ]
  %24 = phi <4 x i32> [ zeroinitializer, %19 ], [ %50, %21 ]
  %25 = trunc i64 %22 to i32
  %26 = getelementptr inbounds i32, i32* %0, i64 %22
  %27 = bitcast i32* %26 to <4 x i32>*
  %28 = load <4 x i32>, <4 x i32>* %27, align 4, !tbaa !5
  %29 = getelementptr inbounds i32, i32* %26, i64 4
  %30 = bitcast i32* %29 to <4 x i32>*
  %31 = load <4 x i32>, <4 x i32>* %30, align 4, !tbaa !5
  %32 = xor i32 %25, -1
  %33 = add i32 %32, %1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %0, i64 %34
  %36 = getelementptr inbounds i32, i32* %35, i64 -3
  %37 = bitcast i32* %36 to <4 x i32>*
  %38 = load <4 x i32>, <4 x i32>* %37, align 4, !tbaa !5
  %39 = shufflevector <4 x i32> %38, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %40 = getelementptr inbounds i32, i32* %35, i64 -4
  %41 = getelementptr inbounds i32, i32* %40, i64 -3
  %42 = bitcast i32* %41 to <4 x i32>*
  %43 = load <4 x i32>, <4 x i32>* %42, align 4, !tbaa !5
  %44 = shufflevector <4 x i32> %43, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %45 = sub <4 x i32> %39, %28
  %46 = sub <4 x i32> %44, %31
  %47 = shl <4 x i32> %45, <i32 1, i32 1, i32 1, i32 1>
  %48 = shl <4 x i32> %46, <i32 1, i32 1, i32 1, i32 1>
  %49 = add <4 x i32> %47, %23
  %50 = add <4 x i32> %48, %24
  %51 = add nuw i64 %22, 8
  %52 = icmp eq i64 %51, %20
  br i1 %52, label %53, label %21, !llvm.loop !9

53:                                               ; preds = %21
  %54 = add <4 x i32> %50, %49
  %55 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %54)
  %56 = icmp eq i64 %20, %9
  br i1 %56, label %82, label %57

57:                                               ; preds = %11, %7, %53
  %58 = phi i64 [ 0, %11 ], [ 0, %7 ], [ %20, %53 ]
  %59 = phi i32 [ 0, %11 ], [ 0, %7 ], [ %55, %53 ]
  %60 = xor i64 %58, -1
  %61 = and i64 %9, 1
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds i32, i32* %0, i64 %58
  %65 = load i32, i32* %64, align 4, !tbaa !5
  %66 = trunc i64 %58 to i32
  %67 = xor i32 %66, -1
  %68 = add i32 %67, %1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %0, i64 %69
  %71 = load i32, i32* %70, align 4, !tbaa !5
  %72 = sub i32 %71, %65
  %73 = shl i32 %72, 1
  %74 = add i32 %73, %59
  %75 = or i64 %58, 1
  br label %76

76:                                               ; preds = %63, %57
  %77 = phi i32 [ undef, %57 ], [ %74, %63 ]
  %78 = phi i64 [ %58, %57 ], [ %75, %63 ]
  %79 = phi i32 [ %59, %57 ], [ %74, %63 ]
  %80 = sub nsw i64 0, %9
  %81 = icmp eq i64 %60, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76, %84, %53, %2
  %83 = phi i32 [ 0, %2 ], [ %55, %53 ], [ %77, %76 ], [ %109, %84 ]
  ret i32 %83

84:                                               ; preds = %76, %84
  %85 = phi i64 [ %110, %84 ], [ %78, %76 ]
  %86 = phi i32 [ %109, %84 ], [ %79, %76 ]
  %87 = getelementptr inbounds i32, i32* %0, i64 %85
  %88 = load i32, i32* %87, align 4, !tbaa !5
  %89 = trunc i64 %85 to i32
  %90 = xor i32 %89, -1
  %91 = add i32 %90, %1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %0, i64 %92
  %94 = load i32, i32* %93, align 4, !tbaa !5
  %95 = sub i32 %94, %88
  %96 = shl i32 %95, 1
  %97 = add i32 %96, %86
  %98 = add nuw nsw i64 %85, 1
  %99 = getelementptr inbounds i32, i32* %0, i64 %98
  %100 = load i32, i32* %99, align 4, !tbaa !5
  %101 = trunc i64 %98 to i32
  %102 = xor i32 %101, -1
  %103 = add i32 %102, %1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %0, i64 %104
  %106 = load i32, i32* %105, align 4, !tbaa !5
  %107 = sub i32 %106, %100
  %108 = shl i32 %107, 1
  %109 = add i32 %108, %97
  %110 = add nuw nsw i64 %85, 2
  %111 = icmp eq i64 %110, %9
  br i1 %111, label %82, label %84, !llvm.loop !12
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
!12 = distinct !{!12, !10, !11}
