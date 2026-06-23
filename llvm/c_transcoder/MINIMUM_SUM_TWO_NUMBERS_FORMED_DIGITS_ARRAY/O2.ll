; ModuleID = 'benchmark/c_transcoder/MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY/MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY/MINIMUM_SUM_TWO_NUMBERS_FORMED_DIGITS_ARRAY_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = tail call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %4) #2
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %2
  %8 = zext i32 %1 to i64
  %9 = and i64 %8, 1
  %10 = icmp eq i32 %1, 1
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = and i64 %8, 4294967294
  br label %39

13:                                               ; preds = %39, %7
  %14 = phi i32 [ undef, %7 ], [ %52, %39 ]
  %15 = phi i32 [ undef, %7 ], [ %47, %39 ]
  %16 = phi i64 [ 0, %7 ], [ %53, %39 ]
  %17 = phi i32 [ 0, %7 ], [ %47, %39 ]
  %18 = phi i32 [ 0, %7 ], [ %52, %39 ]
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %13
  %21 = and i64 %16, 1
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = mul nsw i32 %18, 10
  %25 = getelementptr inbounds i32, i32* %0, i64 %16
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = add nsw i32 %26, %24
  br label %33

28:                                               ; preds = %20
  %29 = mul nsw i32 %17, 10
  %30 = getelementptr inbounds i32, i32* %0, i64 %16
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = add nsw i32 %31, %29
  br label %33

33:                                               ; preds = %23, %28, %13
  %34 = phi i32 [ %14, %13 ], [ %27, %23 ], [ %18, %28 ]
  %35 = phi i32 [ %15, %13 ], [ %17, %23 ], [ %32, %28 ]
  %36 = add nsw i32 %35, %34
  br label %37

37:                                               ; preds = %33, %2
  %38 = phi i32 [ %36, %33 ], [ 0, %2 ]
  ret i32 %38

39:                                               ; preds = %39, %11
  %40 = phi i64 [ 0, %11 ], [ %53, %39 ]
  %41 = phi i32 [ 0, %11 ], [ %47, %39 ]
  %42 = phi i32 [ 0, %11 ], [ %52, %39 ]
  %43 = phi i64 [ 0, %11 ], [ %54, %39 ]
  %44 = mul nsw i32 %41, 10
  %45 = getelementptr inbounds i32, i32* %0, i64 %40
  %46 = load i32, i32* %45, align 4, !tbaa !5
  %47 = add nsw i32 %46, %44
  %48 = or i64 %40, 1
  %49 = mul nsw i32 %42, 10
  %50 = getelementptr inbounds i32, i32* %0, i64 %48
  %51 = load i32, i32* %50, align 4, !tbaa !5
  %52 = add nsw i32 %51, %49
  %53 = add nuw nsw i64 %40, 2
  %54 = add i64 %43, 2
  %55 = icmp eq i64 %54, %12
  br i1 %55, label %13, label %39, !llvm.loop !9
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
