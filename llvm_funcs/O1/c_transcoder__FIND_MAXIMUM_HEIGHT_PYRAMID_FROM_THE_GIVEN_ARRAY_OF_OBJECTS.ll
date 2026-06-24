; ModuleID = 'benchmark/c_transcoder/FIND_MAXIMUM_HEIGHT_PYRAMID_FROM_THE_GIVEN_ARRAY_OF_OBJECTS/FIND_MAXIMUM_HEIGHT_PYRAMID_FROM_THE_GIVEN_ARRAY_OF_OBJECTS_processed.c'
source_filename = "benchmark/c_transcoder/FIND_MAXIMUM_HEIGHT_PYRAMID_FROM_THE_GIVEN_ARRAY_OF_OBJECTS/FIND_MAXIMUM_HEIGHT_PYRAMID_FROM_THE_GIVEN_ARRAY_OF_OBJECTS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #2
  %6 = icmp sgt i32 %1, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* %0, align 4, !tbaa !5
  %9 = zext i32 %1 to i64
  br label %12

10:                                               ; preds = %28, %2
  %11 = phi i32 [ 1, %2 ], [ %29, %28 ]
  ret i32 %11

12:                                               ; preds = %7, %28
  %13 = phi i64 [ 1, %7 ], [ %34, %28 ]
  %14 = phi i32 [ 0, %7 ], [ %33, %28 ]
  %15 = phi i32 [ 0, %7 ], [ %32, %28 ]
  %16 = phi i32 [ 1, %7 ], [ %31, %28 ]
  %17 = phi i32 [ %8, %7 ], [ %30, %28 ]
  %18 = phi i32 [ 1, %7 ], [ %29, %28 ]
  %19 = getelementptr inbounds i32, i32* %0, i64 %13
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = add nsw i32 %20, %14
  %22 = add nsw i32 %15, 1
  %23 = icmp sle i32 %21, %17
  %24 = icmp slt i32 %15, %16
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %12
  %27 = add nsw i32 %18, 1
  br label %28

28:                                               ; preds = %12, %26
  %29 = phi i32 [ %27, %26 ], [ %18, %12 ]
  %30 = phi i32 [ %21, %26 ], [ %17, %12 ]
  %31 = phi i32 [ %22, %26 ], [ %16, %12 ]
  %32 = phi i32 [ 0, %26 ], [ %22, %12 ]
  %33 = phi i32 [ 0, %26 ], [ %21, %12 ]
  %34 = add nuw nsw i64 %13, 1
  %35 = icmp eq i64 %34, %9
  br i1 %35, label %10, label %12, !llvm.loop !9
}

declare i32 @sort(...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
