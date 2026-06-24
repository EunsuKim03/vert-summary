; ModuleID = 'benchmark/c_transcoder/MINIMUM_XOR_VALUE_PAIR/MINIMUM_XOR_VALUE_PAIR_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_XOR_VALUE_PAIR/MINIMUM_XOR_VALUE_PAIR_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = zext i32 %1 to i64
  br label %13

7:                                                ; preds = %21, %13
  %8 = phi i32 [ %16, %13 ], [ %28, %21 ]
  %9 = add nuw nsw i64 %15, 1
  %10 = icmp eq i64 %17, %6
  br i1 %10, label %11, label %13, !llvm.loop !5

11:                                               ; preds = %7, %2
  %12 = phi i32 [ 2147483647, %2 ], [ %8, %7 ]
  ret i32 %12

13:                                               ; preds = %4, %7
  %14 = phi i64 [ 0, %4 ], [ %17, %7 ]
  %15 = phi i64 [ 1, %4 ], [ %9, %7 ]
  %16 = phi i32 [ 2147483647, %4 ], [ %8, %7 ]
  %17 = add nuw nsw i64 %14, 1
  %18 = icmp ult i64 %17, %5
  br i1 %18, label %19, label %7

19:                                               ; preds = %13
  %20 = getelementptr inbounds i32, i32* %0, i64 %14
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ %15, %19 ], [ %29, %21 ]
  %23 = phi i32 [ %16, %19 ], [ %28, %21 ]
  %24 = load i32, i32* %20, align 4, !tbaa !7
  %25 = getelementptr inbounds i32, i32* %0, i64 %22
  %26 = load i32, i32* %25, align 4, !tbaa !7
  %27 = xor i32 %26, %24
  %28 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %23, i32 noundef %27) #2
  %29 = add nuw nsw i64 %22, 1
  %30 = icmp eq i64 %29, %6
  br i1 %30, label %7, label %21, !llvm.loop !11
}

declare i32 @min(...) local_unnamed_addr #1

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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6}
