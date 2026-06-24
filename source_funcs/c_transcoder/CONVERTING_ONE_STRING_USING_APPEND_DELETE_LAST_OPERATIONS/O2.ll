; ModuleID = 'benchmark/c_transcoder/CONVERTING_ONE_STRING_USING_APPEND_DELETE_LAST_OPERATIONS/CONVERTING_ONE_STRING_USING_APPEND_DELETE_LAST_OPERATIONS_processed.c'
source_filename = "benchmark/c_transcoder/CONVERTING_ONE_STRING_USING_APPEND_DELETE_LAST_OPERATIONS/CONVERTING_ONE_STRING_USING_APPEND_DELETE_LAST_OPERATIONS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %5 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)
  %6 = add i64 %5, %4
  %7 = sext i32 %2 to i64
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %34, label %9

9:                                                ; preds = %3
  %10 = tail call i32 (i64, i64, ...) bitcast (i32 (...)* @min to i32 (i64, i64, ...)*)(i64 noundef %4, i64 noundef %5) #3
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %18, label %26

12:                                               ; preds = %18
  %13 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %14 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)
  %15 = tail call i32 (i64, i64, ...) bitcast (i32 (...)* @min to i32 (i64, i64, ...)*)(i64 noundef %13, i64 noundef %14) #3
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 %25, %16
  br i1 %17, label %18, label %26, !llvm.loop !5

18:                                               ; preds = %9, %12
  %19 = phi i64 [ %25, %12 ], [ 0, %9 ]
  %20 = getelementptr inbounds i8, i8* %0, i64 %19
  %21 = load i8, i8* %20, align 1, !tbaa !7
  %22 = getelementptr inbounds i8, i8* %1, i64 %19
  %23 = load i8, i8* %22, align 1, !tbaa !7
  %24 = icmp eq i8 %21, %23
  %25 = add nuw nsw i64 %19, 1
  br i1 %24, label %12, label %26

26:                                               ; preds = %12, %18, %9
  %27 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %28 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)
  %29 = add i64 %28, %27
  %30 = trunc i64 %29 to i32
  %31 = sub i32 %2, %30
  %32 = and i32 %31, 1
  %33 = xor i32 %32, 1
  br label %34

34:                                               ; preds = %3, %26
  %35 = phi i32 [ %33, %26 ], [ 1, %3 ]
  ret i32 %35
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

declare i32 @min(...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
