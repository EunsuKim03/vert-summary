; ModuleID = 'benchmark/c_transcoder/MAXIMUM_REMOVAL_FROM_ARRAY_WHEN_REMOVAL_TIME_WAITING_TIME/MAXIMUM_REMOVAL_FROM_ARRAY_WHEN_REMOVAL_TIME_WAITING_TIME_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_REMOVAL_FROM_ARRAY_WHEN_REMOVAL_TIME_WAITING_TIME/MAXIMUM_REMOVAL_FROM_ARRAY_WHEN_REMOVAL_TIME_WAITING_TIME_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = zext i32 %1 to i64
  %9 = and i64 %8, 1
  %10 = icmp eq i32 %1, 1
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = and i64 %8, 4294967294
  br label %27

13:                                               ; preds = %27, %7
  %14 = phi i32 [ undef, %7 ], [ %46, %27 ]
  %15 = phi i64 [ 0, %7 ], [ %49, %27 ]
  %16 = phi i32 [ 0, %7 ], [ %48, %27 ]
  %17 = phi i32 [ 0, %7 ], [ %46, %27 ]
  %18 = icmp eq i64 %9, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds i32, i32* %0, i64 %15
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = icmp sge i32 %21, %16
  %23 = zext i1 %22 to i32
  %24 = add nuw nsw i32 %17, %23
  br label %25

25:                                               ; preds = %19, %13, %2
  %26 = phi i32 [ 0, %2 ], [ %14, %13 ], [ %24, %19 ]
  ret i32 %26

27:                                               ; preds = %27, %11
  %28 = phi i64 [ 0, %11 ], [ %49, %27 ]
  %29 = phi i32 [ 0, %11 ], [ %48, %27 ]
  %30 = phi i32 [ 0, %11 ], [ %46, %27 ]
  %31 = phi i64 [ 0, %11 ], [ %50, %27 ]
  %32 = getelementptr inbounds i32, i32* %0, i64 %28
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %34 = icmp slt i32 %33, %29
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = add nuw nsw i32 %30, %36
  %38 = select i1 %34, i32 0, i32 %33
  %39 = add nsw i32 %38, %29
  %40 = or i64 %28, 1
  %41 = getelementptr inbounds i32, i32* %0, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %43 = icmp slt i32 %42, %39
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = add nuw nsw i32 %37, %45
  %47 = select i1 %43, i32 0, i32 %42
  %48 = add nsw i32 %47, %39
  %49 = add nuw nsw i64 %28, 2
  %50 = add i64 %31, 2
  %51 = icmp eq i64 %50, %12
  br i1 %51, label %13, label %27, !llvm.loop !9
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
