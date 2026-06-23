; ModuleID = 'benchmark/c_transcoder/MINIMUM_CHARACTERS_ADDED_FRONT_MAKE_STRING_PALINDROME/MINIMUM_CHARACTERS_ADDED_FRONT_MAKE_STRING_PALINDROME_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_CHARACTERS_ADDED_FRONT_MAKE_STRING_PALINDROME/MINIMUM_CHARACTERS_ADDED_FRONT_MAKE_STRING_PALINDROME_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = shl i64 %2, 32
  %7 = ashr exact i64 %6, 32
  br label %10

8:                                                ; preds = %10
  %9 = icmp slt i64 %19, %13
  br i1 %9, label %10, label %20, !llvm.loop !5

10:                                               ; preds = %5, %8
  %11 = phi i64 [ 0, %5 ], [ %19, %8 ]
  %12 = phi i64 [ %7, %5 ], [ %13, %8 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds i8, i8* %0, i64 %11
  %15 = load i8, i8* %14, align 1, !tbaa !7
  %16 = getelementptr inbounds i8, i8* %0, i64 %13
  %17 = load i8, i8* %16, align 1, !tbaa !7
  %18 = icmp eq i8 %15, %17
  %19 = add nuw nsw i64 %11, 1
  br i1 %18, label %8, label %20

20:                                               ; preds = %8, %10, %1
  %21 = phi i32 [ 1, %1 ], [ 0, %10 ], [ 1, %8 ]
  ret i32 %21
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
