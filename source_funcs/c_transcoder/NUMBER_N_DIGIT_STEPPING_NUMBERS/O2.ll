; ModuleID = 'benchmark/c_transcoder/NUMBER_N_DIGIT_STEPPING_NUMBERS/NUMBER_N_DIGIT_STEPPING_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/NUMBER_N_DIGIT_STEPPING_NUMBERS/NUMBER_N_DIGIT_STEPPING_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i64 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca [10 x i32], i64 %3, align 16
  %5 = icmp eq i32 %0, 1
  br i1 %5, label %80, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 1, i64 0
  %8 = bitcast i32* %7 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %8, align 8, !tbaa !5
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 1, i64 4
  %10 = bitcast i32* %9 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %10, align 8, !tbaa !5
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 1, i64 8
  store i32 1, i32* %11, align 8, !tbaa !5
  %12 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 1, i64 9
  store i32 1, i32* %12, align 4, !tbaa !5
  %13 = icmp slt i32 %0, 2
  br i1 %13, label %14, label %51

14:                                               ; preds = %51, %6
  %15 = sext i32 %0 to i64
  %16 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %15, i64 1
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %15, i64 2
  %20 = load i32, i32* %19, align 8, !tbaa !5
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %15, i64 3
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %15, i64 4
  %28 = load i32, i32* %27, align 8, !tbaa !5
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %15, i64 5
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %15, i64 6
  %36 = load i32, i32* %35, align 8, !tbaa !5
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %15, i64 7
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %15, i64 8
  %44 = load i32, i32* %43, align 8, !tbaa !5
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %15, i64 9
  %48 = load i32, i32* %47, align 4, !tbaa !5
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  br label %80

51:                                               ; preds = %6, %51
  %52 = phi i64 [ %78, %51 ], [ 2, %6 ]
  %53 = add nsw i64 %52, -1
  %54 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %53, i64 8
  %55 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %52, i64 9
  %56 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %53, i64 1
  %57 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %52, i64 0
  %58 = load i32, i32* %56, align 4, !tbaa !5
  store i32 %58, i32* %57, align 8, !tbaa !5
  %59 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %53, i64 0
  %60 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %53, i64 2
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %52, i64 1
  %62 = bitcast i32* %59 to <4 x i32>*
  %63 = load <4 x i32>, <4 x i32>* %62, align 8, !tbaa !5
  %64 = bitcast i32* %60 to <4 x i32>*
  %65 = load <4 x i32>, <4 x i32>* %64, align 8, !tbaa !5
  %66 = add nsw <4 x i32> %65, %63
  %67 = bitcast i32* %61 to <4 x i32>*
  store <4 x i32> %66, <4 x i32>* %67, align 4, !tbaa !5
  %68 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %53, i64 4
  %69 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %53, i64 6
  %70 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 %52, i64 5
  %71 = bitcast i32* %68 to <4 x i32>*
  %72 = load <4 x i32>, <4 x i32>* %71, align 8, !tbaa !5
  %73 = bitcast i32* %69 to <4 x i32>*
  %74 = load <4 x i32>, <4 x i32>* %73, align 8, !tbaa !5
  %75 = add nsw <4 x i32> %74, %72
  %76 = bitcast i32* %70 to <4 x i32>*
  store <4 x i32> %75, <4 x i32>* %76, align 4, !tbaa !5
  %77 = load i32, i32* %54, align 8, !tbaa !5
  store i32 %77, i32* %55, align 4, !tbaa !5
  %78 = add nuw nsw i64 %52, 1
  %79 = icmp eq i64 %78, %3
  br i1 %79, label %14, label %51, !llvm.loop !9

80:                                               ; preds = %14, %1
  %81 = phi i64 [ 10, %1 ], [ %50, %14 ]
  ret i64 %81
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
!10 = !{!"llvm.loop.mustprogress"}
