; ModuleID = 'benchmark/c_transcoder/MINIMUM_XOR_VALUE_PAIR/MINIMUM_XOR_VALUE_PAIR_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_XOR_VALUE_PAIR/MINIMUM_XOR_VALUE_PAIR_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = sext i32 %1 to i64
  %6 = zext i32 %1 to i64
  %7 = zext i32 %1 to i64
  br label %14

8:                                                ; preds = %22, %14
  %9 = phi i32 [ %17, %14 ], [ %29, %22 ]
  %10 = add nuw nsw i64 %16, 1
  %11 = icmp eq i64 %18, %6
  br i1 %11, label %12, label %14, !llvm.loop !5

12:                                               ; preds = %8, %2
  %13 = phi i32 [ 2147483647, %2 ], [ %9, %8 ]
  ret i32 %13

14:                                               ; preds = %4, %8
  %15 = phi i64 [ 0, %4 ], [ %18, %8 ]
  %16 = phi i64 [ 1, %4 ], [ %10, %8 ]
  %17 = phi i32 [ 2147483647, %4 ], [ %9, %8 ]
  %18 = add nuw nsw i64 %15, 1
  %19 = icmp slt i64 %18, %5
  br i1 %19, label %20, label %8

20:                                               ; preds = %14
  %21 = getelementptr inbounds i32, i32* %0, i64 %15
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ %16, %20 ], [ %30, %22 ]
  %24 = phi i32 [ %17, %20 ], [ %29, %22 ]
  %25 = load i32, i32* %21, align 4, !tbaa !8
  %26 = getelementptr inbounds i32, i32* %0, i64 %23
  %27 = load i32, i32* %26, align 4, !tbaa !8
  %28 = xor i32 %27, %25
  %29 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %24, i32 noundef %28) #2
  %30 = add nuw nsw i64 %23, 1
  %31 = icmp eq i64 %30, %7
  br i1 %31, label %8, label %22, !llvm.loop !12
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !6, !7}
