; ModuleID = 'benchmark/c_transcoder/RECURSIVELY_BREAK_NUMBER_3_PARTS_GET_MAXIMUM_SUM_1/RECURSIVELY_BREAK_NUMBER_3_PARTS_GET_MAXIMUM_SUM_1_processed.c'
source_filename = "benchmark/c_transcoder/RECURSIVELY_BREAK_NUMBER_3_PARTS_GET_MAXIMUM_SUM_1/RECURSIVELY_BREAK_NUMBER_3_PARTS_GET_MAXIMUM_SUM_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  store i32 0, i32* %4, align 16, !tbaa !5
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 1, i32* %5, align 4, !tbaa !5
  %6 = icmp slt i32 %0, 2
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = add i32 %0, 1
  %9 = zext i32 %8 to i64
  br label %14

10:                                               ; preds = %14, %1
  %11 = sext i32 %0 to i64
  %12 = getelementptr inbounds i32, i32* %4, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !5
  ret i32 %13

14:                                               ; preds = %7, %14
  %15 = phi i64 [ 2, %7 ], [ %34, %14 ]
  %16 = lshr i64 %15, 1
  %17 = and i64 %16, 2147483647
  %18 = getelementptr inbounds i32, i32* %4, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %20 = trunc i64 %15 to i32
  %21 = udiv i32 %20, 3
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %4, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = add nsw i32 %24, %19
  %26 = lshr i64 %15, 2
  %27 = and i64 %26, 1073741823
  %28 = getelementptr inbounds i32, i32* %4, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !5
  %30 = add nsw i32 %25, %29
  %31 = trunc i64 %15 to i32
  %32 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %30, i32 noundef %31) #2
  %33 = getelementptr inbounds i32, i32* %4, i64 %15
  store i32 %32, i32* %33, align 4, !tbaa !5
  %34 = add nuw nsw i64 %15, 1
  %35 = icmp eq i64 %34, %9
  br i1 %35, label %10, label %14, !llvm.loop !9
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
