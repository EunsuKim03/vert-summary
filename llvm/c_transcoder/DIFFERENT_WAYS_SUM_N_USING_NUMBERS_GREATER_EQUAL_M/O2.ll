; ModuleID = 'benchmark/c_transcoder/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M_processed.c'
source_filename = "benchmark/c_transcoder/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M/DIFFERENT_WAYS_SUM_N_USING_NUMBERS_GREATER_EQUAL_M_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add nsw i32 %0, 2
  %4 = zext i32 %3 to i64
  %5 = mul nuw i64 %4, %4
  %6 = alloca i32, i64 %5, align 16
  %7 = bitcast i32* %6 to i8*
  %8 = shl nuw i64 %5, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 %8, i1 false)
  %9 = add i32 %0, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %6, i64 %10
  store i32 1, i32* %11, align 4, !tbaa !5
  %12 = icmp slt i32 %0, %1
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = sext i32 %0 to i64
  %15 = sext i32 %1 to i64
  br label %27

16:                                               ; preds = %2
  %17 = icmp slt i32 %0, 0
  %18 = sext i32 %0 to i64
  %19 = sext i32 %1 to i64
  %20 = zext i32 %9 to i64
  br label %21

21:                                               ; preds = %16, %34
  %22 = phi i64 [ %18, %16 ], [ %35, %34 ]
  br i1 %17, label %34, label %23

23:                                               ; preds = %21
  %24 = add nsw i64 %22, 1
  %25 = trunc i64 %22 to i32
  %26 = getelementptr inbounds i32, i32* %6, i64 %22
  br label %37

27:                                               ; preds = %34, %13
  %28 = phi i64 [ %15, %13 ], [ %19, %34 ]
  %29 = phi i64 [ %14, %13 ], [ %18, %34 ]
  %30 = mul nsw i64 %29, %4
  %31 = getelementptr inbounds i32, i32* %6, i64 %30
  %32 = getelementptr inbounds i32, i32* %31, i64 %28
  %33 = load i32, i32* %32, align 4, !tbaa !5
  ret i32 %33

34:                                               ; preds = %53, %21
  %35 = add nsw i64 %22, -1
  %36 = icmp sgt i64 %22, %19
  br i1 %36, label %21, label %27, !llvm.loop !9

37:                                               ; preds = %23, %53
  %38 = phi i64 [ 0, %23 ], [ %54, %53 ]
  %39 = mul nuw nsw i64 %38, %4
  %40 = getelementptr inbounds i32, i32* %6, i64 %39
  %41 = getelementptr inbounds i32, i32* %40, i64 %24
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %43 = getelementptr inbounds i32, i32* %40, i64 %22
  store i32 %42, i32* %43, align 4, !tbaa !5
  %44 = trunc i64 %38 to i32
  %45 = sub nsw i32 %44, %25
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = zext i32 %45 to i64
  %49 = mul nuw nsw i64 %48, %4
  %50 = getelementptr inbounds i32, i32* %26, i64 %49
  %51 = load i32, i32* %50, align 4, !tbaa !5
  %52 = add nsw i32 %51, %42
  store i32 %52, i32* %43, align 4, !tbaa !5
  br label %53

53:                                               ; preds = %37, %47
  %54 = add nuw nsw i64 %38, 1
  %55 = icmp eq i64 %54, %20
  br i1 %55, label %34, label %37, !llvm.loop !11
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
