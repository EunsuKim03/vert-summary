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
  br i1 %9, label %33, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds i64, i64* %5, i64 1
  %12 = load i64, i64* %11, align 8
  %13 = add nuw nsw i64 %3, 1
  %14 = getelementptr i64, i64* %5, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = and i64 %3, 1
  %17 = icmp eq i32 %2, 3
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = add nsw i64 %3, -2
  %20 = and i64 %19, -2
  br label %40

21:                                               ; preds = %40, %10
  %22 = phi i64 [ %15, %10 ], [ %55, %40 ]
  %23 = phi i64 [ %12, %10 ], [ %52, %40 ]
  %24 = phi i64 [ 2, %10 ], [ %55, %40 ]
  %25 = phi i64 [ 2, %10 ], [ %57, %40 ]
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = add nsw i64 %24, %23
  %29 = getelementptr inbounds i64, i64* %5, i64 %25
  store i64 %28, i64* %29, align 8, !tbaa !5
  %30 = shl nsw i64 %23, 1
  %31 = add nsw i64 %30, %22
  %32 = getelementptr inbounds i64, i64* %7, i64 %25
  store i64 %31, i64* %32, align 8, !tbaa !5
  br label %33

33:                                               ; preds = %27, %21, %1
  %34 = sext i32 %0 to i64
  %35 = getelementptr inbounds i64, i64* %5, i64 %34
  %36 = load i64, i64* %35, align 8, !tbaa !5
  %37 = getelementptr inbounds i64, i64* %7, i64 %34
  %38 = load i64, i64* %37, align 8, !tbaa !5
  %39 = add nsw i64 %38, %36
  ret i64 %39

40:                                               ; preds = %40, %18
  %41 = phi i64 [ %15, %18 ], [ %55, %40 ]
  %42 = phi i64 [ %12, %18 ], [ %52, %40 ]
  %43 = phi i64 [ 2, %18 ], [ %55, %40 ]
  %44 = phi i64 [ 2, %18 ], [ %57, %40 ]
  %45 = phi i64 [ 0, %18 ], [ %58, %40 ]
  %46 = add nsw i64 %43, %42
  %47 = getelementptr inbounds i64, i64* %5, i64 %44
  store i64 %46, i64* %47, align 16, !tbaa !5
  %48 = shl nsw i64 %42, 1
  %49 = add nsw i64 %48, %41
  %50 = getelementptr inbounds i64, i64* %7, i64 %44
  store i64 %49, i64* %50, align 8, !tbaa !5
  %51 = or i64 %44, 1
  %52 = add nsw i64 %49, %46
  %53 = getelementptr inbounds i64, i64* %5, i64 %51
  store i64 %52, i64* %53, align 8, !tbaa !5
  %54 = shl nsw i64 %46, 1
  %55 = add nsw i64 %54, %49
  %56 = getelementptr inbounds i64, i64* %7, i64 %51
  store i64 %55, i64* %56, align 8, !tbaa !5
  %57 = add nuw nsw i64 %44, 2
  %58 = add i64 %45, 2
  %59 = icmp eq i64 %58, %20
  br i1 %59, label %21, label %40, !llvm.loop !9
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
