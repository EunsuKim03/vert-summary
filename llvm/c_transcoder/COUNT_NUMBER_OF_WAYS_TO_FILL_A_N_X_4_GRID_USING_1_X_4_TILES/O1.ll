; ModuleID = 'benchmark/c_transcoder/COUNT_NUMBER_OF_WAYS_TO_FILL_A_N_X_4_GRID_USING_1_X_4_TILES/COUNT_NUMBER_OF_WAYS_TO_FILL_A_N_X_4_GRID_USING_1_X_4_TILES_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_NUMBER_OF_WAYS_TO_FILL_A_N_X_4_GRID_USING_1_X_4_TILES/COUNT_NUMBER_OF_WAYS_TO_FILL_A_N_X_4_GRID_USING_1_X_4_TILES_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  store i32 0, i32* %4, align 16, !tbaa !5
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i32, i32* %4, i64 4
  %8 = add i32 %0, 1
  %9 = zext i32 %8 to i64
  br label %14

10:                                               ; preds = %32, %1
  %11 = sext i32 %0 to i64
  %12 = getelementptr inbounds i32, i32* %4, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !5
  ret i32 %13

14:                                               ; preds = %6, %32
  %15 = phi i64 [ 1, %6 ], [ %33, %32 ]
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = getelementptr inbounds i32, i32* %4, i64 %15
  store i32 1, i32* %18, align 4, !tbaa !5
  br label %32

19:                                               ; preds = %14
  %20 = icmp eq i64 %15, 4
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  store i32 2, i32* %7, align 16, !tbaa !5
  br label %32

22:                                               ; preds = %19
  %23 = add nsw i64 %15, -1
  %24 = getelementptr inbounds i32, i32* %4, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = add nuw i64 %15, 4294967292
  %27 = and i64 %26, 4294967295
  %28 = getelementptr inbounds i32, i32* %4, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !5
  %30 = add nsw i32 %29, %25
  %31 = getelementptr inbounds i32, i32* %4, i64 %15
  store i32 %30, i32* %31, align 4, !tbaa !5
  br label %32

32:                                               ; preds = %17, %22, %21
  %33 = add nuw nsw i64 %15, 1
  %34 = icmp eq i64 %33, %9
  br i1 %34, label %10, label %14, !llvm.loop !9
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
