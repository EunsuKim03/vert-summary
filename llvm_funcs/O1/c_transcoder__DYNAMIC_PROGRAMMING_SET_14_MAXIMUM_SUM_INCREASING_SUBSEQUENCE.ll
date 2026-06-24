; ModuleID = 'benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SET_14_MAXIMUM_SUM_INCREASING_SUBSEQUENCE/DYNAMIC_PROGRAMMING_SET_14_MAXIMUM_SUM_INCREASING_SUBSEQUENCE_processed.c'
source_filename = "benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SET_14_MAXIMUM_SUM_INCREASING_SUBSEQUENCE/DYNAMIC_PROGRAMMING_SET_14_MAXIMUM_SUM_INCREASING_SUBSEQUENCE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = bitcast i32* %4 to i8*
  %8 = bitcast i32* %0 to i8*
  %9 = zext i32 %1 to i64
  %10 = shl nuw nsw i64 %9, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %7, i8* align 4 %8, i64 %10, i1 false), !tbaa !5
  br label %11

11:                                               ; preds = %6, %2
  %12 = icmp sgt i32 %1, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = zext i32 %1 to i64
  br label %15

15:                                               ; preds = %13, %39
  %16 = phi i64 [ 1, %13 ], [ %40, %39 ]
  %17 = getelementptr inbounds i32, i32* %0, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = getelementptr inbounds i32, i32* %4, i64 %16
  br label %24

20:                                               ; preds = %39, %11
  %21 = icmp sgt i32 %1, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %20
  %23 = zext i32 %1 to i64
  br label %42

24:                                               ; preds = %15, %36
  %25 = phi i64 [ 0, %15 ], [ %37, %36 ]
  %26 = getelementptr inbounds i32, i32* %0, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = icmp sgt i32 %18, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32, i32* %19, align 4, !tbaa !5
  %31 = getelementptr inbounds i32, i32* %4, i64 %25
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = add nsw i32 %32, %18
  %34 = icmp slt i32 %30, %33
  %35 = select i1 %34, i32 %33, i32 %30
  store i32 %35, i32* %19, align 4
  br label %36

36:                                               ; preds = %29, %24
  %37 = add nuw nsw i64 %25, 1
  %38 = icmp eq i64 %37, %16
  br i1 %38, label %39, label %24, !llvm.loop !9

39:                                               ; preds = %36
  %40 = add nuw nsw i64 %16, 1
  %41 = icmp eq i64 %40, %14
  br i1 %41, label %20, label %15, !llvm.loop !12

42:                                               ; preds = %22, %42
  %43 = phi i64 [ 0, %22 ], [ %49, %42 ]
  %44 = phi i32 [ 0, %22 ], [ %48, %42 ]
  %45 = getelementptr inbounds i32, i32* %4, i64 %43
  %46 = load i32, i32* %45, align 4, !tbaa !5
  %47 = icmp slt i32 %44, %46
  %48 = select i1 %47, i32 %46, i32 %44
  %49 = add nuw nsw i64 %43, 1
  %50 = icmp eq i64 %49, %23
  br i1 %50, label %51, label %42, !llvm.loop !13

51:                                               ; preds = %42, %20
  %52 = phi i32 [ 0, %20 ], [ %48, %42 ]
  ret i32 %52
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

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
