; ModuleID = 'benchmark/c_transcoder/CONVERT_STRICTLY_INCREASING_ARRAY_MINIMUM_CHANGES/CONVERT_STRICTLY_INCREASING_ARRAY_MINIMUM_CHANGES_processed.c'
source_filename = "benchmark/c_transcoder/CONVERT_STRICTLY_INCREASING_ARRAY_MINIMUM_CHANGES/CONVERT_STRICTLY_INCREASING_ARRAY_MINIMUM_CHANGES_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = zext i32 %1 to i64
  br label %12

8:                                                ; preds = %12, %2
  %9 = icmp sgt i32 %1, 1
  br i1 %9, label %10, label %22

10:                                               ; preds = %8
  %11 = zext i32 %1 to i64
  br label %17

12:                                               ; preds = %6, %12
  %13 = phi i64 [ 0, %6 ], [ %15, %12 ]
  %14 = getelementptr inbounds i32, i32* %4, i64 %13
  store i32 1, i32* %14, align 4, !tbaa !5
  %15 = add nuw nsw i64 %13, 1
  %16 = icmp eq i64 %15, %7
  br i1 %16, label %8, label %12, !llvm.loop !9

17:                                               ; preds = %10, %25
  %18 = phi i64 [ 1, %10 ], [ %29, %25 ]
  %19 = phi i32 [ 0, %10 ], [ %28, %25 ]
  %20 = getelementptr inbounds i32, i32* %0, i64 %18
  %21 = getelementptr inbounds i32, i32* %4, i64 %18
  br label %31

22:                                               ; preds = %25, %8
  %23 = phi i32 [ 0, %8 ], [ %28, %25 ]
  %24 = sub nsw i32 %1, %23
  ret i32 %24

25:                                               ; preds = %48
  %26 = getelementptr inbounds i32, i32* %4, i64 %18
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %19, i32 noundef %27) #2
  %29 = add nuw nsw i64 %18, 1
  %30 = icmp eq i64 %29, %11
  br i1 %30, label %22, label %17, !llvm.loop !12

31:                                               ; preds = %17, %48
  %32 = phi i64 [ 0, %17 ], [ %49, %48 ]
  %33 = load i32, i32* %20, align 4, !tbaa !5
  %34 = getelementptr inbounds i32, i32* %0, i64 %32
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = sub nsw i64 %18, %32
  %39 = sub nsw i32 %33, %35
  %40 = sext i32 %39 to i64
  %41 = icmp sgt i64 %38, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %21, align 4, !tbaa !5
  %44 = getelementptr inbounds i32, i32* %4, i64 %32
  %45 = load i32, i32* %44, align 4, !tbaa !5
  %46 = add nsw i32 %45, 1
  %47 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %43, i32 noundef %46) #2
  store i32 %47, i32* %21, align 4, !tbaa !5
  br label %48

48:                                               ; preds = %31, %37, %42
  %49 = add nuw nsw i64 %32, 1
  %50 = icmp eq i64 %49, %18
  br i1 %50, label %25, label %31, !llvm.loop !13
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
