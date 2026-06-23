; ModuleID = 'benchmark/c_transcoder/MINIMUM_STEPS_MINIMIZE_N_PER_GIVEN_CONDITION/MINIMUM_STEPS_MINIMIZE_N_PER_GIVEN_CONDITION_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_STEPS_MINIMIZE_N_PER_GIVEN_CONDITION/MINIMUM_STEPS_MINIMIZE_N_PER_GIVEN_CONDITION_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp slt i32 %0, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %0, 1
  %8 = zext i32 %7 to i64
  br label %13

9:                                                ; preds = %13, %1
  %10 = icmp sgt i32 %0, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %9
  %12 = sext i32 %0 to i64
  br label %23

13:                                               ; preds = %6, %13
  %14 = phi i64 [ 0, %6 ], [ %18, %13 ]
  %15 = trunc i64 %14 to i32
  %16 = sub nsw i32 %0, %15
  %17 = getelementptr inbounds i32, i32* %4, i64 %14
  store i32 %16, i32* %17, align 4, !tbaa !5
  %18 = add nuw nsw i64 %14, 1
  %19 = icmp eq i64 %18, %8
  br i1 %19, label %9, label %13, !llvm.loop !9

20:                                               ; preds = %51, %9
  %21 = getelementptr inbounds i32, i32* %4, i64 1
  %22 = load i32, i32* %21, align 4, !tbaa !5
  ret i32 %22

23:                                               ; preds = %11, %51
  %24 = phi i64 [ %12, %11 ], [ %52, %51 ]
  %25 = and i64 %24, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = getelementptr inbounds i32, i32* %4, i64 %24
  %29 = load i32, i32* %28, align 4, !tbaa !5
  %30 = add nsw i32 %29, 1
  %31 = trunc i64 %24 to i32
  %32 = sdiv i32 %31, 2
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %4, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %30, i32 noundef %35) #2
  store i32 %36, i32* %34, align 4, !tbaa !5
  br label %37

37:                                               ; preds = %27, %23
  %38 = trunc i64 %24 to i32
  %39 = srem i32 %38, 3
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = getelementptr inbounds i32, i32* %4, i64 %24
  %43 = load i32, i32* %42, align 4, !tbaa !5
  %44 = add nsw i32 %43, 1
  %45 = trunc i64 %24 to i32
  %46 = sdiv i32 %45, 3
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %4, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !5
  %50 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %44, i32 noundef %49) #2
  store i32 %50, i32* %48, align 4, !tbaa !5
  br label %51

51:                                               ; preds = %37, %41
  %52 = add nsw i64 %24, -1
  %53 = icmp sgt i64 %24, 1
  br i1 %53, label %23, label %20, !llvm.loop !12
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
!12 = distinct !{!12, !10, !11}
