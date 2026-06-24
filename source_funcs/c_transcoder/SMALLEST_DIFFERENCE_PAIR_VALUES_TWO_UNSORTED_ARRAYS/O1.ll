; ModuleID = 'benchmark/c_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS_processed.c'
source_filename = "benchmark/c_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  %7 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %6) #3
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds i32, i32* %1, i64 %8
  %10 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %1, i32* noundef %9) #3
  %11 = icmp sgt i32 %2, 0
  %12 = icmp sgt i32 %3, 0
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %4, %14
  %15 = phi i32 [ %27, %14 ], [ 2147483647, %4 ]
  %16 = phi i32 [ %33, %14 ], [ 0, %4 ]
  %17 = phi i32 [ %30, %14 ], [ 0, %4 ]
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = zext i32 %16 to i64
  %22 = getelementptr inbounds i32, i32* %1, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = sub nsw i32 %20, %23
  %25 = call i32 @llvm.abs.i32(i32 %24, i1 true)
  %26 = icmp slt i32 %25, %15
  %27 = select i1 %26, i32 %25, i32 %15
  %28 = icmp slt i32 %20, %23
  %29 = zext i1 %28 to i32
  %30 = add nuw nsw i32 %17, %29
  %31 = xor i1 %28, true
  %32 = zext i1 %31 to i32
  %33 = add nuw nsw i32 %16, %32
  %34 = icmp slt i32 %30, %2
  %35 = icmp slt i32 %33, %3
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %14, label %37, !llvm.loop !9

37:                                               ; preds = %14, %4
  %38 = phi i32 [ 2147483647, %4 ], [ %27, %14 ]
  ret i32 %38
}

declare i32 @sort(...) local_unnamed_addr #1

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
