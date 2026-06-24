; ModuleID = 'benchmark/c_transcoder/FIND_PATTERNS_101_GIVEN_STRING/FIND_PATTERNS_101_GIVEN_STRING_processed.c'
source_filename = "benchmark/c_transcoder/FIND_PATTERNS_101_GIVEN_STRING/FIND_PATTERNS_101_GIVEN_STRING_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {
  %2 = load i8, i8* %0, align 1, !tbaa !5
  %3 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef nonnull %0) #2
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %37

5:                                                ; preds = %1, %28
  %6 = phi i8 [ %34, %28 ], [ %2, %1 ]
  %7 = phi i32 [ %30, %28 ], [ 0, %1 ]
  %8 = phi i32 [ %33, %28 ], [ 1, %1 ]
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  %11 = load i8, i8* %10, align 1, !tbaa !5
  %12 = icmp eq i8 %11, 48
  %13 = icmp eq i8 %6, 49
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %28

15:                                               ; preds = %5
  %16 = sext i32 %8 to i64
  br label %17

17:                                               ; preds = %15, %21
  %18 = phi i64 [ %16, %15 ], [ %22, %21 ]
  %19 = getelementptr inbounds i8, i8* %0, i64 %18
  %20 = load i8, i8* %19, align 1, !tbaa !5
  switch i8 %20, label %26 [
    i8 48, label %21
    i8 49, label %23
  ]

21:                                               ; preds = %17
  %22 = add i64 %18, 1
  br label %17, !llvm.loop !8

23:                                               ; preds = %17
  %24 = trunc i64 %18 to i32
  %25 = add nsw i32 %7, 1
  br label %28

26:                                               ; preds = %17
  %27 = trunc i64 %18 to i32
  br label %28

28:                                               ; preds = %26, %23, %5
  %29 = phi i32 [ %24, %23 ], [ %8, %5 ], [ %27, %26 ]
  %30 = phi i32 [ %25, %23 ], [ %7, %5 ], [ %7, %26 ]
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %0, i64 %31
  %33 = add nsw i32 %29, 1
  %34 = load i8, i8* %32, align 1, !tbaa !5
  %35 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef nonnull %0) #2
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %5, label %37, !llvm.loop !11

37:                                               ; preds = %28, %1
  %38 = phi i32 [ 0, %1 ], [ %30, %28 ]
  ret i32 %38
}

declare i32 @len(...) local_unnamed_addr #1

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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
