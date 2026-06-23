; ModuleID = 'benchmark/c_transcoder/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11_processed.c'
source_filename = "benchmark/c_transcoder/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = and i64 %2, 4294967295
  %7 = and i64 %2, 1
  %8 = icmp eq i64 %6, 1
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = sub nsw i64 %6, %7
  br label %27

11:                                               ; preds = %27
  %12 = mul nsw i32 %45, 10
  %13 = add nsw i32 %12, -48
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i32 [ undef, %5 ], [ %45, %11 ]
  %16 = phi i64 [ 0, %5 ], [ %46, %11 ]
  %17 = phi i32 [ -48, %5 ], [ %13, %11 ]
  %18 = icmp eq i64 %7, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds i8, i8* %0, i64 %16
  %21 = load i8, i8* %20, align 1, !tbaa !5
  %22 = sext i8 %21 to i32
  %23 = add nsw i32 %17, %22
  %24 = srem i32 %23, 11
  br label %25

25:                                               ; preds = %19, %14, %1
  %26 = phi i32 [ 0, %1 ], [ %15, %14 ], [ %24, %19 ]
  ret i32 %26

27:                                               ; preds = %27, %9
  %28 = phi i64 [ 0, %9 ], [ %46, %27 ]
  %29 = phi i32 [ 0, %9 ], [ %45, %27 ]
  %30 = phi i64 [ 0, %9 ], [ %47, %27 ]
  %31 = mul nsw i32 %29, 10
  %32 = getelementptr inbounds i8, i8* %0, i64 %28
  %33 = load i8, i8* %32, align 1, !tbaa !5
  %34 = sext i8 %33 to i32
  %35 = add nsw i32 %31, -48
  %36 = add nsw i32 %35, %34
  %37 = srem i32 %36, 11
  %38 = or i64 %28, 1
  %39 = mul nsw i32 %37, 10
  %40 = getelementptr inbounds i8, i8* %0, i64 %38
  %41 = load i8, i8* %40, align 1, !tbaa !5
  %42 = sext i8 %41 to i32
  %43 = add nsw i32 %39, -48
  %44 = add nsw i32 %43, %42
  %45 = srem i32 %44, 11
  %46 = add nuw nsw i64 %28, 2
  %47 = add i64 %30, 2
  %48 = icmp eq i64 %47, %10
  br i1 %48, label %11, label %27, !llvm.loop !8
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
