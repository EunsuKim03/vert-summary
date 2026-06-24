; ModuleID = 'benchmark/c_transcoder/SIZE_SUBARRAY_MAXIMUM_SUM/SIZE_SUBARRAY_MAXIMUM_SUM_processed.c'
source_filename = "benchmark/c_transcoder/SIZE_SUBARRAY_MAXIMUM_SUM/SIZE_SUBARRAY_MAXIMUM_SUM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %33

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = and i64 %5, 1
  %7 = icmp eq i32 %1, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = and i64 %5, 4294967294
  br label %35

10:                                               ; preds = %35, %4
  %11 = phi i32 [ undef, %4 ], [ %61, %35 ]
  %12 = phi i32 [ undef, %4 ], [ %63, %35 ]
  %13 = phi i64 [ 0, %4 ], [ %65, %35 ]
  %14 = phi i32 [ 0, %4 ], [ %68, %35 ]
  %15 = phi i32 [ 0, %4 ], [ %63, %35 ]
  %16 = phi i32 [ 0, %4 ], [ %61, %35 ]
  %17 = phi i32 [ 0, %4 ], [ %66, %35 ]
  %18 = phi i32 [ -2147483648, %4 ], [ %60, %35 ]
  %19 = icmp eq i64 %6, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds i32, i32* %0, i64 %13
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = add nsw i32 %22, %17
  %24 = icmp slt i32 %18, %23
  %25 = select i1 %24, i32 %14, i32 %16
  %26 = trunc i64 %13 to i32
  %27 = select i1 %24, i32 %26, i32 %15
  br label %28

28:                                               ; preds = %10, %20
  %29 = phi i32 [ %11, %10 ], [ %25, %20 ]
  %30 = phi i32 [ %12, %10 ], [ %27, %20 ]
  %31 = sub i32 1, %29
  %32 = add i32 %31, %30
  br label %33

33:                                               ; preds = %28, %2
  %34 = phi i32 [ %32, %28 ], [ 1, %2 ]
  ret i32 %34

35:                                               ; preds = %35, %8
  %36 = phi i64 [ 0, %8 ], [ %65, %35 ]
  %37 = phi i32 [ 0, %8 ], [ %68, %35 ]
  %38 = phi i32 [ 0, %8 ], [ %63, %35 ]
  %39 = phi i32 [ 0, %8 ], [ %61, %35 ]
  %40 = phi i32 [ 0, %8 ], [ %66, %35 ]
  %41 = phi i32 [ -2147483648, %8 ], [ %60, %35 ]
  %42 = phi i64 [ 0, %8 ], [ %69, %35 ]
  %43 = getelementptr inbounds i32, i32* %0, i64 %36
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = add nsw i32 %44, %40
  %46 = icmp slt i32 %41, %45
  %47 = select i1 %46, i32 %45, i32 %41
  %48 = select i1 %46, i32 %37, i32 %39
  %49 = trunc i64 %36 to i32
  %50 = select i1 %46, i32 %49, i32 %38
  %51 = icmp slt i32 %45, 0
  %52 = or i64 %36, 1
  %53 = select i1 %51, i32 0, i32 %45
  %54 = trunc i64 %52 to i32
  %55 = select i1 %51, i32 %54, i32 %37
  %56 = getelementptr inbounds i32, i32* %0, i64 %52
  %57 = load i32, i32* %56, align 4, !tbaa !5
  %58 = add nsw i32 %57, %53
  %59 = icmp slt i32 %47, %58
  %60 = select i1 %59, i32 %58, i32 %47
  %61 = select i1 %59, i32 %55, i32 %48
  %62 = trunc i64 %52 to i32
  %63 = select i1 %59, i32 %62, i32 %50
  %64 = icmp slt i32 %58, 0
  %65 = add nuw nsw i64 %36, 2
  %66 = select i1 %64, i32 0, i32 %58
  %67 = trunc i64 %65 to i32
  %68 = select i1 %64, i32 %67, i32 %55
  %69 = add i64 %42, 2
  %70 = icmp eq i64 %69, %9
  br i1 %70, label %10, label %35, !llvm.loop !9
}

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
