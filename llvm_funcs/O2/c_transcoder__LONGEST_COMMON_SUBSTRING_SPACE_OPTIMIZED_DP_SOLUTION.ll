; ModuleID = 'benchmark/c_transcoder/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION_processed.c'
source_filename = "benchmark/c_transcoder/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %4 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)
  %5 = and i64 %4, 4294967295
  %6 = shl nuw nsw i64 %5, 1
  %7 = alloca i32, i64 %6, align 16
  %8 = and i64 %3, 2147483648
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = and i64 %4, 2147483648
  %12 = icmp eq i64 %11, 0
  %13 = add i64 %4, 1
  %14 = add nuw i64 %3, 1
  %15 = and i64 %14, 4294967295
  %16 = and i64 %13, 4294967295
  br label %17

17:                                               ; preds = %10, %36
  %18 = phi i64 [ 0, %10 ], [ %39, %36 ]
  %19 = phi i32 [ 0, %10 ], [ %37, %36 ]
  %20 = phi i32 [ 0, %10 ], [ %38, %36 ]
  br i1 %12, label %23, label %21

21:                                               ; preds = %17
  %22 = sub nsw i32 1, %19
  br label %36

23:                                               ; preds = %17
  %24 = icmp eq i64 %18, 0
  %25 = add nsw i64 %18, -1
  %26 = getelementptr inbounds i8, i8* %0, i64 %25
  %27 = zext i32 %19 to i64
  %28 = mul nuw nsw i64 %5, %27
  %29 = getelementptr inbounds i32, i32* %7, i64 %28
  %30 = sub nsw i32 1, %19
  %31 = zext i32 %30 to i64
  %32 = mul nuw nsw i64 %5, %31
  %33 = getelementptr inbounds i32, i32* %7, i64 %32
  br label %41

34:                                               ; preds = %36, %2
  %35 = phi i32 [ 0, %2 ], [ %38, %36 ]
  ret i32 %35

36:                                               ; preds = %62, %21
  %37 = phi i32 [ %22, %21 ], [ %30, %62 ]
  %38 = phi i32 [ %20, %21 ], [ %63, %62 ]
  %39 = add nuw nsw i64 %18, 1
  %40 = icmp eq i64 %39, %15
  br i1 %40, label %34, label %17, !llvm.loop !5

41:                                               ; preds = %23, %62
  %42 = phi i64 [ 0, %23 ], [ %64, %62 ]
  %43 = phi i32 [ %20, %23 ], [ %63, %62 ]
  %44 = icmp eq i64 %42, 0
  %45 = select i1 %24, i1 true, i1 %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = getelementptr inbounds i32, i32* %29, i64 %42
  store i32 0, i32* %47, align 4, !tbaa !7
  br label %62

48:                                               ; preds = %41
  %49 = load i8, i8* %26, align 1, !tbaa !11
  %50 = add nsw i64 %42, -1
  %51 = getelementptr inbounds i8, i8* %1, i64 %50
  %52 = load i8, i8* %51, align 1, !tbaa !11
  %53 = icmp eq i8 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = getelementptr inbounds i32, i32* %33, i64 %50
  %56 = load i32, i32* %55, align 4, !tbaa !7
  %57 = add nsw i32 %56, 1
  %58 = getelementptr inbounds i32, i32* %29, i64 %42
  store i32 %57, i32* %58, align 4, !tbaa !7
  %59 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %43, i32 noundef %57) #3
  br label %62

60:                                               ; preds = %48
  %61 = getelementptr inbounds i32, i32* %29, i64 %42
  store i32 0, i32* %61, align 4, !tbaa !7
  br label %62

62:                                               ; preds = %46, %60, %54
  %63 = phi i32 [ %43, %46 ], [ %59, %54 ], [ %43, %60 ]
  %64 = add nuw nsw i64 %42, 1
  %65 = icmp eq i64 %64, %16
  br i1 %65, label %36, label %41, !llvm.loop !12
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !6}
