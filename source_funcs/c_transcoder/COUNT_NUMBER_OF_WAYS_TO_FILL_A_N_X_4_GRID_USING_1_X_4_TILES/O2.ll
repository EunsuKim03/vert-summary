; ModuleID = 'benchmark/c_transcoder/COUNT_NUMBER_OF_WAYS_TO_FILL_A_N_X_4_GRID_USING_1_X_4_TILES/COUNT_NUMBER_OF_WAYS_TO_FILL_A_N_X_4_GRID_USING_1_X_4_TILES_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_NUMBER_OF_WAYS_TO_FILL_A_N_X_4_GRID_USING_1_X_4_TILES/COUNT_NUMBER_OF_WAYS_TO_FILL_A_N_X_4_GRID_USING_1_X_4_TILES_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  store i32 0, i32* %4, align 16, !tbaa !5
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i32, i32* %4, i64 4
  %8 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 1, i32* %8, align 4, !tbaa !5
  %9 = icmp eq i32 %2, 2
  br i1 %9, label %35, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 1, i32* %11, align 8, !tbaa !5
  %12 = icmp eq i32 %2, 3
  br i1 %12, label %35, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds i32, i32* %4, i64 3
  store i32 1, i32* %14, align 4, !tbaa !5
  %15 = icmp eq i32 %2, 4
  br i1 %15, label %35, label %16

16:                                               ; preds = %13
  store i32 2, i32* %7, align 16, !tbaa !5
  %17 = icmp eq i32 %2, 5
  br i1 %17, label %35, label %18

18:                                               ; preds = %16
  %19 = add nsw i64 %3, -5
  %20 = and i64 %19, 1
  %21 = icmp eq i32 %2, 6
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = and i64 %19, -2
  br label %39

24:                                               ; preds = %39, %18
  %25 = phi i32 [ 2, %18 ], [ %54, %39 ]
  %26 = phi i64 [ 5, %18 ], [ %56, %39 ]
  %27 = icmp eq i64 %20, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = add nuw i64 %26, 4294967292
  %30 = and i64 %29, 4294967295
  %31 = getelementptr inbounds i32, i32* %4, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = add nsw i32 %32, %25
  %34 = getelementptr inbounds i32, i32* %4, i64 %26
  store i32 %33, i32* %34, align 4, !tbaa !5
  br label %35

35:                                               ; preds = %28, %24, %6, %10, %13, %16, %1
  %36 = sext i32 %0 to i64
  %37 = getelementptr inbounds i32, i32* %4, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !5
  ret i32 %38

39:                                               ; preds = %39, %22
  %40 = phi i32 [ 2, %22 ], [ %54, %39 ]
  %41 = phi i64 [ 5, %22 ], [ %56, %39 ]
  %42 = phi i64 [ 0, %22 ], [ %57, %39 ]
  %43 = add nuw i64 %41, 4294967292
  %44 = and i64 %43, 4294967295
  %45 = getelementptr inbounds i32, i32* %4, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !5
  %47 = add nsw i32 %46, %40
  %48 = getelementptr inbounds i32, i32* %4, i64 %41
  store i32 %47, i32* %48, align 4, !tbaa !5
  %49 = add nuw nsw i64 %41, 1
  %50 = add nuw i64 %41, 4294967293
  %51 = and i64 %50, 4294967295
  %52 = getelementptr inbounds i32, i32* %4, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !5
  %54 = add nsw i32 %53, %47
  %55 = getelementptr inbounds i32, i32* %4, i64 %49
  store i32 %54, i32* %55, align 4, !tbaa !5
  %56 = add nuw nsw i64 %41, 2
  %57 = add i64 %42, 2
  %58 = icmp eq i64 %57, %23
  br i1 %58, label %24, label %39, !llvm.loop !9
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
!11 = !{!"llvm.loop.peeled.count", i32 4}
