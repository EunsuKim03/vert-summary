; ModuleID = 'benchmark/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = shl i64 %2, 32
  %4 = add i64 %3, -4294967296
  %5 = ashr exact i64 %4, 32
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = load i8, i8* %6, align 1, !tbaa !5
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = trunc i64 %2 to i32
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = and i64 %2, 4294967295
  br label %19

15:                                               ; preds = %19
  %16 = srem i32 %26, 3
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  br label %29

19:                                               ; preds = %13, %19
  %20 = phi i64 [ 0, %13 ], [ %27, %19 ]
  %21 = phi i32 [ 0, %13 ], [ %26, %19 ]
  %22 = getelementptr inbounds i8, i8* %0, i64 %20
  %23 = load i8, i8* %22, align 1, !tbaa !5
  %24 = sext i8 %23 to i32
  %25 = add i32 %21, -48
  %26 = add i32 %25, %24
  %27 = add nuw nsw i64 %20, 1
  %28 = icmp eq i64 %27, %14
  br i1 %28, label %15, label %19, !llvm.loop !8

29:                                               ; preds = %10, %15, %1
  %30 = phi i32 [ 0, %1 ], [ 1, %10 ], [ %18, %15 ]
  ret i32 %30
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
