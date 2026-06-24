; ModuleID = 'benchmark/c_transcoder/MINIMUM_CHARACTERS_ADDED_FRONT_MAKE_STRING_PALINDROME/MINIMUM_CHARACTERS_ADDED_FRONT_MAKE_STRING_PALINDROME_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_CHARACTERS_ADDED_FRONT_MAKE_STRING_PALINDROME/MINIMUM_CHARACTERS_ADDED_FRONT_MAKE_STRING_PALINDROME_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = shl i64 %2, 32
  %7 = ashr exact i64 %6, 32
  %8 = add nsw i64 %7, -1
  %9 = load i8, i8* %0, align 1, !tbaa !5
  %10 = getelementptr inbounds i8, i8* %0, i64 %8
  %11 = load i8, i8* %10, align 1, !tbaa !5
  %12 = icmp eq i8 %9, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %5, %17
  %14 = phi i64 [ %24, %17 ], [ 1, %5 ]
  %15 = phi i64 [ %18, %17 ], [ %8, %5 ]
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %25, !llvm.loop !8

17:                                               ; preds = %13
  %18 = add nsw i64 %15, -1
  %19 = getelementptr inbounds i8, i8* %0, i64 %14
  %20 = load i8, i8* %19, align 1, !tbaa !5
  %21 = getelementptr inbounds i8, i8* %0, i64 %18
  %22 = load i8, i8* %21, align 1, !tbaa !5
  %23 = icmp eq i8 %20, %22
  %24 = add nuw nsw i64 %14, 1
  br i1 %23, label %13, label %25, !llvm.loop !8

25:                                               ; preds = %17, %13, %5, %1
  %26 = phi i1 [ %4, %1 ], [ %4, %5 ], [ %16, %13 ], [ %16, %17 ]
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  ret i32 %28
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
