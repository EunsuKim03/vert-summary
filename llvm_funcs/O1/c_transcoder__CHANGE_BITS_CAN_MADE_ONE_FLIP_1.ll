; ModuleID = 'benchmark/c_transcoder/CHANGE_BITS_CAN_MADE_ONE_FLIP_1/CHANGE_BITS_CAN_MADE_ONE_FLIP_1_processed.c'
source_filename = "benchmark/c_transcoder/CHANGE_BITS_CAN_MADE_ONE_FLIP_1/CHANGE_BITS_CAN_MADE_ONE_FLIP_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = and i64 %2, 4294967295
  br label %14

7:                                                ; preds = %14, %1
  %8 = phi i32 [ 0, %1 ], [ %21, %14 ]
  %9 = add nsw i32 %3, -1
  %10 = icmp eq i32 %8, %9
  %11 = icmp eq i32 %8, 1
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i32
  ret i32 %13

14:                                               ; preds = %5, %14
  %15 = phi i64 [ 0, %5 ], [ %22, %14 ]
  %16 = phi i32 [ 0, %5 ], [ %21, %14 ]
  %17 = getelementptr inbounds i8, i8* %0, i64 %15
  %18 = load i8, i8* %17, align 1, !tbaa !5
  %19 = sext i8 %18 to i32
  %20 = add i32 %16, -48
  %21 = add i32 %20, %19
  %22 = add nuw nsw i64 %15, 1
  %23 = icmp eq i64 %22, %6
  br i1 %23, label %7, label %14, !llvm.loop !8
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
