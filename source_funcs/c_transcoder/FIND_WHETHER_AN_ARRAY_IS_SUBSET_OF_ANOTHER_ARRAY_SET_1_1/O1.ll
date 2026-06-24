; ModuleID = 'benchmark/c_transcoder/FIND_WHETHER_AN_ARRAY_IS_SUBSET_OF_ANOTHER_ARRAY_SET_1_1/FIND_WHETHER_AN_ARRAY_IS_SUBSET_OF_ANOTHER_ARRAY_SET_1_1_processed.c'
source_filename = "benchmark/c_transcoder/FIND_WHETHER_AN_ARRAY_IS_SUBSET_OF_ANOTHER_ARRAY_SET_1_1/FIND_WHETHER_AN_ARRAY_IS_SUBSET_OF_ANOTHER_ARRAY_SET_1_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp slt i32 %2, %3
  br i1 %5, label %45, label %6

6:                                                ; preds = %4
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %8) #2
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds i32, i32* %1, i64 %10
  %12 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %1, i32* noundef %11) #2
  %13 = icmp sgt i32 %3, 0
  %14 = icmp sgt i32 %2, 0
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %6, %35
  %17 = phi i32 [ %37, %35 ], [ 0, %6 ]
  %18 = phi i32 [ %36, %35 ], [ 0, %6 ]
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i32, i32* %0, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = sext i32 %18 to i64
  %23 = getelementptr inbounds i32, i32* %1, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = add nsw i32 %17, 1
  br label %35

28:                                               ; preds = %16
  %29 = icmp eq i32 %21, %24
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = add nsw i32 %17, 1
  %32 = add nsw i32 %18, 1
  br label %35

33:                                               ; preds = %28
  %34 = icmp sgt i32 %21, %24
  br i1 %34, label %45, label %35

35:                                               ; preds = %30, %33, %26
  %36 = phi i32 [ %18, %26 ], [ %32, %30 ], [ %18, %33 ]
  %37 = phi i32 [ %27, %26 ], [ %31, %30 ], [ %17, %33 ]
  %38 = icmp slt i32 %36, %3
  %39 = icmp slt i32 %37, %2
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %16, label %41, !llvm.loop !9

41:                                               ; preds = %35, %6
  %42 = phi i1 [ %13, %6 ], [ %38, %35 ]
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  br label %45

45:                                               ; preds = %33, %4, %41
  %46 = phi i32 [ %44, %41 ], [ 0, %4 ], [ 0, %33 ]
  ret i32 %46
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
