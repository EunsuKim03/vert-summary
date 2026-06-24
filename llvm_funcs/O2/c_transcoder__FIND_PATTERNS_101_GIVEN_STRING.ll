; ModuleID = 'benchmark/c_transcoder/FIND_PATTERNS_101_GIVEN_STRING/FIND_PATTERNS_101_GIVEN_STRING_processed.c'
source_filename = "benchmark/c_transcoder/FIND_PATTERNS_101_GIVEN_STRING/FIND_PATTERNS_101_GIVEN_STRING_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {
  %2 = load i8, i8* %0, align 1, !tbaa !5
  %3 = tail call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef nonnull %0) #2
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %36

5:                                                ; preds = %1, %27
  %6 = phi i8 [ %33, %27 ], [ %2, %1 ]
  %7 = phi i32 [ %29, %27 ], [ 0, %1 ]
  %8 = phi i32 [ %32, %27 ], [ 1, %1 ]
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  %11 = load i8, i8* %10, align 1, !tbaa !5
  %12 = icmp eq i8 %11, 48
  %13 = icmp eq i8 %6, 49
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %27

15:                                               ; preds = %5, %18
  %16 = phi i8 [ %21, %18 ], [ 48, %5 ]
  %17 = phi i64 [ %19, %18 ], [ %9, %5 ]
  switch i8 %16, label %25 [
    i8 48, label %18
    i8 49, label %22
  ]

18:                                               ; preds = %15
  %19 = add i64 %17, 1
  %20 = getelementptr inbounds i8, i8* %0, i64 %19
  %21 = load i8, i8* %20, align 1, !tbaa !5
  br label %15, !llvm.loop !8

22:                                               ; preds = %15
  %23 = trunc i64 %17 to i32
  %24 = add nsw i32 %7, 1
  br label %27

25:                                               ; preds = %15
  %26 = trunc i64 %17 to i32
  br label %27

27:                                               ; preds = %25, %22, %5
  %28 = phi i32 [ %23, %22 ], [ %8, %5 ], [ %26, %25 ]
  %29 = phi i32 [ %24, %22 ], [ %7, %5 ], [ %7, %25 ]
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %0, i64 %30
  %32 = add nsw i32 %28, 1
  %33 = load i8, i8* %31, align 1, !tbaa !5
  %34 = tail call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef nonnull %0) #2
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %5, label %36, !llvm.loop !10

36:                                               ; preds = %27, %1
  %37 = phi i32 [ 0, %1 ], [ %29, %27 ]
  ret i32 %37
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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
