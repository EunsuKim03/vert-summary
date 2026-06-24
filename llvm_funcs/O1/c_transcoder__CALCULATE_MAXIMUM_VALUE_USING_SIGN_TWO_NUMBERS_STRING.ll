; ModuleID = 'benchmark/c_transcoder/CALCULATE_MAXIMUM_VALUE_USING_SIGN_TWO_NUMBERS_STRING/CALCULATE_MAXIMUM_VALUE_USING_SIGN_TWO_NUMBERS_STRING_processed.c'
source_filename = "benchmark/c_transcoder/CALCULATE_MAXIMUM_VALUE_USING_SIGN_TWO_NUMBERS_STRING/CALCULATE_MAXIMUM_VALUE_USING_SIGN_TWO_NUMBERS_STRING_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, i8* %0, align 1, !tbaa !5
  %3 = sext i8 %2 to i32
  %4 = add nsw i32 %3, -48
  %5 = call i64 @strlen(i8* noundef nonnull %0)
  %6 = icmp ugt i64 %5, 1
  br i1 %6, label %9, label %7

7:                                                ; preds = %26, %1
  %8 = phi i32 [ %4, %1 ], [ %27, %26 ]
  ret i32 %8

9:                                                ; preds = %1, %26
  %10 = phi i64 [ %28, %26 ], [ 1, %1 ]
  %11 = phi i32 [ %27, %26 ], [ %4, %1 ]
  %12 = getelementptr inbounds i8, i8* %0, i64 %10
  %13 = load i8, i8* %12, align 1, !tbaa !5
  %14 = sext i8 %13 to i32
  %15 = icmp eq i8 %13, 48
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = icmp eq i8 %13, 49
  %18 = icmp slt i32 %11, 2
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %9
  %21 = add nsw i32 %14, -48
  %22 = add nsw i32 %21, %11
  br label %26

23:                                               ; preds = %16
  %24 = add nsw i32 %14, -48
  %25 = mul nsw i32 %24, %11
  br label %26

26:                                               ; preds = %20, %23
  %27 = phi i32 [ %22, %20 ], [ %25, %23 ]
  %28 = add nuw nsw i64 %10, 1
  %29 = icmp eq i64 %28, %5
  br i1 %29, label %7, label %9, !llvm.loop !8
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
