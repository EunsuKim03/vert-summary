; ModuleID = 'benchmark/c_transcoder/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION_processed.c'
source_filename = "benchmark/c_transcoder/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)
  %5 = and i64 %4, 4294967295
  %6 = shl nuw nsw i64 %5, 1
  %7 = alloca i32, i64 %6, align 16
  %8 = and i64 %3, 2147483648
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %2
  %11 = and i64 %4, 2147483648
  %12 = icmp eq i64 %11, 0
  %13 = add i64 %4, 1
  %14 = add i64 %3, 1
  %15 = and i64 %14, 4294967295
  %16 = and i64 %13, 4294967295
  br label %17

17:                                               ; preds = %10, %40
  %18 = phi i64 [ 0, %10 ], [ %43, %40 ]
  %19 = phi i32 [ 0, %10 ], [ %42, %40 ]
  %20 = phi i32 [ 0, %10 ], [ %41, %40 ]
  br i1 %12, label %21, label %40

21:                                               ; preds = %17
  %22 = icmp eq i64 %18, 0
  %23 = add nsw i64 %18, -1
  %24 = getelementptr inbounds i8, i8* %0, i64 %23
  %25 = zext i32 %19 to i64
  %26 = mul nuw nsw i64 %5, %25
  %27 = getelementptr inbounds i32, i32* %7, i64 %26
  %28 = sub nsw i32 1, %19
  %29 = zext i32 %28 to i64
  %30 = mul nuw nsw i64 %5, %29
  %31 = getelementptr inbounds i32, i32* %7, i64 %30
  %32 = zext i32 %19 to i64
  %33 = mul nuw nsw i64 %5, %32
  %34 = getelementptr inbounds i32, i32* %7, i64 %33
  %35 = zext i32 %19 to i64
  %36 = mul nuw nsw i64 %5, %35
  %37 = getelementptr inbounds i32, i32* %7, i64 %36
  br label %45

38:                                               ; preds = %40, %2
  %39 = phi i32 [ 0, %2 ], [ %41, %40 ]
  ret i32 %39

40:                                               ; preds = %66, %17
  %41 = phi i32 [ %20, %17 ], [ %67, %66 ]
  %42 = sub nsw i32 1, %19
  %43 = add nuw nsw i64 %18, 1
  %44 = icmp eq i64 %43, %15
  br i1 %44, label %38, label %17, !llvm.loop !5

45:                                               ; preds = %21, %66
  %46 = phi i64 [ 0, %21 ], [ %68, %66 ]
  %47 = phi i32 [ %20, %21 ], [ %67, %66 ]
  %48 = icmp eq i64 %46, 0
  %49 = select i1 %22, i1 true, i1 %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = getelementptr inbounds i32, i32* %37, i64 %46
  store i32 0, i32* %51, align 4, !tbaa !8
  br label %66

52:                                               ; preds = %45
  %53 = load i8, i8* %24, align 1, !tbaa !12
  %54 = add nsw i64 %46, -1
  %55 = getelementptr inbounds i8, i8* %1, i64 %54
  %56 = load i8, i8* %55, align 1, !tbaa !12
  %57 = icmp eq i8 %53, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = getelementptr inbounds i32, i32* %31, i64 %54
  %60 = load i32, i32* %59, align 4, !tbaa !8
  %61 = add nsw i32 %60, 1
  %62 = getelementptr inbounds i32, i32* %34, i64 %46
  store i32 %61, i32* %62, align 4, !tbaa !8
  %63 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %47, i32 noundef %61) #3
  br label %66

64:                                               ; preds = %52
  %65 = getelementptr inbounds i32, i32* %27, i64 %46
  store i32 0, i32* %65, align 4, !tbaa !8
  br label %66

66:                                               ; preds = %50, %64, %58
  %67 = phi i32 [ %47, %50 ], [ %63, %58 ], [ %47, %64 ]
  %68 = add nuw nsw i64 %46, 1
  %69 = icmp eq i64 %68, %16
  br i1 %69, label %40, label %45, !llvm.loop !13
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

declare i32 @max(...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = !{!10, !10, i64 0}
!13 = distinct !{!13, !6, !7}
