; ModuleID = 'benchmark/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_11_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_11_NOT_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_11_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_11_NOT_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = and i64 %2, 4294967295
  br label %14

7:                                                ; preds = %14
  %8 = sub nsw i32 %27, %28
  %9 = srem i32 %8, 11
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i32 [ %11, %7 ], [ 1, %1 ]
  ret i32 %13

14:                                               ; preds = %5, %14
  %15 = phi i64 [ 0, %5 ], [ %29, %14 ]
  %16 = phi i32 [ 0, %5 ], [ %28, %14 ]
  %17 = phi i32 [ 0, %5 ], [ %27, %14 ]
  %18 = and i64 %15, 1
  %19 = icmp eq i64 %18, 0
  %20 = getelementptr inbounds i8, i8* %0, i64 %15
  %21 = load i8, i8* %20, align 1, !tbaa !5
  %22 = sext i8 %21 to i32
  %23 = add i32 %17, -48
  %24 = add i32 %23, %22
  %25 = add i32 %16, -48
  %26 = add i32 %25, %22
  %27 = select i1 %19, i32 %24, i32 %17
  %28 = select i1 %19, i32 %16, i32 %26
  %29 = add nuw nsw i64 %15, 1
  %30 = icmp eq i64 %29, %6
  br i1 %30, label %7, label %14, !llvm.loop !8
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
