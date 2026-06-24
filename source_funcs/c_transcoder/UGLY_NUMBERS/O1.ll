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
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = zext i32 %0 to i64
  br label %9

7:                                                ; preds = %47, %1
  %8 = phi i32 [ 1, %1 ], [ %18, %47 ]
  ret i32 %8

9:                                                ; preds = %5, %47
  %10 = phi i64 [ 1, %5 ], [ %50, %47 ]
  %11 = phi i32 [ 5, %5 ], [ %49, %47 ]
  %12 = phi i32 [ 3, %5 ], [ %39, %47 ]
  %13 = phi i32 [ 2, %5 ], [ %29, %47 ]
  %14 = phi i32 [ 0, %5 ], [ %48, %47 ]
  %15 = phi i32 [ 0, %5 ], [ %38, %47 ]
  %16 = phi i32 [ 0, %5 ], [ %28, %47 ]
  %17 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %12, i32 noundef %11) #2
  %18 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %13, i32 noundef %17) #2
  %19 = getelementptr inbounds i32, i32* %3, i64 %10
  store i32 %18, i32* %19, align 4, !tbaa !5
  %20 = icmp eq i32 %18, %13
  br i1 %20, label %21, label %27

21:                                               ; preds = %9
  %22 = add i32 %16, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %3, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = shl i32 %25, 1
  br label %27

27:                                               ; preds = %21, %9
  %28 = phi i32 [ %22, %21 ], [ %16, %9 ]
  %29 = phi i32 [ %26, %21 ], [ %13, %9 ]
  %30 = icmp eq i32 %18, %12
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = add i32 %15, 1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %3, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = mul i32 %35, 3
  br label %37

37:                                               ; preds = %31, %27
  %38 = phi i32 [ %32, %31 ], [ %15, %27 ]
  %39 = phi i32 [ %36, %31 ], [ %12, %27 ]
  %40 = icmp eq i32 %18, %11
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = add i32 %14, 1
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %3, i64 %43
  %45 = load i32, i32* %44, align 4, !tbaa !5
  %46 = mul i32 %45, 5
  br label %47

47:                                               ; preds = %37, %41
  %48 = phi i32 [ %42, %41 ], [ %14, %37 ]
  %49 = phi i32 [ %46, %41 ], [ %11, %37 ]
  %50 = add nuw nsw i64 %10, 1
  %51 = icmp eq i64 %50, %6
  br i1 %51, label %7, label %9, !llvm.loop !9
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
