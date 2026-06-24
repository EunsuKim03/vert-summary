; ModuleID = 'benchmark/c_transcoder/CHECK_OCCURRENCES_CHARACTER_APPEAR_TOGETHER/CHECK_OCCURRENCES_CHARACTER_APPEAR_TOGETHER_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_OCCURRENCES_CHARACTER_APPEAR_TOGETHER/CHECK_OCCURRENCES_CHARACTER_APPEAR_TOGETHER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8 noundef signext %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %4 = trunc i64 %3 to i32
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %2
  %7 = shl i64 %3, 32
  %8 = ashr exact i64 %7, 32
  br label %9

9:                                                ; preds = %6, %33
  %10 = phi i32 [ %35, %33 ], [ 0, %6 ]
  %11 = phi i8 [ %34, %33 ], [ 0, %6 ]
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds i8, i8* %0, i64 %12
  %14 = load i8, i8* %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, %1
  br i1 %15, label %16, label %29

16:                                               ; preds = %9
  %17 = and i8 %11, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = icmp slt i32 %10, %4
  br i1 %20, label %21, label %33

21:                                               ; preds = %19, %25
  %22 = phi i64 [ %23, %25 ], [ %12, %19 ]
  %23 = add nsw i64 %22, 1
  %24 = icmp eq i64 %23, %8
  br i1 %24, label %37, label %25, !llvm.loop !8

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, i8* %0, i64 %23
  %27 = load i8, i8* %26, align 1, !tbaa !5
  %28 = icmp eq i8 %27, %1
  br i1 %28, label %21, label %31

29:                                               ; preds = %9
  %30 = add nsw i32 %10, 1
  br label %33

31:                                               ; preds = %25
  %32 = trunc i64 %23 to i32
  br label %33

33:                                               ; preds = %31, %19, %29
  %34 = phi i8 [ %11, %29 ], [ 1, %19 ], [ 1, %31 ]
  %35 = phi i32 [ %30, %29 ], [ %10, %19 ], [ %32, %31 ]
  %36 = icmp slt i32 %35, %4
  br i1 %36, label %9, label %37, !llvm.loop !10

37:                                               ; preds = %16, %33, %21, %2
  %38 = phi i32 [ 1, %2 ], [ 1, %21 ], [ 1, %33 ], [ 0, %16 ]
  ret i32 %38
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

attributes #0 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
