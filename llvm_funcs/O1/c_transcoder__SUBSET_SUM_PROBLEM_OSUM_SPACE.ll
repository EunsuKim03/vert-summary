; ModuleID = 'benchmark/c_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_processed.c'
source_filename = "benchmark/c_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %2, 1
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 1
  %7 = alloca i8, i64 %6, align 16
  %8 = icmp slt i32 %1, 0
  br i1 %8, label %43, label %9

9:                                                ; preds = %3
  %10 = icmp slt i32 %2, 0
  %11 = add i32 %1, 1
  %12 = zext i32 %11 to i64
  %13 = zext i32 %4 to i64
  br label %14

14:                                               ; preds = %9, %52
  %15 = phi i64 [ 0, %9 ], [ %53, %52 ]
  br i1 %10, label %52, label %16

16:                                               ; preds = %14
  %17 = icmp eq i64 %15, 0
  %18 = add nsw i64 %15, -1
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = trunc i64 %15 to i32
  %21 = and i32 %20, 1
  %22 = xor i32 %21, 1
  %23 = mul nuw i32 %22, %4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %7, i64 %24
  %26 = mul nuw i32 %21, %4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %7, i64 %27
  %29 = trunc i64 %15 to i32
  %30 = and i32 %29, 1
  %31 = xor i32 %30, 1
  %32 = mul nuw i32 %31, %4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %7, i64 %33
  %35 = mul nuw i32 %30, %4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %7, i64 %36
  %38 = trunc i64 %15 to i32
  %39 = and i32 %38, 1
  %40 = mul nuw i32 %39, %4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %7, i64 %41
  br label %55

43:                                               ; preds = %52, %3
  %44 = srem i32 %1, 2
  %45 = sext i32 %44 to i64
  %46 = mul nsw i64 %5, %45
  %47 = getelementptr inbounds i8, i8* %7, i64 %46
  %48 = sext i32 %2 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1, !tbaa !5, !range !9
  %51 = zext i8 %50 to i32
  ret i32 %51

52:                                               ; preds = %85, %14
  %53 = add nuw nsw i64 %15, 1
  %54 = icmp eq i64 %53, %12
  br i1 %54, label %43, label %14, !llvm.loop !10

55:                                               ; preds = %16, %85
  %56 = phi i64 [ 0, %16 ], [ %86, %85 ]
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i8 1, i8* %42, align 1, !tbaa !5
  br label %85

59:                                               ; preds = %55
  br i1 %17, label %60, label %62

60:                                               ; preds = %59
  %61 = getelementptr inbounds i8, i8* %7, i64 %56
  store i8 0, i8* %61, align 1, !tbaa !5
  br label %85

62:                                               ; preds = %59
  %63 = load i32, i32* %19, align 4, !tbaa !13
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %56, %64
  br i1 %65, label %81, label %66

66:                                               ; preds = %62
  %67 = trunc i64 %56 to i32
  %68 = sub nsw i32 %67, %63
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %25, i64 %69
  %71 = load i8, i8* %70, align 1, !tbaa !5, !range !9
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = getelementptr inbounds i8, i8* %25, i64 %56
  %75 = load i8, i8* %74, align 1, !tbaa !5, !range !9
  %76 = icmp ne i8 %75, 0
  br label %77

77:                                               ; preds = %73, %66
  %78 = phi i1 [ true, %66 ], [ %76, %73 ]
  %79 = getelementptr inbounds i8, i8* %28, i64 %56
  %80 = zext i1 %78 to i8
  store i8 %80, i8* %79, align 1, !tbaa !5
  br label %85

81:                                               ; preds = %62
  %82 = getelementptr inbounds i8, i8* %34, i64 %56
  %83 = load i8, i8* %82, align 1, !tbaa !5, !range !9
  %84 = getelementptr inbounds i8, i8* %37, i64 %56
  store i8 %83, i8* %84, align 1, !tbaa !5
  br label %85

85:                                               ; preds = %58, %77, %81, %60
  %86 = add nuw nsw i64 %56, 1
  %87 = icmp eq i64 %86, %13
  br i1 %87, label %52, label %55, !llvm.loop !15
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
!6 = !{!"_Bool", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{i8 0, i8 2}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = distinct !{!15, !11, !12}
