; ModuleID = 'benchmark/c_transcoder/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1_processed.c'
source_filename = "benchmark/c_transcoder/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Triplet is %d, %d, %d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @sort to i32 (i32*, i32*, ...)*)(i32* noundef %0, i32* noundef %5) #3
  %7 = add i32 %1, -2
  %8 = icmp sgt i32 %1, 2
  br i1 %8, label %9, label %48

9:                                                ; preds = %3
  %10 = add nsw i32 %1, -1
  %11 = sext i32 %10 to i64
  %12 = sext i32 %7 to i64
  %13 = zext i32 %7 to i64
  br label %17

14:                                               ; preds = %40, %17
  %15 = icmp slt i64 %20, %12
  %16 = icmp eq i64 %20, %13
  br i1 %16, label %48, label %17, !llvm.loop !5

17:                                               ; preds = %9, %14
  %18 = phi i64 [ 0, %9 ], [ %20, %14 ]
  %19 = phi i1 [ %8, %9 ], [ %15, %14 ]
  %20 = add nuw nsw i64 %18, 1
  %21 = icmp slt i64 %20, %11
  br i1 %21, label %22, label %14

22:                                               ; preds = %17
  %23 = getelementptr inbounds i32, i32* %0, i64 %18
  %24 = load i32, i32* %23, align 4, !tbaa !8
  %25 = trunc i64 %20 to i32
  br label %26

26:                                               ; preds = %22, %40
  %27 = phi i32 [ %10, %22 ], [ %46, %40 ]
  %28 = phi i32 [ %25, %22 ], [ %43, %40 ]
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %0, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !8
  %32 = add nsw i32 %31, %24
  %33 = sext i32 %27 to i64
  %34 = getelementptr inbounds i32, i32* %0, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !8
  %36 = add nsw i32 %32, %35
  %37 = icmp eq i32 %36, %2
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %24, i32 noundef %31, i32 noundef %35)
  br label %48

40:                                               ; preds = %26
  %41 = icmp slt i32 %36, %2
  %42 = zext i1 %41 to i32
  %43 = add nuw nsw i32 %28, %42
  %44 = xor i1 %41, true
  %45 = sext i1 %44 to i32
  %46 = add nsw i32 %27, %45
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %26, label %14, !llvm.loop !12

48:                                               ; preds = %14, %3, %38
  %49 = phi i1 [ %19, %38 ], [ %8, %3 ], [ %15, %14 ]
  %50 = zext i1 %49 to i32
  ret i32 %50
}

declare i32 @sort(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !6, !7}
