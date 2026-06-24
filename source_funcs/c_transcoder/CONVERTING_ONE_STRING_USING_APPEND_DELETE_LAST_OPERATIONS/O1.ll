; ModuleID = 'benchmark/c_transcoder/CONVERTING_ONE_STRING_USING_APPEND_DELETE_LAST_OPERATIONS/CONVERTING_ONE_STRING_USING_APPEND_DELETE_LAST_OPERATIONS_processed.c'
source_filename = "benchmark/c_transcoder/CONVERTING_ONE_STRING_USING_APPEND_DELETE_LAST_OPERATIONS/CONVERTING_ONE_STRING_USING_APPEND_DELETE_LAST_OPERATIONS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %5 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)
  %6 = add i64 %5, %4
  %7 = sext i32 %2 to i64
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %36, label %9

9:                                                ; preds = %3
  %10 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %11 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)
  %12 = call i32 (i64, i64, ...) bitcast (i32 (...)* @min to i32 (i64, i64, ...)*)(i64 noundef %10, i64 noundef %11) #3
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %20, label %28

14:                                               ; preds = %20
  %15 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %16 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)
  %17 = call i32 (i64, i64, ...) bitcast (i32 (...)* @min to i32 (i64, i64, ...)*)(i64 noundef %15, i64 noundef %16) #3
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %27, %18
  br i1 %19, label %20, label %28, !llvm.loop !5

20:                                               ; preds = %9, %14
  %21 = phi i64 [ %27, %14 ], [ 0, %9 ]
  %22 = getelementptr inbounds i8, i8* %0, i64 %21
  %23 = load i8, i8* %22, align 1, !tbaa !8
  %24 = getelementptr inbounds i8, i8* %1, i64 %21
  %25 = load i8, i8* %24, align 1, !tbaa !8
  %26 = icmp eq i8 %23, %25
  %27 = add nuw nsw i64 %21, 1
  br i1 %26, label %14, label %28

28:                                               ; preds = %14, %20, %9
  %29 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %30 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)
  %31 = add i64 %30, %29
  %32 = trunc i64 %31 to i32
  %33 = sub i32 %2, %32
  %34 = and i32 %33, 1
  %35 = xor i32 %34, 1
  br label %36

36:                                               ; preds = %3, %28
  %37 = phi i32 [ %35, %28 ], [ 1, %3 ]
  ret i32 %37
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
