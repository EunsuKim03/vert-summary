; ModuleID = 'benchmark/c_transcoder/HOW_TO_COMPUTE_MOD_OF_A_BIG_NUMBER/HOW_TO_COMPUTE_MOD_OF_A_BIG_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/HOW_TO_COMPUTE_MOD_OF_A_BIG_NUMBER/HOW_TO_COMPUTE_MOD_OF_A_BIG_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %2
  %6 = and i64 %3, 1
  %7 = icmp eq i64 %3, 1
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = and i64 %3, -2
  br label %26

10:                                               ; preds = %26
  %11 = mul i32 %44, 10
  %12 = add i32 %11, -48
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi i32 [ undef, %5 ], [ %44, %10 ]
  %15 = phi i64 [ 0, %5 ], [ %45, %10 ]
  %16 = phi i32 [ -48, %5 ], [ %12, %10 ]
  %17 = icmp eq i64 %6, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, i8* %0, i64 %15
  %20 = load i8, i8* %19, align 1, !tbaa !5
  %21 = sext i8 %20 to i32
  %22 = add i32 %16, %21
  %23 = srem i32 %22, %1
  br label %24

24:                                               ; preds = %18, %13, %2
  %25 = phi i32 [ 0, %2 ], [ %14, %13 ], [ %23, %18 ]
  ret i32 %25

26:                                               ; preds = %26, %8
  %27 = phi i64 [ 0, %8 ], [ %45, %26 ]
  %28 = phi i32 [ 0, %8 ], [ %44, %26 ]
  %29 = phi i64 [ 0, %8 ], [ %46, %26 ]
  %30 = mul nsw i32 %28, 10
  %31 = getelementptr inbounds i8, i8* %0, i64 %27
  %32 = load i8, i8* %31, align 1, !tbaa !5
  %33 = sext i8 %32 to i32
  %34 = add i32 %30, -48
  %35 = add i32 %34, %33
  %36 = srem i32 %35, %1
  %37 = or i64 %27, 1
  %38 = mul nsw i32 %36, 10
  %39 = getelementptr inbounds i8, i8* %0, i64 %37
  %40 = load i8, i8* %39, align 1, !tbaa !5
  %41 = sext i8 %40 to i32
  %42 = add i32 %38, -48
  %43 = add i32 %42, %41
  %44 = srem i32 %43, %1
  %45 = add nuw nsw i64 %27, 2
  %46 = add i64 %29, 2
  %47 = icmp eq i64 %46, %9
  br i1 %47, label %10, label %26, !llvm.loop !8
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
