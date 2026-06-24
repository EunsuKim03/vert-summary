; ModuleID = 'benchmark/c_transcoder/NUMBER_SUBSEQUENCES_FORM_AI_BJ_CK/NUMBER_SUBSEQUENCES_FORM_AI_BJ_CK_processed.c'
source_filename = "benchmark/c_transcoder/NUMBER_SUBSEQUENCES_FORM_AI_BJ_CK/NUMBER_SUBSEQUENCES_FORM_AI_BJ_CK_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i8* noundef %0) local_unnamed_addr #0 {
  %2 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %22, %1
  %5 = phi i32 [ 0, %1 ], [ %25, %22 ]
  ret i32 %5

6:                                                ; preds = %1, %22
  %7 = phi i64 [ %26, %22 ], [ 0, %1 ]
  %8 = phi i32 [ %25, %22 ], [ 0, %1 ]
  %9 = phi i32 [ %24, %22 ], [ 0, %1 ]
  %10 = phi i32 [ %23, %22 ], [ 0, %1 ]
  %11 = getelementptr inbounds i8, i8* %0, i64 %7
  %12 = load i8, i8* %11, align 1, !tbaa !5
  switch i8 %12, label %22 [
    i8 97, label %13
    i8 98, label %16
    i8 99, label %19
  ]

13:                                               ; preds = %6
  %14 = shl nsw i32 %10, 1
  %15 = or i32 %14, 1
  br label %22

16:                                               ; preds = %6
  %17 = shl nsw i32 %9, 1
  %18 = add nsw i32 %17, %10
  br label %22

19:                                               ; preds = %6
  %20 = shl nsw i32 %8, 1
  %21 = add nsw i32 %20, %9
  br label %22

22:                                               ; preds = %6, %13, %19, %16
  %23 = phi i32 [ %15, %13 ], [ %10, %16 ], [ %10, %19 ], [ %10, %6 ]
  %24 = phi i32 [ %9, %13 ], [ %18, %16 ], [ %9, %19 ], [ %9, %6 ]
  %25 = phi i32 [ %8, %13 ], [ %8, %16 ], [ %21, %19 ], [ %8, %6 ]
  %26 = add nuw nsw i64 %7, 1
  %27 = call i32 (i8*, ...) bitcast (i32 (...)* @len to i32 (i8*, ...)*)(i8* noundef %0) #2
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %6, label %4, !llvm.loop !8
}

declare i32 @len(...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
