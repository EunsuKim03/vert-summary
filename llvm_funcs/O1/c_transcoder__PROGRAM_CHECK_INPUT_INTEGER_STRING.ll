; ModuleID = 'benchmark/c_transcoder/PROGRAM_CHECK_INPUT_INTEGER_STRING/PROGRAM_CHECK_INPUT_INTEGER_STRING_processed.c'
source_filename = "benchmark/c_transcoder/PROGRAM_CHECK_INPUT_INTEGER_STRING/PROGRAM_CHECK_INPUT_INTEGER_STRING_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %21

4:                                                ; preds = %1
  %5 = load i8, i8* %0, align 1, !tbaa !5
  %6 = sext i8 %5 to i32
  %7 = add nsw i32 %6, -58
  %8 = icmp ult i32 %7, -10
  br i1 %8, label %21, label %9

9:                                                ; preds = %4, %12
  %10 = phi i64 [ %18, %12 ], [ 1, %4 ]
  %11 = icmp eq i64 %10, %2
  br i1 %11, label %19, label %12, !llvm.loop !8

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, i8* %0, i64 %10
  %14 = load i8, i8* %13, align 1, !tbaa !5
  %15 = sext i8 %14 to i32
  %16 = add nsw i32 %15, -58
  %17 = icmp ult i32 %16, -10
  %18 = add nuw i64 %10, 1
  br i1 %17, label %19, label %9, !llvm.loop !8

19:                                               ; preds = %9, %12
  %20 = icmp ugt i64 %2, %10
  br label %21

21:                                               ; preds = %19, %4, %1
  %22 = phi i1 [ %3, %1 ], [ %3, %4 ], [ %20, %19 ]
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  ret i32 %24
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
