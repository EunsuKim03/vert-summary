; ModuleID = 'benchmark/c_transcoder/MINIMUM_NUMBER_PLATFORMS_REQUIRED_RAILWAYBUS_STATION/MINIMUM_NUMBER_PLATFORMS_REQUIRED_RAILWAYBUS_STATION_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_NUMBER_PLATFORMS_REQUIRED_RAILWAYBUS_STATION/MINIMUM_NUMBER_PLATFORMS_REQUIRED_RAILWAYBUS_STATION_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %5) #2
  %7 = getelementptr inbounds i32, i32* %1, i64 %4
  %8 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %1, i32* noundef %7) #2
  %9 = icmp sgt i32 %2, 1
  br i1 %9, label %10, label %38

10:                                               ; preds = %3, %30
  %11 = phi i32 [ %34, %30 ], [ 0, %3 ]
  %12 = phi i32 [ %33, %30 ], [ 1, %3 ]
  %13 = phi i32 [ %32, %30 ], [ 1, %3 ]
  %14 = phi i32 [ %31, %30 ], [ 1, %3 ]
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i32, i32* %0, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = sext i32 %11 to i64
  %19 = getelementptr inbounds i32, i32* %1, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %10
  %23 = add nsw i32 %14, 1
  %24 = add nsw i32 %12, 1
  %25 = icmp slt i32 %14, %13
  %26 = select i1 %25, i32 %13, i32 %23
  br label %30

27:                                               ; preds = %10
  %28 = add nsw i32 %14, -1
  %29 = add nsw i32 %11, 1
  br label %30

30:                                               ; preds = %22, %27
  %31 = phi i32 [ %28, %27 ], [ %23, %22 ]
  %32 = phi i32 [ %13, %27 ], [ %26, %22 ]
  %33 = phi i32 [ %12, %27 ], [ %24, %22 ]
  %34 = phi i32 [ %29, %27 ], [ %11, %22 ]
  %35 = icmp slt i32 %33, %2
  %36 = icmp slt i32 %34, %2
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %10, label %38, !llvm.loop !9

38:                                               ; preds = %30, %3
  %39 = phi i32 [ 1, %3 ], [ %32, %30 ]
  ret i32 %39
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
