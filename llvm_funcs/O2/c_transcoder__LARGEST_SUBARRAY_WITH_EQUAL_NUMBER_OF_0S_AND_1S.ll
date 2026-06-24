; ModuleID = 'benchmark/c_transcoder/LARGEST_SUBARRAY_WITH_EQUAL_NUMBER_OF_0S_AND_1S/LARGEST_SUBARRAY_WITH_EQUAL_NUMBER_OF_0S_AND_1S_processed.c'
source_filename = "benchmark/c_transcoder/LARGEST_SUBARRAY_WITH_EQUAL_NUMBER_OF_0S_AND_1S/LARGEST_SUBARRAY_WITH_EQUAL_NUMBER_OF_0S_AND_1S_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"No such subarray\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %43

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -1
  %6 = zext i32 %1 to i64
  %7 = zext i32 %5 to i64
  %8 = zext i32 %1 to i64
  br label %13

9:                                                ; preds = %25, %13
  %10 = phi i32 [ %16, %13 ], [ %40, %25 ]
  %11 = add nuw nsw i64 %15, 1
  %12 = icmp eq i64 %17, %7
  br i1 %12, label %43, label %13, !llvm.loop !5

13:                                               ; preds = %4, %9
  %14 = phi i64 [ 0, %4 ], [ %17, %9 ]
  %15 = phi i64 [ 1, %4 ], [ %11, %9 ]
  %16 = phi i32 [ -1, %4 ], [ %10, %9 ]
  %17 = add nuw nsw i64 %14, 1
  %18 = icmp ult i64 %17, %6
  br i1 %18, label %19, label %9

19:                                               ; preds = %13
  %20 = getelementptr inbounds i32, i32* %0, i64 %14
  %21 = load i32, i32* %20, align 4, !tbaa !7
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 -1, i32 1
  %24 = trunc i64 %14 to i32
  br label %25

25:                                               ; preds = %19, %25
  %26 = phi i64 [ %15, %19 ], [ %41, %25 ]
  %27 = phi i32 [ %23, %19 ], [ %33, %25 ]
  %28 = phi i32 [ %16, %19 ], [ %40, %25 ]
  %29 = getelementptr inbounds i32, i32* %0, i64 %26
  %30 = load i32, i32* %29, align 4, !tbaa !7
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 -1, i32 1
  %33 = add nsw i32 %32, %27
  %34 = icmp eq i32 %33, 0
  %35 = trunc i64 %26 to i32
  %36 = sub nsw i32 %35, %24
  %37 = icmp sgt i32 %28, %36
  %38 = add nsw i32 %36, 1
  %39 = select i1 %37, i32 %28, i32 %38
  %40 = select i1 %34, i32 %39, i32 %28
  %41 = add nuw nsw i64 %26, 1
  %42 = icmp eq i64 %41, %8
  br i1 %42, label %9, label %25, !llvm.loop !11

43:                                               ; preds = %9, %2
  %44 = phi i32 [ -1, %2 ], [ %10, %9 ]
  %45 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  ret i32 %44
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6}
