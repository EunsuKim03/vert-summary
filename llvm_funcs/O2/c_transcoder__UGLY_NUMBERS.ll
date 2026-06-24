; ModuleID = 'benchmark/c_transcoder/UGLY_NUMBERS/UGLY_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/UGLY_NUMBERS/UGLY_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = zext i32 %0 to i64
  %3 = alloca i32, i64 %2, align 16
  store i32 1, i32* %3, align 16, !tbaa !5
  %4 = icmp ugt i32 %0, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %45, %1
  %6 = phi i32 [ 1, %1 ], [ %16, %45 ]
  ret i32 %6

7:                                                ; preds = %1, %45
  %8 = phi i64 [ %48, %45 ], [ 1, %1 ]
  %9 = phi i32 [ %47, %45 ], [ 5, %1 ]
  %10 = phi i32 [ %37, %45 ], [ 3, %1 ]
  %11 = phi i32 [ %27, %45 ], [ 2, %1 ]
  %12 = phi i32 [ %46, %45 ], [ 0, %1 ]
  %13 = phi i32 [ %36, %45 ], [ 0, %1 ]
  %14 = phi i32 [ %26, %45 ], [ 0, %1 ]
  %15 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %10, i32 noundef %9) #2
  %16 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %11, i32 noundef %15) #2
  %17 = getelementptr inbounds i32, i32* %3, i64 %8
  store i32 %16, i32* %17, align 4, !tbaa !5
  %18 = icmp eq i32 %16, %11
  br i1 %18, label %19, label %25

19:                                               ; preds = %7
  %20 = add i32 %14, 1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %3, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = shl i32 %23, 1
  br label %25

25:                                               ; preds = %19, %7
  %26 = phi i32 [ %20, %19 ], [ %14, %7 ]
  %27 = phi i32 [ %24, %19 ], [ %11, %7 ]
  %28 = icmp eq i32 %16, %10
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = add i32 %13, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %3, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %34 = mul i32 %33, 3
  br label %35

35:                                               ; preds = %29, %25
  %36 = phi i32 [ %30, %29 ], [ %13, %25 ]
  %37 = phi i32 [ %34, %29 ], [ %10, %25 ]
  %38 = icmp eq i32 %16, %9
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = add i32 %12, 1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %3, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !5
  %44 = mul i32 %43, 5
  br label %45

45:                                               ; preds = %35, %39
  %46 = phi i32 [ %40, %39 ], [ %12, %35 ]
  %47 = phi i32 [ %44, %39 ], [ %9, %35 ]
  %48 = add nuw nsw i64 %8, 1
  %49 = icmp eq i64 %48, %2
  br i1 %49, label %5, label %7, !llvm.loop !9
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
