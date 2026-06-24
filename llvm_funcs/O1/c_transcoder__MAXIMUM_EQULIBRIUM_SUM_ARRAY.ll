; ModuleID = 'benchmark/c_transcoder/MAXIMUM_EQULIBRIUM_SUM_ARRAY/MAXIMUM_EQULIBRIUM_SUM_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_EQULIBRIUM_SUM_ARRAY/MAXIMUM_EQULIBRIUM_SUM_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -1
  %6 = sext i32 %1 to i64
  %7 = add nsw i64 %6, -1
  %8 = sext i32 %5 to i64
  %9 = zext i32 %1 to i64
  br label %12

10:                                               ; preds = %42, %2
  %11 = phi i32 [ -2147483648, %2 ], [ %43, %42 ]
  ret i32 %11

12:                                               ; preds = %4, %42
  %13 = phi i64 [ 0, %4 ], [ %44, %42 ]
  %14 = phi i32 [ -2147483648, %4 ], [ %43, %42 ]
  %15 = getelementptr inbounds i32, i32* %0, i64 %13
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = icmp eq i64 %13, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %21, %12
  %19 = phi i32 [ %16, %12 ], [ %26, %21 ]
  %20 = icmp slt i64 %13, %8
  br i1 %20, label %32, label %29

21:                                               ; preds = %12, %21
  %22 = phi i64 [ %27, %21 ], [ 0, %12 ]
  %23 = phi i32 [ %26, %21 ], [ %16, %12 ]
  %24 = getelementptr inbounds i32, i32* %0, i64 %22
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = add nsw i32 %25, %23
  %27 = add nuw nsw i64 %22, 1
  %28 = icmp eq i64 %27, %13
  br i1 %28, label %18, label %21, !llvm.loop !9

29:                                               ; preds = %32, %18
  %30 = phi i32 [ %16, %18 ], [ %37, %32 ]
  %31 = icmp eq i32 %19, %30
  br i1 %31, label %40, label %42

32:                                               ; preds = %18, %32
  %33 = phi i64 [ %38, %32 ], [ %7, %18 ]
  %34 = phi i32 [ %37, %32 ], [ %16, %18 ]
  %35 = getelementptr inbounds i32, i32* %0, i64 %33
  %36 = load i32, i32* %35, align 4, !tbaa !5
  %37 = add nsw i32 %36, %34
  %38 = add nsw i64 %33, -1
  %39 = icmp sgt i64 %38, %13
  br i1 %39, label %32, label %29, !llvm.loop !12

40:                                               ; preds = %29
  %41 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %14, i32 noundef %19) #2
  br label %42

42:                                               ; preds = %40, %29
  %43 = phi i32 [ %41, %40 ], [ %14, %29 ]
  %44 = add nuw nsw i64 %13, 1
  %45 = icmp eq i64 %44, %9
  br i1 %45, label %10, label %12, !llvm.loop !13
}

declare i32 @max(...) local_unnamed_addr #1

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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
