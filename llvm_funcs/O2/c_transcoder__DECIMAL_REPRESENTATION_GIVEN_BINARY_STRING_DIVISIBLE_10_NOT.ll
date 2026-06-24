; ModuleID = 'benchmark/c_transcoder/DECIMAL_REPRESENTATION_GIVEN_BINARY_STRING_DIVISIBLE_10_NOT/DECIMAL_REPRESENTATION_GIVEN_BINARY_STRING_DIVISIBLE_10_NOT_processed.c'
source_filename = "benchmark/c_transcoder/DECIMAL_REPRESENTATION_GIVEN_BINARY_STRING_DIVISIBLE_10_NOT/DECIMAL_REPRESENTATION_GIVEN_BINARY_STRING_DIVISIBLE_10_NOT_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #2
  %3 = add nsw i32 %2, -1
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i8, i8* %0, i64 %4
  %6 = load i8, i8* %5, align 1, !tbaa !5
  %7 = icmp eq i8 %6, 49
  br i1 %7, label %41, label %8

8:                                                ; preds = %1
  %9 = icmp sgt i32 %2, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = add nsw i32 %2, -2
  %12 = zext i32 %11 to i64
  br label %18

13:                                               ; preds = %37, %8
  %14 = phi i32 [ 0, %8 ], [ %38, %37 ]
  %15 = srem i32 %14, 10
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  br label %41

18:                                               ; preds = %10, %37
  %19 = phi i64 [ %12, %10 ], [ %39, %37 ]
  %20 = phi i32 [ 0, %10 ], [ %38, %37 ]
  %21 = getelementptr inbounds i8, i8* %0, i64 %19
  %22 = load i8, i8* %21, align 1, !tbaa !5
  %23 = icmp eq i8 %22, 49
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = trunc i64 %19 to i32
  %26 = xor i32 %25, -1
  %27 = add i32 %2, %26
  %28 = srem i32 %27, 4
  switch i32 %28, label %37 [
    i32 1, label %29
    i32 2, label %31
    i32 3, label %33
    i32 0, label %35
  ]

29:                                               ; preds = %24
  %30 = add nsw i32 %20, 2
  br label %37

31:                                               ; preds = %24
  %32 = add nsw i32 %20, 4
  br label %37

33:                                               ; preds = %24
  %34 = add nsw i32 %20, 8
  br label %37

35:                                               ; preds = %24
  %36 = add nsw i32 %20, 6
  br label %37

37:                                               ; preds = %29, %33, %35, %31, %24, %18
  %38 = phi i32 [ %20, %18 ], [ %30, %29 ], [ %32, %31 ], [ %34, %33 ], [ %36, %35 ], [ %20, %24 ]
  %39 = add nsw i64 %19, -1
  %40 = icmp sgt i64 %19, 0
  br i1 %40, label %18, label %13, !llvm.loop !8

41:                                               ; preds = %1, %13
  %42 = phi i32 [ %17, %13 ], [ 0, %1 ]
  ret i32 %42
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
