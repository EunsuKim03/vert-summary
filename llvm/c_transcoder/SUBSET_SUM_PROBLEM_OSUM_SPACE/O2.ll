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
  br i1 %8, label %29, label %9

9:                                                ; preds = %3
  %10 = icmp slt i32 %2, 0
  %11 = add nuw i32 %1, 1
  %12 = zext i32 %11 to i64
  %13 = icmp eq i32 %2, 0
  br label %14

14:                                               ; preds = %9, %38
  %15 = phi i64 [ 0, %9 ], [ %39, %38 ]
  br i1 %10, label %38, label %16

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
  %26 = mul nuw nsw i32 %21, %4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %7, i64 %27
  store i8 1, i8* %28, align 1, !tbaa !5
  br i1 %13, label %38, label %41

29:                                               ; preds = %38, %3
  %30 = srem i32 %1, 2
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 %5, %31
  %33 = getelementptr inbounds i8, i8* %7, i64 %32
  %34 = sext i32 %2 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1, !tbaa !5, !range !9
  %37 = zext i8 %36 to i32
  ret i32 %37

38:                                               ; preds = %68, %16, %14
  %39 = add nuw nsw i64 %15, 1
  %40 = icmp eq i64 %39, %12
  br i1 %40, label %29, label %14, !llvm.loop !10

41:                                               ; preds = %16, %68
  %42 = phi i64 [ %69, %68 ], [ 1, %16 ]
  br i1 %17, label %43, label %45

43:                                               ; preds = %41
  %44 = getelementptr inbounds i8, i8* %7, i64 %42
  store i8 0, i8* %44, align 1, !tbaa !5
  br label %68

45:                                               ; preds = %41
  %46 = load i32, i32* %19, align 4, !tbaa !12
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %42, %47
  br i1 %48, label %64, label %49

49:                                               ; preds = %45
  %50 = trunc i64 %42 to i32
  %51 = sub nsw i32 %50, %46
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %25, i64 %52
  %54 = load i8, i8* %53, align 1, !tbaa !5, !range !9
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = getelementptr inbounds i8, i8* %25, i64 %42
  %58 = load i8, i8* %57, align 1, !tbaa !5, !range !9
  %59 = icmp ne i8 %58, 0
  br label %60

60:                                               ; preds = %56, %49
  %61 = phi i1 [ true, %49 ], [ %59, %56 ]
  %62 = getelementptr inbounds i8, i8* %28, i64 %42
  %63 = zext i1 %61 to i8
  store i8 %63, i8* %62, align 1, !tbaa !5
  br label %68

64:                                               ; preds = %45
  %65 = getelementptr inbounds i8, i8* %25, i64 %42
  %66 = load i8, i8* %65, align 1, !tbaa !5, !range !9
  %67 = getelementptr inbounds i8, i8* %28, i64 %42
  store i8 %66, i8* %67, align 1, !tbaa !5
  br label %68

68:                                               ; preds = %60, %64, %43
  %69 = add nuw nsw i64 %42, 1
  %70 = icmp eq i64 %69, %5
  br i1 %70, label %38, label %41, !llvm.loop !14
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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = distinct !{!14, !11, !15}
!15 = !{!"llvm.loop.peeled.count", i32 1}
