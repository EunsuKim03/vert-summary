; ModuleID = 'benchmark/c_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_processed.c'
source_filename = "benchmark/c_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32* nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = zext i32 %0 to i64
  br label %6

6:                                                ; preds = %4, %46
  %7 = phi i32 [ %0, %4 ], [ %11, %46 ]
  %8 = phi i64 [ 1, %4 ], [ %51, %46 ]
  %9 = phi i64 [ 0, %4 ], [ %30, %46 ]
  %10 = phi i32 [ 0, %4 ], [ %50, %46 ]
  %11 = add i32 %7, -1
  %12 = trunc i64 %9 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %28, label %16

14:                                               ; preds = %46, %2
  %15 = phi i32 [ 0, %2 ], [ %50, %46 ]
  ret i32 %15

16:                                               ; preds = %6, %25
  %17 = phi i64 [ %19, %25 ], [ %9, %6 ]
  %18 = phi i32 [ %26, %25 ], [ 0, %6 ]
  %19 = add nsw i64 %17, -1
  %20 = getelementptr inbounds i32, i32* %1, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = getelementptr inbounds i32, i32* %1, i64 %17
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = add nuw nsw i32 %18, 1
  %27 = icmp eq i32 %26, %12
  br i1 %27, label %28, label %16, !llvm.loop !9

28:                                               ; preds = %25, %16, %6
  %29 = phi i32 [ 0, %6 ], [ %12, %25 ], [ %18, %16 ]
  %30 = add nuw nsw i64 %9, 1
  %31 = trunc i64 %30 to i32
  %32 = icmp slt i32 %31, %0
  br i1 %32, label %33, label %46

33:                                               ; preds = %28, %42
  %34 = phi i64 [ %44, %42 ], [ %8, %28 ]
  %35 = phi i32 [ %43, %42 ], [ 0, %28 ]
  %36 = getelementptr inbounds i32, i32* %1, i64 %34
  %37 = load i32, i32* %36, align 4, !tbaa !5
  %38 = add nsw i64 %34, -1
  %39 = getelementptr inbounds i32, i32* %1, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = add nuw i32 %35, 1
  %44 = add nuw nsw i64 %34, 1
  %45 = icmp eq i32 %43, %11
  br i1 %45, label %46, label %33, !llvm.loop !12

46:                                               ; preds = %42, %33, %28
  %47 = phi i32 [ 0, %28 ], [ %11, %42 ], [ %35, %33 ]
  %48 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %47, i32 noundef %29) #2
  %49 = add i32 %10, 1
  %50 = add i32 %49, %48
  %51 = add nuw nsw i64 %8, 1
  %52 = icmp eq i64 %30, %5
  br i1 %52, label %14, label %6, !llvm.loop !13
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
