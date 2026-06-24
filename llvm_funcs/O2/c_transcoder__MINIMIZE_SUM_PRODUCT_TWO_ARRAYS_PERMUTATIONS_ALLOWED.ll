; ModuleID = 'benchmark/c_transcoder/MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED/MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_processed.c'
source_filename = "benchmark/c_transcoder/MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED/MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %5) #3
  %7 = getelementptr inbounds i32, i32* %1, i64 %4
  %8 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %1, i32* noundef %7) #3
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %81

10:                                               ; preds = %3
  %11 = zext i32 %2 to i64
  %12 = icmp ult i32 %2, 8
  br i1 %12, label %57, label %13

13:                                               ; preds = %10
  %14 = add nsw i64 %11, -1
  %15 = add i32 %2, -1
  %16 = trunc i64 %14 to i32
  %17 = sub i32 %15, %16
  %18 = icmp sgt i32 %17, %15
  %19 = icmp ugt i64 %14, 4294967295
  %20 = or i1 %18, %19
  br i1 %20, label %57, label %21

21:                                               ; preds = %13
  %22 = and i64 %11, 4294967288
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i64 [ 0, %21 ], [ %51, %23 ]
  %25 = phi <4 x i32> [ zeroinitializer, %21 ], [ %49, %23 ]
  %26 = phi <4 x i32> [ zeroinitializer, %21 ], [ %50, %23 ]
  %27 = trunc i64 %24 to i32
  %28 = getelementptr inbounds i32, i32* %0, i64 %24
  %29 = bitcast i32* %28 to <4 x i32>*
  %30 = load <4 x i32>, <4 x i32>* %29, align 4, !tbaa !5
  %31 = getelementptr inbounds i32, i32* %28, i64 4
  %32 = bitcast i32* %31 to <4 x i32>*
  %33 = load <4 x i32>, <4 x i32>* %32, align 4, !tbaa !5
  %34 = xor i32 %27, -1
  %35 = add i32 %34, %2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %1, i64 %36
  %38 = getelementptr inbounds i32, i32* %37, i64 -3
  %39 = bitcast i32* %38 to <4 x i32>*
  %40 = load <4 x i32>, <4 x i32>* %39, align 4, !tbaa !5
  %41 = shufflevector <4 x i32> %40, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %42 = getelementptr inbounds i32, i32* %37, i64 -4
  %43 = getelementptr inbounds i32, i32* %42, i64 -3
  %44 = bitcast i32* %43 to <4 x i32>*
  %45 = load <4 x i32>, <4 x i32>* %44, align 4, !tbaa !5
  %46 = shufflevector <4 x i32> %45, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %47 = mul nsw <4 x i32> %41, %30
  %48 = mul nsw <4 x i32> %46, %33
  %49 = add <4 x i32> %47, %25
  %50 = add <4 x i32> %48, %26
  %51 = add nuw i64 %24, 8
  %52 = icmp eq i64 %51, %22
  br i1 %52, label %53, label %23, !llvm.loop !9

53:                                               ; preds = %23
  %54 = add <4 x i32> %50, %49
  %55 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %54)
  %56 = icmp eq i64 %22, %11
  br i1 %56, label %81, label %57

57:                                               ; preds = %13, %10, %53
  %58 = phi i64 [ 0, %13 ], [ 0, %10 ], [ %22, %53 ]
  %59 = phi i32 [ 0, %13 ], [ 0, %10 ], [ %55, %53 ]
  %60 = xor i64 %58, -1
  %61 = and i64 %11, 1
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds i32, i32* %0, i64 %58
  %65 = load i32, i32* %64, align 4, !tbaa !5
  %66 = trunc i64 %58 to i32
  %67 = xor i32 %66, -1
  %68 = add i32 %67, %2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %1, i64 %69
  %71 = load i32, i32* %70, align 4, !tbaa !5
  %72 = mul nsw i32 %71, %65
  %73 = add nsw i32 %72, %59
  %74 = or i64 %58, 1
  br label %75

75:                                               ; preds = %63, %57
  %76 = phi i32 [ undef, %57 ], [ %73, %63 ]
  %77 = phi i64 [ %58, %57 ], [ %74, %63 ]
  %78 = phi i32 [ %59, %57 ], [ %73, %63 ]
  %79 = sub nsw i64 0, %11
  %80 = icmp eq i64 %60, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75, %83, %53, %3
  %82 = phi i32 [ 0, %3 ], [ %55, %53 ], [ %76, %75 ], [ %106, %83 ]
  ret i32 %82

83:                                               ; preds = %75, %83
  %84 = phi i64 [ %107, %83 ], [ %77, %75 ]
  %85 = phi i32 [ %106, %83 ], [ %78, %75 ]
  %86 = getelementptr inbounds i32, i32* %0, i64 %84
  %87 = load i32, i32* %86, align 4, !tbaa !5
  %88 = trunc i64 %84 to i32
  %89 = xor i32 %88, -1
  %90 = add i32 %89, %2
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %1, i64 %91
  %93 = load i32, i32* %92, align 4, !tbaa !5
  %94 = mul nsw i32 %93, %87
  %95 = add nsw i32 %94, %85
  %96 = add nuw nsw i64 %84, 1
  %97 = getelementptr inbounds i32, i32* %0, i64 %96
  %98 = load i32, i32* %97, align 4, !tbaa !5
  %99 = trunc i64 %96 to i32
  %100 = xor i32 %99, -1
  %101 = add i32 %100, %2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %1, i64 %102
  %104 = load i32, i32* %103, align 4, !tbaa !5
  %105 = mul nsw i32 %104, %98
  %106 = add nsw i32 %105, %95
  %107 = add nuw nsw i64 %84, 2
  %108 = icmp eq i64 %107, %11
  br i1 %108, label %81, label %83, !llvm.loop !12
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
