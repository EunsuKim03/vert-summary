; ModuleID = 'benchmark/c_transcoder/FREQUENT_ELEMENT_ARRAY/FREQUENT_ELEMENT_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/FREQUENT_ELEMENT_ARRAY/FREQUENT_ELEMENT_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #2
  %6 = load i32, i32* %0, align 4, !tbaa !5
  %7 = icmp sgt i32 %1, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = zext i32 %1 to i64
  br label %15

10:                                               ; preds = %15, %2
  %11 = phi i32 [ 1, %2 ], [ %30, %15 ]
  %12 = phi i32 [ %6, %2 ], [ %31, %15 ]
  %13 = phi i32 [ 1, %2 ], [ %32, %15 ]
  %14 = icmp sgt i32 %13, %11
  br i1 %14, label %35, label %40

15:                                               ; preds = %8, %15
  %16 = phi i64 [ 1, %8 ], [ %33, %15 ]
  %17 = phi i32 [ 1, %8 ], [ %32, %15 ]
  %18 = phi i32 [ %6, %8 ], [ %31, %15 ]
  %19 = phi i32 [ 1, %8 ], [ %30, %15 ]
  %20 = getelementptr inbounds i32, i32* %0, i64 %16
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = add nsw i64 %16, -1
  %23 = getelementptr inbounds i32, i32* %0, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = icmp eq i32 %21, %24
  %26 = add nsw i32 %17, 1
  %27 = icmp sgt i32 %17, %19
  %28 = select i1 %27, i32 %17, i32 %19
  %29 = select i1 %27, i32 %24, i32 %18
  %30 = select i1 %25, i32 %19, i32 %28
  %31 = select i1 %25, i32 %18, i32 %29
  %32 = select i1 %25, i32 %26, i32 1
  %33 = add nuw nsw i64 %16, 1
  %34 = icmp eq i64 %33, %9
  br i1 %34, label %10, label %15, !llvm.loop !9

35:                                               ; preds = %10
  %36 = add nsw i32 %1, -1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %0, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !5
  br label %40

40:                                               ; preds = %35, %10
  %41 = phi i32 [ %39, %35 ], [ %12, %10 ]
  ret i32 %41
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
