; ModuleID = 'benchmark/c_transcoder/CHECK_OCCURRENCES_CHARACTER_APPEAR_TOGETHER/CHECK_OCCURRENCES_CHARACTER_APPEAR_TOGETHER_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_OCCURRENCES_CHARACTER_APPEAR_TOGETHER/CHECK_OCCURRENCES_CHARACTER_APPEAR_TOGETHER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8 noundef signext %1) local_unnamed_addr #0 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %4 = trunc i64 %3 to i32
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %2
  %7 = shl i64 %3, 32
  %8 = ashr exact i64 %7, 32
  br label %9

9:                                                ; preds = %6, %35
  %10 = phi i32 [ %37, %35 ], [ 0, %6 ]
  %11 = phi i8 [ %36, %35 ], [ 0, %6 ]
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds i8, i8* %0, i64 %12
  %14 = load i8, i8* %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, %1
  br i1 %15, label %16, label %31

16:                                               ; preds = %9
  %17 = and i8 %11, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = icmp slt i32 %10, %4
  br i1 %20, label %21, label %35

21:                                               ; preds = %19
  %22 = sext i32 %10 to i64
  br label %23

23:                                               ; preds = %21, %28
  %24 = phi i64 [ %22, %21 ], [ %29, %28 ]
  %25 = getelementptr inbounds i8, i8* %0, i64 %24
  %26 = load i8, i8* %25, align 1, !tbaa !5
  %27 = icmp eq i8 %26, %1
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = add nsw i64 %24, 1
  %30 = icmp eq i64 %29, %8
  br i1 %30, label %35, label %23, !llvm.loop !8

31:                                               ; preds = %9
  %32 = add nsw i32 %10, 1
  br label %35

33:                                               ; preds = %23
  %34 = trunc i64 %24 to i32
  br label %35

35:                                               ; preds = %33, %28, %19, %31
  %36 = phi i8 [ %11, %31 ], [ 1, %19 ], [ 1, %28 ], [ 1, %33 ]
  %37 = phi i32 [ %32, %31 ], [ %10, %19 ], [ %34, %33 ], [ %4, %28 ]
  %38 = icmp slt i32 %37, %4
  br i1 %38, label %9, label %39, !llvm.loop !11

39:                                               ; preds = %16, %35, %2
  %40 = phi i32 [ 1, %2 ], [ 0, %16 ], [ 1, %35 ]
  ret i32 %40
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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
