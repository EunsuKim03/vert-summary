; ModuleID = 'benchmark/c_transcoder/COUNT_NUMBER_WAYS_TILE_FLOOR_SIZE_N_X_M_USING_1_X_M_SIZE_TILES/COUNT_NUMBER_WAYS_TILE_FLOOR_SIZE_N_X_M_USING_1_X_M_SIZE_TILES_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_NUMBER_WAYS_TILE_FLOOR_SIZE_N_X_M_USING_1_X_M_SIZE_TILES/COUNT_NUMBER_WAYS_TILE_FLOOR_SIZE_N_X_M_USING_1_X_M_SIZE_TILES_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add nsw i32 %0, 1
  %4 = zext i32 %3 to i64
  %5 = alloca i32, i64 %4, align 16
  store i32 0, i32* %5, align 16, !tbaa !5
  %6 = icmp slt i32 %0, 1
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = sext i32 %1 to i64
  %10 = sext i32 %1 to i64
  %11 = add i32 %0, 1
  %12 = zext i32 %11 to i64
  br label %17

13:                                               ; preds = %34, %2
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds i32, i32* %5, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !5
  ret i32 %16

17:                                               ; preds = %7, %34
  %18 = phi i64 [ 1, %7 ], [ %35, %34 ]
  %19 = icmp sgt i64 %18, %10
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = add nsw i64 %18, -1
  %22 = getelementptr inbounds i32, i32* %5, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = sub nsw i64 %18, %9
  %25 = getelementptr inbounds i32, i32* %5, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = add nsw i32 %26, %23
  %28 = getelementptr inbounds i32, i32* %5, i64 %18
  store i32 %27, i32* %28, align 4, !tbaa !5
  br label %34

29:                                               ; preds = %17
  %30 = icmp slt i64 %18, %8
  %31 = getelementptr inbounds i32, i32* %5, i64 %18
  br i1 %30, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %31, align 4, !tbaa !5
  br label %34

33:                                               ; preds = %29
  store i32 2, i32* %31, align 4, !tbaa !5
  br label %34

34:                                               ; preds = %20, %33, %32
  %35 = add nuw nsw i64 %18, 1
  %36 = icmp eq i64 %35, %12
  br i1 %36, label %13, label %17, !llvm.loop !9
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
