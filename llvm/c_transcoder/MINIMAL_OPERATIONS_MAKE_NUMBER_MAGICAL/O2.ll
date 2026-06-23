; ModuleID = 'benchmark/c_transcoder/MINIMAL_OPERATIONS_MAKE_NUMBER_MAGICAL/MINIMAL_OPERATIONS_MAKE_NUMBER_MAGICAL_processed.c'
source_filename = "benchmark/c_transcoder/MINIMAL_OPERATIONS_MAKE_NUMBER_MAGICAL/MINIMAL_OPERATIONS_MAKE_NUMBER_MAGICAL_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds i8, i8* %0, i64 1
  %3 = getelementptr inbounds i8, i8* %0, i64 2
  %4 = getelementptr inbounds i8, i8* %0, i64 3
  %5 = getelementptr inbounds i8, i8* %0, i64 4
  %6 = getelementptr inbounds i8, i8* %0, i64 5
  br label %7

7:                                                ; preds = %1, %15
  %8 = phi i32 [ 0, %1 ], [ %16, %15 ]
  %9 = phi i32 [ 6, %1 ], [ %85, %15 ]
  br label %11

10:                                               ; preds = %15
  ret i32 %85

11:                                               ; preds = %7, %22
  %12 = phi i32 [ 0, %7 ], [ %23, %22 ]
  %13 = phi i32 [ %9, %7 ], [ %85, %22 ]
  %14 = add nuw nsw i32 %12, %8
  br label %18

15:                                               ; preds = %22
  %16 = add nuw nsw i32 %8, 1
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %10, label %7, !llvm.loop !5

18:                                               ; preds = %11, %28
  %19 = phi i32 [ 0, %11 ], [ %29, %28 ]
  %20 = phi i32 [ %13, %11 ], [ %85, %28 ]
  %21 = add nuw nsw i32 %14, %19
  br label %25

22:                                               ; preds = %28
  %23 = add nuw nsw i32 %12, 1
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %15, label %11, !llvm.loop !7

25:                                               ; preds = %18, %35
  %26 = phi i32 [ 0, %18 ], [ %36, %35 ]
  %27 = phi i32 [ %20, %18 ], [ %85, %35 ]
  br label %31

28:                                               ; preds = %35
  %29 = add nuw nsw i32 %19, 1
  %30 = icmp eq i32 %29, 10
  br i1 %30, label %22, label %18, !llvm.loop !8

31:                                               ; preds = %25, %38
  %32 = phi i32 [ 0, %25 ], [ %39, %38 ]
  %33 = phi i32 [ %27, %25 ], [ %85, %38 ]
  %34 = add nuw nsw i32 %32, %26
  br label %41

35:                                               ; preds = %38
  %36 = add nuw nsw i32 %26, 1
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %28, label %25, !llvm.loop !9

38:                                               ; preds = %84
  %39 = add nuw nsw i32 %32, 1
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %35, label %31, !llvm.loop !10

41:                                               ; preds = %31, %84
  %42 = phi i32 [ 0, %31 ], [ %86, %84 ]
  %43 = phi i32 [ %33, %31 ], [ %85, %84 ]
  %44 = add nuw nsw i32 %34, %42
  %45 = icmp eq i32 %21, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %41
  %47 = load i8, i8* %0, align 1, !tbaa !11
  %48 = sext i8 %47 to i32
  %49 = add nsw i32 %48, -48
  %50 = icmp ne i32 %8, %49
  %51 = zext i1 %50 to i32
  %52 = load i8, i8* %2, align 1, !tbaa !11
  %53 = sext i8 %52 to i32
  %54 = add nsw i32 %53, -48
  %55 = icmp eq i32 %12, %54
  %56 = select i1 %50, i32 2, i32 1
  %57 = select i1 %55, i32 %51, i32 %56
  %58 = load i8, i8* %3, align 1, !tbaa !11
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %59, -48
  %61 = icmp ne i32 %19, %60
  %62 = zext i1 %61 to i32
  %63 = add nuw nsw i32 %57, %62
  %64 = load i8, i8* %4, align 1, !tbaa !11
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 %65, -48
  %67 = icmp ne i32 %26, %66
  %68 = zext i1 %67 to i32
  %69 = add nuw nsw i32 %63, %68
  %70 = load i8, i8* %5, align 1, !tbaa !11
  %71 = sext i8 %70 to i32
  %72 = add nsw i32 %71, -48
  %73 = icmp ne i32 %32, %72
  %74 = zext i1 %73 to i32
  %75 = add nuw nsw i32 %69, %74
  %76 = load i8, i8* %6, align 1, !tbaa !11
  %77 = sext i8 %76 to i32
  %78 = add nsw i32 %77, -48
  %79 = icmp ne i32 %42, %78
  %80 = zext i1 %79 to i32
  %81 = add nuw nsw i32 %75, %80
  %82 = icmp slt i32 %81, %43
  %83 = select i1 %82, i32 %81, i32 %43
  br label %84

84:                                               ; preds = %41, %46
  %85 = phi i32 [ %83, %46 ], [ %43, %41 ]
  %86 = add nuw nsw i32 %42, 1
  %87 = icmp eq i32 %86, 10
  br i1 %87, label %38, label %41, !llvm.loop !14
}

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = !{!12, !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = distinct !{!14, !6}
