; ModuleID = 'benchmark/c_transcoder/COUNT_NUMBER_INCREASING_SUBSEQUENCES_SIZE_K/COUNT_NUMBER_INCREASING_SUBSEQUENCES_SIZE_K_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_NUMBER_INCREASING_SUBSEQUENCES_SIZE_K/COUNT_NUMBER_INCREASING_SUBSEQUENCES_SIZE_K_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = zext i32 %2 to i64
  %5 = zext i32 %1 to i64
  %6 = mul nuw i64 %4, %5
  %7 = alloca i32, i64 %6, align 16
  %8 = bitcast i32* %7 to i8*
  %9 = shl nuw i64 %6, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 %9, i1 false)
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = zext i32 %1 to i64
  br label %20

13:                                               ; preds = %20, %3
  %14 = icmp sgt i32 %2, 1
  br i1 %14, label %15, label %35

15:                                               ; preds = %13
  %16 = sext i32 %1 to i64
  %17 = add i32 %2, -1
  %18 = zext i32 %17 to i64
  %19 = zext i32 %1 to i64
  br label %25

20:                                               ; preds = %11, %20
  %21 = phi i64 [ 0, %11 ], [ %23, %20 ]
  %22 = getelementptr inbounds i32, i32* %7, i64 %21
  store i32 1, i32* %22, align 4, !tbaa !5
  %23 = add nuw nsw i64 %21, 1
  %24 = icmp eq i64 %23, %12
  br i1 %24, label %13, label %20, !llvm.loop !9

25:                                               ; preds = %15, %43
  %26 = phi i64 [ 1, %15 ], [ %44, %43 ]
  %27 = phi i64 [ 0, %15 ], [ %45, %43 ]
  %28 = icmp slt i64 %26, %16
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = mul nuw nsw i64 %26, %5
  %31 = getelementptr inbounds i32, i32* %7, i64 %30
  %32 = add nsw i64 %26, -1
  %33 = mul nuw nsw i64 %32, %5
  %34 = getelementptr inbounds i32, i32* %7, i64 %33
  br label %47

35:                                               ; preds = %43, %13
  %36 = add i32 %2, -1
  %37 = icmp sgt i32 %2, %1
  br i1 %37, label %70, label %38

38:                                               ; preds = %35
  %39 = sext i32 %36 to i64
  %40 = mul nsw i64 %39, %5
  %41 = getelementptr inbounds i32, i32* %7, i64 %40
  %42 = sext i32 %36 to i64
  br label %72

43:                                               ; preds = %54, %25
  %44 = add nuw nsw i64 %26, 1
  %45 = add nuw nsw i64 %27, 1
  %46 = icmp eq i64 %45, %18
  br i1 %46, label %35, label %25, !llvm.loop !12

47:                                               ; preds = %29, %54
  %48 = phi i64 [ %26, %29 ], [ %55, %54 ]
  %49 = getelementptr inbounds i32, i32* %31, i64 %48
  store i32 0, i32* %49, align 4, !tbaa !5
  %50 = icmp ugt i64 %26, %48
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds i32, i32* %0, i64 %48
  %53 = load i32, i32* %52, align 4, !tbaa !5
  br label %57

54:                                               ; preds = %67, %47
  %55 = add nuw nsw i64 %48, 1
  %56 = icmp eq i64 %55, %19
  br i1 %56, label %43, label %47, !llvm.loop !13

57:                                               ; preds = %51, %67
  %58 = phi i64 [ %27, %51 ], [ %68, %67 ]
  %59 = getelementptr inbounds i32, i32* %0, i64 %58
  %60 = load i32, i32* %59, align 4, !tbaa !5
  %61 = icmp slt i32 %60, %53
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = getelementptr inbounds i32, i32* %34, i64 %58
  %64 = load i32, i32* %63, align 4, !tbaa !5
  %65 = load i32, i32* %49, align 4, !tbaa !5
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %49, align 4, !tbaa !5
  br label %67

67:                                               ; preds = %57, %62
  %68 = add nuw nsw i64 %58, 1
  %69 = icmp eq i64 %68, %48
  br i1 %69, label %54, label %57, !llvm.loop !14

70:                                               ; preds = %72, %35
  %71 = phi i32 [ 0, %35 ], [ %77, %72 ]
  ret i32 %71

72:                                               ; preds = %38, %72
  %73 = phi i64 [ %42, %38 ], [ %78, %72 ]
  %74 = phi i32 [ 0, %38 ], [ %77, %72 ]
  %75 = getelementptr inbounds i32, i32* %41, i64 %73
  %76 = load i32, i32* %75, align 4, !tbaa !5
  %77 = add nsw i32 %76, %74
  %78 = add nsw i64 %73, 1
  %79 = trunc i64 %78 to i32
  %80 = icmp eq i32 %79, %1
  br i1 %80, label %70, label %72, !llvm.loop !15
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }

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
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
