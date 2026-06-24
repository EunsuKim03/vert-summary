; ModuleID = 'benchmark/c_transcoder/FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE/FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_processed.c'
source_filename = "benchmark/c_transcoder/FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE/FIND_MINIMUM_RADIUS_ATLEAST_K_POINT_LIE_INSIDE_CIRCLE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = zext i32 %3 to i64
  %6 = alloca i32, i64 %5, align 16
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = zext i32 %3 to i64
  br label %18

10:                                               ; preds = %18, %4
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds i32, i32* %6, i64 %11
  %13 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef nonnull %6, i32* noundef nonnull %12) #2
  %14 = add nsw i32 %0, -1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %6, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !5
  ret i32 %17

18:                                               ; preds = %8, %18
  %19 = phi i64 [ 0, %8 ], [ %28, %18 ]
  %20 = getelementptr inbounds i32, i32* %1, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = mul nsw i32 %21, %21
  %23 = getelementptr inbounds i32, i32* %2, i64 %19
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = mul nsw i32 %24, %24
  %26 = add nuw nsw i32 %25, %22
  %27 = getelementptr inbounds i32, i32* %6, i64 %19
  store i32 %26, i32* %27, align 4, !tbaa !5
  %28 = add nuw nsw i64 %19, 1
  %29 = icmp eq i64 %28, %9
  br i1 %29, label %10, label %18, !llvm.loop !9
}

declare i32 @sort(...) local_unnamed_addr #1

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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
