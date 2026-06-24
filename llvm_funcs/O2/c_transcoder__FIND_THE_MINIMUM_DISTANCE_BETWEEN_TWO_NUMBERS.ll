; ModuleID = 'benchmark/c_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %47

6:                                                ; preds = %4
  %7 = zext i32 %1 to i64
  %8 = zext i32 %1 to i64
  br label %13

9:                                                ; preds = %43, %13
  %10 = phi i32 [ %16, %13 ], [ %44, %43 ]
  %11 = add nuw nsw i64 %15, 1
  %12 = icmp eq i64 %17, %8
  br i1 %12, label %47, label %13, !llvm.loop !5

13:                                               ; preds = %6, %9
  %14 = phi i64 [ 0, %6 ], [ %17, %9 ]
  %15 = phi i64 [ 1, %6 ], [ %11, %9 ]
  %16 = phi i32 [ 2147483647, %6 ], [ %10, %9 ]
  %17 = add nuw nsw i64 %14, 1
  %18 = icmp ult i64 %17, %7
  br i1 %18, label %19, label %9

19:                                               ; preds = %13
  %20 = getelementptr inbounds i32, i32* %0, i64 %14
  %21 = load i32, i32* %20, align 4, !tbaa !7
  %22 = icmp eq i32 %21, %2
  %23 = icmp eq i32 %21, %3
  %24 = trunc i64 %14 to i32
  br label %25

25:                                               ; preds = %19, %43
  %26 = phi i64 [ %15, %19 ], [ %45, %43 ]
  %27 = phi i32 [ %16, %19 ], [ %44, %43 ]
  %28 = trunc i64 %26 to i32
  br i1 %22, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds i32, i32* %0, i64 %26
  %31 = load i32, i32* %30, align 4, !tbaa !7
  %32 = icmp eq i32 %31, %3
  br i1 %32, label %38, label %33

33:                                               ; preds = %29, %25
  br i1 %23, label %34, label %43

34:                                               ; preds = %33
  %35 = getelementptr inbounds i32, i32* %0, i64 %26
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %37 = icmp eq i32 %36, %2
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %29
  %39 = sub nsw i32 %24, %28
  %40 = tail call i32 @llvm.abs.i32(i32 %39, i1 true)
  %41 = icmp sgt i32 %27, %40
  %42 = select i1 %41, i32 %40, i32 %27
  br label %43

43:                                               ; preds = %38, %33, %34
  %44 = phi i32 [ %27, %34 ], [ %27, %33 ], [ %42, %38 ]
  %45 = add nuw nsw i64 %26, 1
  %46 = icmp eq i64 %45, %8
  br i1 %46, label %9, label %25, !llvm.loop !11

47:                                               ; preds = %9, %4
  %48 = phi i32 [ 2147483647, %4 ], [ %10, %9 ]
  ret i32 %48
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6}
