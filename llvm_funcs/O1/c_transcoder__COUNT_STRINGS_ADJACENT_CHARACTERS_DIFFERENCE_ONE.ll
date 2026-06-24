; ModuleID = 'benchmark/c_transcoder/COUNT_STRINGS_ADJACENT_CHARACTERS_DIFFERENCE_ONE/COUNT_STRINGS_ADJACENT_CHARACTERS_DIFFERENCE_ONE_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_STRINGS_ADJACENT_CHARACTERS_DIFFERENCE_ONE/COUNT_STRINGS_ADJACENT_CHARACTERS_DIFFERENCE_ONE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca [27 x i32], i64 %3, align 16
  %5 = bitcast [27 x i32]* %4 to i8*
  %6 = mul nuw nsw i64 %3, 108
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 %6, i1 false)
  br label %12

7:                                                ; preds = %12
  %8 = icmp slt i32 %0, 2
  br i1 %8, label %23, label %9

9:                                                ; preds = %7
  %10 = add i32 %0, 1
  %11 = zext i32 %10 to i64
  br label %17

12:                                               ; preds = %1, %12
  %13 = phi i64 [ 0, %1 ], [ %15, %12 ]
  %14 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 1, i64 %13
  store i32 1, i32* %14, align 4, !tbaa !5
  %15 = add nuw nsw i64 %13, 1
  %16 = icmp eq i64 %15, 26
  br i1 %16, label %7, label %12, !llvm.loop !9

17:                                               ; preds = %9, %25
  %18 = phi i64 [ 2, %9 ], [ %26, %25 ]
  %19 = add nsw i64 %18, -1
  %20 = add nsw i64 %18, -1
  %21 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %20, i64 1
  %22 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %18, i64 0
  br label %28

23:                                               ; preds = %25, %7
  %24 = sext i32 %0 to i64
  br label %46

25:                                               ; preds = %42
  %26 = add nuw nsw i64 %18, 1
  %27 = icmp eq i64 %26, %11
  br i1 %27, label %23, label %17, !llvm.loop !12

28:                                               ; preds = %17, %42
  %29 = phi i64 [ 0, %17 ], [ %43, %42 ]
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %21, align 4, !tbaa !5
  store i32 %32, i32* %22, align 4, !tbaa !5
  br label %42

33:                                               ; preds = %28
  %34 = add nsw i64 %29, -1
  %35 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %19, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !5
  %37 = add nuw nsw i64 %29, 1
  %38 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %19, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = add nsw i32 %39, %36
  %41 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %18, i64 %29
  store i32 %40, i32* %41, align 4, !tbaa !5
  br label %42

42:                                               ; preds = %31, %33
  %43 = add nuw nsw i64 %29, 1
  %44 = icmp eq i64 %43, 26
  br i1 %44, label %25, label %28, !llvm.loop !13

45:                                               ; preds = %46
  ret i32 %51

46:                                               ; preds = %23, %46
  %47 = phi i64 [ 0, %23 ], [ %52, %46 ]
  %48 = phi i32 [ 0, %23 ], [ %51, %46 ]
  %49 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 %47
  %50 = load i32, i32* %49, align 4, !tbaa !5
  %51 = add nsw i32 %50, %48
  %52 = add nuw nsw i64 %47, 1
  %53 = icmp eq i64 %52, 26
  br i1 %53, label %45, label %46, !llvm.loop !14
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }

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
!14 = distinct !{!14, !10, !11}
