; ModuleID = 'benchmark/c_transcoder/DICE_THROW_PROBLEM_1/DICE_THROW_PROBLEM_1_processed.c'
source_filename = "benchmark/c_transcoder/DICE_THROW_PROBLEM_1/DICE_THROW_PROBLEM_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i64 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add nsw i32 %1, 1
  %5 = zext i32 %4 to i64
  %6 = add i32 %2, 1
  %7 = zext i32 %6 to i64
  %8 = mul nuw i64 %7, %5
  %9 = alloca i64, i64 %8, align 16
  %10 = bitcast i64* %9 to i8*
  %11 = shl nuw i64 %8, 3
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %11, i1 false)
  store i64 1, i64* %9, align 16, !tbaa !5
  %12 = icmp slt i32 %1, 1
  br i1 %12, label %28, label %13

13:                                               ; preds = %3
  %14 = xor i32 %0, -1
  %15 = sext i32 %2 to i64
  %16 = add i32 %1, 1
  %17 = zext i32 %16 to i64
  %18 = zext i32 %6 to i64
  br label %19

19:                                               ; preds = %13, %35
  %20 = phi i64 [ 1, %13 ], [ %36, %35 ]
  %21 = icmp sgt i64 %20, %15
  br i1 %21, label %35, label %22

22:                                               ; preds = %19
  %23 = mul nuw nsw i64 %20, %7
  %24 = getelementptr inbounds i64, i64* %9, i64 %23
  %25 = add nsw i64 %20, -1
  %26 = mul nuw nsw i64 %25, %7
  %27 = getelementptr inbounds i64, i64* %9, i64 %26
  br label %38

28:                                               ; preds = %35, %3
  %29 = sext i32 %1 to i64
  %30 = mul nsw i64 %7, %29
  %31 = getelementptr inbounds i64, i64* %9, i64 %30
  %32 = sext i32 %2 to i64
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8, !tbaa !5
  ret i64 %34

35:                                               ; preds = %55, %19
  %36 = add nuw nsw i64 %20, 1
  %37 = icmp eq i64 %36, %17
  br i1 %37, label %28, label %19, !llvm.loop !9

38:                                               ; preds = %22, %55
  %39 = phi i64 [ %20, %22 ], [ %56, %55 ]
  %40 = add nsw i64 %39, -1
  %41 = getelementptr inbounds i64, i64* %24, i64 %40
  %42 = load i64, i64* %41, align 8, !tbaa !5
  %43 = getelementptr inbounds i64, i64* %27, i64 %40
  %44 = load i64, i64* %43, align 8, !tbaa !5
  %45 = add nsw i64 %44, %42
  %46 = getelementptr inbounds i64, i64* %24, i64 %39
  store i64 %45, i64* %46, align 8, !tbaa !5
  %47 = trunc i64 %39 to i32
  %48 = add i32 %47, %14
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = sext i32 %48 to i64
  %52 = getelementptr inbounds i64, i64* %27, i64 %51
  %53 = load i64, i64* %52, align 8, !tbaa !5
  %54 = sub nsw i64 %45, %53
  store i64 %54, i64* %46, align 8, !tbaa !5
  br label %55

55:                                               ; preds = %38, %50
  %56 = add nuw nsw i64 %39, 1
  %57 = icmp eq i64 %56, %18
  br i1 %57, label %35, label %38, !llvm.loop !12
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
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
