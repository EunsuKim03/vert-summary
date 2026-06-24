; ModuleID = 'benchmark/c_transcoder/FIND_NUMBER_PAIRS_ARRAY_XOR_0/FIND_NUMBER_PAIRS_ARRAY_XOR_0_processed.c'
source_filename = "benchmark/c_transcoder/FIND_NUMBER_PAIRS_ARRAY_XOR_0/FIND_NUMBER_PAIRS_ARRAY_XOR_0_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #2
  %6 = icmp sgt i32 %1, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = zext i32 %1 to i64
  %9 = load i32, i32* %0, align 4, !tbaa !5
  br label %17

10:                                               ; preds = %32, %2
  %11 = phi i32 [ 1, %2 ], [ %33, %32 ]
  %12 = phi i32 [ 0, %2 ], [ %34, %32 ]
  %13 = add nsw i32 %11, -1
  %14 = mul nsw i32 %13, %11
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %15, %12
  ret i32 %16

17:                                               ; preds = %7, %32
  %18 = phi i32 [ %9, %7 ], [ %23, %32 ]
  %19 = phi i64 [ 1, %7 ], [ %35, %32 ]
  %20 = phi i32 [ 0, %7 ], [ %34, %32 ]
  %21 = phi i32 [ 1, %7 ], [ %33, %32 ]
  %22 = getelementptr inbounds i32, i32* %0, i64 %19
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = icmp eq i32 %23, %18
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = add nsw i32 %21, 1
  br label %32

27:                                               ; preds = %17
  %28 = add nsw i32 %21, -1
  %29 = mul nsw i32 %28, %21
  %30 = sdiv i32 %29, 2
  %31 = add nsw i32 %30, %20
  br label %32

32:                                               ; preds = %25, %27
  %33 = phi i32 [ %26, %25 ], [ 1, %27 ]
  %34 = phi i32 [ %20, %25 ], [ %31, %27 ]
  %35 = add nuw nsw i64 %19, 1
  %36 = icmp eq i64 %35, %8
  br i1 %36, label %10, label %17, !llvm.loop !9
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
