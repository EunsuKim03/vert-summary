; ModuleID = 'benchmark/c_transcoder/COUNT_WAYS_BUILD_STREET_GIVEN_CONSTRAINTS/COUNT_WAYS_BUILD_STREET_GIVEN_CONSTRAINTS_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_WAYS_BUILD_STREET_GIVEN_CONSTRAINTS/COUNT_WAYS_BUILD_STREET_GIVEN_CONSTRAINTS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i64 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = shl nuw nsw i64 %3, 1
  %5 = alloca i64, i64 %4, align 16
  %6 = getelementptr inbounds i64, i64* %5, i64 1
  store i64 1, i64* %6, align 8, !tbaa !5
  %7 = getelementptr inbounds i64, i64* %5, i64 %3
  %8 = getelementptr inbounds i64, i64* %7, i64 1
  store i64 2, i64* %8, align 8, !tbaa !5
  %9 = icmp slt i32 %0, 2
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = zext i32 %2 to i64
  %12 = getelementptr inbounds i64, i64* %5, i64 1
  %13 = load i64, i64* %12, align 8
  %14 = add nuw nsw i64 %11, 1
  %15 = getelementptr i64, i64* %5, i64 %14
  %16 = load i64, i64* %15, align 8
  br label %24

17:                                               ; preds = %24, %1
  %18 = sext i32 %0 to i64
  %19 = getelementptr inbounds i64, i64* %5, i64 %18
  %20 = load i64, i64* %19, align 8, !tbaa !5
  %21 = getelementptr inbounds i64, i64* %7, i64 %18
  %22 = load i64, i64* %21, align 8, !tbaa !5
  %23 = add nsw i64 %22, %20
  ret i64 %23

24:                                               ; preds = %10, %24
  %25 = phi i64 [ %16, %10 ], [ %31, %24 ]
  %26 = phi i64 [ %13, %10 ], [ %28, %24 ]
  %27 = phi i64 [ 2, %10 ], [ %33, %24 ]
  %28 = add nsw i64 %25, %26
  %29 = getelementptr inbounds i64, i64* %5, i64 %27
  store i64 %28, i64* %29, align 8, !tbaa !5
  %30 = shl nsw i64 %26, 1
  %31 = add nsw i64 %30, %25
  %32 = getelementptr inbounds i64, i64* %7, i64 %27
  store i64 %31, i64* %32, align 8, !tbaa !5
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp eq i64 %33, %11
  br i1 %34, label %17, label %24, !llvm.loop !9
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
