; ModuleID = 'benchmark/c_transcoder/DICE_THROW_PROBLEM_1/DICE_THROW_PROBLEM_1_processed.c'
source_filename = "benchmark/c_transcoder/DICE_THROW_PROBLEM_1/DICE_THROW_PROBLEM_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i64 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %1, 1
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
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = sext i32 %2 to i64
  br label %29

15:                                               ; preds = %3
  %16 = xor i32 %0, -1
  %17 = sext i32 %2 to i64
  br label %18

18:                                               ; preds = %15, %36
  %19 = phi i64 [ 1, %15 ], [ %37, %36 ]
  %20 = icmp sgt i64 %19, %17
  br i1 %20, label %36, label %21

21:                                               ; preds = %18
  %22 = mul nuw nsw i64 %19, %7
  %23 = getelementptr inbounds i64, i64* %9, i64 %22
  %24 = add nsw i64 %19, -1
  %25 = mul nuw nsw i64 %24, %7
  %26 = getelementptr inbounds i64, i64* %9, i64 %25
  %27 = getelementptr inbounds i64, i64* %23, i64 %24
  %28 = load i64, i64* %27, align 8, !tbaa !5
  br label %39

29:                                               ; preds = %36, %13
  %30 = phi i64 [ %14, %13 ], [ %17, %36 ]
  %31 = sext i32 %1 to i64
  %32 = mul nsw i64 %7, %31
  %33 = getelementptr inbounds i64, i64* %9, i64 %32
  %34 = getelementptr inbounds i64, i64* %33, i64 %30
  %35 = load i64, i64* %34, align 8, !tbaa !5
  ret i64 %35

36:                                               ; preds = %55, %18
  %37 = add nuw nsw i64 %19, 1
  %38 = icmp eq i64 %37, %5
  br i1 %38, label %29, label %18, !llvm.loop !9

39:                                               ; preds = %21, %55
  %40 = phi i64 [ %28, %21 ], [ %56, %55 ]
  %41 = phi i64 [ %19, %21 ], [ %57, %55 ]
  %42 = add nsw i64 %41, -1
  %43 = getelementptr inbounds i64, i64* %26, i64 %42
  %44 = load i64, i64* %43, align 8, !tbaa !5
  %45 = add nsw i64 %44, %40
  %46 = getelementptr inbounds i64, i64* %23, i64 %41
  store i64 %45, i64* %46, align 8, !tbaa !5
  %47 = trunc i64 %41 to i32
  %48 = add i32 %47, %16
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = zext i32 %48 to i64
  %52 = getelementptr inbounds i64, i64* %26, i64 %51
  %53 = load i64, i64* %52, align 8, !tbaa !5
  %54 = sub nsw i64 %45, %53
  store i64 %54, i64* %46, align 8, !tbaa !5
  br label %55

55:                                               ; preds = %39, %50
  %56 = phi i64 [ %45, %39 ], [ %54, %50 ]
  %57 = add nuw nsw i64 %41, 1
  %58 = icmp eq i64 %57, %7
  br i1 %58, label %36, label %39, !llvm.loop !11
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
