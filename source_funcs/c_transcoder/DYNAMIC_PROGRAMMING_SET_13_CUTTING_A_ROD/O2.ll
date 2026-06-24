; ModuleID = 'benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SET_13_CUTTING_A_ROD/DYNAMIC_PROGRAMMING_SET_13_CUTTING_A_ROD_processed.c'
source_filename = "benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SET_13_CUTTING_A_ROD/DYNAMIC_PROGRAMMING_SET_13_CUTTING_A_ROD_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, 1
  %4 = zext i32 %3 to i64
  %5 = alloca i32, i64 %4, align 16
  store i32 0, i32* %5, align 16, !tbaa !5
  %6 = icmp slt i32 %1, 1
  br i1 %6, label %26, label %7

7:                                                ; preds = %2, %22
  %8 = phi i64 [ %24, %22 ], [ 1, %2 ]
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %20, %9 ]
  %11 = phi i32 [ -2147483648, %7 ], [ %19, %9 ]
  %12 = getelementptr inbounds i32, i32* %0, i64 %10
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = xor i64 %10, -1
  %15 = add nsw i64 %8, %14
  %16 = getelementptr inbounds i32, i32* %5, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = add nsw i32 %17, %13
  %19 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %11, i32 noundef %18) #2
  %20 = add nuw nsw i64 %10, 1
  %21 = icmp eq i64 %20, %8
  br i1 %21, label %22, label %9, !llvm.loop !9

22:                                               ; preds = %9
  %23 = getelementptr inbounds i32, i32* %5, i64 %8
  store i32 %19, i32* %23, align 4, !tbaa !5
  %24 = add nuw nsw i64 %8, 1
  %25 = icmp eq i64 %24, %4
  br i1 %25, label %26, label %7, !llvm.loop !11

26:                                               ; preds = %22, %2
  %27 = sext i32 %1 to i64
  %28 = getelementptr inbounds i32, i32* %5, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !5
  ret i32 %29
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
