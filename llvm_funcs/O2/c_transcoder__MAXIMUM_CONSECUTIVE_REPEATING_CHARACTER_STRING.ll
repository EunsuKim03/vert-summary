; ModuleID = 'benchmark/c_transcoder/MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING/MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING/MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local signext i8 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = load i8, i8* %0, align 1, !tbaa !5
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = shl i64 %2, 32
  %8 = ashr exact i64 %7, 32
  %9 = and i64 %2, 4294967295
  br label %12

10:                                               ; preds = %39, %1
  %11 = phi i8 [ %4, %1 ], [ %41, %39 ]
  ret i8 %11

12:                                               ; preds = %6, %39
  %13 = phi i64 [ 0, %6 ], [ %18, %39 ]
  %14 = phi i32 [ %3, %6 ], [ %43, %39 ]
  %15 = phi i64 [ 1, %6 ], [ %42, %39 ]
  %16 = phi i8 [ %4, %6 ], [ %41, %39 ]
  %17 = phi i32 [ 0, %6 ], [ %40, %39 ]
  %18 = add nuw nsw i64 %13, 1
  %19 = icmp slt i64 %18, %8
  br i1 %19, label %20, label %33

20:                                               ; preds = %12
  %21 = getelementptr inbounds i8, i8* %0, i64 %13
  %22 = load i8, i8* %21, align 1, !tbaa !5
  br label %23

23:                                               ; preds = %20, %29
  %24 = phi i64 [ %15, %20 ], [ %31, %29 ]
  %25 = phi i32 [ 1, %20 ], [ %30, %29 ]
  %26 = getelementptr inbounds i8, i8* %0, i64 %24
  %27 = load i8, i8* %26, align 1, !tbaa !5
  %28 = icmp eq i8 %22, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = add nuw nsw i32 %25, 1
  %31 = add nuw nsw i64 %24, 1
  %32 = icmp eq i64 %31, %9
  br i1 %32, label %33, label %23, !llvm.loop !8

33:                                               ; preds = %29, %23, %12
  %34 = phi i32 [ 1, %12 ], [ %25, %23 ], [ %14, %29 ]
  %35 = icmp sgt i32 %34, %17
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = getelementptr inbounds i8, i8* %0, i64 %13
  %38 = load i8, i8* %37, align 1, !tbaa !5
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i32 [ %34, %36 ], [ %17, %33 ]
  %41 = phi i8 [ %38, %36 ], [ %16, %33 ]
  %42 = add nuw nsw i64 %15, 1
  %43 = add i32 %14, -1
  %44 = icmp eq i64 %18, %9
  br i1 %44, label %10, label %12, !llvm.loop !10
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
