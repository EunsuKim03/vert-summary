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

6:                                                ; preds = %34, %2
  %7 = phi i32 [ 360, %2 ], [ %41, %34 ]
  ret i32 %7

8:                                                ; preds = %4, %34
  %9 = phi i64 [ 0, %4 ], [ %42, %34 ]
  %10 = phi i32 [ 360, %4 ], [ %41, %34 ]
  %11 = phi i32 [ 0, %4 ], [ %36, %34 ]
  %12 = phi i32 [ 0, %4 ], [ %35, %34 ]
  %13 = getelementptr inbounds i32, i32* %0, i64 %9
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = add nsw i32 %14, %11
  %16 = icmp sgt i32 %15, 179
  br i1 %16, label %17, label %34

17:                                               ; preds = %8
  %18 = sext i32 %12 to i64
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ %18, %17 ], [ %30, %19 ]
  %21 = phi i32 [ %10, %17 ], [ %26, %19 ]
  %22 = phi i32 [ %15, %17 ], [ %29, %19 ]
  %23 = sub nsw i32 180, %22
  %24 = call i32 @llvm.abs.i32(i32 %23, i1 true)
  %25 = shl nuw nsw i32 %24, 1
  %26 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %21, i32 noundef %25) #3
  %27 = getelementptr inbounds i32, i32* %0, i64 %20
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = sub nsw i32 %22, %28
  %30 = add i64 %20, 1
  %31 = icmp sgt i32 %29, 179
  br i1 %31, label %19, label %32, !llvm.loop !9

32:                                               ; preds = %19
  %33 = trunc i64 %30 to i32
  br label %34

34:                                               ; preds = %32, %8
  %35 = phi i32 [ %12, %8 ], [ %33, %32 ]
  %36 = phi i32 [ %15, %8 ], [ %29, %32 ]
  %37 = phi i32 [ %10, %8 ], [ %26, %32 ]
  %38 = sub nsw i32 180, %36
  %39 = call i32 @llvm.abs.i32(i32 %38, i1 true)
  %40 = shl nuw nsw i32 %39, 1
  %41 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %37, i32 noundef %40) #3
  %42 = add nuw nsw i64 %9, 1
  %43 = icmp eq i64 %42, %5
  br i1 %43, label %6, label %8, !llvm.loop !12
}

declare i32 @min(...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
!12 = distinct !{!12, !10, !11}
