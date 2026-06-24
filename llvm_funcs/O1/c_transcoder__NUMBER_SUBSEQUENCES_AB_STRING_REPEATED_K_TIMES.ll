; ModuleID = 'benchmark/c_transcoder/NUMBER_SUBSEQUENCES_AB_STRING_REPEATED_K_TIMES/NUMBER_SUBSEQUENCES_AB_STRING_REPEATED_K_TIMES_processed.c'
source_filename = "benchmark/c_transcoder/NUMBER_SUBSEQUENCES_AB_STRING_REPEATED_K_TIMES/NUMBER_SUBSEQUENCES_AB_STRING_REPEATED_K_TIMES_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %4 = trunc i64 %3 to i32
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = and i64 %3, 4294967295
  br label %19

8:                                                ; preds = %19, %2
  %9 = phi i32 [ undef, %2 ], [ %31, %19 ]
  %10 = phi i32 [ 0, %2 ], [ %28, %19 ]
  %11 = phi i32 [ 0, %2 ], [ %33, %19 ]
  %12 = mul nsw i32 %9, %1
  %13 = add nsw i32 %1, -1
  %14 = mul nsw i32 %13, %1
  %15 = sdiv i32 %14, 2
  %16 = mul nsw i32 %10, %15
  %17 = mul nsw i32 %16, %11
  %18 = add nsw i32 %17, %12
  ret i32 %18

19:                                               ; preds = %6, %19
  %20 = phi i64 [ 0, %6 ], [ %34, %19 ]
  %21 = phi i32 [ 0, %6 ], [ %33, %19 ]
  %22 = phi i32 [ 0, %6 ], [ %28, %19 ]
  %23 = phi i32 [ undef, %6 ], [ %31, %19 ]
  %24 = getelementptr inbounds i8, i8* %0, i64 %20
  %25 = load i8, i8* %24, align 1, !tbaa !5
  %26 = icmp eq i8 %25, 97
  %27 = zext i1 %26 to i32
  %28 = add nuw nsw i32 %22, %27
  %29 = icmp eq i8 %25, 98
  %30 = select i1 %29, i32 %28, i32 0
  %31 = add nsw i32 %30, %23
  %32 = zext i1 %29 to i32
  %33 = add nuw nsw i32 %21, %32
  %34 = add nuw nsw i64 %20, 1
  %35 = icmp eq i64 %34, %7
  br i1 %35, label %8, label %19, !llvm.loop !8
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
