; ModuleID = 'benchmark/c_transcoder/NUMBER_N_DIGITS_NON_DECREASING_INTEGERS/NUMBER_N_DIGITS_NON_DECREASING_INTEGERS_processed.c'
source_filename = "benchmark/c_transcoder/NUMBER_N_DIGITS_NON_DECREASING_INTEGERS/NUMBER_N_DIGITS_NON_DECREASING_INTEGERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca [10 x i32], i64 %3, align 16
  %5 = bitcast [10 x i32]* %4 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %5, align 16, !tbaa !5
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 4
  %7 = bitcast i32* %6 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %7, align 16, !tbaa !5
  %8 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 8
  store i32 1, i32* %8, align 16, !tbaa !5
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 9
  store i32 1, i32* %9, align 4, !tbaa !5
  %10 = icmp slt i32 %0, 1
  br i1 %10, label %75, label %11

11:                                               ; preds = %1
  %12 = add nsw i64 %3, -1
  %13 = add nsw i64 %3, -2
  %14 = and i64 %12, 3
  %15 = icmp ult i64 %13, 3
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = and i64 %12, -4
  br label %29

18:                                               ; preds = %29, %11
  %19 = phi i64 [ 1, %11 ], [ %39, %29 ]
  %20 = icmp eq i64 %14, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ %25, %21 ], [ %19, %18 ]
  %23 = phi i64 [ %26, %21 ], [ 0, %18 ]
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %22, i64 9
  store i32 1, i32* %24, align 4, !tbaa !5
  %25 = add nuw nsw i64 %22, 1
  %26 = add i64 %23, 1
  %27 = icmp eq i64 %26, %14
  br i1 %27, label %28, label %21, !llvm.loop !9

28:                                               ; preds = %21, %18
  br i1 %10, label %75, label %42

29:                                               ; preds = %29, %16
  %30 = phi i64 [ 1, %16 ], [ %39, %29 ]
  %31 = phi i64 [ 0, %16 ], [ %40, %29 ]
  %32 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %30, i64 9
  store i32 1, i32* %32, align 4, !tbaa !5
  %33 = add nuw nsw i64 %30, 1
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %33, i64 9
  store i32 1, i32* %34, align 4, !tbaa !5
  %35 = add nuw nsw i64 %30, 2
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %35, i64 9
  store i32 1, i32* %36, align 4, !tbaa !5
  %37 = add nuw nsw i64 %30, 3
  %38 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %37, i64 9
  store i32 1, i32* %38, align 4, !tbaa !5
  %39 = add nuw nsw i64 %30, 4
  %40 = add i64 %31, 4
  %41 = icmp eq i64 %40, %17
  br i1 %41, label %18, label %29, !llvm.loop !11

42:                                               ; preds = %28, %42
  %43 = phi i32 [ %71, %42 ], [ 1, %28 ]
  %44 = phi i32 [ %69, %42 ], [ 1, %28 ]
  %45 = phi i32 [ %67, %42 ], [ 1, %28 ]
  %46 = phi i32 [ %65, %42 ], [ 1, %28 ]
  %47 = phi i32 [ %63, %42 ], [ 1, %28 ]
  %48 = phi i32 [ %61, %42 ], [ 1, %28 ]
  %49 = phi i32 [ %59, %42 ], [ 1, %28 ]
  %50 = phi i32 [ %57, %42 ], [ 1, %28 ]
  %51 = phi i32 [ %55, %42 ], [ 1, %28 ]
  %52 = phi i64 [ %73, %42 ], [ 1, %28 ]
  %53 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %52, i64 9
  %54 = load i32, i32* %53, align 4, !tbaa !5
  %55 = add nsw i32 %54, %51
  %56 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %52, i64 8
  store i32 %55, i32* %56, align 8, !tbaa !5
  %57 = add nsw i32 %55, %50
  %58 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %52, i64 7
  store i32 %57, i32* %58, align 4, !tbaa !5
  %59 = add nsw i32 %57, %49
  %60 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %52, i64 6
  store i32 %59, i32* %60, align 8, !tbaa !5
  %61 = add nsw i32 %59, %48
  %62 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %52, i64 5
  store i32 %61, i32* %62, align 4, !tbaa !5
  %63 = add nsw i32 %61, %47
  %64 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %52, i64 4
  store i32 %63, i32* %64, align 8, !tbaa !5
  %65 = add nsw i32 %63, %46
  %66 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %52, i64 3
  store i32 %65, i32* %66, align 4, !tbaa !5
  %67 = add nsw i32 %65, %45
  %68 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %52, i64 2
  store i32 %67, i32* %68, align 8, !tbaa !5
  %69 = add nsw i32 %67, %44
  %70 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %52, i64 1
  store i32 %69, i32* %70, align 4, !tbaa !5
  %71 = add nsw i32 %69, %43
  %72 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %52, i64 0
  store i32 %71, i32* %72, align 8, !tbaa !5
  %73 = add nuw nsw i64 %52, 1
  %74 = icmp eq i64 %73, %3
  br i1 %74, label %75, label %42, !llvm.loop !13

75:                                               ; preds = %42, %1, %28
  %76 = sext i32 %0 to i64
  %77 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %76, i64 0
  %78 = load i32, i32* %77, align 8, !tbaa !5
  ret i32 %78
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
