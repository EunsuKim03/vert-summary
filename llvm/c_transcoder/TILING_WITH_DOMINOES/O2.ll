; ModuleID = 'benchmark/c_transcoder/TILING_WITH_DOMINOES/TILING_WITH_DOMINOES_processed.c'
source_filename = "benchmark/c_transcoder/TILING_WITH_DOMINOES/TILING_WITH_DOMINOES_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = alloca i32, i64 %3, align 16
  store i32 1, i32* %4, align 16, !tbaa !5
  %6 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 0, i32* %6, align 4, !tbaa !5
  store i32 0, i32* %5, align 16, !tbaa !5
  %7 = getelementptr inbounds i32, i32* %5, i64 1
  store i32 1, i32* %7, align 4, !tbaa !5
  %8 = icmp slt i32 %0, 2
  br i1 %8, label %35, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 3, i32* %10, align 8, !tbaa !5
  %11 = getelementptr inbounds i32, i32* %5, i64 2
  store i32 0, i32* %11, align 8, !tbaa !5
  %12 = icmp eq i32 %2, 3
  br i1 %12, label %35, label %13, !llvm.loop !9

13:                                               ; preds = %9
  %14 = add nsw i64 %3, -3
  %15 = and i64 %14, 1
  %16 = icmp eq i32 %2, 4
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = and i64 %14, -2
  br label %39

19:                                               ; preds = %39
  %20 = shl i32 %61, 1
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi i64 [ 3, %13 ], [ %63, %19 ]
  %23 = phi i32 [ 0, %13 ], [ %20, %19 ]
  %24 = phi i32 [ 3, %13 ], [ %59, %19 ]
  %25 = phi i64 [ 1, %13 ], [ %40, %19 ]
  %26 = phi i32 [ 0, %13 ], [ %50, %19 ]
  %27 = icmp eq i64 %15, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds i32, i32* %5, i64 %25
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = add nsw i32 %23, %26
  %32 = getelementptr inbounds i32, i32* %4, i64 %22
  store i32 %31, i32* %32, align 4, !tbaa !5
  %33 = add nsw i32 %30, %24
  %34 = getelementptr inbounds i32, i32* %5, i64 %22
  store i32 %33, i32* %34, align 4, !tbaa !5
  br label %35

35:                                               ; preds = %28, %21, %9, %1
  %36 = sext i32 %0 to i64
  %37 = getelementptr inbounds i32, i32* %4, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !5
  ret i32 %38

39:                                               ; preds = %39, %17
  %40 = phi i64 [ 3, %17 ], [ %63, %39 ]
  %41 = phi i32 [ 0, %17 ], [ %61, %39 ]
  %42 = phi i32 [ 3, %17 ], [ %59, %39 ]
  %43 = phi i64 [ 2, %17 ], [ %54, %39 ]
  %44 = phi i32 [ 0, %17 ], [ %50, %39 ]
  %45 = phi i64 [ 0, %17 ], [ %64, %39 ]
  %46 = add nsw i64 %43, -1
  %47 = getelementptr inbounds i32, i32* %5, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !5
  %49 = shl nsw i32 %41, 1
  %50 = add nsw i32 %49, %44
  %51 = getelementptr inbounds i32, i32* %4, i64 %40
  store i32 %50, i32* %51, align 4, !tbaa !5
  %52 = add nsw i32 %48, %42
  %53 = getelementptr inbounds i32, i32* %5, i64 %40
  store i32 %52, i32* %53, align 4, !tbaa !5
  %54 = add nuw nsw i64 %40, 1
  %55 = add nsw i64 %40, -1
  %56 = getelementptr inbounds i32, i32* %5, i64 %55
  %57 = load i32, i32* %56, align 4, !tbaa !5
  %58 = shl nsw i32 %52, 1
  %59 = add nsw i32 %58, %42
  %60 = getelementptr inbounds i32, i32* %4, i64 %54
  store i32 %59, i32* %60, align 4, !tbaa !5
  %61 = add nsw i32 %57, %50
  %62 = getelementptr inbounds i32, i32* %5, i64 %54
  store i32 %61, i32* %62, align 4, !tbaa !5
  %63 = add nuw nsw i64 %40, 2
  %64 = add i64 %45, 2
  %65 = icmp eq i64 %64, %18
  br i1 %65, label %19, label %39, !llvm.loop !9
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
