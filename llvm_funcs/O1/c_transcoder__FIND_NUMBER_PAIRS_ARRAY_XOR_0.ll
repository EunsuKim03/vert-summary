; ModuleID = 'benchmark/c_transcoder/FIND_NUMBER_PAIRS_ARRAY_XOR_0/FIND_NUMBER_PAIRS_ARRAY_XOR_0_processed.c'
source_filename = "benchmark/c_transcoder/FIND_NUMBER_PAIRS_ARRAY_XOR_0/FIND_NUMBER_PAIRS_ARRAY_XOR_0_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #2
  %6 = icmp sgt i32 %1, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = zext i32 %1 to i64
  br label %16

9:                                                ; preds = %33, %2
  %10 = phi i32 [ 1, %2 ], [ %34, %33 ]
  %11 = phi i32 [ 0, %2 ], [ %35, %33 ]
  %12 = add nsw i32 %10, -1
  %13 = mul nsw i32 %12, %10
  %14 = sdiv i32 %13, 2
  %15 = add nsw i32 %14, %11
  ret i32 %15

16:                                               ; preds = %7, %33
  %17 = phi i64 [ 1, %7 ], [ %36, %33 ]
  %18 = phi i32 [ 0, %7 ], [ %35, %33 ]
  %19 = phi i32 [ 1, %7 ], [ %34, %33 ]
  %20 = getelementptr inbounds i32, i32* %0, i64 %17
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = add nsw i64 %17, -1
  %23 = getelementptr inbounds i32, i32* %0, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = add nsw i32 %19, 1
  br label %33

28:                                               ; preds = %16
  %29 = add nsw i32 %19, -1
  %30 = mul nsw i32 %29, %19
  %31 = sdiv i32 %30, 2
  %32 = add nsw i32 %31, %18
  br label %33

33:                                               ; preds = %26, %28
  %34 = phi i32 [ %27, %26 ], [ 1, %28 ]
  %35 = phi i32 [ %18, %26 ], [ %32, %28 ]
  %36 = add nuw nsw i64 %17, 1
  %37 = icmp eq i64 %36, %8
  br i1 %37, label %9, label %16, !llvm.loop !9
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
