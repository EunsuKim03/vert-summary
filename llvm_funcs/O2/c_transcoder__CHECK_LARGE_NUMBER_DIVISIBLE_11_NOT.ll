; ModuleID = 'benchmark/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_11_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_11_NOT_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_11_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_11_NOT_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %37

5:                                                ; preds = %1
  %6 = and i64 %2, 4294967295
  %7 = and i64 %2, 1
  %8 = icmp eq i64 %6, 1
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = sub nsw i64 %6, %7
  br label %39

11:                                               ; preds = %39, %5
  %12 = phi i32 [ undef, %5 ], [ %48, %39 ]
  %13 = phi i32 [ undef, %5 ], [ %54, %39 ]
  %14 = phi i64 [ 0, %5 ], [ %55, %39 ]
  %15 = phi i32 [ 0, %5 ], [ %54, %39 ]
  %16 = phi i32 [ 0, %5 ], [ %48, %39 ]
  %17 = icmp eq i64 %7, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %11
  %19 = and i64 %14, 1
  %20 = icmp eq i64 %19, 0
  %21 = getelementptr inbounds i8, i8* %0, i64 %14
  %22 = load i8, i8* %21, align 1, !tbaa !5
  %23 = sext i8 %22 to i32
  %24 = add i32 %16, -48
  %25 = add i32 %24, %23
  %26 = add i32 %15, -48
  %27 = add i32 %26, %23
  %28 = select i1 %20, i32 %25, i32 %16
  %29 = select i1 %20, i32 %15, i32 %27
  br label %30

30:                                               ; preds = %11, %18
  %31 = phi i32 [ %12, %11 ], [ %28, %18 ]
  %32 = phi i32 [ %13, %11 ], [ %29, %18 ]
  %33 = sub nsw i32 %31, %32
  %34 = srem i32 %33, 11
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %30, %1
  %38 = phi i32 [ %36, %30 ], [ 1, %1 ]
  ret i32 %38

39:                                               ; preds = %39, %9
  %40 = phi i64 [ 0, %9 ], [ %55, %39 ]
  %41 = phi i32 [ 0, %9 ], [ %54, %39 ]
  %42 = phi i32 [ 0, %9 ], [ %48, %39 ]
  %43 = phi i64 [ 0, %9 ], [ %56, %39 ]
  %44 = getelementptr inbounds i8, i8* %0, i64 %40
  %45 = load i8, i8* %44, align 1, !tbaa !5
  %46 = sext i8 %45 to i32
  %47 = add i32 %42, -48
  %48 = add i32 %47, %46
  %49 = or i64 %40, 1
  %50 = getelementptr inbounds i8, i8* %0, i64 %49
  %51 = load i8, i8* %50, align 1, !tbaa !5
  %52 = sext i8 %51 to i32
  %53 = add i32 %41, -48
  %54 = add i32 %53, %52
  %55 = add nuw nsw i64 %40, 2
  %56 = add i64 %43, 2
  %57 = icmp eq i64 %56, %10
  br i1 %57, label %11, label %39, !llvm.loop !8
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
