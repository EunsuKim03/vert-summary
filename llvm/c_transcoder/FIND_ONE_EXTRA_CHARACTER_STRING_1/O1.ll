; ModuleID = 'benchmark/c_transcoder/FIND_ONE_EXTRA_CHARACTER_STRING_1/FIND_ONE_EXTRA_CHARACTER_STRING_1_processed.c'
source_filename = "benchmark/c_transcoder/FIND_ONE_EXTRA_CHARACTER_STRING_1/FIND_ONE_EXTRA_CHARACTER_STRING_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local signext i8 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %9, %2
  %6 = phi i32 [ 0, %2 ], [ %15, %9 ]
  %7 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %27, label %18

9:                                                ; preds = %2, %9
  %10 = phi i64 [ %16, %9 ], [ 0, %2 ]
  %11 = phi i32 [ %15, %9 ], [ 0, %2 ]
  %12 = getelementptr inbounds i8, i8* %0, i64 %10
  %13 = load i8, i8* %12, align 1, !tbaa !5
  %14 = zext i8 %13 to i32
  %15 = xor i32 %11, %14
  %16 = add nuw nsw i64 %10, 1
  %17 = icmp eq i64 %16, %3
  br i1 %17, label %5, label %9, !llvm.loop !8

18:                                               ; preds = %5, %18
  %19 = phi i64 [ %25, %18 ], [ 0, %5 ]
  %20 = phi i32 [ %24, %18 ], [ %6, %5 ]
  %21 = getelementptr inbounds i8, i8* %1, i64 %19
  %22 = load i8, i8* %21, align 1, !tbaa !5
  %23 = zext i8 %22 to i32
  %24 = xor i32 %20, %23
  %25 = add nuw nsw i64 %19, 1
  %26 = icmp eq i64 %25, %7
  br i1 %26, label %27, label %18, !llvm.loop !11

27:                                               ; preds = %18, %5
  %28 = phi i32 [ %6, %5 ], [ %24, %18 ]
  %29 = trunc i32 %28 to i8
  ret i8 %29
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
