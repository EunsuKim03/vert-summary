; ModuleID = 'benchmark/c_transcoder/COUNT_STRINGS_WITH_CONSECUTIVE_1S/COUNT_STRINGS_WITH_CONSECUTIVE_1S_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_STRINGS_WITH_CONSECUTIVE_1S/COUNT_STRINGS_WITH_CONSECUTIVE_1S_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = zext i32 %0 to i64
  %3 = alloca i32, i64 %2, align 16
  %4 = alloca i32, i64 %2, align 16
  store i32 1, i32* %4, align 16, !tbaa !5
  store i32 1, i32* %3, align 16, !tbaa !5
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = add nsw i64 %2, -1
  %8 = add nsw i64 %2, -2
  %9 = and i64 %7, 3
  %10 = icmp ult i64 %8, 3
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = and i64 %7, -4
  br label %39

13:                                               ; preds = %39, %6
  %14 = phi i32 [ 1, %6 ], [ %52, %39 ]
  %15 = phi i32 [ 1, %6 ], [ %56, %39 ]
  %16 = phi i64 [ 1, %6 ], [ %59, %39 ]
  %17 = icmp eq i64 %9, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %13, %18
  %19 = phi i32 [ %20, %18 ], [ %14, %13 ]
  %20 = phi i32 [ %23, %18 ], [ %15, %13 ]
  %21 = phi i64 [ %26, %18 ], [ %16, %13 ]
  %22 = phi i64 [ %27, %18 ], [ 0, %13 ]
  %23 = add nsw i32 %19, %20
  %24 = getelementptr inbounds i32, i32* %3, i64 %21
  store i32 %23, i32* %24, align 4, !tbaa !5
  %25 = getelementptr inbounds i32, i32* %4, i64 %21
  store i32 %20, i32* %25, align 4, !tbaa !5
  %26 = add nuw nsw i64 %21, 1
  %27 = add i64 %22, 1
  %28 = icmp eq i64 %27, %9
  br i1 %28, label %29, label %18, !llvm.loop !9

29:                                               ; preds = %13, %18, %1
  %30 = shl nuw i32 1, %0
  %31 = add nsw i32 %0, -1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %3, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = getelementptr inbounds i32, i32* %4, i64 %32
  %36 = load i32, i32* %35, align 4, !tbaa !5
  %37 = add i32 %34, %36
  %38 = sub i32 %30, %37
  ret i32 %38

39:                                               ; preds = %39, %11
  %40 = phi i32 [ 1, %11 ], [ %52, %39 ]
  %41 = phi i32 [ 1, %11 ], [ %56, %39 ]
  %42 = phi i64 [ 1, %11 ], [ %59, %39 ]
  %43 = phi i64 [ 0, %11 ], [ %60, %39 ]
  %44 = add nsw i32 %40, %41
  %45 = getelementptr inbounds i32, i32* %3, i64 %42
  store i32 %44, i32* %45, align 4, !tbaa !5
  %46 = getelementptr inbounds i32, i32* %4, i64 %42
  store i32 %41, i32* %46, align 4, !tbaa !5
  %47 = add nuw nsw i64 %42, 1
  %48 = add nsw i32 %41, %44
  %49 = getelementptr inbounds i32, i32* %3, i64 %47
  store i32 %48, i32* %49, align 4, !tbaa !5
  %50 = getelementptr inbounds i32, i32* %4, i64 %47
  store i32 %44, i32* %50, align 4, !tbaa !5
  %51 = add nuw nsw i64 %42, 2
  %52 = add nsw i32 %44, %48
  %53 = getelementptr inbounds i32, i32* %3, i64 %51
  store i32 %52, i32* %53, align 4, !tbaa !5
  %54 = getelementptr inbounds i32, i32* %4, i64 %51
  store i32 %48, i32* %54, align 4, !tbaa !5
  %55 = add nuw nsw i64 %42, 3
  %56 = add nsw i32 %48, %52
  %57 = getelementptr inbounds i32, i32* %3, i64 %55
  store i32 %56, i32* %57, align 4, !tbaa !5
  %58 = getelementptr inbounds i32, i32* %4, i64 %55
  store i32 %52, i32* %58, align 4, !tbaa !5
  %59 = add nuw nsw i64 %42, 4
  %60 = add i64 %43, 4
  %61 = icmp eq i64 %60, %12
  br i1 %61, label %13, label %39, !llvm.loop !11
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
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
