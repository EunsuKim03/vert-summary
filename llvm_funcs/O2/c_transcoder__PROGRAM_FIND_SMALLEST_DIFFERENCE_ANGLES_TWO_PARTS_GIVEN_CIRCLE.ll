; ModuleID = 'benchmark/c_transcoder/PROGRAM_FIND_SMALLEST_DIFFERENCE_ANGLES_TWO_PARTS_GIVEN_CIRCLE/PROGRAM_FIND_SMALLEST_DIFFERENCE_ANGLES_TWO_PARTS_GIVEN_CIRCLE_processed.c'
source_filename = "benchmark/c_transcoder/PROGRAM_FIND_SMALLEST_DIFFERENCE_ANGLES_TWO_PARTS_GIVEN_CIRCLE/PROGRAM_FIND_SMALLEST_DIFFERENCE_ANGLES_TWO_PARTS_GIVEN_CIRCLE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %8

6:                                                ; preds = %33, %2
  %7 = phi i32 [ 360, %2 ], [ %39, %33 ]
  ret i32 %7

8:                                                ; preds = %4, %33
  %9 = phi i64 [ 0, %4 ], [ %40, %33 ]
  %10 = phi i32 [ 360, %4 ], [ %39, %33 ]
  %11 = phi i32 [ 0, %4 ], [ %35, %33 ]
  %12 = phi i32 [ 0, %4 ], [ %34, %33 ]
  %13 = getelementptr inbounds i32, i32* %0, i64 %9
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = add nsw i32 %14, %11
  %16 = icmp sgt i32 %15, 179
  br i1 %16, label %17, label %33

17:                                               ; preds = %8
  %18 = sext i32 %12 to i64
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ %18, %17 ], [ %29, %19 ]
  %21 = phi i32 [ %10, %17 ], [ %25, %19 ]
  %22 = phi i32 [ %15, %17 ], [ %28, %19 ]
  %23 = shl nuw i32 %22, 1
  %24 = add i32 %23, -360
  %25 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %21, i32 noundef %24) #2
  %26 = getelementptr inbounds i32, i32* %0, i64 %20
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = sub nsw i32 %22, %27
  %29 = add i64 %20, 1
  %30 = icmp sgt i32 %28, 179
  br i1 %30, label %19, label %31, !llvm.loop !9

31:                                               ; preds = %19
  %32 = trunc i64 %29 to i32
  br label %33

33:                                               ; preds = %31, %8
  %34 = phi i32 [ %12, %8 ], [ %32, %31 ]
  %35 = phi i32 [ %15, %8 ], [ %28, %31 ]
  %36 = phi i32 [ %10, %8 ], [ %25, %31 ]
  %37 = mul i32 %35, -2
  %38 = add i32 %37, 360
  %39 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %36, i32 noundef %38) #2
  %40 = add nuw nsw i64 %9, 1
  %41 = icmp eq i64 %40, %5
  br i1 %41, label %6, label %8, !llvm.loop !11
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
