; ModuleID = 'benchmark/c_transcoder/LARGEST_SUBARRAY_WITH_EQUAL_NUMBER_OF_0S_AND_1S/LARGEST_SUBARRAY_WITH_EQUAL_NUMBER_OF_0S_AND_1S_processed.c'
source_filename = "benchmark/c_transcoder/LARGEST_SUBARRAY_WITH_EQUAL_NUMBER_OF_0S_AND_1S/LARGEST_SUBARRAY_WITH_EQUAL_NUMBER_OF_0S_AND_1S_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"No such subarray\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  %6 = sext i32 %1 to i64
  %7 = zext i32 %5 to i64
  %8 = zext i32 %1 to i64
  br label %16

9:                                                ; preds = %28, %16
  %10 = phi i32 [ %19, %16 ], [ %43, %28 ]
  %11 = add nuw nsw i64 %18, 1
  %12 = icmp eq i64 %20, %7
  br i1 %12, label %13, label %16, !llvm.loop !5

13:                                               ; preds = %9, %2
  %14 = phi i32 [ -1, %2 ], [ %10, %9 ]
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  ret i32 %14

16:                                               ; preds = %4, %9
  %17 = phi i64 [ 0, %4 ], [ %20, %9 ]
  %18 = phi i64 [ 1, %4 ], [ %11, %9 ]
  %19 = phi i32 [ -1, %4 ], [ %10, %9 ]
  %20 = add nuw nsw i64 %17, 1
  %21 = icmp slt i64 %20, %6
  br i1 %21, label %22, label %9

22:                                               ; preds = %16
  %23 = getelementptr inbounds i32, i32* %0, i64 %17
  %24 = load i32, i32* %23, align 4, !tbaa !8
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 -1, i32 1
  %27 = trunc i64 %17 to i32
  br label %28

28:                                               ; preds = %22, %28
  %29 = phi i64 [ %18, %22 ], [ %44, %28 ]
  %30 = phi i32 [ %26, %22 ], [ %36, %28 ]
  %31 = phi i32 [ %19, %22 ], [ %43, %28 ]
  %32 = getelementptr inbounds i32, i32* %0, i64 %29
  %33 = load i32, i32* %32, align 4, !tbaa !8
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 -1, i32 1
  %36 = add nsw i32 %35, %30
  %37 = icmp eq i32 %36, 0
  %38 = trunc i64 %29 to i32
  %39 = sub nsw i32 %38, %27
  %40 = icmp sgt i32 %31, %39
  %41 = add nsw i32 %39, 1
  %42 = select i1 %40, i32 %31, i32 %41
  %43 = select i1 %37, i32 %42, i32 %31
  %44 = add nuw nsw i64 %29, 1
  %45 = icmp eq i64 %44, %8
  br i1 %45, label %9, label %28, !llvm.loop !12
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !6, !7}
