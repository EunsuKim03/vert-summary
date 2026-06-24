; ModuleID = 'benchmark/c_transcoder/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D_processed.c'
source_filename = "benchmark/c_transcoder/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %60

7:                                                ; preds = %2
  %8 = zext i32 %1 to i64
  br label %11

9:                                                ; preds = %56
  %10 = icmp sgt i64 %12, 1
  br i1 %10, label %11, label %60

11:                                               ; preds = %9, %7
  %12 = phi i64 [ %3, %7 ], [ %13, %9 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds i32, i32* %0, i64 %13
  br label %15

15:                                               ; preds = %11, %56
  %16 = phi i64 [ 0, %11 ], [ %20, %56 ]
  %17 = phi i64 [ 1, %11 ], [ %58, %56 ]
  %18 = phi i64 [ 2, %11 ], [ %57, %56 ]
  %19 = icmp ne i64 %13, %16
  %20 = add nuw nsw i64 %16, 1
  %21 = icmp slt i64 %20, %3
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %56

23:                                               ; preds = %15
  %24 = getelementptr inbounds i32, i32* %0, i64 %16
  br label %25

25:                                               ; preds = %23, %52
  %26 = phi i64 [ %17, %23 ], [ %53, %52 ]
  %27 = phi i64 [ %18, %23 ], [ %54, %52 ]
  %28 = phi i64 [ %16, %23 ], [ %26, %52 ]
  %29 = icmp ne i64 %13, %26
  %30 = trunc i64 %28 to i32
  %31 = add nuw nsw i32 %30, 2
  %32 = icmp slt i32 %31, %1
  %33 = select i1 %29, i1 %32, i1 false
  br i1 %33, label %34, label %52

34:                                               ; preds = %25
  %35 = getelementptr inbounds i32, i32* %0, i64 %26
  br label %36

36:                                               ; preds = %34, %48
  %37 = phi i64 [ %27, %34 ], [ %49, %48 ]
  %38 = icmp eq i64 %13, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %14, align 4, !tbaa !5
  %41 = load i32, i32* %24, align 4, !tbaa !5
  %42 = load i32, i32* %35, align 4, !tbaa !5
  %43 = add nsw i32 %42, %41
  %44 = getelementptr inbounds i32, i32* %0, i64 %37
  %45 = load i32, i32* %44, align 4, !tbaa !5
  %46 = add nsw i32 %43, %45
  %47 = icmp eq i32 %40, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %39, %36
  %49 = add nuw nsw i64 %37, 1
  %50 = trunc i64 %49 to i32
  %51 = icmp slt i32 %50, %1
  br i1 %51, label %36, label %52, !llvm.loop !9

52:                                               ; preds = %48, %25
  %53 = add nuw nsw i64 %26, 1
  %54 = add nuw nsw i64 %27, 1
  %55 = icmp eq i64 %53, %8
  br i1 %55, label %56, label %25, !llvm.loop !11

56:                                               ; preds = %52, %15
  %57 = add nuw nsw i64 %18, 1
  %58 = add nuw nsw i64 %17, 1
  %59 = icmp eq i64 %20, %8
  br i1 %59, label %9, label %15, !llvm.loop !12

60:                                               ; preds = %9, %39, %2
  %61 = phi i32 [ -2147483648, %2 ], [ %40, %39 ], [ -2147483648, %9 ]
  ret i32 %61
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
