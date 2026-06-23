; ModuleID = 'benchmark/c_transcoder/CHECK_GIVEN_STRING_ROTATION_PALINDROME/CHECK_GIVEN_STRING_ROTATION_PALINDROME_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_GIVEN_STRING_ROTATION_PALINDROME/CHECK_GIVEN_STRING_ROTATION_PALINDROME_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  br label %4

4:                                                ; preds = %10, %1
  %5 = phi i64 [ %11, %10 ], [ 0, %1 ]
  %6 = phi i32 [ %7, %10 ], [ %3, %1 ]
  %7 = add i32 %6, -1
  %8 = sext i32 %7 to i64
  %9 = icmp slt i64 %5, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = add nuw nsw i64 %5, 1
  %12 = getelementptr inbounds i8, i8* %0, i64 %5
  %13 = load i8, i8* %12, align 1, !tbaa !5
  %14 = getelementptr inbounds i8, i8* %0, i64 %8
  %15 = load i8, i8* %14, align 1, !tbaa !5
  %16 = icmp eq i8 %13, %15
  br i1 %16, label %4, label %17, !llvm.loop !8

17:                                               ; preds = %4, %10
  %18 = phi i32 [ 0, %10 ], [ 1, %4 ]
  ret i32 %18
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
