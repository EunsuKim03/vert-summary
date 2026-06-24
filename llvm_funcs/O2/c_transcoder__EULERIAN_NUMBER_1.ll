; ModuleID = 'benchmark/c_transcoder/EULERIAN_NUMBER_1/EULERIAN_NUMBER_1_processed.c'
source_filename = "benchmark/c_transcoder/EULERIAN_NUMBER_1/EULERIAN_NUMBER_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %0, 1
  %4 = zext i32 %3 to i64
  %5 = add i32 %1, 1
  %6 = zext i32 %5 to i64
  %7 = mul nuw i64 %6, %4
  %8 = alloca i32, i64 %7, align 16
  %9 = bitcast i32* %8 to i8*
  %10 = shl nuw i64 %7, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false)
  %11 = icmp slt i32 %0, 1
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = icmp slt i32 %1, 0
  %14 = icmp eq i32 %1, 0
  br label %15

15:                                               ; preds = %12, %30
  %16 = phi i64 [ 1, %12 ], [ %31, %30 ]
  br i1 %13, label %30, label %17

17:                                               ; preds = %15
  %18 = add nsw i64 %16, -1
  %19 = mul nuw nsw i64 %18, %6
  %20 = getelementptr inbounds i32, i32* %8, i64 %19
  %21 = mul nuw nsw i64 %16, %6
  %22 = getelementptr inbounds i32, i32* %8, i64 %21
  store i32 1, i32* %22, align 4, !tbaa !5
  br i1 %14, label %30, label %33

23:                                               ; preds = %30, %2
  %24 = sext i32 %0 to i64
  %25 = mul nsw i64 %6, %24
  %26 = getelementptr inbounds i32, i32* %8, i64 %25
  %27 = sext i32 %1 to i64
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !5
  ret i32 %29

30:                                               ; preds = %50, %17, %15
  %31 = add nuw nsw i64 %16, 1
  %32 = icmp eq i64 %31, %4
  br i1 %32, label %23, label %15, !llvm.loop !9

33:                                               ; preds = %17, %50
  %34 = phi i64 [ %51, %50 ], [ 1, %17 ]
  %35 = icmp ugt i64 %16, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = sub nsw i64 %16, %34
  %38 = add nsw i64 %34, -1
  %39 = getelementptr inbounds i32, i32* %20, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = trunc i64 %37 to i32
  %42 = mul nsw i32 %40, %41
  %43 = getelementptr inbounds i32, i32* %20, i64 %34
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = trunc i64 %34 to i32
  %46 = add i32 %45, 1
  %47 = mul nsw i32 %44, %46
  %48 = add nsw i32 %47, %42
  %49 = getelementptr inbounds i32, i32* %22, i64 %34
  store i32 %48, i32* %49, align 4, !tbaa !5
  br label %50

50:                                               ; preds = %33, %36
  %51 = add nuw nsw i64 %34, 1
  %52 = icmp eq i64 %51, %6
  br i1 %52, label %30, label %33, !llvm.loop !11
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
!11 = distinct !{!11, !10, !12}
!12 = !{!"llvm.loop.peeled.count", i32 1}
