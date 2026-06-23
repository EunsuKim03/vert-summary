; ModuleID = 'benchmark/c_transcoder/SUM_NODES_K_TH_LEVEL_TREE_REPRESENTED_STRING/SUM_NODES_K_TH_LEVEL_TREE_REPRESENTED_STRING_processed.c'
source_filename = "benchmark/c_transcoder/SUM_NODES_K_TH_LEVEL_TREE_REPRESENTED_STRING/SUM_NODES_K_TH_LEVEL_TREE_REPRESENTED_STRING_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %4 = trunc i64 %3 to i32
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = and i64 %3, 4294967295
  br label %10

8:                                                ; preds = %26, %2
  %9 = phi i32 [ 0, %2 ], [ %27, %26 ]
  ret i32 %9

10:                                               ; preds = %6, %26
  %11 = phi i64 [ 0, %6 ], [ %29, %26 ]
  %12 = phi i32 [ -1, %6 ], [ %28, %26 ]
  %13 = phi i32 [ 0, %6 ], [ %27, %26 ]
  %14 = getelementptr inbounds i8, i8* %0, i64 %11
  %15 = load i8, i8* %14, align 1, !tbaa !5
  %16 = sext i8 %15 to i32
  switch i8 %15, label %21 [
    i8 40, label %17
    i8 41, label %19
  ]

17:                                               ; preds = %10
  %18 = add nsw i32 %12, 1
  br label %26

19:                                               ; preds = %10
  %20 = add nsw i32 %12, -1
  br label %26

21:                                               ; preds = %10
  %22 = icmp eq i32 %12, %1
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = add i32 %13, -48
  %25 = add i32 %24, %16
  br label %26

26:                                               ; preds = %17, %21, %23, %19
  %27 = phi i32 [ %13, %17 ], [ %13, %19 ], [ %25, %23 ], [ %13, %21 ]
  %28 = phi i32 [ %18, %17 ], [ %20, %19 ], [ %12, %23 ], [ %12, %21 ]
  %29 = add nuw nsw i64 %11, 1
  %30 = icmp eq i64 %29, %7
  br i1 %30, label %8, label %10, !llvm.loop !8
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
