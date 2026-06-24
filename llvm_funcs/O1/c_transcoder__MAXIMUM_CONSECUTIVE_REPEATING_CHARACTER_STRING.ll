; ModuleID = 'benchmark/c_transcoder/MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING/MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING/MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local signext i8 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = load i8, i8* %0, align 1, !tbaa !5
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = shl i64 %2, 32
  %8 = ashr exact i64 %7, 32
  %9 = and i64 %2, 4294967295
  %10 = and i64 %2, 4294967295
  br label %13

11:                                               ; preds = %40, %1
  %12 = phi i8 [ %4, %1 ], [ %42, %40 ]
  ret i8 %12

13:                                               ; preds = %6, %40
  %14 = phi i64 [ 0, %6 ], [ %19, %40 ]
  %15 = phi i32 [ %3, %6 ], [ %44, %40 ]
  %16 = phi i64 [ 1, %6 ], [ %43, %40 ]
  %17 = phi i8 [ %4, %6 ], [ %42, %40 ]
  %18 = phi i32 [ 0, %6 ], [ %41, %40 ]
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp slt i64 %19, %8
  br i1 %20, label %21, label %34

21:                                               ; preds = %13
  %22 = getelementptr inbounds i8, i8* %0, i64 %14
  %23 = load i8, i8* %22, align 1, !tbaa !5
  br label %24

24:                                               ; preds = %21, %30
  %25 = phi i64 [ %16, %21 ], [ %32, %30 ]
  %26 = phi i32 [ 1, %21 ], [ %31, %30 ]
  %27 = getelementptr inbounds i8, i8* %0, i64 %25
  %28 = load i8, i8* %27, align 1, !tbaa !5
  %29 = icmp eq i8 %23, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = add nuw nsw i32 %26, 1
  %32 = add nuw nsw i64 %25, 1
  %33 = icmp eq i64 %32, %10
  br i1 %33, label %34, label %24, !llvm.loop !8

34:                                               ; preds = %30, %24, %13
  %35 = phi i32 [ 1, %13 ], [ %15, %30 ], [ %26, %24 ]
  %36 = icmp sgt i32 %35, %18
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, i8* %0, i64 %14
  %39 = load i8, i8* %38, align 1, !tbaa !5
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i32 [ %35, %37 ], [ %18, %34 ]
  %42 = phi i8 [ %39, %37 ], [ %17, %34 ]
  %43 = add nuw nsw i64 %16, 1
  %44 = add i32 %15, -1
  %45 = icmp eq i64 %19, %9
  br i1 %45, label %11, label %13, !llvm.loop !11
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
