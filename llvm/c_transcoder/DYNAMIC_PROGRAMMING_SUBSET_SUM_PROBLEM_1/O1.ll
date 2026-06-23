; ModuleID = 'benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_processed.c'
source_filename = "benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add nsw i32 %1, 1
  %5 = zext i32 %4 to i64
  %6 = add i32 %2, 1
  %7 = zext i32 %6 to i64
  %8 = mul nuw i64 %7, %5
  %9 = alloca i8, i64 %8, align 16
  %10 = icmp slt i32 %1, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = add i32 %1, 1
  %13 = zext i32 %12 to i64
  br label %19

14:                                               ; preds = %19, %3
  %15 = icmp slt i32 %2, 1
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds i8, i8* %9, i64 1
  %18 = zext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %17, i8 0, i64 %18, i1 false), !tbaa !5
  br label %25

19:                                               ; preds = %11, %19
  %20 = phi i64 [ 0, %11 ], [ %23, %19 ]
  %21 = mul nuw nsw i64 %20, %7
  %22 = getelementptr inbounds i8, i8* %9, i64 %21
  store i8 1, i8* %22, align 1, !tbaa !5
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %13
  br i1 %24, label %14, label %19, !llvm.loop !9

25:                                               ; preds = %16, %14
  %26 = icmp slt i32 %1, 1
  br i1 %26, label %48, label %27

27:                                               ; preds = %25
  %28 = icmp slt i32 %2, 1
  %29 = add i32 %1, 1
  %30 = zext i32 %29 to i64
  %31 = zext i32 %6 to i64
  br label %32

32:                                               ; preds = %27, %56
  %33 = phi i64 [ 1, %27 ], [ %57, %56 ]
  br i1 %28, label %56, label %34

34:                                               ; preds = %32
  %35 = add nsw i64 %33, -1
  %36 = getelementptr inbounds i32, i32* %0, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !12
  %38 = mul nuw nsw i64 %35, %7
  %39 = getelementptr inbounds i8, i8* %9, i64 %38
  %40 = mul nuw nsw i64 %33, %7
  %41 = getelementptr inbounds i8, i8* %9, i64 %40
  %42 = mul nuw nsw i64 %35, %7
  %43 = getelementptr inbounds i8, i8* %9, i64 %42
  %44 = mul nuw nsw i64 %33, %7
  %45 = getelementptr inbounds i8, i8* %9, i64 %44
  %46 = sext i32 %37 to i64
  %47 = sext i32 %37 to i64
  br label %59

48:                                               ; preds = %56, %25
  %49 = sext i32 %1 to i64
  %50 = mul nsw i64 %7, %49
  %51 = getelementptr inbounds i8, i8* %9, i64 %50
  %52 = sext i32 %2 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1, !tbaa !5, !range !14
  %55 = zext i8 %54 to i32
  ret i32 %55

56:                                               ; preds = %79, %32
  %57 = add nuw nsw i64 %33, 1
  %58 = icmp eq i64 %57, %30
  br i1 %58, label %48, label %32, !llvm.loop !15

59:                                               ; preds = %34, %79
  %60 = phi i64 [ 1, %34 ], [ %80, %79 ]
  %61 = icmp slt i64 %60, %47
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %43, i64 %60
  %64 = load i8, i8* %63, align 1, !tbaa !5, !range !14
  %65 = getelementptr inbounds i8, i8* %45, i64 %60
  store i8 %64, i8* %65, align 1, !tbaa !5
  br label %79

66:                                               ; preds = %59
  %67 = getelementptr inbounds i8, i8* %39, i64 %60
  %68 = load i8, i8* %67, align 1, !tbaa !5, !range !14
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = sub nsw i64 %60, %46
  %72 = getelementptr inbounds i8, i8* %39, i64 %71
  %73 = load i8, i8* %72, align 1, !tbaa !5, !range !14
  %74 = icmp ne i8 %73, 0
  br label %75

75:                                               ; preds = %70, %66
  %76 = phi i1 [ true, %66 ], [ %74, %70 ]
  %77 = getelementptr inbounds i8, i8* %41, i64 %60
  %78 = zext i1 %76 to i8
  store i8 %78, i8* %77, align 1, !tbaa !5
  br label %79

79:                                               ; preds = %62, %75
  %80 = add nuw nsw i64 %60, 1
  %81 = icmp eq i64 %80, %31
  br i1 %81, label %56, label %59, !llvm.loop !16
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{i8 0, i8 2}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
