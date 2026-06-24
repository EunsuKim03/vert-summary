; ModuleID = 'benchmark/c_transcoder/FIND_MAXIMUM_HEIGHT_PYRAMID_FROM_THE_GIVEN_ARRAY_OF_OBJECTS/FIND_MAXIMUM_HEIGHT_PYRAMID_FROM_THE_GIVEN_ARRAY_OF_OBJECTS_processed.c'
source_filename = "benchmark/c_transcoder/FIND_MAXIMUM_HEIGHT_PYRAMID_FROM_THE_GIVEN_ARRAY_OF_OBJECTS/FIND_MAXIMUM_HEIGHT_PYRAMID_FROM_THE_GIVEN_ARRAY_OF_OBJECTS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #2
  %6 = icmp sgt i32 %1, 1
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = load i32, i32* %0, align 4, !tbaa !5
  %9 = zext i32 %1 to i64
  %10 = add nsw i64 %9, -1
  %11 = and i64 %10, 1
  %12 = icmp eq i32 %1, 2
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = and i64 %10, -2
  br label %35

15:                                               ; preds = %68, %7
  %16 = phi i32 [ undef, %7 ], [ %69, %68 ]
  %17 = phi i64 [ 1, %7 ], [ %74, %68 ]
  %18 = phi i32 [ 0, %7 ], [ %73, %68 ]
  %19 = phi i32 [ 0, %7 ], [ %72, %68 ]
  %20 = phi i32 [ 1, %7 ], [ %71, %68 ]
  %21 = phi i32 [ %8, %7 ], [ %70, %68 ]
  %22 = phi i32 [ 1, %7 ], [ %69, %68 ]
  %23 = icmp eq i64 %11, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds i32, i32* %0, i64 %17
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = add nsw i32 %26, %18
  %28 = icmp sle i32 %27, %21
  %29 = icmp slt i32 %19, %20
  %30 = select i1 %28, i1 true, i1 %29
  %31 = add nsw i32 %22, 1
  %32 = select i1 %30, i32 %22, i32 %31
  br label %33

33:                                               ; preds = %24, %15, %2
  %34 = phi i32 [ 1, %2 ], [ %16, %15 ], [ %32, %24 ]
  ret i32 %34

35:                                               ; preds = %68, %13
  %36 = phi i64 [ 1, %13 ], [ %74, %68 ]
  %37 = phi i32 [ 0, %13 ], [ %73, %68 ]
  %38 = phi i32 [ 0, %13 ], [ %72, %68 ]
  %39 = phi i32 [ 1, %13 ], [ %71, %68 ]
  %40 = phi i32 [ %8, %13 ], [ %70, %68 ]
  %41 = phi i32 [ 1, %13 ], [ %69, %68 ]
  %42 = phi i64 [ 0, %13 ], [ %75, %68 ]
  %43 = getelementptr inbounds i32, i32* %0, i64 %36
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = add nsw i32 %44, %37
  %46 = add nsw i32 %38, 1
  %47 = icmp sle i32 %45, %40
  %48 = icmp slt i32 %38, %39
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %52, label %50

50:                                               ; preds = %35
  %51 = add nsw i32 %41, 1
  br label %52

52:                                               ; preds = %35, %50
  %53 = phi i32 [ %51, %50 ], [ %41, %35 ]
  %54 = phi i32 [ %45, %50 ], [ %40, %35 ]
  %55 = phi i32 [ %46, %50 ], [ %39, %35 ]
  %56 = phi i32 [ 0, %50 ], [ %46, %35 ]
  %57 = phi i32 [ 0, %50 ], [ %45, %35 ]
  %58 = add nuw nsw i64 %36, 1
  %59 = getelementptr inbounds i32, i32* %0, i64 %58
  %60 = load i32, i32* %59, align 4, !tbaa !5
  %61 = add nsw i32 %60, %57
  %62 = add nsw i32 %56, 1
  %63 = icmp sle i32 %61, %54
  %64 = icmp slt i32 %56, %55
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %68, label %66

66:                                               ; preds = %52
  %67 = add nsw i32 %53, 1
  br label %68

68:                                               ; preds = %66, %52
  %69 = phi i32 [ %67, %66 ], [ %53, %52 ]
  %70 = phi i32 [ %61, %66 ], [ %54, %52 ]
  %71 = phi i32 [ %62, %66 ], [ %55, %52 ]
  %72 = phi i32 [ 0, %66 ], [ %62, %52 ]
  %73 = phi i32 [ 0, %66 ], [ %61, %52 ]
  %74 = add nuw nsw i64 %36, 2
  %75 = add i64 %42, 2
  %76 = icmp eq i64 %75, %14
  br i1 %76, label %15, label %35, !llvm.loop !9
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
