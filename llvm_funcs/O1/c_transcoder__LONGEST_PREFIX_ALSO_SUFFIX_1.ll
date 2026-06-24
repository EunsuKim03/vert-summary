; ModuleID = 'benchmark/c_transcoder/LONGEST_PREFIX_ALSO_SUFFIX_1/LONGEST_PREFIX_ALSO_SUFFIX_1_processed.c'
source_filename = "benchmark/c_transcoder/LONGEST_PREFIX_ALSO_SUFFIX_1/LONGEST_PREFIX_ALSO_SUFFIX_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = and i64 %2, 4294967295
  %5 = alloca i32, i64 %4, align 16
  store i32 0, i32* %5, align 16, !tbaa !5
  %6 = icmp sgt i32 %3, 1
  br i1 %6, label %7, label %35

7:                                                ; preds = %1, %31
  %8 = phi i32 [ %33, %31 ], [ 0, %1 ]
  %9 = phi i32 [ %32, %31 ], [ 1, %1 ]
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %0, i64 %10
  %12 = load i8, i8* %11, align 1, !tbaa !9
  %13 = sext i32 %8 to i64
  %14 = getelementptr inbounds i8, i8* %0, i64 %13
  %15 = load i8, i8* %14, align 1, !tbaa !9
  %16 = icmp eq i8 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = add nsw i32 %8, 1
  %19 = getelementptr inbounds i32, i32* %5, i64 %10
  store i32 %18, i32* %19, align 4, !tbaa !5
  %20 = add nsw i32 %9, 1
  br label %31

21:                                               ; preds = %7
  %22 = icmp eq i32 %8, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %21
  %24 = add nsw i32 %8, -1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %5, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !5
  br label %31

28:                                               ; preds = %21
  %29 = getelementptr inbounds i32, i32* %5, i64 %10
  store i32 0, i32* %29, align 4, !tbaa !5
  %30 = add nsw i32 %9, 1
  br label %31

31:                                               ; preds = %23, %28, %17
  %32 = phi i32 [ %20, %17 ], [ %9, %23 ], [ %30, %28 ]
  %33 = phi i32 [ %18, %17 ], [ %27, %23 ], [ 0, %28 ]
  %34 = icmp slt i32 %32, %3
  br i1 %34, label %7, label %35, !llvm.loop !10

35:                                               ; preds = %31, %1
  %36 = shl i64 %2, 32
  %37 = add i64 %36, -4294967296
  %38 = ashr exact i64 %37, 32
  %39 = getelementptr inbounds i32, i32* %5, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = sdiv i32 %3, 2
  %42 = icmp sgt i32 %40, %41
  %43 = select i1 %42, i32 %41, i32 %40
  ret i32 %43
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
