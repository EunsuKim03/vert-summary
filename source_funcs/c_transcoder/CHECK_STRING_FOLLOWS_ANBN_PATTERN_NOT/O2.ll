; ModuleID = 'benchmark/c_transcoder/CHECK_STRING_FOLLOWS_ANBN_PATTERN_NOT/CHECK_STRING_FOLLOWS_ANBN_PATTERN_NOT_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_STRING_FOLLOWS_ANBN_PATTERN_NOT/CHECK_STRING_FOLLOWS_ANBN_PATTERN_NOT_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = and i64 %2, 4294967295
  br label %7

7:                                                ; preds = %5, %12
  %8 = phi i64 [ 0, %5 ], [ %13, %12 ]
  %9 = getelementptr inbounds i8, i8* %0, i64 %8
  %10 = load i8, i8* %9, align 1, !tbaa !5
  %11 = icmp eq i8 %10, 97
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = add nuw nsw i64 %8, 1
  %14 = icmp eq i64 %13, %6
  br i1 %14, label %17, label %7, !llvm.loop !8

15:                                               ; preds = %7
  %16 = trunc i64 %8 to i32
  br label %17

17:                                               ; preds = %12, %15, %1
  %18 = phi i32 [ 0, %1 ], [ %16, %15 ], [ %3, %12 ]
  %19 = shl nuw nsw i32 %18, 1
  %20 = icmp eq i32 %19, %3
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = icmp slt i32 %18, %3
  br i1 %22, label %23, label %34

23:                                               ; preds = %21
  %24 = zext i32 %18 to i64
  br label %28

25:                                               ; preds = %28
  %26 = trunc i64 %33 to i32
  %27 = icmp slt i32 %26, %3
  br i1 %27, label %28, label %34, !llvm.loop !10

28:                                               ; preds = %23, %25
  %29 = phi i64 [ %24, %23 ], [ %33, %25 ]
  %30 = getelementptr inbounds i8, i8* %0, i64 %29
  %31 = load i8, i8* %30, align 1, !tbaa !5
  %32 = icmp eq i8 %31, 98
  %33 = add nuw nsw i64 %29, 1
  br i1 %32, label %25, label %34

34:                                               ; preds = %25, %28, %21, %17
  %35 = phi i32 [ 0, %17 ], [ 1, %21 ], [ 1, %25 ], [ 0, %28 ]
  ret i32 %35
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
