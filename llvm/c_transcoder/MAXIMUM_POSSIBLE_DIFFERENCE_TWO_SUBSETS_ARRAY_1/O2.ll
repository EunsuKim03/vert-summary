; ModuleID = 'benchmark/c_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #3
  %6 = add nsw i32 %1, -1
  %7 = icmp sgt i32 %1, 1
  br i1 %7, label %21, label %8

8:                                                ; preds = %21, %2
  %9 = phi i32 [ 0, %2 ], [ %34, %21 ]
  %10 = add nsw i32 %1, -2
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = sext i32 %6 to i64
  %15 = getelementptr inbounds i32, i32* %0, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = icmp eq i32 %13, %16
  %18 = tail call i32 @llvm.abs.i32(i32 %16, i1 true)
  %19 = select i1 %17, i32 0, i32 %18
  %20 = add nuw nsw i32 %19, %9
  ret i32 %20

21:                                               ; preds = %2, %21
  %22 = phi i32 [ %36, %21 ], [ 0, %2 ]
  %23 = phi i32 [ %34, %21 ], [ 0, %2 ]
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i32, i32* %0, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = add nsw i32 %22, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %0, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = icmp eq i32 %26, %30
  %32 = tail call i32 @llvm.abs.i32(i32 %26, i1 true)
  %33 = select i1 %31, i32 0, i32 %32
  %34 = add nuw nsw i32 %33, %23
  %35 = select i1 %31, i32 %27, i32 %22
  %36 = add nsw i32 %35, 1
  %37 = icmp slt i32 %36, %6
  br i1 %37, label %21, label %8, !llvm.loop !9
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
