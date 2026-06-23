; ModuleID = 'benchmark/c_transcoder/COUNT_NUMBER_WAYS_TILE_FLOOR_SIZE_N_X_M_USING_1_X_M_SIZE_TILES/COUNT_NUMBER_WAYS_TILE_FLOOR_SIZE_N_X_M_USING_1_X_M_SIZE_TILES_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_NUMBER_WAYS_TILE_FLOOR_SIZE_N_X_M_USING_1_X_M_SIZE_TILES/COUNT_NUMBER_WAYS_TILE_FLOOR_SIZE_N_X_M_USING_1_X_M_SIZE_TILES_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %0, 1
  %4 = zext i32 %3 to i64
  %5 = alloca i32, i64 %4, align 16
  store i32 0, i32* %5, align 16, !tbaa !5
  %6 = icmp slt i32 %0, 1
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  br label %13

9:                                                ; preds = %28, %2
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds i32, i32* %5, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !5
  ret i32 %12

13:                                               ; preds = %7, %28
  %14 = phi i32 [ 0, %7 ], [ %29, %28 ]
  %15 = phi i64 [ 1, %7 ], [ %30, %28 ]
  %16 = icmp sgt i64 %15, %8
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = sub nsw i64 %15, %8
  %19 = getelementptr inbounds i32, i32* %5, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = add nsw i32 %20, %14
  %22 = getelementptr inbounds i32, i32* %5, i64 %15
  store i32 %21, i32* %22, align 4, !tbaa !5
  br label %28

23:                                               ; preds = %13
  %24 = icmp slt i64 %15, %8
  %25 = getelementptr inbounds i32, i32* %5, i64 %15
  br i1 %24, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %25, align 4, !tbaa !5
  br label %28

27:                                               ; preds = %23
  store i32 2, i32* %25, align 4, !tbaa !5
  br label %28

28:                                               ; preds = %17, %27, %26
  %29 = phi i32 [ %21, %17 ], [ 2, %27 ], [ 1, %26 ]
  %30 = add nuw nsw i64 %15, 1
  %31 = icmp eq i64 %30, %4
  br i1 %31, label %9, label %13, !llvm.loop !9
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
