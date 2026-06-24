; ModuleID = 'benchmark/c_transcoder/COUNT_SUBSTRINGS_WITH_SAME_FIRST_AND_LAST_CHARACTERS/COUNT_SUBSTRINGS_WITH_SAME_FIRST_AND_LAST_CHARACTERS_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_SUBSTRINGS_WITH_SAME_FIRST_AND_LAST_CHARACTERS/COUNT_SUBSTRINGS_WITH_SAME_FIRST_AND_LAST_CHARACTERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = and i64 %2, 4294967295
  %7 = and i64 %2, 4294967295
  br label %8

8:                                                ; preds = %5, %15
  %9 = phi i64 [ 0, %5 ], [ %16, %15 ]
  %10 = phi i32 [ 0, %5 ], [ %25, %15 ]
  %11 = getelementptr inbounds i8, i8* %0, i64 %9
  %12 = load i8, i8* %11, align 1, !tbaa !5
  br label %18

13:                                               ; preds = %15, %1
  %14 = phi i32 [ 0, %1 ], [ %25, %15 ]
  ret i32 %14

15:                                               ; preds = %18
  %16 = add nuw nsw i64 %9, 1
  %17 = icmp eq i64 %16, %6
  br i1 %17, label %13, label %8, !llvm.loop !8

18:                                               ; preds = %8, %18
  %19 = phi i64 [ %9, %8 ], [ %26, %18 ]
  %20 = phi i32 [ %10, %8 ], [ %25, %18 ]
  %21 = getelementptr inbounds i8, i8* %0, i64 %19
  %22 = load i8, i8* %21, align 1, !tbaa !5
  %23 = icmp eq i8 %12, %22
  %24 = zext i1 %23 to i32
  %25 = add nsw i32 %20, %24
  %26 = add nuw nsw i64 %19, 1
  %27 = icmp eq i64 %26, %7
  br i1 %27, label %15, label %18, !llvm.loop !11
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
