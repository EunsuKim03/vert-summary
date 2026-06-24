; ModuleID = 'benchmark/c_transcoder/MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING_1/MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING_1_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING_1/MAXIMUM_CONSECUTIVE_REPEATING_CHARACTER_STRING_1_processed.c"
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
  %8 = add i64 %7, -4294967296
  %9 = ashr exact i64 %8, 32
  %10 = and i64 %2, 4294967295
  br label %13

11:                                               ; preds = %33, %1
  %12 = phi i8 [ %4, %1 ], [ %35, %33 ]
  ret i8 %12

13:                                               ; preds = %6, %33
  %14 = phi i64 [ 0, %6 ], [ %37, %33 ]
  %15 = phi i32 [ 1, %6 ], [ %36, %33 ]
  %16 = phi i8 [ %4, %6 ], [ %35, %33 ]
  %17 = phi i32 [ 0, %6 ], [ %34, %33 ]
  %18 = icmp slt i64 %14, %9
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = getelementptr inbounds i8, i8* %0, i64 %14
  %21 = load i8, i8* %20, align 1, !tbaa !5
  %22 = add nuw nsw i64 %14, 1
  %23 = getelementptr inbounds i8, i8* %0, i64 %22
  %24 = load i8, i8* %23, align 1, !tbaa !5
  %25 = icmp eq i8 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = add nsw i32 %15, 1
  br label %33

28:                                               ; preds = %19, %13
  %29 = icmp sgt i32 %15, %17
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = getelementptr inbounds i8, i8* %0, i64 %14
  %32 = load i8, i8* %31, align 1, !tbaa !5
  br label %33

33:                                               ; preds = %28, %30, %26
  %34 = phi i32 [ %17, %26 ], [ %15, %30 ], [ %17, %28 ]
  %35 = phi i8 [ %16, %26 ], [ %32, %30 ], [ %16, %28 ]
  %36 = phi i32 [ %27, %26 ], [ 1, %30 ], [ 1, %28 ]
  %37 = add nuw nsw i64 %14, 1
  %38 = icmp eq i64 %37, %10
  br i1 %38, label %11, label %13, !llvm.loop !8
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
