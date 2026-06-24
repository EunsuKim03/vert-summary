; ModuleID = 'benchmark/c_transcoder/FIND_THE_ELEMENT_THAT_APPEARS_ONCE/FIND_THE_ELEMENT_THAT_APPEARS_ONCE_processed.c'
source_filename = "benchmark/c_transcoder/FIND_THE_ELEMENT_THAT_APPEARS_ONCE/FIND_THE_ELEMENT_THAT_APPEARS_ONCE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %23

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = and i64 %5, 1
  %7 = icmp eq i32 %1, 1
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = and i64 %5, 4294967294
  br label %25

10:                                               ; preds = %25
  %11 = xor i32 %46, -1
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ undef, %4 ], [ %45, %10 ]
  %14 = phi i64 [ 0, %4 ], [ %47, %10 ]
  %15 = phi i32 [ 0, %4 ], [ %45, %10 ]
  %16 = phi i32 [ -1, %4 ], [ %11, %10 ]
  %17 = icmp eq i64 %6, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds i32, i32* %0, i64 %14
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = xor i32 %20, %15
  %22 = and i32 %21, %16
  br label %23

23:                                               ; preds = %18, %12, %2
  %24 = phi i32 [ 0, %2 ], [ %13, %12 ], [ %22, %18 ]
  ret i32 %24

25:                                               ; preds = %25, %8
  %26 = phi i64 [ 0, %8 ], [ %47, %25 ]
  %27 = phi i32 [ 0, %8 ], [ %45, %25 ]
  %28 = phi i32 [ 0, %8 ], [ %46, %25 ]
  %29 = phi i64 [ 0, %8 ], [ %48, %25 ]
  %30 = getelementptr inbounds i32, i32* %0, i64 %26
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = and i32 %31, %27
  %33 = or i32 %32, %28
  %34 = xor i32 %31, %27
  %35 = and i32 %34, %28
  %36 = xor i32 %35, %34
  %37 = xor i32 %35, %33
  %38 = or i64 %26, 1
  %39 = getelementptr inbounds i32, i32* %0, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = and i32 %40, %36
  %42 = or i32 %41, %37
  %43 = xor i32 %40, %36
  %44 = and i32 %43, %37
  %45 = xor i32 %44, %43
  %46 = xor i32 %44, %42
  %47 = add nuw nsw i64 %26, 2
  %48 = add i64 %29, 2
  %49 = icmp eq i64 %48, %9
  br i1 %49, label %10, label %25, !llvm.loop !9
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
