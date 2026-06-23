; ModuleID = 'benchmark/c_transcoder/FREQUENT_ELEMENT_ARRAY/FREQUENT_ELEMENT_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/FREQUENT_ELEMENT_ARRAY/FREQUENT_ELEMENT_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #2
  %6 = load i32, i32* %0, align 4, !tbaa !5
  %7 = icmp sgt i32 %1, 1
  br i1 %7, label %8, label %77

8:                                                ; preds = %2
  %9 = zext i32 %1 to i64
  %10 = add nsw i64 %9, -1
  %11 = and i64 %10, 1
  %12 = icmp eq i32 %1, 2
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = and i64 %10, -2
  br label %41

15:                                               ; preds = %41, %8
  %16 = phi i32 [ undef, %8 ], [ %66, %41 ]
  %17 = phi i32 [ undef, %8 ], [ %67, %41 ]
  %18 = phi i32 [ undef, %8 ], [ %68, %41 ]
  %19 = phi i32 [ %6, %8 ], [ %60, %41 ]
  %20 = phi i64 [ 1, %8 ], [ %69, %41 ]
  %21 = phi i32 [ 1, %8 ], [ %68, %41 ]
  %22 = phi i32 [ %6, %8 ], [ %67, %41 ]
  %23 = phi i32 [ 1, %8 ], [ %66, %41 ]
  %24 = icmp eq i64 %11, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds i32, i32* %0, i64 %20
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = icmp eq i32 %27, %19
  %29 = add nsw i32 %21, 1
  %30 = icmp sgt i32 %21, %23
  %31 = select i1 %30, i32 %21, i32 %23
  %32 = select i1 %30, i32 %19, i32 %22
  %33 = select i1 %28, i32 %23, i32 %31
  %34 = select i1 %28, i32 %22, i32 %32
  %35 = select i1 %28, i32 %29, i32 1
  br label %36

36:                                               ; preds = %15, %25
  %37 = phi i32 [ %16, %15 ], [ %33, %25 ]
  %38 = phi i32 [ %17, %15 ], [ %34, %25 ]
  %39 = phi i32 [ %18, %15 ], [ %35, %25 ]
  %40 = icmp sgt i32 %39, %37
  br i1 %40, label %72, label %77

41:                                               ; preds = %41, %13
  %42 = phi i32 [ %6, %13 ], [ %60, %41 ]
  %43 = phi i64 [ 1, %13 ], [ %69, %41 ]
  %44 = phi i32 [ 1, %13 ], [ %68, %41 ]
  %45 = phi i32 [ %6, %13 ], [ %67, %41 ]
  %46 = phi i32 [ 1, %13 ], [ %66, %41 ]
  %47 = phi i64 [ 0, %13 ], [ %70, %41 ]
  %48 = getelementptr inbounds i32, i32* %0, i64 %43
  %49 = load i32, i32* %48, align 4, !tbaa !5
  %50 = icmp eq i32 %49, %42
  %51 = add nsw i32 %44, 1
  %52 = icmp sgt i32 %44, %46
  %53 = select i1 %52, i32 %44, i32 %46
  %54 = select i1 %52, i32 %42, i32 %45
  %55 = select i1 %50, i32 %46, i32 %53
  %56 = select i1 %50, i32 %45, i32 %54
  %57 = select i1 %50, i32 %51, i32 1
  %58 = add nuw nsw i64 %43, 1
  %59 = getelementptr inbounds i32, i32* %0, i64 %58
  %60 = load i32, i32* %59, align 4, !tbaa !5
  %61 = icmp eq i32 %60, %49
  %62 = add nsw i32 %57, 1
  %63 = icmp sgt i32 %57, %55
  %64 = select i1 %63, i32 %57, i32 %55
  %65 = select i1 %63, i32 %49, i32 %56
  %66 = select i1 %61, i32 %55, i32 %64
  %67 = select i1 %61, i32 %56, i32 %65
  %68 = select i1 %61, i32 %62, i32 1
  %69 = add nuw nsw i64 %43, 2
  %70 = add i64 %47, 2
  %71 = icmp eq i64 %70, %14
  br i1 %71, label %15, label %41, !llvm.loop !9

72:                                               ; preds = %36
  %73 = add nsw i32 %1, -1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %0, i64 %74
  %76 = load i32, i32* %75, align 4, !tbaa !5
  br label %77

77:                                               ; preds = %2, %72, %36
  %78 = phi i32 [ %76, %72 ], [ %38, %36 ], [ %6, %2 ]
  ret i32 %78
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
