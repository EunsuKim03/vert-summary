; ModuleID = 'benchmark/c_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = sext i32 %1 to i64
  %6 = zext i32 %1 to i64
  %7 = zext i32 %1 to i64
  br label %13

8:                                                ; preds = %43
  %9 = sub nsw i32 %44, %45
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ 0, %2 ]
  %12 = call i32 @llvm.abs.i32(i32 %11, i1 true)
  ret i32 %12

13:                                               ; preds = %4, %43
  %14 = phi i64 [ 0, %4 ], [ %18, %43 ]
  %15 = phi i64 [ 1, %4 ], [ %46, %43 ]
  %16 = phi i32 [ 0, %4 ], [ %45, %43 ]
  %17 = phi i32 [ 0, %4 ], [ %44, %43 ]
  %18 = add nuw nsw i64 %14, 1
  %19 = icmp slt i64 %18, %5
  br i1 %19, label %20, label %35

20:                                               ; preds = %13
  %21 = getelementptr inbounds i32, i32* %0, i64 %14
  %22 = load i32, i32* %21, align 4, !tbaa !5
  br label %23

23:                                               ; preds = %20, %32
  %24 = phi i64 [ %15, %20 ], [ %33, %32 ]
  %25 = getelementptr inbounds i32, i32* %0, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = icmp eq i32 %22, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = getelementptr inbounds i32, i32* %0, i64 %14
  %30 = and i64 %24, 4294967295
  %31 = getelementptr inbounds i32, i32* %0, i64 %30
  store i32 0, i32* %31, align 4, !tbaa !5
  store i32 0, i32* %29, align 4, !tbaa !5
  br label %43

32:                                               ; preds = %23
  %33 = add nuw nsw i64 %24, 1
  %34 = icmp eq i64 %33, %7
  br i1 %34, label %35, label %23, !llvm.loop !9

35:                                               ; preds = %32, %13
  %36 = getelementptr inbounds i32, i32* %0, i64 %14
  %37 = load i32, i32* %36, align 4, !tbaa !5
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = add nsw i32 %37, %17
  br label %43

41:                                               ; preds = %35
  %42 = add nsw i32 %37, %16
  br label %43

43:                                               ; preds = %28, %39, %41
  %44 = phi i32 [ %40, %39 ], [ %17, %41 ], [ %17, %28 ]
  %45 = phi i32 [ %16, %39 ], [ %42, %41 ], [ %16, %28 ]
  %46 = add nuw nsw i64 %15, 1
  %47 = icmp eq i64 %18, %6
  br i1 %47, label %8, label %13, !llvm.loop !12
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

attributes #0 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

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
