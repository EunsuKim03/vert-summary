; ModuleID = 'benchmark/c_transcoder/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %11

6:                                                ; preds = %11, %2
  %7 = phi i32 [ 2147483647, %2 ], [ %17, %11 ]
  %8 = phi i32 [ 0, %2 ], [ %19, %11 ]
  %9 = sub nsw i32 %8, %7
  %10 = mul nsw i32 %9, %7
  ret i32 %10

11:                                               ; preds = %4, %11
  %12 = phi i64 [ 0, %4 ], [ %20, %11 ]
  %13 = phi i32 [ 0, %4 ], [ %19, %11 ]
  %14 = phi i32 [ 2147483647, %4 ], [ %17, %11 ]
  %15 = getelementptr inbounds i32, i32* %0, i64 %12
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %16, i32 noundef %14) #2
  %18 = load i32, i32* %15, align 4, !tbaa !5
  %19 = add nsw i32 %18, %13
  %20 = add nuw nsw i64 %12, 1
  %21 = icmp eq i64 %20, %5
  br i1 %21, label %6, label %11, !llvm.loop !9
}

declare i32 @min(...) local_unnamed_addr #1

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
