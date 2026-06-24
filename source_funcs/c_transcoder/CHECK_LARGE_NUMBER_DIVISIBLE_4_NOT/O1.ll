; ModuleID = 'benchmark/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  switch i32 %3, label %8 [
    i32 0, label %24
    i32 1, label %4
  ]

4:                                                ; preds = %1
  %5 = load i8, i8* %0, align 1, !tbaa !5
  %6 = and i8 %5, 3
  %7 = icmp eq i8 %6, 0
  br label %24

8:                                                ; preds = %1
  %9 = shl i64 %2, 32
  %10 = add i64 %9, -4294967296
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr inbounds i8, i8* %0, i64 %11
  %13 = load i8, i8* %12, align 1, !tbaa !5
  %14 = zext i8 %13 to i32
  %15 = add i64 %9, -8589934592
  %16 = ashr exact i64 %15, 32
  %17 = getelementptr inbounds i8, i8* %0, i64 %16
  %18 = load i8, i8* %17, align 1, !tbaa !5
  %19 = zext i8 %18 to i32
  %20 = mul nuw nsw i32 %19, 10
  %21 = add nuw nsw i32 %20, %14
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %1, %8, %4
  %25 = phi i1 [ %7, %4 ], [ %23, %8 ], [ false, %1 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
