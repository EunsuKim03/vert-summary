; ModuleID = 'benchmark/c_transcoder/COUNT_NUMBER_WAYS_REACH_GIVEN_SCORE_GAME/COUNT_NUMBER_WAYS_REACH_GIVEN_SCORE_GAME_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_NUMBER_WAYS_REACH_GIVEN_SCORE_GAME/COUNT_NUMBER_WAYS_REACH_GIVEN_SCORE_GAME_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp slt i32 %0, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = bitcast i32* %4 to i8*
  %8 = zext i32 %0 to i64
  %9 = shl nuw nsw i64 %8, 2
  %10 = add nuw nsw i64 %9, 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 %7, i8 0, i64 %10, i1 false), !tbaa !5
  br label %11

11:                                               ; preds = %6, %1
  store i32 1, i32* %4, align 16, !tbaa !5
  %12 = icmp slt i32 %0, 3
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = add nuw i32 %0, 1
  %15 = zext i32 %14 to i64
  br label %21

16:                                               ; preds = %21, %11
  %17 = icmp slt i32 %0, 5
  br i1 %17, label %31, label %18

18:                                               ; preds = %16
  %19 = add nuw i32 %0, 1
  %20 = zext i32 %19 to i64
  br label %36

21:                                               ; preds = %13, %21
  %22 = phi i64 [ 3, %13 ], [ %29, %21 ]
  %23 = add nsw i64 %22, -3
  %24 = getelementptr inbounds i32, i32* %4, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = getelementptr inbounds i32, i32* %4, i64 %22
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = add nsw i32 %27, %25
  store i32 %28, i32* %26, align 4, !tbaa !5
  %29 = add nuw nsw i64 %22, 1
  %30 = icmp eq i64 %29, %15
  br i1 %30, label %16, label %21, !llvm.loop !9

31:                                               ; preds = %36, %16
  %32 = icmp slt i32 %0, 10
  br i1 %32, label %56, label %33

33:                                               ; preds = %31
  %34 = add nuw i32 %0, 1
  %35 = zext i32 %34 to i64
  br label %46

36:                                               ; preds = %18, %36
  %37 = phi i64 [ 5, %18 ], [ %44, %36 ]
  %38 = add nsw i64 %37, -5
  %39 = getelementptr inbounds i32, i32* %4, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = getelementptr inbounds i32, i32* %4, i64 %37
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %43 = add nsw i32 %42, %40
  store i32 %43, i32* %41, align 4, !tbaa !5
  %44 = add nuw nsw i64 %37, 1
  %45 = icmp eq i64 %44, %20
  br i1 %45, label %31, label %36, !llvm.loop !12

46:                                               ; preds = %33, %46
  %47 = phi i64 [ 10, %33 ], [ %54, %46 ]
  %48 = add nsw i64 %47, -10
  %49 = getelementptr inbounds i32, i32* %4, i64 %48
  %50 = load i32, i32* %49, align 4, !tbaa !5
  %51 = getelementptr inbounds i32, i32* %4, i64 %47
  %52 = load i32, i32* %51, align 4, !tbaa !5
  %53 = add nsw i32 %52, %50
  store i32 %53, i32* %51, align 4, !tbaa !5
  %54 = add nuw nsw i64 %47, 1
  %55 = icmp eq i64 %54, %35
  br i1 %55, label %56, label %46, !llvm.loop !13

56:                                               ; preds = %46, %31
  %57 = sext i32 %0 to i64
  %58 = getelementptr inbounds i32, i32* %4, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !5
  ret i32 %59
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }

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
!13 = distinct !{!13, !10, !11}
