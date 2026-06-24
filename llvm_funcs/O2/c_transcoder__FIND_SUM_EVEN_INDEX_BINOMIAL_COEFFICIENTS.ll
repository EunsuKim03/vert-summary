; ModuleID = 'benchmark/c_transcoder/FIND_SUM_EVEN_INDEX_BINOMIAL_COEFFICIENTS/FIND_SUM_EVEN_INDEX_BINOMIAL_COEFFICIENTS_processed.c'
source_filename = "benchmark/c_transcoder/FIND_SUM_EVEN_INDEX_BINOMIAL_COEFFICIENTS/FIND_SUM_EVEN_INDEX_BINOMIAL_COEFFICIENTS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = mul nuw i64 %3, %3
  %5 = alloca i32, i64 %4, align 16
  %6 = icmp slt i32 %0, 0
  br i1 %6, label %78, label %7

7:                                                ; preds = %1, %75
  %8 = phi i64 [ %76, %75 ], [ 0, %1 ]
  %9 = trunc i64 %8 to i32
  %10 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %9, i32 noundef %0) #3
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %75, label %12

12:                                               ; preds = %7
  %13 = add nsw i64 %8, -1
  %14 = mul nsw i64 %13, %3
  %15 = getelementptr inbounds i32, i32* %5, i64 %14
  %16 = mul nuw nsw i64 %8, %3
  %17 = getelementptr inbounds i32, i32* %5, i64 %16
  br label %56

18:                                               ; preds = %75
  br i1 %6, label %78, label %19

19:                                               ; preds = %18
  %20 = zext i32 %0 to i64
  %21 = mul nuw nsw i64 %3, %20
  %22 = getelementptr inbounds i32, i32* %5, i64 %21
  %23 = lshr i64 %20, 1
  %24 = add nuw nsw i64 %23, 1
  %25 = icmp ult i32 %0, 16
  br i1 %25, label %53, label %26

26:                                               ; preds = %19
  %27 = and i64 %24, 7
  %28 = icmp eq i64 %27, 0
  %29 = select i1 %28, i64 8, i64 %27
  %30 = sub nsw i64 %24, %29
  %31 = shl nsw i64 %30, 1
  br label %32

32:                                               ; preds = %32, %26
  %33 = phi i64 [ 0, %26 ], [ %48, %32 ]
  %34 = phi <4 x i32> [ zeroinitializer, %26 ], [ %46, %32 ]
  %35 = phi <4 x i32> [ zeroinitializer, %26 ], [ %47, %32 ]
  %36 = shl i64 %33, 1
  %37 = or i64 %36, 8
  %38 = getelementptr inbounds i32, i32* %22, i64 %36
  %39 = getelementptr inbounds i32, i32* %22, i64 %37
  %40 = bitcast i32* %38 to <8 x i32>*
  %41 = bitcast i32* %39 to <8 x i32>*
  %42 = load <8 x i32>, <8 x i32>* %40, align 4, !tbaa !5
  %43 = load <8 x i32>, <8 x i32>* %41, align 4, !tbaa !5
  %44 = shufflevector <8 x i32> %42, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %45 = shufflevector <8 x i32> %43, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %46 = add <4 x i32> %44, %34
  %47 = add <4 x i32> %45, %35
  %48 = add nuw i64 %33, 8
  %49 = icmp eq i64 %48, %30
  br i1 %49, label %50, label %32, !llvm.loop !9

50:                                               ; preds = %32
  %51 = add <4 x i32> %47, %46
  %52 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %51)
  br label %53

53:                                               ; preds = %19, %50
  %54 = phi i64 [ 0, %19 ], [ %31, %50 ]
  %55 = phi i32 [ 0, %19 ], [ %52, %50 ]
  br label %80

56:                                               ; preds = %12, %68
  %57 = phi i64 [ 0, %12 ], [ %71, %68 ]
  %58 = icmp eq i64 %57, 0
  %59 = icmp eq i64 %57, %8
  %60 = or i1 %58, %59
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = add nsw i64 %57, -1
  %63 = getelementptr inbounds i32, i32* %15, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !5
  %65 = getelementptr inbounds i32, i32* %15, i64 %57
  %66 = load i32, i32* %65, align 4, !tbaa !5
  %67 = add nsw i32 %66, %64
  br label %68

68:                                               ; preds = %56, %61
  %69 = phi i32 [ %67, %61 ], [ 1, %56 ]
  %70 = getelementptr inbounds i32, i32* %17, i64 %57
  store i32 %69, i32* %70, align 4, !tbaa !5
  %71 = add nuw nsw i64 %57, 1
  %72 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %9, i32 noundef %0) #3
  %73 = sext i32 %72 to i64
  %74 = icmp slt i64 %57, %73
  br i1 %74, label %56, label %75, !llvm.loop !12

75:                                               ; preds = %68, %7
  %76 = add nuw nsw i64 %8, 1
  %77 = icmp eq i64 %76, %3
  br i1 %77, label %18, label %7, !llvm.loop !13

78:                                               ; preds = %80, %1, %18
  %79 = phi i32 [ 0, %18 ], [ 0, %1 ], [ %85, %80 ]
  ret i32 %79

80:                                               ; preds = %53, %80
  %81 = phi i64 [ %86, %80 ], [ %54, %53 ]
  %82 = phi i32 [ %85, %80 ], [ %55, %53 ]
  %83 = getelementptr inbounds i32, i32* %22, i64 %81
  %84 = load i32, i32* %83, align 4, !tbaa !5
  %85 = add nsw i32 %84, %82
  %86 = add nuw nsw i64 %81, 2
  %87 = icmp ugt i64 %86, %20
  br i1 %87, label %78, label %80, !llvm.loop !14
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
